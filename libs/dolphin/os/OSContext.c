#include "dolphin/os/OSContext.h"
#include "dolphin/db/db.h"
#include "dolphin/os/OS.h"

volatile OSContext* __OSCurrentContext : (OS_BASE_CACHED | 0x00D4);
volatile OSContext* __OSFPUContext : (OS_BASE_CACHED | 0x00D8);

/* 8033BBE4-8033BD08 336524 0124+00 1/1 0/0 0/0 .text            __OSLoadFPUContext */
asm void __OSLoadFPUContext(void) {
    // clang-format off
    nofralloc

    lhz r5, 0x1A2(r4)
    clrlwi. r5, r5, 0x1f
    beq exit

    lfd f0, 0x190(r4)
    mtfsf 0xFF, f0
    mfspr r5, 0x398
    rlwinm. r5, r5, 3, 0x1F, 0x1F
    beq load_fprs

    psq_l f0, 0x1C8(r4), 0, 0
    psq_l f1, 0x1D0(r4), 0, 0
    psq_l f2, 0x1D8(r4), 0, 0
    psq_l f3, 0x1E0(r4), 0, 0
    psq_l f4, 0x1E8(r4), 0, 0
    psq_l f5, 0x1F0(r4), 0, 0
    psq_l f6, 0x1F8(r4), 0, 0
    psq_l f7, 0x200(r4), 0, 0
    psq_l f8, 0x208(r4), 0, 0
    psq_l f9, 0x210(r4), 0, 0
    psq_l f10, 0x218(r4), 0, 0
    psq_l f11, 0x220(r4), 0, 0
    psq_l f12, 0x228(r4), 0, 0
    psq_l f13, 0x230(r4), 0, 0
    psq_l f14, 0x238(r4), 0, 0
    psq_l f15, 0x240(r4), 0, 0
    psq_l f16, 0x248(r4), 0, 0
    psq_l f17, 0x250(r4), 0, 0
    psq_l f18, 0x258(r4), 0, 0
    psq_l f19, 0x260(r4), 0, 0
    psq_l f20, 0x268(r4), 0, 0
    psq_l f21, 0x270(r4), 0, 0
    psq_l f22, 0x278(r4), 0, 0
    psq_l f23, 0x280(r4), 0, 0
    psq_l f24, 0x288(r4), 0, 0
    psq_l f25, 0x290(r4), 0, 0
    psq_l f26, 0x298(r4), 0, 0
    psq_l f27, 0x2A0(r4), 0, 0
    psq_l f28, 0x2A8(r4), 0, 0
    psq_l f29, 0x2B0(r4), 0, 0
    psq_l f30, 0x2B8(r4), 0, 0
    psq_l f31, 0x2C0(r4), 0, 0

load_fprs:
    lfd f0, 0x90(r4)
    lfd f1, 0x98(r4)
    lfd f2, 0xA0(r4)
    lfd f3, 0xA8(r4)
    lfd f4, 0xB0(r4)
    lfd f5, 0xB8(r4)
    lfd f6, 0xC0(r4)
    lfd f7, 0xC8(r4)
    lfd f8, 0xD0(r4)
    lfd f9, 0xD8(r4)
    lfd f10, 0xE0(r4)
    lfd f11, 0xE8(r4)
    lfd f12, 0xF0(r4)
    lfd f13, 0xF8(r4)
    lfd f14, 0x100(r4)
    lfd f15, 0x108(r4)
    lfd f16, 0x110(r4)
    lfd f17, 0x118(r4)
    lfd f18, 0x120(r4)
    lfd f19, 0x128(r4)
    lfd f20, 0x130(r4)
    lfd f21, 0x138(r4)
    lfd f22, 0x140(r4)
    lfd f23, 0x148(r4)
    lfd f24, 0x150(r4)
    lfd f25, 0x158(r4)
    lfd f26, 0x160(r4)
    lfd f27, 0x168(r4)
    lfd f28, 0x170(r4)
    lfd f29, 0x178(r4)
    lfd f30, 0x180(r4)
    lfd f31, 0x188(r4)

exit:
    blr
    // clang-format on
}

