//
// Translation Unit: Z2SoundMgr
//

#include "Z2AudioLib/Z2SoundMgr.h"
#include "Z2AudioLib/Z2Param.h"
#include "Z2AudioLib/Z2SceneMgr.h"
#include "Z2AudioLib/Z2SpeechMgr2.h"
#include "Z2AudioLib/Z2SeqMgr.h"
#include "Z2AudioLib/Z2SeMgr.h"
#include "Z2AudioLib/Z2SoundInfo.h"
#include "JSystem/JAudio2/JASCalc.h"
#include "JSystem/JAudio2/JASDriverIF.h"
#include "JSystem/JAudio2/JAUSectionHeap.h"

void dComIfGs_staffroll_next_go();

/* 802A9BC8-802A9E80 2A4508 02B8+00 1/0 1/1 0/0 .text            seqCallback__FP8JASTrackUs */
u16 seqCallback(JASTrack* i_track, u16 param_1) {
    JSUList<JAISe>* list;
    switch (param_1) {
    case 0x1000:
        Z2GetSeqMgr()->setChildTrackVolume(Z2GetSeqMgr()->getSubBgmHandle(),
                                           3, 1.0f, 0, -1.0f, -1.0f);
        Z2GetSoundMgr()->getSeqMgr()->calc();
        Z2GetSoundMgr()->getSeqMgr()->mixOut();
        break;
    case 0x1001:
        Z2GetSeqMgr()->onFieldBgmJumpStart();
        break;
    case 0x1002:
        Z2GetSeqMgr()->onFieldBgmJumpEnd();
        break;
    case 0x1003:
        Z2GetSpeechMgr2()->speakOneWord(true);
        break;
    case 0x1004:
        Z2GetSeqMgr()->onVariantBgmJumpEnd(true);
        break;
    case 0x1005:
        Z2GetSeqMgr()->onVariantBgmJumpEnd(false);
        break;
    case 0x1006:
        list = Z2GetSoundMgr()->getSeMgr()->getCategory(5)->getSeList();
        for (JSULink<JAISe>* link = list->getFirst(); link != NULL; link = link->getNext()) {
            switch (link->getObject()->getID()) {
                case Z2SE_GRO_MV_SINGING:
                case Z2SE_GRR_MV_SINGING:
                case Z2SE_CLERK_MV_SONG_HO:
                case Z2SE_WAD_A_MV_DANCE:
                case Z2SE_MCN_A_V_DANCE:
                case Z2SE_WCN_A_V_DANCE:
                    link->getObject()->getTrack()->writePort(14, 1);
                    break;
            }
        }
        break;
    case 0x1015:
        list = Z2GetSoundMgr()->getSeMgr()->getCategory(5)->getSeList();
        for (JSULink<JAISe>* link = list->getFirst(); link != NULL; link = link->getNext()) {
            switch (link->getObject()->getID()) {
                case Z2SE_MCN_A_V_DANCE:
                case Z2SE_WCN_A_V_DANCE:
                    link->getObject()->getTrack()->writePort(14, 1);
                    break;
            }
        }
        break;
    case 0x1007:
        Z2GetSeqMgr()->changeBgmStatus(7);
        break;
    case 0x1008:
        Z2GetSeqMgr()->changeBgmStatus(8);
        break;
    case 0x1014:
        dComIfGs_staffroll_next_go();
        break;
    }
    if (param_1 >= 0x1009 && param_1 <= 0x1013) {
        JAISoundID sound_id = Z2SE_CSL_TOWN_BAND_VOCAL;
        if (param_1 <= 0x100a) {
            sound_id = Z2SE_CSL_TOWN_BAND_GT_1;
        } else if (param_1 <= 0x100c) {
            sound_id = Z2SE_CSL_TOWN_BAND_GT_2;
        } else if (param_1 <= 0x100f) {
            sound_id = Z2SE_CSL_TOWN_BAND_GT_3;
        } else if (param_1 <= 0x1011) {
            sound_id = Z2SE_CSL_TOWN_BAND_FLUTE;
        }
        list = Z2GetSoundMgr()->getSeMgr()->getCategory(6)->getSeList();
        for (JSULink<JAISe>* link = list->getFirst(); link != NULL; link = link->getNext()) {
            if (link->getObject()->getID() == sound_id) {
                link->getObject()->getTrack()->writePort(14, param_1);
                break;
            }
        }
    }
    return 0;
}

