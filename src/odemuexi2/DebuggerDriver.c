#include <dolphin/exi.h>
#include "dolphin/os.h"

typedef void (*MTRCallbackType)(int);

/* 804519D0-804519D4 000ED0 0004+00 2/2 0/0 0/0 .sbss            MTRCallback */
static MTRCallbackType MTRCallback;

/* 804519D4-804519D8 000ED4 0004+00 2/2 0/0 0/0 .sbss            DBGCallback */
static void (*DBGCallback)(u32, OSContext*);

/* 804519D8-804519DC 000ED8 0004+00 2/2 0/0 0/0 .sbss            SendMailData */
static u32 SendMailData;

/* 804519DC-804519E0 000EDC 0004+00 2/2 0/0 0/0 .sbss            RecvDataLeng */
static s32 RecvDataLeng;

/* 804519E0-804519E4 000EE0 0004+00 1/1 0/0 0/0 .sbss            pEXIInputFlag */
static u8* pEXIInputFlag;

static u8 EXIInputFlag;

static u8 SendCount = 0x80;

#define IS_TRUE(x) ((x) != FALSE)
#define IS_FALSE(x) !IS_TRUE(x)
#define ROUND_UP(x, align) (((x) + (align)-1) & (-(align)))

void DBGEXIInit() {
    __OSMaskInterrupts(0x18000);
    __EXIRegs[10] = 0;
}

static u32 DBGEXISelect(u32 v) {
    u32 regs = __EXIRegs[10];
    regs &= 0x405;
    regs |= 0x80 | (v << 4);
    __EXIRegs[10] = regs;
    return TRUE;
}

BOOL DBGEXIDeselect(void) {
    __EXIRegs[10] &= 0x405;
    return TRUE;
}

static BOOL DBGEXISync() {
    while (__EXIRegs[13] & 1)
        ;

    return TRUE;
}

/* 80373514-803737AC 36DE54 0298+00 5/5 0/0 0/0 .text            DBGEXIImm */
static BOOL DBGEXIImm(void* buffer, s32 bytecounter, u32 write) {
    u8* tempPointer;
    u32 writeOutValue;
    int i;

    if (write) {
        tempPointer = buffer;
        writeOutValue = 0;
        for (i = 0; i < bytecounter; i++) {
            u8* temp = ((u8*)buffer) + i;
            writeOutValue |= *temp << ((3 - i) << 3);
        }
        __EXIRegs[14] = writeOutValue;
    }

    __EXIRegs[13] = 1 | write << 2 | (bytecounter - 1) << 4;
    DBGEXISync();

    if (!write) {
        writeOutValue = __EXIRegs[14];
        tempPointer = buffer;
        for (i = 0; i < bytecounter; i++) {
            *tempPointer++ = writeOutValue >> ((3 - i) << 3);
        }
    }

    return TRUE;
}

static BOOL DBGWriteMailbox(u32 p1) {
    u32 cmd = 0xc0000000;
    u32 v;
    u32 base = p1;
    BOOL total = FALSE;

    DBGEXISelect(4);
    v = (base & 0x1fffffff) | (cmd);
    total |= IS_FALSE(DBGEXIImm(&v, sizeof(v), 1));
    total |= IS_FALSE(DBGEXISync());
    total |= IS_FALSE(DBGEXIDeselect());

    return IS_FALSE(total);
}

/* 80373468-80373514 36DDA8 00AC+00 1/1 0/0 0/0 .text            DBGReadMailbox */
#pragma dont_inline on
static BOOL DBGReadMailbox(u32* p1) {
    BOOL total = FALSE;
    u32 v;

    DBGEXISelect(4);

    v = 0x60000000;
    total |= IS_FALSE(DBGEXIImm(&v, 2, 1));
    total |= IS_FALSE(DBGEXISync());

    total |= IS_FALSE(DBGEXIImm(p1, 4, 0));
    total |= IS_FALSE(DBGEXISync());

    total |= IS_FALSE(DBGEXIDeselect());

    return IS_FALSE(total);
}
#pragma dont_inline reset

/* 8037338C-80373468 36DCCC 00DC+00 1/1 0/0 0/0 .text            DBGRead */
static BOOL DBGRead(u32 count, u32* buffer, s32 param3) {
    BOOL total = FALSE;
    u32* buf_p = (u32*)buffer;
    u32 v1;
    u32 v;

    DBGEXISelect(4);

    v1 = (count & 0x1fffc) << 8 | 0x20000000;
    total |= IS_FALSE(DBGEXIImm(&v1, sizeof(v1), 1));
    total |= IS_FALSE(DBGEXISync());

    while (param3) {
        total |= IS_FALSE(DBGEXIImm(&v, sizeof(v), 0));
        total |= IS_FALSE(DBGEXISync());

        *buf_p++ = v;

        param3 -= 4;
        if (param3 < 0) {
            param3 = 0;
        }
    }

    total |= IS_FALSE(DBGEXIDeselect());
    return IS_FALSE(total);
}