/* 8033BD08-8033BE30 336648 0128+00 2/2 0/0 0/0 .text            __OSSaveFPUContext */
asm void __OSSaveFPUContext(s32 unused0, s32 unused1, register OSContext* context) {
    // clang-format off
    nofralloc

    lhz r3, 0x1A2(context)
    ori r3, r3, 1
    sth r3, 0x1A2(context)

    stfd f0, 0x90(context)
    stfd f1, 0x98(context)
    stfd f2, 0xa0(context)
    stfd f3, 0xa8(context)
    stfd f4, 0xb0(context)
    stfd f5, 0xb8(context)
    stfd f6, 0xc0(context)
    stfd f7, 0xc8(context)
    stfd f8, 0xd0(context)
    stfd f9, 0xd8(context)
    stfd f10, 0xe0(context)
    stfd f11, 0xe8(context)
    stfd f12, 0xf0(context)
    stfd f13, 0xf8(context)
    stfd f14, 0x100(context)
    stfd f15, 0x108(context)
    stfd f16, 0x110(context)
    stfd f17, 0x118(context)
    stfd f18, 0x120(context)
    stfd f19, 0x128(context)
    stfd f20, 0x130(context)
    stfd f21, 0x138(context)
    stfd f22, 0x140(context)
    stfd f23, 0x148(context)
    stfd f24, 0x150(context)
    stfd f25, 0x158(context)
    stfd f26, 0x160(context)
    stfd f27, 0x168(context)
    stfd f28, 0x170(context)
    stfd f29, 0x178(context)
    stfd f30, 0x180(context)
    stfd f31, 0x188(context)

    mffs f0
    stfd f0, 0x190(context)
    lfd f0, 0x90(context)
    mfspr r3, 0x398
    rlwinm. r3, r3, 3, 0x1f, 0x1f
    beq exit

    psq_st f0, 456(context), 0, 0
    psq_st f1, 464(context), 0, 0
    psq_st f2, 472(context), 0, 0
    psq_st f3, 480(context), 0, 0
    psq_st f4, 488(context), 0, 0
    psq_st f5, 496(context), 0, 0
    psq_st f6, 504(context), 0, 0
    psq_st f7, 512(context), 0, 0
    psq_st f8, 520(context), 0, 0
    psq_st f9, 528(context), 0, 0
    psq_st f10, 536(context), 0, 0
    psq_st f11, 544(context), 0, 0
    psq_st f12, 552(context), 0, 0
    psq_st f13, 560(context), 0, 0
    psq_st f14, 568(context), 0, 0
    psq_st f15, 576(context), 0, 0
    psq_st f16, 584(context), 0, 0
    psq_st f17, 592(context), 0, 0
    psq_st f18, 600(context), 0, 0
    psq_st f19, 608(context), 0, 0
    psq_st f20, 616(context), 0, 0
    psq_st f21, 624(context), 0, 0
    psq_st f22, 632(context), 0, 0
    psq_st f23, 640(context), 0, 0
    psq_st f24, 648(context), 0, 0
    psq_st f25, 656(context), 0, 0
    psq_st f26, 664(context), 0, 0
    psq_st f27, 672(context), 0, 0
    psq_st f28, 680(context), 0, 0
    psq_st f29, 688(context), 0, 0
    psq_st f30, 696(context), 0, 0
    psq_st f31, 704(context), 0, 0

exit:
    blr
    // clang-format on
}

/* 8033BE30-8033BE38 336770 0008+00 0/0 1/1 0/0 .text            OSSaveFPUContext */
asm void OSSaveFPUContext(register OSContext* context) {
    // clang-format off
    nofralloc

    addi r5, context, 0
    b __OSSaveFPUContext
    // clang-format on
}

