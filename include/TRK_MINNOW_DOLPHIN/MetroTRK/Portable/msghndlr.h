#ifndef METROTRK_PORTABLE_MSGHNDLR_H
#define METROTRK_PORTABLE_MSGHNDLR_H

#include "dolphin/types.h"
#include "TRK_MINNOW_DOLPHIN/MetroTRK/Portable/msgbuf.h"

void SetTRKConnected(BOOL);
BOOL GetTRKConnected(void);
s32 TRKDoSetOption(TRKBuffer*);
s32 TRKDoStop(TRKBuffer*);
s32 TRKDoStep(TRKBuffer*);
s32 TRKDoContinue(TRKBuffer*);
s32 TRKDoWriteRegisters(TRKBuffer*);
s32 TRKDoReadRegisters(TRKBuffer*);
s32 TRKDoWriteMemory(TRKBuffer*);
s32 TRKDoReadMemory(TRKBuffer*);
s32 TRKDoSupportMask(TRKBuffer*);
s32 TRKDoVersions(TRKBuffer*);
s32 TRKDoOverride(TRKBuffer*);
s32 TRKDoReset(TRKBuffer*);
s32 TRKDoDisconnect(TRKBuffer*);
s32 TRKDoConnect(TRKBuffer*);

#endif /* METROTRK_PORTABLE_MSGHNDLR_H */