/* 802A9E80-802A9EE8 2A47C0 0068+00 0/0 1/1 0/0 .text            __ct__10Z2SoundMgrFv */
Z2SoundMgr::Z2SoundMgr() :
    JASGlobalInstance<Z2SoundMgr>(this),
    mSeMgr(true),
    mSeqMgr(true),
    mStreamMgr(true)
{
    mSoundID.setAnonymous();
}

/* 802A9EE8-802AA1B0 2A4828 02C8+00 1/0 0/0 0/0 .text
 * startSound__10Z2SoundMgrF10JAISoundIDP14JAISoundHandlePCQ29JGeometry8TVec3<f> */
bool Z2SoundMgr::startSound(JAISoundID i_soundID, JAISoundHandle* i_handle,
                           JGeometry::TVec3<f32> const* i_pos) {
    switch (Z2GetSoundInfo()->getSoundType(i_soundID)) {
    case 0:
        if (Z2GetSoundInfo()->getSwBit(i_soundID) & 8) {
            Z2GetSeqMgr()->bgmAllMute(3, 0.3f);
            mSoundID = i_soundID;
        }
        return mSeMgr.startSound(i_soundID, i_handle, i_pos);
    case 1:
        if (i_soundID == Z2BGM_LUTERA_DEMO) {
            Z2GetSeqMgr()->bgmStart(Z2BGM_LUTERA2, 0, 0);
            Z2GetSeqMgr()->unMuteSceneBgm(0);
            Z2GetSeqMgr()->changeBgmStatus(0);
            return mSeMgr.startSound(Z2SE_NO_SOUND, i_handle, i_pos);
        } else {
            bool loaded = false;
            JAUSectionHeap* heap = JASGlobalInstance<JAUSectionHeap>::getInstance();
            JAUSeqDataBlocks const& loaded_blocks =
                heap->getSectionHeapData().seqDataBlocks.getLoadedBlocks();
            JSULink<JAUSeqDataBlock>* link;
            for (link = loaded_blocks.getFirst(); link != NULL; link = link->getNext()) {
                if (link->getObject()->field_0x10 == i_soundID) {
                    loaded = true;
                    break;
                }
            }
            if (!loaded) {
                heap->releaseIdleDynamicSeqDataBlock();
                if (!heap->loadDynamicSeq(i_soundID, true)) {
                    JAUSeqDataBlocks const& free_blocks =
                        heap->getSectionHeapData().seqDataBlocks.getFreeBlocks();
                    for (link = free_blocks.getFirst(); link != NULL; link = link->getNext()) {
                    }
                }

            }
            return mSeqMgr.startSound(i_soundID, i_handle, i_pos);
        }
    case 2:
        if (i_soundID == 0x2000001 || i_soundID == 0x200004d) {
            mStreamMgr.stop(180);
            return mSeMgr.startSound(Z2SE_NO_SOUND, i_handle, i_pos);
        }
        if (i_soundID == 0x2000005) {
            mSeMgr.getCategory(9)->pause(false);
            mSeMgr.getCategory(9)->getParams()->moveVolume(1.0f, 45);
        }
        return mStreamMgr.startSound(i_soundID, i_handle, i_pos);
    default:
        char error[32];
        sprintf(error, "Unknown Sound-Type id :%08x\n", (u32)i_soundID);
        return false;
    }
}


/* 802AA1B0-802AA270 2A4AF0 00C0+00 2/2 0/0 0/0 .text            calc__10Z2SoundMgrFv */
void Z2SoundMgr::calc() {
    mSeMgr.calc();
    if (!mSoundID.isAnonymous() && !isPlayingSoundID(mSoundID)) {
        if (Z2GetSceneMgr()->isSceneExist()) {
            Z2GetSeqMgr()->bgmAllUnMute(3);
        }
        mSoundID.setAnonymous();
    }
    mSeqMgr.calc();
    mStreamMgr.calc();
}

/* 802AA270-802AA33C 2A4BB0 00CC+00 1/1 2/2 0/0 .text            setIIR__10Z2SoundMgrFP8JAISoundPCs
 */