/* 8033BE38-8033BE94 336778 005C+00 1/1 18/18 0/0 .text            OSSetCurrentContext */
asm void OSSetCurrentContext(register OSContext* context) {
    // clang-format off
    nofralloc

    lis r4, OS_CURRENT_CONTEXT@ha
    stw context, OS_CURRENT_CONTEXT@l(r4)
    clrlwi r5, context, 2
    stw r5, 0xc0(r4)
    lwz r5, 0xd8(r4)
    cmpw r5, context
    bne lbl_800EE9AC
    lwz r6, 0x19c(context)
    ori r6, r6, 0x2000
    stw r6, 0x19c(context)
    mfmsr r6
    ori r6, r6, 2
    mtmsr r6
    blr

lbl_800EE9AC:
    lwz r6, 0x19c(context)
    rlwinm r6, r6, 0, 0x13, 0x11
    stw r6, 0x19c(context)
    mfmsr r6
    rlwinm r6, r6, 0, 0x13, 0x11
    ori r6, r6, 2
    mtmsr r6
    isync
    blr
    // clang-format on
}

/* 8033BE94-8033BEA0 3367D4 000C+00 0/0 2/2 0/0 .text            OSGetCurrentContext */
OSContext* OSGetCurrentContext(void) {
    return OS_CURRENT_CONTEXT;
}

/* 8033BEA0-8033BF20 3367E0 0080+00 0/0 1/1 0/0 .text            OSSaveContext */
asm u32 OSSaveContext(register OSContext* context) {
    // clang-format off
    nofralloc

    stmw r13, 0x34(context)

    mfspr r0, GQR1
    stw r0, 0x1a8(context)
    mfspr r0, GQR2
    stw r0, 0x1ac(context)
    mfspr r0, GQR3
    stw r0, 0x1b0(context)
    mfspr r0, GQR4
    stw r0, 0x1b4(context)
    mfspr r0, GQR5
    stw r0, 0x1b8(context)
    mfspr r0, GQR6
    stw r0, 0x1bc(context)
    mfspr r0, GQR7
    stw r0, 0x1c0(context)

    mfcr r0
    stw r0, 0x80(context)
    mflr r0
    stw r0, 0x84(context)
    stw r0, 0x198(context)
    mfmsr r0
    stw r0, 0x19c(context)
    mfctr r0
    stw r0, 0x88(context)
    mfxer r0
    stw r0, 0x8c(context)

    stw r1, 4(context)
    stw r2, 8(context)

    li r0, 1
    stw r0, 0xc(context)

    li r3, 0
    blr
    // clang-format on
}

/* 8033BF20-8033BFF8 336860 00D8+00 0/0 4/4 0/0 .text            OSLoadContext */
asm void OSLoadContext(register OSContext* context) {
    // clang-format off
    nofralloc

    lis r4, OSDisableInterrupts@ha
    lwz r6, 0x198(context)
    addi r5, r4, OSDisableInterrupts@l
    cmplw r6, r5
    ble srr0_not_in_disableintr
    lis r4, __RAS_OSDisableInterrupts_end@ha
    addi r0, r4, __RAS_OSDisableInterrupts_end@l
    cmplw r6, r0
    bge srr0_not_in_disableintr
    stw r5, 0x198(context)
        
srr0_not_in_disableintr:
    lwz r0, 0(context)
    lwz r1, 4(context)
    lwz r2, 8(context)
    lhz r4, 0x1a2(context)
    rlwinm. r5, r4, 0, 0x1e, 0x1e
    beq load_saved_gprs
    rlwinm r4, r4, 0, 0x1f, 0x1d
    sth r4, 0x1a2(context)
    lmw r5, 0x14(context)
    b load_special_regs
    
load_saved_gprs:
    lmw r13, 0x34(context)
    
load_special_regs:
    lwz r4, 0x1a8(context)
    mtspr 0x391, r4
    lwz r4, 0x1ac(context)
    mtspr 0x392, r4
    lwz r4, 0x1b0(context)
    mtspr 0x393, r4
    lwz r4, 0x1b4(context)
    mtspr 0x394, r4
    lwz r4, 0x1b8(context)
    mtspr 0x395, r4
    lwz r4, 0x1bc(context)
    mtspr 0x396, r4
    lwz r4, 0x1c0(context)
    mtspr 0x397, r4
    lwz r4, 0x80(context)
    mtcrf 0xff, r4
    lwz r4, 0x84(context)
    mtlr r4
    lwz r4, 0x88(context)
    mtctr r4
    lwz r4, 0x8c(context)
    mtxer r4
    mfmsr r4
    rlwinm r4, r4, 0, 0x11, 0xf
    rlwinm r4, r4, 0, 0x1f, 0x1d
    mtmsr r4
    lwz r4, 0x198(context)
    mtspr 0x1a, r4
    lwz r4, 0x19c(context)
    mtspr 0x1b, r4
    lwz r4, 0x10(context)
    lwz context, 0xc(context)
    rfi
    // clang-format on
}

