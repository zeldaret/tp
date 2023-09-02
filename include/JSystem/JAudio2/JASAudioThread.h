#ifndef JASAUDIOTHREAD_H
#define JASAUDIOTHREAD_H

#include "JSystem/JAudio2/JASGadget.h"
#include "JSystem/JKernel/JKRThread.h"

enum JASAudioMessage {
	AUDIOMSG_DMA  = 0,
	AUDIOMSG_DSP  = 1,
	AUDIOMSG_STOP = 2,
};

struct JASAudioThread : public JKRThread, public JASGlobalInstance<JASAudioThread> {
    /* 8029CCDC */ JASAudioThread(int, int, u32);
    /* 8029CD4C */ static void create(s32);
    /* 8029CDC0 */ void stop();
    /* 8029CDEC */ virtual void* run();
    /* 8029CF68 */ static void DMACallback();
    /* 8029CFBC */ static void DSPCallback(void*);
    /* 8029D028 */ virtual ~JASAudioThread() {}

    static int getDSPSyncCount() { return snIntCount; }
    static void setDSPSyncCount(u32 param_0) { snIntCount = param_0; }

	/* 0x7c */ OSThreadQueue sThreadQueue;
	/* 0x84 */ bool sbPauseFlag;        // type unsure
	
    static volatile int snIntCount; // type unsure
};

#endif /* JASAUDIOTHREAD_H */
