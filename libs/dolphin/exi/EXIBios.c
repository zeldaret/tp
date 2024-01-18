#include "dolphin/exi/EXIBios.h"
#include "dol2asm.h"
#include "dolphin/os.h"

/* 804509C0-804509C8 -00001 0004+04 1/1 0/0 0/0 .sdata           __EXIVersion */
static char* __EXIVersion = "<< Dolphin SDK - EXI\trelease build: Apr  5 2004 04:14:14 (0x2301) >>";

#define REG_MAX 5
#define REG(chan, idx) (__EXIRegs[((chan) * REG_MAX) + (idx)])

#define CPR_CS(x) ((1u << (x)) << 7)
#define CPR_CLK(x) ((x) << 4)

#define EXI_0CR(tstart, dma, rw, tlen)                                                             \
    ((((u32)(tstart)) << 0) | (((u32)(dma)) << 1) | (((u32)(rw)) << 2) | (((u32)(tlen)) << 4))

static void SetExiInterruptMask(s32 chan, EXIControl* exi);
BOOL __EXIProbe(s32 chan);
static u32 EXIClearInterrupts(s32 chan, BOOL exi, BOOL tc, BOOL ext);
static void EXIIntrruptHandler(s16 interrupt, OSContext* context);
static void TCIntrruptHandler(s16 interrupt, OSContext* context);
static void EXTIntrruptHandler(s16 interrupt, OSContext* context);

/* 8044C570-8044C630 079290 00C0+00 20/20 0/0 0/0 .bss             Ecb */
static EXIControl Ecb[3];

/* 80342C0C-80342D00 33D54C 00F4+00 4/4 0/0 0/0 .text            SetExiInterruptMask */
static void SetExiInterruptMask(s32 chan, EXIControl* exi) {
    EXIControl* exi2;

    exi2 = &Ecb[2];
    switch (chan) {
    case 0:
        if ((exi->exiCallback == 0 && exi2->exiCallback == 0) || (exi->state & EXI_STATE_LOCKED)) {
            __OSMaskInterrupts(OS_INTERRUPTMASK_EXI_0_EXI | OS_INTERRUPTMASK_EXI_2_EXI);
        } else {
            __OSUnmaskInterrupts(OS_INTERRUPTMASK_EXI_0_EXI | OS_INTERRUPTMASK_EXI_2_EXI);
        }
        break;
    case 1:
        if (exi->exiCallback == 0 || (exi->state & EXI_STATE_LOCKED)) {
            __OSMaskInterrupts(OS_INTERRUPTMASK_EXI_1_EXI);
        } else {
            __OSUnmaskInterrupts(OS_INTERRUPTMASK_EXI_1_EXI);
        }
        break;
    case 2:
        if (__OSGetInterruptHandler(OS_INTR_PI_DEBUG) == 0 || (exi->state & EXI_STATE_LOCKED)) {
            __OSMaskInterrupts(OS_INTERRUPTMASK_PI_DEBUG);
        } else {
            __OSUnmaskInterrupts(OS_INTERRUPTMASK_PI_DEBUG);
        }
        break;
    }
}

