#ifndef EXIBIOS_H
#define EXIBIOS_H

#include "dolphin/os/OS.h"

typedef void (*EXICallback)(s32 chan, OSContext* context);

typedef struct EXIControl {
    EXICallback exiCallback;
    EXICallback tcCallback;
    EXICallback extCallback;
    vu32 state;
    int immLen;
    u8* immBuf;
    u32 dev;
    u32 id;
    s32 idTime;
    int items;
    struct {
        u32 dev;
        EXICallback callback;
    } queue[3];
} EXIControl;

s32 EXIImm(s32 chan, void* buf, s32 len, u32 type, EXICallback callbac);
s32 EXIImmEx(s32 chan, void* buf, s32 len, u32 mode);
BOOL EXIDma(s32 chan, void* buf, s32 len, u32 type, EXICallback callback);
BOOL EXISync(s32 chan);
EXICallback EXISetExiCallback(s32 chan, EXICallback exiCallback);
BOOL EXIProbe(s32 chan);
s32 EXIProbeEx(s32 chan);
BOOL EXIAttach(s32 chan, EXICallback extCallback);
BOOL EXIDetach(s32 chan);
BOOL EXISelect(s32 chan, u32 dev, u32 freq);
BOOL EXIDeselect(s32 chan);
void EXIInit(void);
BOOL EXILock(s32 chan, u32 dev, EXICallback unlockedCallback);
BOOL EXIUnlock(s32 chan);
u32 EXIGetState(s32 chan);
static void UnlockedHandler(s32 chan, OSContext* context);
s32 EXIGetID(s32 chan, u32 dev, u32* id);

#endif /* EXIBIOS_H */
