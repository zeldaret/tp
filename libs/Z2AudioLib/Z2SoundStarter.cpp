//
// Z2SoundStarter
//

#include "Z2AudioLib/Z2SoundStarter.h"
#include "Z2AudioLib/Z2EnvSeMgr.h"
#include "Z2AudioLib/Z2AudioMgr.h"
#include "JSystem/JUtility/JUTAssert.h"

/* 802AAB94-802AABF4 2A54D4 0060+00 0/0 4/4 0/0 .text            __ct__14Z2SoundStarterFb */
Z2SoundStarter::Z2SoundStarter(bool param_0) : JAISoundStarter(param_0), JASGlobalInstance<Z2SoundStarter>(param_0) {
}

/* 802AABF4-802AAC3C 2A5534 0048+00 1/0 5/0 0/0 .text
 * startSound__14Z2SoundStarterF10JAISoundIDP14JAISoundHandlePCQ29JGeometry8TVec3<f> */
bool Z2SoundStarter::startSound(JAISoundID i_soundID, JAISoundHandle* i_handlePtr,
                                JGeometry::TVec3<f32> const* i_pos) {
    return Z2SoundStarter::startSound(i_soundID, i_handlePtr, i_pos,
                                      0, 0.0f, 1.0f, 1.0f, -1.0f, -1.0f, 0);
}

/* 802AAC3C-802AAEDC 2A557C 02A0+00 2/1 2/2 0/0 .text
 * startSound__14Z2SoundStarterF10JAISoundIDP14JAISoundHandlePCQ29JGeometry8TVec3<f>UlfffffUl */
bool Z2SoundStarter::startSound(JAISoundID i_soundID, JAISoundHandle* handlePtr,
                                JGeometry::TVec3<f32> const* i_pos, u32 param_4, f32 i_fxMix,
                                f32 i_pitch, f32 i_volume, f32 i_pan, f32 i_dolby, u32 i_count) {
    JUT_ASSERT(45, handlePtr);
    if (param_4 == 6) {
        switch (i_soundID) {
        case Z2SE_CM_BODYFALL_S:
            i_soundID = Z2SE_CM_BODYFALL_ASASE_S;
            break;
        case Z2SE_CM_BODYFALL_M:
            i_soundID = Z2SE_CM_BODYFALL_ASASE_M;
            break;
        case Z2SE_CM_BODYFALL_L:
            i_soundID = Z2SE_CM_BODYFALL_ASASE_L;
            break;
        }
    }
    if (i_soundID.mId.mBytes.b1 != 0 && i_soundID.mId.mBytes.b1 != 9) {
        if (Z2GetSceneMgr()->isInDarkness()) {
            i_fxMix = 1.0f;
        } else {
            f32 ratio = Z2GetStatusMgr()->getCameraInWaterDepthRatio();
            f32 uStack_8c = ratio > 0.0f;
            if (uStack_8c) {
                i_fxMix = uStack_8c;
            } else {
                i_fxMix += 0.5f * Z2GetEnvSeMgr()->getFogDensity();
                if (i_fxMix > 1.0f) {
                    i_fxMix = 1.0f;
                }
            }
        }
    }
    bool startSoundRes = Z2GetAudioMgr()->startSound(i_soundID, handlePtr, i_pos);
    if (*handlePtr) {
        if (param_4 != 0) {
            setPortData(handlePtr, 6, param_4, -1);
        }
        if (i_fxMix > 0.0f) {
            (*handlePtr)->getAuxiliary().moveFxMix(i_fxMix, i_count);
        }
        if (i_pitch != 1.0f) {
            (*handlePtr)->getAuxiliary().movePitch(i_pitch, i_count);
        }
        if (i_volume != 1.0f) {
            (*handlePtr)->getAuxiliary().moveVolume(i_volume, i_count);
        }
        if (i_pan != -1.0f) {
            (*handlePtr)->getAuxiliary().movePan(i_pan, i_count);
        }
        if (i_dolby != -1.0f) {
            (*handlePtr)->getAuxiliary().moveDolby(i_dolby, i_count);
        }
    }
    return startSoundRes;
}

/* 802AAEDC-802AAF74 2A581C 0098+00 1/1 10/10 0/0 .text
 * setPortData__14Z2SoundStarterFP14JAISoundHandleUlUsSc        */
void Z2SoundStarter::setPortData(JAISoundHandle* param_1, u32 param_2, u16 param_3, s8 param_4) {
    if (param_1 != NULL && *param_1) {
        JASTrack* track = param_1->getSound()->getTrack();
        if (param_4 != -1) {
            if (track->getChild(param_4) == NULL) {
                track->openChild(param_4);
            }
            track = track->getChild(param_4);
        }
        JUT_ASSERT(122, track);
        track->writePort(param_2, param_3);
    }
}

/* 802AAF74-802AAFF0 2A58B4 007C+00 0/0 1/1 0/0 .text
 * getPortData__14Z2SoundStarterFP14JAISoundHandleUlSc          */
u16 Z2SoundStarter::getPortData(JAISoundHandle* param_1, u32 param_2, s8 param_3) {
    if (param_1 != NULL && *param_1) {
        JASTrack* track;
        if (param_3 == -1) {
            track = param_1->getSound()->getTrack();
        } else {
            track = param_1->getSound()->getChildTrack(param_3);
        }
        JUT_ASSERT(140, track);
        return track->readPort(param_2);
    }
    return 0;
}