/* 80342D00-80342F5C 33D640 025C+00 2/2 9/9 0/0 .text            EXIImm */
s32 EXIImm(s32 chan, void* buf, s32 len, u32 type, EXICallback callback) {
    EXIControl* exi = &Ecb[chan];
    BOOL enabled;

    enabled = OSDisableInterrupts();
    if ((exi->state & EXI_STATE_BUSY) || !(exi->state & EXI_STATE_SELECTED)) {
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    exi->tcCallback = callback;
    if (exi->tcCallback) {
        EXIClearInterrupts(chan, FALSE, TRUE, FALSE);
        __OSUnmaskInterrupts(OS_INTERRUPTMASK_EXI_0_TC >> (3 * chan));
    }

    exi->state |= EXI_STATE_IMM;

    if (type != EXI_READ) {
        u32 data;
        int i;

        data = 0;
        for (i = 0; i < len; i++) {
            data |= ((u8*)buf)[i] << ((3 - i) * 8);
        }
        REG(chan, 4) = data;
    }

    exi->immBuf = buf;
    exi->immLen = (type != EXI_WRITE) ? len : 0;

    REG(chan, 3) = EXI_0CR(1, 0, type, len - 1);

    OSRestoreInterrupts(enabled);

    return TRUE;
}

/* 80342F5C-80342FFC 33D89C 00A0+00 0/0 7/7 0/0 .text            EXIImmEx */
s32 EXIImmEx(s32 chan, void* buf, s32 len, u32 mode) {
    s32 xLen;

    while (len) {
        xLen = (len < 4) ? len : 4;
        if (!EXIImm(chan, buf, xLen, mode, NULL)) {
            return FALSE;
        }

        if (!EXISync(chan)) {
            return FALSE;
        }

        (u8*)buf += xLen;
        len -= xLen;
    }
    return TRUE;
}

/* 80342FFC-803430E8 33D93C 00EC+00 0/0 4/4 0/0 .text            EXIDma */
BOOL EXIDma(s32 chan, void* buf, s32 len, u32 type, EXICallback callback) {
    EXIControl* exi = &Ecb[chan];
    BOOL enabled;

    enabled = OSDisableInterrupts();
    if ((exi->state & EXI_STATE_BUSY) || !(exi->state & EXI_STATE_SELECTED)) {
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    exi->tcCallback = callback;
    if (exi->tcCallback) {
        EXIClearInterrupts(chan, FALSE, TRUE, FALSE);
        __OSUnmaskInterrupts(OS_INTERRUPTMASK_EXI_0_TC >> (3 * chan));
    }

    exi->state |= EXI_STATE_DMA;

    REG(chan, 1) = (u32)buf & 0x3ffffe0;
    REG(chan, 2) = (u32)len;
    REG(chan, 3) = EXI_0CR(1, 1, type, 0);

    OSRestoreInterrupts(enabled);

    return TRUE;
}

static void CompleteTransfer(s32 chan) {
    EXIControl* exi = &Ecb[chan];
    u8* buf;
    u32 data;
    int i;
    int len;

    if (exi->state & EXI_STATE_BUSY) {
        if ((exi->state & EXI_STATE_IMM) && (len = exi->immLen)) {
            buf = exi->immBuf;
            data = REG(chan, 4);
            for (i = 0; i < len; i++) {
                *buf++ = (u8)((data >> ((3 - i) * 8)) & 0xff);
            }
        }
        exi->state &= ~EXI_STATE_BUSY;
    }
}

/* 803430E8-80343334 33DA28 024C+00 2/2 9/9 0/0 .text            EXISync */
BOOL EXISync(s32 chan) {
    EXIControl* exi = &Ecb[chan];
    BOOL rc = FALSE;
    BOOL enabled;

    while (exi->state & EXI_STATE_SELECTED) {
        if (((REG(chan, 3) & 1) >> 0) == 0) {
            enabled = OSDisableInterrupts();
            if (exi->state & EXI_STATE_SELECTED) {
                CompleteTransfer(chan);
                if (__OSGetDIConfig() != 0xff || (OSGetConsoleType() & 0xf0000000) == 0x20000000 ||
                    exi->immLen != 4 || (REG(chan, 0) & 0x00000070) != (EXI_FREQ_1M << 4) ||
                    (REG(chan, 4) != EXI_USB_ADAPTER && REG(chan, 4) != EXI_IS_VIEWER &&
                     REG(chan, 4) != 0x04220001) ||
                    __OSDeviceCode == 0x8200)
                {
                    rc = TRUE;
                }
            }
            OSRestoreInterrupts(enabled);
            break;
        }
    }
    return rc;
}

/* 80343334-8034337C 33DC74 0048+00 4/4 0/0 0/0 .text            EXIClearInterrupts */
u32 EXIClearInterrupts(s32 chan, BOOL exi, BOOL tc, BOOL ext) {
    u32 cpr;
    u32 prev;

    prev = cpr = REG(chan, 0);
    cpr &= 0x7f5;
    if (exi)
        cpr |= 2;
    if (tc)
        cpr |= 8;
    if (ext)
        cpr |= 0x800;
    REG(chan, 0) = cpr;
    return prev;
}

/* 8034337C-803433F8 33DCBC 007C+00 0/0 6/6 0/0 .text            EXISetExiCallback */
EXICallback EXISetExiCallback(s32 chan, EXICallback exiCallback) {
    EXIControl* exi = &Ecb[chan];
    EXICallback prev;
    BOOL enabled;

    enabled = OSDisableInterrupts();
    prev = exi->exiCallback;
    exi->exiCallback = exiCallback;

    if (chan != 2) {
        SetExiInterruptMask(chan, exi);
    } else {
        SetExiInterruptMask(0, &Ecb[0]);
    }

    OSRestoreInterrupts(enabled);
    return prev;
}

s32 __EXIProbeStartTime[2] : (OS_BASE_CACHED | 0x30C0);

/* 803433F8-8034356C 33DD38 0174+00 7/7 0/0 0/0 .text            __EXIProbe */
static BOOL __EXIProbe(s32 chan) {
    EXIControl* exi = &Ecb[chan];
    BOOL enabled;
    BOOL rc;
    u32 cpr;
    s32 t;

    if (chan == 2) {
        return TRUE;
    }

    rc = TRUE;
    enabled = OSDisableInterrupts();
    cpr = REG(chan, 0);
    if (!(exi->state & EXI_STATE_ATTACHED)) {
        if (cpr & 0x00000800) {
            EXIClearInterrupts(chan, FALSE, FALSE, TRUE);
            __EXIProbeStartTime[chan] = exi->idTime = 0;
        }

        if (cpr & 0x00001000) {
            t = (s32)(OSTicksToMilliseconds(OSGetTime()) / 100) + 1;
            if (__EXIProbeStartTime[chan] == 0) {
                __EXIProbeStartTime[chan] = t;
            }
            if (t - __EXIProbeStartTime[chan] < 300 / 100) {
                rc = FALSE;
            }
        } else {
            __EXIProbeStartTime[chan] = exi->idTime = 0;
            rc = FALSE;
        }
    } else if (!(cpr & 0x00001000) || (cpr & 0x00000800)) {
        __EXIProbeStartTime[chan] = exi->idTime = 0;
        rc = FALSE;
    }
    OSRestoreInterrupts(enabled);

    return rc;
}

/* 8034356C-803435EC 33DEAC 0080+00 0/0 5/5 0/0 .text            EXIProbe */
BOOL EXIProbe(s32 chan) {
    EXIControl* exi = &Ecb[chan];
    BOOL rc;
    u32 id;

    rc = __EXIProbe(chan);
    if (rc && exi->idTime == 0) {
        rc = EXIGetID(chan, 0, &id) ? TRUE : FALSE;
    }
    return rc;
}

/* 803435EC-803436A0 33DF2C 00B4+00 0/0 1/1 0/0 .text            EXIProbeEx */

s32 EXIProbeEx(s32 chan) {
    if (EXIProbe(chan)) {
        return 1;
    } else if (__EXIProbeStartTime[chan] != 0) {
        return 0;
    } else {
        return -1;
    }
}

/* 803436A0-803437AC 33DFE0 010C+00 0/0 2/2 0/0 .text            EXIAttach */
static BOOL __EXIAttach(s32 chan, EXICallback extCallback) {
    EXIControl* exi = &Ecb[chan];
    BOOL enabled;

    enabled = OSDisableInterrupts();
    if ((exi->state & EXI_STATE_ATTACHED) || __EXIProbe(chan) == FALSE) {
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    EXIClearInterrupts(chan, TRUE, FALSE, FALSE);

    exi->extCallback = extCallback;
    __OSUnmaskInterrupts(OS_INTERRUPTMASK_EXI_0_EXT >> (3 * chan));
    exi->state |= EXI_STATE_ATTACHED;
    OSRestoreInterrupts(enabled);

    return TRUE;
}

BOOL EXIAttach(s32 chan, EXICallback extCallback) {
    EXIControl* exi = &Ecb[chan];
    BOOL enabled;
    BOOL rc;

    EXIProbe(chan);

    enabled = OSDisableInterrupts();
    if (exi->idTime == 0) {
        OSRestoreInterrupts(enabled);
        return FALSE;
    }
    rc = __EXIAttach(chan, extCallback);
    OSRestoreInterrupts(enabled);
    return rc;
}

/* 803437AC-80343868 33E0EC 00BC+00 0/0 3/3 0/0 .text            EXIDetach */
BOOL EXIDetach(s32 chan) {
    EXIControl* exi = &Ecb[chan];
    BOOL enabled;

    enabled = OSDisableInterrupts();
    if (!(exi->state & EXI_STATE_ATTACHED)) {
        OSRestoreInterrupts(enabled);
        return TRUE;
    }
    if ((exi->state & EXI_STATE_LOCKED) && exi->dev == 0) {
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    exi->state &= ~EXI_STATE_ATTACHED;
    __OSMaskInterrupts((OS_INTERRUPTMASK_EXI_0_EXT | OS_INTERRUPTMASK_EXI_0_EXI) >> (3 * chan));
    OSRestoreInterrupts(enabled);
    return TRUE;
}

/* 80343868-80343994 33E1A8 012C+00 1/1 12/12 0/0 .text            EXISelect */
BOOL EXISelect(s32 chan, u32 dev, u32 freq) {
    EXIControl* exi = &Ecb[chan];
    u32 cpr;
    BOOL enabled;

    enabled = OSDisableInterrupts();
    if ((exi->state & EXI_STATE_SELECTED) ||
        chan != 2 && (dev == 0 && !(exi->state & EXI_STATE_ATTACHED) && !__EXIProbe(chan) ||
                      !(exi->state & EXI_STATE_LOCKED) || (exi->dev != dev)))
    {
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    exi->state |= EXI_STATE_SELECTED;
    cpr = REG(chan, 0);
    cpr &= 0x405;
    cpr |= CPR_CS(dev) | CPR_CLK(freq);
    REG(chan, 0) = cpr;

    if (exi->state & EXI_STATE_ATTACHED) {
        switch (chan) {
        case 0:
            __OSMaskInterrupts(OS_INTERRUPTMASK_EXI_0_EXT);
            break;
        case 1:
            __OSMaskInterrupts(OS_INTERRUPTMASK_EXI_1_EXT);
            break;
        }
    }

    OSRestoreInterrupts(enabled);
    return TRUE;
}

/* 80343994-80343AA4 33E2D4 0110+00 1/1 15/15 0/0 .text            EXIDeselect */
BOOL EXIDeselect(s32 chan) {
    EXIControl* exi = &Ecb[chan];
    u32 cpr;
    BOOL enabled;

    enabled = OSDisableInterrupts();
    if (!(exi->state & EXI_STATE_SELECTED)) {
        OSRestoreInterrupts(enabled);
        return FALSE;
    }
    exi->state &= ~EXI_STATE_SELECTED;
    cpr = REG(chan, 0);
    REG(chan, 0) = cpr & 0x405;

    if (exi->state & EXI_STATE_ATTACHED) {
        switch (chan) {
        case 0:
            __OSUnmaskInterrupts(OS_INTERRUPTMASK_EXI_0_EXT);
            break;
        case 1:
            __OSUnmaskInterrupts(OS_INTERRUPTMASK_EXI_1_EXT);
            break;
        }
    }

    OSRestoreInterrupts(enabled);

    if (chan != 2 && (cpr & CPR_CS(0))) {
        return __EXIProbe(chan) ? TRUE : FALSE;
    }

    return TRUE;
}

/* 80343AA4-80343B6C 33E3E4 00C8+00 1/1 0/0 0/0 .text            EXIIntrruptHandler */
static void EXIIntrruptHandler(s16 interrupt, OSContext* context) {
    s32 chan;
    EXIControl* exi;
    EXICallback callback;

    chan = (interrupt - OS_INTR_EXI_0_EXI) / 3;
    exi = &Ecb[chan];
    EXIClearInterrupts(chan, TRUE, FALSE, FALSE);
    callback = exi->exiCallback;
    if (callback) {
        OSContext exceptionContext;

        OSClearContext(&exceptionContext);
        OSSetCurrentContext(&exceptionContext);

        callback(chan, context);

        OSClearContext(&exceptionContext);
        OSSetCurrentContext(context);
    }
}

/* 80343B6C-80343D84 33E4AC 0218+00 1/1 0/0 0/0 .text            TCIntrruptHandler */
static void TCIntrruptHandler(s16 interrupt, OSContext* context) {
    OSContext exceptionContext;
    s32 chan;
    EXIControl* exi;
    EXICallback callback;

    chan = (interrupt - OS_INTR_EXI_0_TC) / 3;
    exi = &Ecb[chan];
    __OSMaskInterrupts(OS_INTERRUPTMASK(interrupt));
    EXIClearInterrupts(chan, FALSE, TRUE, FALSE);
    callback = exi->tcCallback;
    if (callback) {
        exi->tcCallback = 0;
        CompleteTransfer(chan);

        OSClearContext(&exceptionContext);
        OSSetCurrentContext(&exceptionContext);

        callback(chan, context);

        OSClearContext(&exceptionContext);
        OSSetCurrentContext(context);
    }
}

/* 80343D84-80343E54 33E6C4 00D0+00 1/1 0/0 0/0 .text            EXTIntrruptHandler */
static void EXTIntrruptHandler(s16 interrupt, OSContext* context) {
    s32 chan;
    EXIControl* exi;
    EXICallback callback;

    chan = (interrupt - OS_INTR_EXI_0_EXT) / 3;
    __OSMaskInterrupts((OS_INTERRUPTMASK_EXI_0_EXT | OS_INTERRUPTMASK_EXI_0_EXI) >> (3 * chan));
    exi = &Ecb[chan];
    callback = exi->extCallback;
    exi->state &= ~EXI_STATE_ATTACHED;
    if (callback) {
        OSContext exceptionContext;

        OSClearContext(&exceptionContext);
        OSSetCurrentContext(&exceptionContext);

        exi->extCallback = 0;
        callback(chan, context);

        OSClearContext(&exceptionContext);
        OSSetCurrentContext(context);
    }
}

/* 804516D8-804516E0 000BD8 0004+04 2/2 0/0 0/0 .sbss            IDSerialPort1 */
static u32 IDSerialPort1[2 /* padding */];

/* 80343E54-80344028 33E794 01D4+00 0/0 1/1 0/0 .text            EXIInit */
void EXIInit(void) {
    u32 idSerial;

    while (((REG(0, 3) & 1) == 1) || ((REG(1, 3) & 1) == 1) || ((REG(2, 3) & 1) == 1)) {
    }

    __OSMaskInterrupts(OS_INTERRUPTMASK_EXI_0_EXI | OS_INTERRUPTMASK_EXI_0_TC |
                       OS_INTERRUPTMASK_EXI_0_EXT | OS_INTERRUPTMASK_EXI_1_EXI |
                       OS_INTERRUPTMASK_EXI_1_TC | OS_INTERRUPTMASK_EXI_1_EXT |
                       OS_INTERRUPTMASK_EXI_2_EXI | OS_INTERRUPTMASK_EXI_2_TC);

    REG(0, 0) = 0;
    REG(1, 0) = 0;
    REG(2, 0) = 0;

    REG(0, 0) = 0x00002000;

    __OSSetInterruptHandler(OS_INTR_EXI_0_EXI, EXIIntrruptHandler);
    __OSSetInterruptHandler(OS_INTR_EXI_0_TC, TCIntrruptHandler);
    __OSSetInterruptHandler(OS_INTR_EXI_0_EXT, EXTIntrruptHandler);
    __OSSetInterruptHandler(OS_INTR_EXI_1_EXI, EXIIntrruptHandler);
    __OSSetInterruptHandler(OS_INTR_EXI_1_TC, TCIntrruptHandler);
    __OSSetInterruptHandler(OS_INTR_EXI_1_EXT, EXTIntrruptHandler);
    __OSSetInterruptHandler(OS_INTR_EXI_2_EXI, EXIIntrruptHandler);
    __OSSetInterruptHandler(OS_INTR_EXI_2_TC, TCIntrruptHandler);

    EXIGetID(0, 2, IDSerialPort1);
    if (__OSInIPL) {
        __EXIProbeStartTime[0] = __EXIProbeStartTime[1] = 0;
        Ecb[0].idTime = Ecb[1].idTime = 0;
        __EXIProbe(0);
        __EXIProbe(1);
    } else if (EXIGetID(0, 0, &idSerial) && idSerial == 0x7010000) {
        __OSEnableBarnacle(1, 0);
    } else if (EXIGetID(1, 0, &idSerial) && idSerial == 0x7010000) {
        __OSEnableBarnacle(0, 2);
    }

    OSRegisterVersion(__EXIVersion);
}

/* 80344028-8034411C 33E968 00F4+00 1/1 10/10 0/0 .text            EXILock */
BOOL EXILock(s32 chan, u32 dev, EXICallback unlockedCallback) {
    EXIControl* exi = &Ecb[chan];
    BOOL enabled;
    int i;

    enabled = OSDisableInterrupts();
    if (exi->state & EXI_STATE_LOCKED) {
        if (unlockedCallback) {
            for (i = 0; i < exi->items; i++) {
                if (exi->queue[i].dev == dev) {
                    OSRestoreInterrupts(enabled);
                    return FALSE;
                }
            }
            exi->queue[exi->items].callback = unlockedCallback;
            exi->queue[exi->items].dev = dev;
            exi->items++;
        }
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    exi->state |= EXI_STATE_LOCKED;
    exi->dev = dev;
    SetExiInterruptMask(chan, exi);

    OSRestoreInterrupts(enabled);
    return TRUE;
}

/* 8034411C-803441F8 33EA5C 00DC+00 0/0 14/14 0/0 .text            EXIUnlock */
BOOL EXIUnlock(s32 chan) {
    EXIControl* exi = &Ecb[chan];
    BOOL enabled;
    EXICallback unlockedCallback;

    enabled = OSDisableInterrupts();
    if (!(exi->state & EXI_STATE_LOCKED)) {
        OSRestoreInterrupts(enabled);
        return FALSE;
    }
    exi->state &= ~EXI_STATE_LOCKED;
    SetExiInterruptMask(chan, exi);

    if (0 < exi->items) {
        unlockedCallback = exi->queue[0].callback;
        if (0 < --exi->items) {
            memmove(&exi->queue[0], &exi->queue[1], sizeof(exi->queue[0]) * exi->items);
        }
        unlockedCallback(chan, 0);
    }

    OSRestoreInterrupts(enabled);
    return TRUE;
}

/* 803441F8-80344210 33EB38 0018+00 0/0 2/2 0/0 .text            EXIGetState */
u32 EXIGetState(s32 chan) {
    EXIControl* exi = &Ecb[chan];

    return (u32)exi->state;
}

/* 80344210-80344238 33EB50 0028+00 1/1 0/0 0/0 .text            UnlockedHandler */
static void UnlockedHandler(s32 chan, OSContext* context) {
    u32 id;

    EXIGetID(chan, 0, &id);
}

/* 80344238-803445E8 33EB78 03B0+00 5/5 3/3 0/0 .text            EXIGetID */
s32 EXIGetID(s32 chan, u32 dev, u32* id) {
    EXIControl* exi = &Ecb[chan];
    BOOL err;
    u32 cmd;
    s32 startTime;
    BOOL enabled;

    if (chan == 0 && dev == 2 && IDSerialPort1[0] != 0) {
        *id = IDSerialPort1[0];
        return 1;
    }

    if (chan < 2 && dev == 0) {
        if (!__EXIProbe(chan)) {
            return 0;
        }

        if (exi->idTime == __EXIProbeStartTime[chan]) {
            *id = exi->id;
            return exi->idTime;
        }

        if (!__EXIAttach(chan, NULL)) {
            return 0;
        }

        startTime = __EXIProbeStartTime[chan];
    }

    enabled = OSDisableInterrupts();

    err = !EXILock(chan, dev, (chan < 2 && dev == 0) ? UnlockedHandler : NULL);
    if (!err) {
        err = !EXISelect(chan, dev, EXI_FREQ_1M);
        if (!err) {
            cmd = 0;
            err |= !EXIImm(chan, &cmd, 2, EXI_WRITE, NULL);
            err |= !EXISync(chan);
            err |= !EXIImm(chan, id, 4, EXI_READ, NULL);
            err |= !EXISync(chan);
            err |= !EXIDeselect(chan);
        }
        EXIUnlock(chan);
    }

    OSRestoreInterrupts(enabled);

    if (chan < 2 && dev == 0) {
        EXIDetach(chan);
        enabled = OSDisableInterrupts();
        err |= (startTime != __EXIProbeStartTime[chan]);
        if (!err) {
            exi->id = *id;
            exi->idTime = startTime;
        }
        OSRestoreInterrupts(enabled);

        return err ? 0 : exi->idTime;
    }

    return err ? 0 : !0;
}

char* EXIGetTypeString(u32 type) {
    switch (type) {
    case EXI_MEMORY_CARD_59:
        return "Memory Card 59";
    case EXI_MEMORY_CARD_123:
        return "Memory Card 123";
    case EXI_MEMORY_CARD_251:
        return "Memory Card 251";
    case EXI_MEMORY_CARD_507:
        return "Memory Card 507";
    case EXI_MEMORY_CARD_1019:
        return "Memory Card 1019";
    case EXI_MEMORY_CARD_2043:
        return "Memory Card 2043";
    case EXI_USB_ADAPTER:
        return "USB Adapter";
    case 0x80000000 | EXI_MEMORY_CARD_59:
    case 0x80000000 | EXI_MEMORY_CARD_123:
    case 0x80000000 | EXI_MEMORY_CARD_251:
    case 0x80000000 | EXI_MEMORY_CARD_507:
        return "Net Card";
    case EXI_ETHER_VIEWER:
        return "Artist Ether";
    case EXI_MODEM:
        return "Broadband Adapter";
    case EXI_STREAM_HANGER:
        return "Stream Hanger";
    case EXI_IS_VIEWER:
        return "IS-DOL-VIEWER";
    }
}
