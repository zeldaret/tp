#include "Z2AudioLib/Z2AudioMgr.h"
#include "JSystem/JAudio2/JASAiCtrl.h"
#include "JSystem/JAudio2/JASDriverIF.h"
#include "JSystem/JAudio2/JASResArcLoader.h"
#include "JSystem/JAudio2/JASSeqParser.h"
#include "JSystem/JAudio2/JAUInitializer.h"
#include "JSystem/JAudio2/JAUSectionHeap.h"
#include "JSystem/JAudio2/JAUStreamAramMgr.h"
#include "JSystem/JAudio2/JAUSeqCollection.h"
#include "JSystem/JKernel/JKRSolidHeap.h"
#include "Z2AudioLib/Z2AudioArcLoader.h"
#include "Z2AudioLib/Z2Param.h"
#include "Z2AudioLib/Z2SoundHandles.h"

#if PLATFORM_WII || PLATFORM_SHIELD
#include "Z2AudioLib/Z2AudioCS.h"
#endif

/* 80451368-80451370 000868 0004+04 1/1 251/251 900/900 .sbss            mAudioMgrPtr__10Z2AudioMgr
 */
Z2AudioMgr* Z2AudioMgr::mAudioMgrPtr;

/* 802CD248-802CD34C 2C7B88 0104+00 0/0 1/1 0/0 .text            __ct__10Z2AudioMgrFv */
Z2AudioMgr::Z2AudioMgr() : mSoundStarter(true) {
    mAudioMgrPtr = this;
    mResettingFlag = false;
    field_0x519 = false;
}

/* 802CD34C-802CD7F8 2C7C8C 04AC+00 0/0 1/1 0/0 .text
 * init__10Z2AudioMgrFP12JKRSolidHeapUlPvP10JKRArchive          */