void Z2SoundMgr::setIIR(JAISound* param_0, s16 const* param_1) {
    if (param_0 != NULL) {
        JASTrack* track = param_0->getTrack();
        for (u32 i = 0; i < 4; i++) {
            JASTrack* child = track->getChild(i);
            if (child != NULL && child->getStatus() == 1) {
                child->setIIR(param_1);
                for (u32 j = 0; j < 4; j++) {
                    JASTrack* child2 = child->getChild(j);
                    if (child2 != NULL && child2->getStatus() == 1) {
                        child2->setIIR(param_1);
                    }
                }
            }
        }
    }
}

/* 8039B9C0-8039B9D0 028020 0010+00 1/1 0/0 0/0 .rodata          cResetFilterTable */
static s16 const cResetFilterTable[8] = {
    0x7FFF, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
};

/* 802AA33C-802AA430 2A4C7C 00F4+00 1/1 0/0 0/0 .text setFilterOff__10Z2SoundMgrFP8JAISound */
void Z2SoundMgr::setFilterOff(JAISound* param_0) {
    if (param_0 != NULL) {
        JASTrack* track = param_0->getTrack();
        for (u32 i = 0; i < 4; i++) {
            JASTrack* child = track->getChild(i);
            if (child != NULL && child->getStatus() == 1) {
                child->setIIR(cResetFilterTable);
                child->setFIR(cResetFilterTable);
                for (u32 j = 0; j < 4; j++) {
                    JASTrack* child2 = child->getChild(j);
                    if (child2 != NULL && child2->getStatus() == 1) {
                        child2->setIIR(cResetFilterTable);
                        child2->setFIR(cResetFilterTable);
                    }
                }
            }
        }
    }
}

/* 802AA430-802AA528 2A4D70 00F8+00 0/0 1/1 0/0 .text            resetFilterAll__10Z2SoundMgrFv */
void Z2SoundMgr::resetFilterAll() {
    int i = 1;
    if (struct_80451342 != 0) {
        i = 0;
    }
    for (; i < 9; i++) {
        JAISeCategoryMgr* category = mSeMgr.getCategory(i);
        int se_count = category->getMaxActiveSe();
        if (se_count > 0) {
            for (JSULink<JAISe>* link = category->getSeList()->getFirst();
                link != NULL && se_count > 0 && !link->getObject()->isFarAway();
                link = link->getNext(), se_count--)
            {
                setFilterOff(link->getObject());
            }
        } else {
            for (JSULink<JAISe>* link = category->getSeList()->getFirst();
                link != NULL && !link->getObject()->isFarAway();
                link = link->getNext())
            {
                setFilterOff(link->getObject());
            }
        }
    }
}

/* 802AA528-802AA67C 2A4E68 0154+00 2/2 0/0 0/0 .text            mixOut__10Z2SoundMgrFv */
void Z2SoundMgr::mixOut() {
    if (struct_80451340 != 0 && Z2GetSceneMgr()->isInDarkness()) {
        int i = 1;
        if (struct_80451342 != 0) {
            i = 0;
        }
        for (; i < 9; i++) {
            JAISeCategoryMgr* category = mSeMgr.getCategory(i);
            int se_count = category->getMaxActiveSe();
            if (se_count > 0) {
                for (JSULink<JAISe>* link = category->getSeList()->getFirst();
                    link != NULL && se_count > 0 && !link->getObject()->isFarAway();
                    link = link->getNext(), se_count--)
                {
                    setIIR(link->getObject(), JASCalc::CUTOFF_TO_IIR_TABLE[struct_80451341]);
                }
            } else {
                for (JSULink<JAISe>* link = category->getSeList()->getFirst();
                    link != NULL && !link->getObject()->isFarAway();
                    link = link->getNext())
                {
                    setIIR(link->getObject(), JASCalc::CUTOFF_TO_IIR_TABLE[struct_80451341]);
                }
            }
        }
    }
    mSeMgr.mixOut();
    mSeqMgr.mixOut();
    mStreamMgr.mixOut();
}

/* 802AA67C-802AA6B0 2A4FBC 0034+00 0/0 1/1 0/0 .text            framework__10Z2SoundMgrFv */
void Z2SoundMgr::framework() {
    calc();
    mixOut();
}

/* 802AA6B0-802AA7DC 2A4FF0 012C+00 0/0 1/1 0/0 .text            pauseAllGameSound__10Z2SoundMgrFb
 */
