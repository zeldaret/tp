/**
 * dispatch.c
 * Description:
 */

#include "TRK_MINNOW_DOLPHIN/MetroTRK/Portable/dispatch.h"
#include "TRK_MINNOW_DOLPHIN/MetroTRK/Portable/msghndlr.h"
#include "TRK_MINNOW_DOLPHIN/utils/common/MWTrace.h"

/* 8036DB9C-8036DD0C 3684DC 0170+00 1/0 1/1 0/0 .text            TRKDispatchMessage */
s32 TRKDispatchMessage(TRKBuffer* buffer) {
    u32 ret;

    ret = 0x500;
    TRKSetBufferPosition(buffer, 0);
    MWTRACE(1, "Dispatch command 0x%08x\n", buffer->m_buffer[0]);

    switch (buffer->m_buffer[0]) {
    case TRK_DISPATCH_CMD_CONNECT:
        ret = TRKDoConnect(buffer);
        break;
    case TRK_DISPATCH_CMD_DISCONNECT:
        ret = TRKDoDisconnect(buffer);
        break;
    case TRK_DISPATCH_CMD_RESET:
        ret = TRKDoReset(buffer);
        break;
    case TRK_DISPATCH_CMD_OVERRIDE:
        ret = TRKDoOverride(buffer);
        break;
    case TRK_DISPATCH_CMD_GETVERSION:
        ret = TRKDoVersions(buffer);
        break;
    case TRK_DISPATCH_CMD_GETSUPPORTMASK:
        ret = TRKDoSupportMask(buffer);
        break;
    case TRK_DISPATCH_CMD_READMEM:
        ret = TRKDoReadMemory(buffer);
        break;
    case TRK_DISPATCH_CMD_WRITEMEM:
        ret = TRKDoWriteMemory(buffer);
        break;
    case TRK_DISPATCH_CMD_READREGS:
        ret = TRKDoReadRegisters(buffer);
        break;
    case TRK_DISPATCH_CMD_WRITEREGS:
        ret = TRKDoWriteRegisters(buffer);
        break;
    case TRK_DISPATCH_CMD_CONTINUE:
        ret = TRKDoContinue(buffer);
        break;
    case TRK_DISPATCH_CMD_STEP:
        ret = TRKDoStep(buffer);
        break;
    case TRK_DISPATCH_CMD_STOP:
        ret = TRKDoStop(buffer);
        break;
    case TRK_DISPATCH_CMD_SETOPTION:
        ret = TRKDoSetOption(buffer);
        break;
    }

    MWTRACE(1, "Dispatch complete err = %ld\n", ret);
    return ret;
}

/* 8036DD0C-8036DD14 36864C 0008+00 0/0 1/1 0/0 .text            TRKInitializeDispatcher */
u8 TRKInitializeDispatcher() {
    return 0;
}