/* 8033BFF8-8033C000 336938 0008+00 0/0 5/5 0/0 .text            OSGetStackPointer */
asm u8* OSGetStackPointer(void) {
    // clang-format off
    nofralloc

    mr r3, r1
    blr
    // clang-format on
}

/* 8033C000-8033C024 336940 0024+00 1/1 20/20 0/0 .text            OSClearContext */
void OSClearContext(OSContext* context) {
    context->mode = 0;
    context->state = 0;

    if (context == OS_CURRENT_FPU_CONTEXT) {
        OS_CURRENT_FPU_CONTEXT = NULL;
    }
}

/* 8033C024-8033C0E0 336964 00BC+00 0/0 1/1 0/0 .text            OSInitContext */
asm void OSInitContext(register OSContext* context, register u32 srr0, register u32 stack) {
    // clang-format off
    nofralloc
    
    stw srr0, 0x198(context)
    stw stack, 4(context)
    li r11, 0
    ori r11, r11, 0x9032
    stw r11, 0x19c(context)
    li r0, 0
    stw r0, 0x80(context)
    stw r0, 0x8c(context)
    stw r2, 8(context)
    stw r13, 0x34(context)
    stw r0, 0xc(context)
    stw r0, 0x10(context)
    stw r0, 0x14(context)
    stw r0, 0x18(context)
    stw r0, 0x1c(context)
    stw r0, 0x20(context)
    stw r0, 0x24(context)
    stw r0, 0x28(context)
    stw r0, 0x2c(context)
    stw r0, 0x30(context)
    stw r0, 0x38(context)
    stw r0, 0x3c(context)
    stw r0, 0x40(context)
    stw r0, 0x44(context)
    stw r0, 0x48(context)
    stw r0, 0x4c(context)
    stw r0, 0x50(context)
    stw r0, 0x54(context)
    stw r0, 0x58(context)
    stw r0, 0x5c(context)
    stw r0, 0x60(context)
    stw r0, 0x64(context)
    stw r0, 0x68(context)
    stw r0, 0x6c(context)
    stw r0, 0x70(context)
    stw r0, 0x74(context)
    stw r0, 0x78(context)
    stw r0, 0x7c(context)
    stw r0, 0x1a4(context)
    stw r0, 0x1a8(context)
    stw r0, 0x1ac(context)
    stw r0, 0x1b0(context)
    stw r0, 0x1b4(context)
    stw r0, 0x1b8(context)
    stw r0, 0x1bc(context)
    stw r0, 0x1c0(context)

    b OSClearContext
    // clang-format on
}

// inline duplicates for OSDumpContext to match
// maybe need to change inlining compiler flag for better match?
inline void i_OSClearContext(OSContext* context) {
    context->mode = 0;
    context->state = 0;

    if (context == OS_CURRENT_FPU_CONTEXT) {
        OS_CURRENT_FPU_CONTEXT = NULL;
    }
}

