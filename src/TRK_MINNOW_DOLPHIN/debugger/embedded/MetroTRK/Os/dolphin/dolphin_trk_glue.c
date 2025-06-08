#include "TRK_MINNOW_DOLPHIN/Os/dolphin/dolphin_trk_glue.h"
#include "TRK_MINNOW_DOLPHIN/Os/dolphin/DDH_Stubs.h"
#include "TRK_MINNOW_DOLPHIN/Os/dolphin/GDEV_Stubs.h"
#include "TRK_MINNOW_DOLPHIN/Os/dolphin/UDP_Stubs.h"
#include "dolphin/base/PPCArch.h"
#include "trk.h"

void TRKInterruptHandler();

/* 8044F824-8044F828 07C544 0004+00 0/0 0/0 0/0 .bss             _MetroTRK_Has_Framing */
BOOL _MetroTRK_Has_Framing;

u8 TRK_Use_BBA;

/* 803D32A8-803D32D0 0303C8 0028+00 8/8 0/0 0/0 .data            gDBCommTable */
DBCommTable gDBCommTable = {};

/* 80372114-8037214C 36CA54 0038+00 1/1 0/0 0/0 .text            TRKEXICallBack */
void TRKEXICallBack(s16 param_0, OSContext* ctx) {
    OSEnableScheduler();
    TRKLoadContext(ctx, 0x500);
}

/* 80371EA8-80372114 36C7E8 026C+00 0/0 2/2 0/0 .text            InitMetroTRKCommTable */
int InitMetroTRKCommTable(int hwId) {
    int result = 1;
    OSReport("Devkit set to : %ld\n", hwId);
    TRK_Use_BBA = 0;

    if (hwId == HARDWARE_BBA) {  // BBA hardware
        OSReport("MetroTRK : Set to BBA\n");
        // Initialize gDBCommTable
        TRK_Use_BBA = 1;
        gDBCommTable.initialize_func = udp_cc_initialize;
        gDBCommTable.open_func = udp_cc_open;
        gDBCommTable.close_func = udp_cc_close;
        gDBCommTable.read_func = udp_cc_read;
        gDBCommTable.write_func = udp_cc_write;
        gDBCommTable.shutdown_func = udp_cc_shutdown;
        gDBCommTable.peek_func = udp_cc_peek;
        gDBCommTable.pre_continue_func = udp_cc_pre_continue;
        gDBCommTable.post_stop_func = udp_cc_post_stop;
        gDBCommTable.init_interrupts_func = NULL;
        return 0;
    }

    if (hwId == HARDWARE_GDEV) {  // NDEV hardware
        OSReport("MetroTRK : Set to GDEV hardware\n");
        // Initialize gDBCommTable
        result = Hu_IsStub();
        gDBCommTable.initialize_func = (DBCommInitFunc)gdev_cc_initialize;
        gDBCommTable.open_func = gdev_cc_open;
        gDBCommTable.close_func = gdev_cc_close;
        gDBCommTable.read_func = gdev_cc_read;
        gDBCommTable.write_func = gdev_cc_write;
        gDBCommTable.shutdown_func = gdev_cc_shutdown;
        gDBCommTable.peek_func = gdev_cc_peek;
        gDBCommTable.pre_continue_func = gdev_cc_pre_continue;
        gDBCommTable.post_stop_func = gdev_cc_post_stop;
        gDBCommTable.init_interrupts_func = gdev_cc_initinterrupts;

    } else if (hwId == HARDWARE_AMC_DDH) {
        OSReport("MetroTRK : Set to AMC DDH hardware\n");
        result = AMC_IsStub();
        // Initialize gDBCommTable
        gDBCommTable.initialize_func = (DBCommInitFunc)ddh_cc_initialize;
        gDBCommTable.open_func = ddh_cc_open;
        gDBCommTable.close_func = ddh_cc_close;
        gDBCommTable.read_func = ddh_cc_read;
        gDBCommTable.write_func = ddh_cc_write;
        gDBCommTable.shutdown_func = ddh_cc_shutdown;
        gDBCommTable.peek_func = ddh_cc_peek;
        gDBCommTable.pre_continue_func = ddh_cc_pre_continue;
        gDBCommTable.post_stop_func = ddh_cc_post_stop;
        gDBCommTable.init_interrupts_func = ddh_cc_initinterrupts;

    } else {  // unknown hardware
        OSReport("MetroTRK : Set to UNKNOWN hardware. (%ld)\n", hwId);
        OSReport("MetroTRK : Invalid hardware ID passed from OS\n");
        OSReport("MetroTRK : Defaulting to GDEV Hardware\n");
    }

    return result;
}