// NONMATCHING JASPoolAllocObject<_> locations
void Z2AudioMgr::init(JKRSolidHeap* heap, u32 memSize, void* baaData, JKRArchive* seqArc) {
    JAU_JASInitializer JASInitializer;
    JASInitializer.audioMemSize_ = memSize;
    JASInitializer.field_0x1c = 140;
    JASInitializer.dspLevel_ = 1.3f;
    JASInitializer.waveArcDir_ = "Audiores/Waves/";
    JASInitializer.initJASystem(heap);

    JAU_JAIInitializer JAIInitializer;
    JAIInitializer.field_0x0 = 78;
    JAIInitializer.field_0x4 = 4;
    JAIInitializer.field_0xc = 48;
    JAIInitializer.initJAInterface();
    
    JAISeMgr* seMgr = mSoundMgr.getSeMgr();

    JAISeCategoryArrangement categoryArrangement;
    categoryArrangement.mItems[0].mMaxActiveSe = 4;
    categoryArrangement.mItems[0].mMaxInactiveSe = 2;
    categoryArrangement.mItems[1].mMaxActiveSe = 2;
    categoryArrangement.mItems[1].mMaxInactiveSe = 1;
    categoryArrangement.mItems[2].mMaxActiveSe = 6;
    categoryArrangement.mItems[2].mMaxInactiveSe = 3;
    categoryArrangement.mItems[3].mMaxActiveSe = 16;
    categoryArrangement.mItems[3].mMaxInactiveSe = 8;
    categoryArrangement.mItems[4].mMaxActiveSe = 8;
    categoryArrangement.mItems[4].mMaxInactiveSe = 4;
    categoryArrangement.mItems[5].mMaxActiveSe = 6;
    categoryArrangement.mItems[5].mMaxInactiveSe = 3;
    categoryArrangement.mItems[6].mMaxActiveSe = 6;
    categoryArrangement.mItems[6].mMaxInactiveSe = 3;
    categoryArrangement.mItems[7].mMaxActiveSe = 12;
    categoryArrangement.mItems[7].mMaxInactiveSe = 8;
    categoryArrangement.mItems[8].mMaxActiveSe = 10;
    categoryArrangement.mItems[8].mMaxInactiveSe = 5;
    categoryArrangement.mItems[9].mMaxActiveSe = 8;
    categoryArrangement.mItems[9].mMaxInactiveSe = 4;
    seMgr->setCategoryArrangement(categoryArrangement);

    seMgr->getCategory(0)->getParams()->moveVolume(Z2Param::VOL_SE_SYSTEM_DEFAULT, 0);
    seMgr->getCategory(1)->getParams()->moveVolume(Z2Param::VOL_SE_LINK_VOICE_DEFAULT, 0);
    seMgr->getCategory(2)->getParams()->moveVolume(Z2Param::VOL_SE_LINK_MOTION_DEFAULT, 0);
    seMgr->getCategory(3)->getParams()->moveVolume(Z2Param::VOL_SE_LINK_FOOTNOTE_DEFAULT, 0);
    seMgr->getCategory(4)->getParams()->moveVolume(Z2Param::VOL_SE_OBJECT_DEFAULT, 0);
    seMgr->getCategory(5)->getParams()->moveVolume(Z2Param::VOL_SE_CHAR_VOICE_DEFAULT, 0);
    seMgr->getCategory(6)->getParams()->moveVolume(Z2Param::VOL_SE_CHAR_MOVE_DEFAULT, 0);
    seMgr->getCategory(7)->getParams()->moveVolume(Z2Param::VOL_SE_CHAR_VOICE_DEFAULT, 0);
    seMgr->getCategory(8)->getParams()->moveVolume(Z2Param::VOL_SE_OBJECT_DEFAULT, 0);
    seMgr->getCategory(9)->getParams()->moveVolume(Z2Param::VOL_SE_ATMOSPHERE_DEFAULT, 0);

    seMgr->getParams()->moveVolume(1.0f, 0);

    JAISeqMgr* seqMgr = mSoundMgr.getSeqMgr();
    seqMgr->getParams()->moveVolume(Z2Param::VOL_BGM_DEFAULT, 0);

    JAIStreamMgr* streamMgr = mSoundMgr.getStreamMgr();
    JAUStreamStaticAramMgr_<1>* streamStaticAramMgr = new(heap, 0) JAUStreamStaticAramMgr_<1>();
    streamStaticAramMgr->reserveAram(NULL, 0, 0x14);
    streamMgr->setStreamAramMgr(streamStaticAramMgr);
    streamMgr->getParams()->moveVolume(Z2Param::VOL_BGM_DEFAULT, 0);

    JASPoolAllocObject<Z2Audible>::newMemPool(0x4e);
    mSoundMgr.getSeMgr()->setAudience(&mAudience);
    mSoundMgr.getSeqMgr()->setAudience(&mAudience);

    #if PLATFORM_WII || PLATFORM_SHIELD
    Z2AudioCS::newSpkSoundMemPool();
    #endif

    JASPoolAllocObject<Z2SoundHandlePool>::newMemPool(0x4e);
    OS_REPORT("[Z2AudioMgr::init]before Create Section: %d\n", heap->getFreeSize());

    JAUSectionHeap* sectionHeap = JAUNewSectionHeap(true);
    sectionHeap->setSeqDataArchive(seqArc);
    size_t resMaxSize = JASResArcLoader::getResMaxSize(seqArc);
    sectionHeap->newDynamicSeqBlock(0xE00);
    sectionHeap->newDynamicSeqBlock(0x17E0);
    sectionHeap->newDynamicSeqBlock(0x5380);
    sectionHeap->newDynamicSeqBlock(resMaxSize);

    Z2AudioArcLoader audioArcLoader(sectionHeap);
    bool baaLoadResult = audioArcLoader.load(baaData);
    JUT_ASSERT(252, baaLoadResult);
    
    #if DEBUG
    seMgr->setSeqDataMgr(mDebugSys.initSeSeqDataMgr(((JAUSeqDataMgr_SeqCollection*)sectionHeap->getSeSeqDataMgr())->getResource()));
    #else
    seMgr->setSeqDataMgr(sectionHeap->getSeSeqDataMgr());
    #endif
    seqMgr->setSeqDataMgr(sectionHeap->getSeqSeqDataMgr());
    
    if (sectionHeap->getStreamDataMgr()) {
        // The following is to force stack reg to be r31 in dbg:
        int unused;
        streamMgr->setStreamDataMgr(sectionHeap->getStreamDataMgr());
    } else {
        streamMgr->setStreamDataMgr(&mSoundInfo);
    }

    sectionHeap->finishBuild();
    initSe();
    JASSeqParser::registerSeqCallback(seqCallback);

    #if DEBUG
    mDebugSys.initSoundHioNode();
    mDebugSys.initJAW();
    #endif
}