inline OSContext* i_OSGetCurrentContext(void) {
    return OS_CURRENT_CONTEXT;
}

/* 8033C0E0-8033C388 336A20 02A8+00 0/0 3/3 0/0 .text            OSDumpContext */
void OSDumpContext(OSContext* context) {
    u32 i;
    u32* p;

    OSReport("------------------------- Context 0x%08x -------------------------\n", context);

    for (i = 0; i < 16; ++i) {
        OSReport("r%-2d  = 0x%08x (%14d)  r%-2d  = 0x%08x (%14d)\n", i, context->gpr[i],
                 context->gpr[i], i + 16, context->gpr[i + 16], context->gpr[i + 16]);
    }

    OSReport("LR   = 0x%08x                   CR   = 0x%08x\n", context->lr, context->cr);
    OSReport("SRR0 = 0x%08x                   SRR1 = 0x%08x\n", context->srr0, context->srr1);

    OSReport("\nGQRs----------\n");
    for (i = 0; i < 4; ++i) {
        OSReport("gqr%d = 0x%08x \t gqr%d = 0x%08x\n", i, context->gqr[i], i + 4,
                 context->gqr[i + 4]);
    }

    if (context->state & OS_CONTEXT_STATE_FPSAVED) {
        OSContext* currentContext;
        OSContext fpuContext;
        BOOL enabled;

        enabled = OSDisableInterrupts();
        currentContext = i_OSGetCurrentContext();
        i_OSClearContext(&fpuContext);
        OSSetCurrentContext(&fpuContext);

        OSReport("\n\nFPRs----------\n");
        for (i = 0; i < 32; i += 2) {
            OSReport("fr%d \t= %d \t fr%d \t= %d\n", i, (u32)context->fpr[i], i + 1,
                     (u32)context->fpr[i + 1]);
        }
        OSReport("\n\nPSFs----------\n");
        for (i = 0; i < 32; i += 2) {
            OSReport("ps%d \t= 0x%x \t ps%d \t= 0x%x\n", i, (u32)context->ps[i], i + 1,
                     (u32)context->ps[i + 1]);
        }

        i_OSClearContext(&fpuContext);
        OSSetCurrentContext(currentContext);
        OSRestoreInterrupts(enabled);
    }

    OSReport("\nAddress:      Back Chain    LR Save\n");
    for (i = 0, p = (u32*)context->gpr[1]; p && (u32)p != 0xffffffff && i++ < 16; p = (u32*)*p) {
        OSReport("0x%08x:   0x%08x    0x%08x\n", p, p[0], p[1]);
    }
}

/* 8033C388-8033C40C 336CC8 0084+00 1/1 0/0 0/0 .text            OSSwitchFPUContext */
static asm void OSSwitchFPUContext(register u8 err, register OSContext* context) {
    // clang-format off
    nofralloc

    mfmsr r5
    ori r5, r5, 0x2000
    mtmsr r5
    isync
    lwz r5, 0x19c(context)
    ori r5, r5, 0x2000
    mtspr 0x1b, r5
    lis r3, OS_CURRENT_FPU_CONTEXT@ha
    lwz r5, OS_CURRENT_FPU_CONTEXT@l(r3)
    stw context, 0xd8(r3)
    cmpw r5, context
    beq context_is_curr_fpu_context
    cmpwi r5, 0
    beq context_is_null
    bl __OSSaveFPUContext

context_is_null:
    bl __OSLoadFPUContext

context_is_curr_fpu_context:
    lwz r3, 0x80(context)
    mtcrf 0xff, r3
    lwz r3, 0x84(context)
    mtlr r3
    lwz r3, 0x198(context)
    mtspr 0x1a, r3
    lwz r3, 0x88(context)
    mtctr r3
    lwz r3, 0x8c(context)
    mtxer r3
    lhz r3, 0x1a2(context)
    rlwinm r3, r3, 0, 0x1f, 0x1d
    sth r3, 0x1a2(context)
    lwz r5, 0x14(context)
    lwz r3, 0xc(context)
    lwz context, 0x10(context)
    rfi
    // clang-format on
}