void Z2SoundMgr::pauseAllGameSound(bool i_pause) {
    mSeMgr.getCategory(0)->pause(i_pause);
    mSeMgr.getCategory(1)->pause(i_pause);
    mSeMgr.getCategory(2)->pause(i_pause);
    mSeMgr.getCategory(3)->pause(i_pause);
    mSeMgr.getCategory(4)->pause(i_pause);
    mSeMgr.getCategory(5)->pause(i_pause);
    mSeMgr.getCategory(6)->pause(i_pause);
    mSeMgr.getCategory(7)->pause(i_pause);
    mSeMgr.getCategory(8)->pause(i_pause);
    mSeMgr.getCategory(9)->pause(i_pause);
    mSeqMgr.pause(i_pause);
    mStreamMgr.pause(i_pause);
    if (i_pause) {
        Z2GetSeMgr()->seMoveVolumeAll(0.0f, 10);
        mSeqMgr.getParams()->moveVolume(0.0f, 10);
        mStreamMgr.getParams()->moveVolume(0.0f, 10);
    }
    else {
        Z2GetSeMgr()->seMoveVolumeAll(1.0f, 10);
        mSeqMgr.getParams()->moveVolume(1.0f, 10);
        mStreamMgr.getParams()->moveVolume(1.0f, 10);
    }
}


/* 802AA7DC-802AA84C 2A511C 0070+00 0/0 1/1 0/0 .text stopSoundID__10Z2SoundMgrF10JAISoundID */
void Z2SoundMgr::stopSoundID(JAISoundID i_soundID) {
    mSeMgr.stopSoundID(i_soundID);
    mSeqMgr.stopSoundID(i_soundID);
    mStreamMgr.stopSoundID(i_soundID);
}

/* 802AA84C-802AA8C8 2A518C 007C+00 0/0 1/1 0/0 .text            stopSync__10Z2SoundMgrFv */
void Z2SoundMgr::stopSync() {
    stop();
    while (mSeMgr.getNumActiveSe() > 0 || mSeqMgr.getNumActiveSeqs() > 0) {
        calc();
        if (mSeMgr.getNumActiveSe() == 0 && mSeqMgr.getNumActiveSeqs() == 0) {
            break;
        }
        mixOut();
        JASDriver::waitSubFrame();
    }
}

/* 802AA8C8-802AA908 2A5208 0040+00 1/1 0/0 0/0 .text            stop__10Z2SoundMgrFv */
void Z2SoundMgr::stop() {
    mSeMgr.stop();
    mSeqMgr.stop();
    mStreamMgr.stop();
}

/* 802AA908-802AA9E8 2A5248 00E0+00 0/0 1/1 0/0 .text            initParams__10Z2SoundMgrFv */
void Z2SoundMgr::initParams() {
    mSeMgr.initParams();
    mSeqMgr.getParams()->init();
    mStreamMgr.getParams()->init();
}


/* 802AA9E8-802AAAC4 2A5328 00DC+00 0/0 1/1 0/0 .text
 * multiVolumeSoundID__10Z2SoundMgrF10JAISoundIDf               */
void Z2SoundMgr::multiVolumeSoundID(JAISoundID i_soundID, f32 i_multi) {
    if (!i_soundID.isAnonymous() && Z2GetSoundInfo()->getSoundType(i_soundID) == 0) {
        JSUList<JAISe>* list =
            mSeMgr.getCategory(Z2GetSoundInfo()->getCategory(i_soundID))->getSeList();
        for (JSULink<JAISe>* link = list->getFirst(); link != NULL; link = link->getNext()) {
            if (link->getObject()->getID() == i_soundID) {
                link->getObject()->getAuxiliary().mParams.mVolume *= i_multi;
            }
        }
    }
}

/* 802AAAC4-802AAB94 2A5404 00D0+00 1/1 0/0 0/0 .text isPlayingSoundID__10Z2SoundMgrF10JAISoundID
 */
bool Z2SoundMgr::isPlayingSoundID(JAISoundID i_soundID) {
    if (i_soundID.isAnonymous()) {
        return false;
    }
    if (Z2GetSoundInfo()->getSoundType(i_soundID) == 0) {
        JSUList<JAISe>* list =
            mSeMgr.getCategory(Z2GetSoundInfo()->getCategory(i_soundID))->getSeList();
        for (JSULink<JAISe>* link = list->getFirst(); link != NULL; link = link->getNext()) {
            if (link->getObject()->getID() == i_soundID) {
                return true;
            }
        }
    }
    return false;
}

/* 8039B9D0-8039B9D0 028030 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
