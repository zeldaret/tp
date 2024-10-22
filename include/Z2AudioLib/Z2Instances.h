#ifndef Z2INSTANCES_H
#define Z2INSTANCES_H

#include "Z2AudioLib/Z2WolfHowlMgr.h"
#include "Z2AudioLib/Z2DebugSys.h"
#include "JSystem/JAudio2/JASAudioThread.h"
#include "JSystem/JAudio2/JAUSoundTable.h"

#define AUDIO_INSTANCES                                                                            \
    JASDefaultBankTable* JASGlobalInstance<JASDefaultBankTable>::sInstance;                        \
    JASAudioThread* JASGlobalInstance<JASAudioThread>::sInstance;                                  \
    Z2SeMgr* JASGlobalInstance<Z2SeMgr>::sInstance;                                                \
    Z2SeqMgr* JASGlobalInstance<Z2SeqMgr>::sInstance;                                              \
    Z2SceneMgr* JASGlobalInstance<Z2SceneMgr>::sInstance;                                          \
    Z2StatusMgr* JASGlobalInstance<Z2StatusMgr>::sInstance;                                        \
    Z2DebugSys* JASGlobalInstance<Z2DebugSys>::sInstance;                                          \
    JAISoundStarter* JASGlobalInstance<JAISoundStarter>::sInstance;                                \
    Z2SoundStarter* JASGlobalInstance<Z2SoundStarter>::sInstance;                                  \
    Z2SpeechMgr2* JASGlobalInstance<Z2SpeechMgr2>::sInstance;                                      \
    JAISeMgr* JASGlobalInstance<JAISeMgr>::sInstance;                                              \
    JAISeqMgr* JASGlobalInstance<JAISeqMgr>::sInstance;                                            \
    JAIStreamMgr* JASGlobalInstance<JAIStreamMgr>::sInstance;                                      \
    Z2SoundMgr* JASGlobalInstance<Z2SoundMgr>::sInstance;                                          \
    JAISoundInfo* JASGlobalInstance<JAISoundInfo>::sInstance;                                      \
    JAUSoundTable* JASGlobalInstance<JAUSoundTable>::sInstance;                                    \
    JAUSoundNameTable* JASGlobalInstance<JAUSoundNameTable>::sInstance;                            \
    JAUSoundInfo* JASGlobalInstance<JAUSoundInfo>::sInstance;                                      \
    Z2SoundInfo* JASGlobalInstance<Z2SoundInfo>::sInstance;                                        \
    Z2SoundObjMgr* JASGlobalInstance<Z2SoundObjMgr>::sInstance;                                    \
    Z2Audience* JASGlobalInstance<Z2Audience>::sInstance;                                          \
    Z2FxLineMgr* JASGlobalInstance<Z2FxLineMgr>::sInstance;                                        \
    Z2EnvSeMgr* JASGlobalInstance<Z2EnvSeMgr>::sInstance;                                          \
    Z2SpeechMgr* JASGlobalInstance<Z2SpeechMgr>::sInstance;                                        \
    Z2WolfHowlMgr* JASGlobalInstance<Z2WolfHowlMgr>::sInstance;

#endif