/* 8033C40C-8033C454 336D4C 0048+00 0/0 1/1 0/0 .text            __OSContextInit */
void __OSContextInit(void) {
    __OSSetExceptionHandler(EXCEPTION_FLOATING_POINT, OSSwitchFPUContext);
    __OSFPUContext = NULL;
    DBPrintf("FPU-unavailable handler installed\n");
}

/* 8033C454-8033C580 336D94 012C+00 0/0 1/1 0/0 .text            OSFillFPUContext */
asm void OSFillFPUContext(register OSContext* context) {
    // clang-format off
    nofralloc

    mfmsr r5
    ori r5, r5, 0x2000
    mtmsr r5
    isync

    stfd f0, 0x90(context)
    stfd f1, 0x98(context)
    stfd f2, 0xa0(context)
    stfd f3, 0xa8(context)
    stfd f4, 0xb0(context)
    stfd f5, 0xb8(context)
    stfd f6, 0xc0(context)
    stfd f7, 0xc8(context)
    stfd f8, 0xd0(context)
    stfd f9, 0xd8(context)
    stfd f10, 0xe0(context)
    stfd f11, 0xe8(context)
    stfd f12, 0xf0(context)
    stfd f13, 0xf8(context)
    stfd f14, 0x100(context)
    stfd f15, 0x108(context)
    stfd f16, 0x110(context)
    stfd f17, 0x118(context)
    stfd f18, 0x120(context)
    stfd f19, 0x128(context)
    stfd f20, 0x130(context)
    stfd f21, 0x138(context)
    stfd f22, 0x140(context)
    stfd f23, 0x148(context)
    stfd f24, 0x150(context)
    stfd f25, 0x158(context)
    stfd f26, 0x160(context)
    stfd f27, 0x168(context)
    stfd f28, 0x170(context)
    stfd f29, 0x178(context)
    stfd f30, 0x180(context)
    stfd f31, 0x188(context)

    mffs f0
    stfd f0, 0x190(context)
    lfd f0, 0x90(context)
    mfspr r5, 0x398
    rlwinm. r5, r5, 3, 0x1f, 0x1f
    beq exit

    psq_st f0, 456(context), 0, 0
    psq_st f1, 464(context), 0, 0
    psq_st f2, 472(context), 0, 0
    psq_st f3, 480(context), 0, 0
    psq_st f4, 488(context), 0, 0
    psq_st f5, 496(context), 0, 0
    psq_st f6, 504(context), 0, 0
    psq_st f7, 512(context), 0, 0
    psq_st f8, 520(context), 0, 0
    psq_st f9, 528(context), 0, 0
    psq_st f10, 536(context), 0, 0
    psq_st f11, 544(context), 0, 0
    psq_st f12, 552(context), 0, 0
    psq_st f13, 560(context), 0, 0
    psq_st f14, 568(context), 0, 0
    psq_st f15, 576(context), 0, 0
    psq_st f16, 584(context), 0, 0
    psq_st f17, 592(context), 0, 0
    psq_st f18, 600(context), 0, 0
    psq_st f19, 608(context), 0, 0
    psq_st f20, 616(context), 0, 0
    psq_st f21, 624(context), 0, 0
    psq_st f22, 632(context), 0, 0
    psq_st f23, 640(context), 0, 0
    psq_st f24, 648(context), 0, 0
    psq_st f25, 656(context), 0, 0
    psq_st f26, 664(context), 0, 0
    psq_st f27, 672(context), 0, 0
    psq_st f28, 680(context), 0, 0
    psq_st f29, 688(context), 0, 0
    psq_st f30, 696(context), 0, 0
    psq_st f31, 704(context), 0, 0

exit:
    blr
    // clang-format on
}