/* 803732B0-8037338C 36DBF0 00DC+00 1/1 0/0 0/0 .text            DBGWrite */
static BOOL DBGWrite(u32 count, void* buffer, s32 param3) {
    BOOL total = FALSE;
    u32* buf_p = (u32*)buffer;
    u32 v1;
    u32 v;

    DBGEXISelect(4);

    v1 = (count & 0x1fffc) << 8 | 0xa0000000;
    total |= IS_FALSE(DBGEXIImm(&v1, sizeof(v1), 1));
    total |= IS_FALSE(DBGEXISync());

    while (param3 != 0) {
        v = *buf_p++;

        total |= IS_FALSE(DBGEXIImm(&v, sizeof(v), 1));
        total |= IS_FALSE(DBGEXISync());

        param3 -= 4;
        if (param3 < 0) {
            param3 = 0;
        }
    }

    total |= IS_FALSE(DBGEXIDeselect());
    return IS_FALSE(total);
}

/* 80373204-803732B0 36DB44 00AC+00 1/1 0/0 0/0 .text            DBGReadStatus */
inline static BOOL _DBGReadStatus(u32* p1) {
    BOOL total = FALSE;
    u32 v;

    DBGEXISelect(4);

    v = 1 << 30;
    total |= IS_FALSE(DBGEXIImm(&v, 2, 1));
    total |= IS_FALSE(DBGEXISync());

    total |= IS_FALSE(DBGEXIImm(p1, 4, 0));
    total |= IS_FALSE(DBGEXISync());

    total |= IS_FALSE(DBGEXIDeselect());

    return IS_FALSE(total);
}
#pragma dont_inline on
static BOOL DBGReadStatus(u32* p1) {
    return _DBGReadStatus(p1);
}
#pragma dont_inline reset

/* 803731C8-80373204 36DB08 003C+00 1/1 0/0 0/0 .text            MWCallback */
static void MWCallback(u32 a, OSContext* b) {
    EXIInputFlag = TRUE;
    if (MTRCallback) {
        MTRCallback(0);
    }
}

/* 80373188-803731C8 36DAC8 0040+00 1/1 0/0 0/0 .text            DBGHandler */
static void DBGHandler(s16 a, OSContext* b) {
    *__PIRegs = 0x1000;
    if (DBGCallback) {
        DBGCallback(a, b);
    }
}

/* 80373110-80373188 36DA50 0078+00 0/0 1/1 0/0 .text            DBInitComm */
void DBInitComm(u8** a, MTRCallbackType b) {
    BOOL interrupts = OSDisableInterrupts();
    {
        pEXIInputFlag = (u8*)EXIInputFlag;
        pEXIInputFlag = &EXIInputFlag;

        *a = pEXIInputFlag;

        MTRCallback = b;

        DBGEXIInit();
    }
    OSRestoreInterrupts(interrupts);
}

/* 803730BC-80373110 36D9FC 0054+00 0/0 1/1 0/0 .text            DBInitInterrupts */
void DBInitInterrupts(void) {
    __OSMaskInterrupts(0x18000);
    __OSMaskInterrupts(0x40);
    DBGCallback = &MWCallback;
    __OSSetInterruptHandler(0x19, DBGHandler);
    __OSUnmaskInterrupts(0x40);
}

static void CheckMailBox(void) {
    u32 v;
    DBGReadStatus(&v);
    if (v & 1) {
        DBGReadMailbox(&v);
        v &= 0x1fffffff;

        if ((v & 0x1f000000) == 0x1f000000) {
            SendMailData = v;
            RecvDataLeng = v & 0x7fff;
            EXIInputFlag = 1;
        }
    }
}

/* 80373020-803730BC 36D960 009C+00 0/0 2/2 0/0 .text            DBQueryData */
u32 DBQueryData(void) {
    EXIInputFlag = 0;
    if (!RecvDataLeng) {
        BOOL interrupts = OSDisableInterrupts();
        CheckMailBox();
        OSRestoreInterrupts(interrupts);
    }
    return RecvDataLeng;
}

/* 80372F94-80373020 36D8D4 008C+00 0/0 2/2 0/0 .text            DBRead */
BOOL DBRead(u32* buffer, s32 count) {
    u32 interrupts = OSDisableInterrupts();
    u32 v = SendMailData & 0x10000 ? 0x1000 : 0;

    DBGRead(v + 0x1e000, buffer, ROUND_UP(count, 4));

    RecvDataLeng = 0;
    EXIInputFlag = 0;

    OSRestoreInterrupts(interrupts);

    return 0;
}

/* 80372D34-80372F94 36D674 0260+00 0/0 1/1 0/0 .text            DBWrite */
BOOL DBWrite(void* src, u32 size) {
    u32 v;
    u32 busyFlag;
    BOOL interrupts = OSDisableInterrupts();

    do {
        _DBGReadStatus(&busyFlag);
    } while (busyFlag & 2);

    SendCount++;
    v = ((SendCount & 1) ? 0x1000 : 0);

    while (!DBGWrite(v | 0x1c000, src, ROUND_UP(size, 4)))
        ;

    do {
        _DBGReadStatus(&busyFlag);
    } while (busyFlag & 2);

    v = SendCount;
    while (!DBGWriteMailbox((0x1f000000) | v << 0x10 | size))
        ;

    do {
        while (!_DBGReadStatus(&busyFlag))
            ;
    } while (busyFlag & 2);

    OSRestoreInterrupts(interrupts);

    return 0;
}

/* 80372D30-80372D34 36D670 0004+00 0/0 1/1 0/0 .text            DBOpen */
void DBOpen(void) {}

/* 80372D2C-80372D30 36D66C 0004+00 0/0 1/1 0/0 .text            DBClose */
void DBClose(void) {}
