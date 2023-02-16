#ifndef JASAUDIOTHREAD_H
#define JASAUDIOTHREAD_H

#include "JSystem/JAudio2/JASGadget.h"

struct JASAudioThread : public JASGlobalInstance<JASAudioThread> {
    /* 8029CCDC */ JASAudioThread(int, int, u32);
    /* 8029CD4C */ void create(s32);
    /* 8029CDC0 */ void stop();
    /* 8029CDEC */ void run();
    /* 8029CF68 */ void DMACallback();
    /* 8029CFBC */ void DSPCallback(void*);
    /* 8029D028 */ ~JASAudioThread();

    static u8 snIntCount[4 + 4 /* padding */];
};

#endif /* JASAUDIOTHREAD_H */