/* 80371E58-80371EA8 36C798 0050+00 0/0 1/1 0/0 .text            TRKInitializeIntDrivenUART */
DSError TRKInitializeIntDrivenUART(u32 param_0, u32 param_1, u32 param_2, void* param_3) {
    gDBCommTable.initialize_func(param_3, TRKEXICallBack);
    gDBCommTable.open_func();
    return DS_NoError;
}

/* 80371E10-80371E58 36C750 0048+00 0/0 1/1 0/0 .text            EnableEXI2Interrupts */
void EnableEXI2Interrupts(void) {
    if (!TRK_Use_BBA) {
        if (gDBCommTable.init_interrupts_func != NULL) {
            gDBCommTable.init_interrupts_func();
        }
    }
}

/* 80371DE0-80371E10 36C720 0030+00 0/0 1/1 0/0 .text            TRKPollUART */
int TRKPollUART(void) {
    return gDBCommTable.peek_func();
}

/* 80371DA4-80371DE0 36C6E4 003C+00 0/0 1/1 0/0 .text            TRKReadUARTN */
UARTError TRKReadUARTN(void* bytes, u32 length) {
    int readErr = gDBCommTable.read_func(bytes, length);
    return ((-readErr | readErr) >> 31);
}

/* 80371D68-80371DA4 36C6A8 003C+00 0/0 13/13 0/0 .text            TRKWriteUARTN */
UARTError TRKWriteUARTN(const void* bytes, u32 length) {
    int writeErr = gDBCommTable.write_func(bytes, length);
    return ((-writeErr | writeErr) >> 31);
}

/* 80371D38-80371D68 36C678 0030+00 0/0 1/1 0/0 .text            ReserveEXI2Port */
void ReserveEXI2Port(void) {
    gDBCommTable.post_stop_func();
}

/* 80371D08-80371D38 36C648 0030+00 0/0 1/1 0/0 .text            UnreserveEXI2Port */
void UnreserveEXI2Port(void) {
    gDBCommTable.pre_continue_func();
}

/* 80371CD8-80371D08 36C618 0030+00 0/0 1/1 0/0 .text            TRK_board_display */
void TRK_board_display(char* str) {
    OSReport("%s\n", str);
}

/* 80371C80-80371CD8 36C5C0 0058+00 0/0 1/1 0/0 .text            InitializeProgramEndTrap */
DSError InitializeProgramEndTrap(void) {
    static const u32 EndofProgramInstruction = 'END';

    u8* endOfProgramInstructionBytes = (u8*)&EndofProgramInstruction;
    u8* ppcHaltPtr = (u8*)PPCHalt;
    TRK_memcpy(ppcHaltPtr + 4, endOfProgramInstructionBytes, 4);
    ICInvalidateRange(ppcHaltPtr + 4, 4);
    DCFlushRange(ppcHaltPtr + 4, 4);
}

/* 80371C7C-80371C80 36C5BC 0004+00 0/0 1/1 0/0 .text            TRKUARTInterruptHandler */
void TRKUARTInterruptHandler() {}

/* 80371BF4-80371C7C 36C534 0088+00 1/1 0/0 0/0 .text            TRKLoadContext */
asm void TRKLoadContext(OSContext* ctx, u32) {
    // clang-format off
	nofralloc
	lwz r0, OSContext.gpr[0](r3)
	lwz r1, OSContext.gpr[1](r3)
	lwz r2, OSContext.gpr[2](r3)
	lhz r5, OSContext.state(r3)
	rlwinm. r6, r5, 0, 0x1e, 0x1e
	beq lbl_80371C1C
	rlwinm r5, r5, 0, 0x1f, 0x1d
	sth r5, OSContext.state(r3)
	lmw r5, OSContext.gpr[5](r3)
	b lbl_80371C20
lbl_80371C1C:
	lmw r13, OSContext.gpr[13](r3)
lbl_80371C20:
	mr r31, r3
	mr r3, r4
	lwz r4, OSContext.cr(r31)
	mtcrf 0xff, r4
	lwz r4, OSContext.lr(r31)
	mtlr r4
	lwz r4, OSContext.ctr(r31)
	mtctr r4
	lwz r4, OSContext.xer(r31)
	mtxer r4
	mfmsr r4
	rlwinm r4, r4, 0, 0x11, 0xf //Turn off external exceptions
	rlwinm r4, r4, 0, 0x1f, 0x1d //Turn off recoverable exception flag
	mtmsr r4
	mtsprg 1, r2
	lwz r4, OSContext.gpr[3](r31)
	mtsprg 2, r4
	lwz r4, OSContext.gpr[4](r31)
	mtsprg 3, r4
	lwz r2, OSContext.srr0(r31)
	lwz r4, OSContext.srr1(r31)
	lwz r31, OSContext.gpr[31](r31)
	b TRKInterruptHandler
    // clang-format on
}