/* 802CD888-802CD8B4 2C81C8 002C+00 0/0 5/5 0/0 .text            setOutputMode__10Z2AudioMgrFUl */
void Z2AudioMgr::setOutputMode(u32 mode) {
    if (mode <= 2) {
        JAISetOutputMode(mode);
    }
}

/* 802CD8B4-802CD904 2C81F4 0050+00 1/1 0/0 0/0 .text            zeldaGFrameWork__10Z2AudioMgrFv */
void Z2AudioMgr::zeldaGFrameWork() {
    processTime();
    mSpeechMgr.framework();
    processSeFramework();
    processBgmFramework();
    processHeartGaugeSound();

    #if DEBUG
    mDebugSys.debugframework();
    #endif
}

/* 802CD904-802CD974 2C8244 0070+00 0/0 1/1 0/0 .text            gframeProcess__10Z2AudioMgrFv */
void Z2AudioMgr::gframeProcess() {
    zeldaGFrameWork();

    if (mResettingFlag && mAudioReseter.checkDone()) {
        if (!field_0x519) {
            mSoundMgr.stopSync();
        }
    } else {
        mSoundMgr.framework();
        framework();
    }
}

/* 802CD974-802CD9CC 2C82B4 0058+00 0/0 3/3 0/0 .text            resetProcess__10Z2AudioMgrFUlb */
void Z2AudioMgr::resetProcess(u32 param_0, bool param_1) {
    JUT_ASSERT(413, !mResettingFlag);

    mAudioReseter.start(param_0 * JASDriver::getSubFrames(), param_1);
    field_0x519 = param_1;
    mResettingFlag = true;
}

/* 802CD9CC-802CDA6C 2C830C 00A0+00 0/0 1/1 0/0 .text            resetRecover__10Z2AudioMgrFv */
void Z2AudioMgr::resetRecover() {
    JUT_ASSERT(427, mResettingFlag);
    JUT_ASSERT(428, mAudioReseter.checkDone());

    mAudioReseter.resume();
    mSoundMgr.initParams();
    mResettingFlag = false;

    setTwilightGateVol(1.0f);
    setWindStoneVol(1.0f, 0);
    menuOut();
    bgmAllUnMute(0);
    unMuteSceneBgm(0);
}


/* 802CDA6C-802CDB1C 2C83AC 00B0+00 0/0 2/2 0/0 .text            hasReset__10Z2AudioMgrCFv */
bool Z2AudioMgr::hasReset() const {
    return mResettingFlag && mAudioReseter.checkDone() &&
        (field_0x519 || (mSoundMgr.getSeMgr()->getNumActiveSe() == 0 && mSoundMgr.getSeqMgr()->getNumActiveSeqs() == 0));
}

/* 802CDB1C-802CDB68 2C845C 004C+00 1/0 1/0 0/0 .text
 * startSound__10Z2AudioMgrF10JAISoundIDP14JAISoundHandlePCQ29JGeometry8TVec3<f> */
bool Z2AudioMgr::startSound(JAISoundID soundID, JAISoundHandle* handle,
                            const JGeometry::TVec3<f32>* posPtr) {
    if (mResettingFlag) {
        return 0;
    }

    return mSoundMgr.startSound(soundID, handle, posPtr);
}

bool Z2AudioMgr::startLevelSound(JAISoundID soundID, JAISoundHandle* handle,
                                 const JGeometry::TVec3<f32>* posPtr) {
    if (mResettingFlag) {
        return 0;
    }

    return mSoundMgr.startSound(soundID, handle, posPtr);
}
