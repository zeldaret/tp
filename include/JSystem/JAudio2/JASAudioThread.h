#ifndef JASAUDIOTHREAD_H
#define JASAUDIOTHREAD_H

#include "dolphin/types.h"

struct JASAudioThread {
    /* 8029CCDC */ JASAudioThread(int, int, u32);
    /* 8029CD4C */ void create(s32);
    /* 8029CDC0 */ void stop();
    /* 8029CDEC */ void run();
    /* 8029CF68 */ void DMACallback();
    /* 8029CFBC */ void DSPCallback(void*);
    /* 8029D028 */ ~JASAudioThread();

    static u8 snIntCount[4 + 4 /* padding */];
};

/**
 * this is supposed to be:
 * JASGlobalInstance<JASAudioThread>::sInstance
 * sInstance__35JASGlobalInstance<14JASAudioThread>
 */
extern JASAudioThread* data_80450B8C;

#endif /* JASAUDIOTHREAD_H */
