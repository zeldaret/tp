//
// Z2StatusMgr
//

#include "Z2AudioLib/Z2StatusMgr.h"
#include "Z2AudioLib/Z2Creature.h"
#include "Z2AudioLib/Z2Param.h"
#include "d/d_com_inf_game.h"
#include "d/d_s_play.h"
#include "dol2asm.h"

/* 802B5F1C-802B5F70 2B085C 0054+00 0/0 1/1 0/0 .text            __ct__11Z2StatusMgrFv */
Z2StatusMgr::Z2StatusMgr() : JASGlobalInstance(this) {
    mHour = 0;
    mMinute = 0;
    mWeekday = 0;
    field_0x03 = 0;
    mTime = 3072;
    mEventBit = NULL;
    mIsMenuIn = false;
    mCameraMapInfo = 0;

    mPolygonPosition.x = 10000000.0f;
    mPolygonPosition.y = 10000000.0f;
    mPolygonPosition.z = 10000000.0f;

    mUnderwaterDepth = 0.0f;
    mCameraInWaterDepthRatio = 0.0f;

    mDemoStatus = 0;
    mHeartGaugeOn = 0;
}

/* 802B5F70-802B5F7C 2B08B0 000C+00 0/0 1/1 0/0 .text            heartGaugeOn__11Z2StatusMgrFv */
void Z2StatusMgr::heartGaugeOn() {
    mHeartGaugeOn = 2;
}

/* 802B5F7C-802B60CC 2B08BC 0150+00 0/0 1/1 0/0 .text processHeartGaugeSound__11Z2StatusMgrFv */
void Z2StatusMgr::processHeartGaugeSound() {
    if (!dComIfGp_event_runCheck() && mHeartGaugeOn != 0) {
        if (dScnPly_c::isPause()) {
            mHeartGaugeOn--;
        }

        if (Z2GetLink() == NULL) {
            return;
        }
        u32 linkHp = Z2GetLink()->getLinkHp();
        if (linkHp == 0) {
            return;
        }
        if (Z2GetSeqMgr()->isItemGetDemo()) {
            return;
        }
        if (linkHp <= 2) {
            Z2GetSeMgr()->seStartLevel(Z2SE_ALMOST_DIE_ALERM_3, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        } else if (linkHp <= 4) {
            Z2GetSeMgr()->seStartLevel(Z2SE_ALMOST_DIE_ALERM_2, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        } else if (linkHp <= 6) {
            Z2GetSeMgr()->seStartLevel(Z2SE_ALMOST_DIE_ALERM_1, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        }
    }
}

/* 802B60CC-802B6104 2B0A0C 0038+00 0/0 1/1 0/0 .text            talkIn__11Z2StatusMgrFv */
void Z2StatusMgr::talkIn() {
    if (!isMovieDemo()) {
        Z2GetSeqMgr()->talkInBgm();
        Z2GetSeMgr()->talkInSe();
    }
}

/* 802B6104-802B613C 2B0A44 0038+00 0/0 1/1 0/0 .text            talkOut__11Z2StatusMgrFv */
void Z2StatusMgr::talkOut() {
    if (!isMovieDemo()) {
        Z2GetSeqMgr()->talkOutBgm();
        Z2GetSeMgr()->talkOutSe();
    }
}

/* 802B613C-802B617C 2B0A7C 0040+00 0/0 1/1 0/0 .text            menuIn__11Z2StatusMgrFv */
void Z2StatusMgr::menuIn() {
    Z2GetSeqMgr()->menuInBgm();
    Z2GetSeMgr()->menuInSe();

    mIsMenuIn = true;
}

/* 802B617C-802B61BC 2B0ABC 0040+00 0/0 3/3 0/0 .text            menuOut__11Z2StatusMgrFv */
void Z2StatusMgr::menuOut() {
    Z2GetSeqMgr()->menuOutBgm();
    Z2GetSeMgr()->talkOutSe();

    mIsMenuIn = false;
}

/* 802B61BC-802B61E8 2B0AFC 002C+00 2/2 1/1 0/0 .text            isMovieDemo__11Z2StatusMgrFv */
bool Z2StatusMgr::isMovieDemo() {
    return mDemoStatus == 2 || mDemoStatus == 8 || mDemoStatus == 9;
}

static void dummyStrings() {
    DEAD_STRING("F_SP00");
    DEAD_STRING("F_SP103");
    DEAD_STRING("R_SP01");
    DEAD_STRING("F_SP104");
    DEAD_STRING("R_SP107");
    DEAD_STRING("F_SP108");
    DEAD_STRING("R_SP108");
    DEAD_STRING("F_SP117");
    DEAD_STRING("F_SP109");
    DEAD_STRING("R_SP109");
    DEAD_STRING("R_SP209");
    DEAD_STRING("F_SP110");
    DEAD_STRING("R_SP110");
    DEAD_STRING("F_SP111");
    DEAD_STRING("F_SP128");
    DEAD_STRING("R_SP128");
    DEAD_STRING("F_SP115");
    DEAD_STRING("F_SP112");
    DEAD_STRING("F_SP126");
    DEAD_STRING("F_SP127");
    DEAD_STRING("R_SP127");
    DEAD_STRING("F_SP113");
    DEAD_STRING("F_SP116");
    DEAD_STRING("R_SP116");
    DEAD_STRING("R_SP160");
    DEAD_STRING("R_SP161");
    DEAD_STRING("F_SP114");
    DEAD_STRING("F_SP118");
    DEAD_STRING("F_SP124");
    DEAD_STRING("F_SP125");
    DEAD_STRING("F_SP121");
    DEAD_STRING("F_SP122");
    DEAD_STRING("F_SP123");
    DEAD_STRING("F_SP200");
    DEAD_STRING("F_SP102");
    DEAD_STRING("");
    DEAD_STRING("R_SP300");
    DEAD_STRING("R_SP301");
    DEAD_STRING("T_ENEMY");
    DEAD_STRING("D_MN54");
    DEAD_STRING("D_MN05");
    DEAD_STRING("D_MN05B");
    DEAD_STRING("D_MN05A");
    DEAD_STRING("D_MN04");
    DEAD_STRING("D_MN04B");
    DEAD_STRING("D_MN04A");
    DEAD_STRING("D_MN01");
    DEAD_STRING("D_MN01B");
    DEAD_STRING("D_MN01A");
    DEAD_STRING("D_MN10");
    DEAD_STRING("D_MN10B");
    DEAD_STRING("D_MN10A");
    DEAD_STRING("D_MN11");
    DEAD_STRING("D_MN11B");
    DEAD_STRING("D_MN11A");
    DEAD_STRING("D_MN06");
    DEAD_STRING("D_MN06B");
    DEAD_STRING("D_MN06A");
    DEAD_STRING("D_MN07");
    DEAD_STRING("D_MN07B");
    DEAD_STRING("D_MN07A");
    DEAD_STRING("D_MN08");
    DEAD_STRING("D_MN08B");
    DEAD_STRING("D_MN08C");
    DEAD_STRING("D_MN08A");
    DEAD_STRING("D_MN08D");
    DEAD_STRING("D_MN09");
    DEAD_STRING("D_MN09A");
    DEAD_STRING("D_MN09B");
    DEAD_STRING("D_MN09C");
    DEAD_STRING("D_SB00");
    DEAD_STRING("D_SB01");
    DEAD_STRING("D_SB02");
    DEAD_STRING("D_SB03");
    DEAD_STRING("D_SB04");
    DEAD_STRING("D_SB05");
    DEAD_STRING("D_SB06");
    DEAD_STRING("D_SB07");
    DEAD_STRING("D_SB08");
    DEAD_STRING("D_SB09");
    DEAD_STRING("D_SB10");
}

/* 802B61E8-802B671C 2B0B28 0534+00 1/0 7/7 11/11 .text            setDemoName__11Z2StatusMgrFPc */
void Z2StatusMgr::setDemoName(char* demoName) {
    if (mDemoStatus == 11) {
        mDemoStatus = 0;
        if (Z2GetSceneMgr()->isInGame()) {
            Z2GetSceneMgr()->sceneBgmStart();
        }
    }
    if (demoName == NULL) {
        if (mDemoStatus == 3) {
            Z2GetSeqMgr()->setBattleBgmOff(false);
        } else if (mDemoStatus == 4) {
            Z2GetSeqMgr()->i_unMuteSceneBgm(struct_80450861);
        } else if (mDemoStatus == 5) {
            Z2GetSeqMgr()->subBgmStop();
        } else if (mDemoStatus == 9) {
            Z2GetSeqMgr()->bgmStreamStop(0x3c);
        }
        if (mDemoStatus != 8) {
            mDemoStatus = 0;
        }
    } else {
        bool bVar1 = false;
        if (mDemoStatus == 8) {
            if (strcmp(demoName, "force_end") == 0) {
                mDemoStatus = 0;
            }
        } else if (strcmp(demoName, "SAVEREQ") == 0 || strcmp(demoName, "SAVEGID") == 0) {
            mDemoStatus = 11;
        } else if (strcmp(demoName, "demo36_01") == 0 || strcmp(demoName, "demo36_02") == 0) {
            mDemoStatus = 4;
            Z2GetSeqMgr()->i_muteSceneBgm(0x1e, 0.0f);
        } else if (strcmp(demoName, "demo37_01") == 0) {
            mDemoStatus = 12;
            Z2GetSoundMgr()->getSeMgr()->getCategory(9)->getParams()->moveVolume(0.0f, 0);
        } else if (strncmp(demoName, "demo31", 6) == 0) {
            mDemoStatus = 13;
            Z2GetSeMgr()->seMoveVolumeAll(0.0f, 0);
        } else if (strncmp(demoName, "demo", 4) == 0) {
            mDemoStatus = 2;
        } else if (strcmp(demoName, "force_start") == 0) {
            mDemoStatus = 8;
        } else if (strcmp(demoName, "force_end") == 0) {
            mDemoStatus = 0;
        } else if (strcmp(demoName, "KAGO_HIKARI") == 0) {
            mDemoStatus = 6;
        } else if (strcmp(demoName, "KAGO_YAMI") == 0) {
            mDemoStatus = 7;
        } else if (strcmp(demoName, "HYRULEOP") == 0) {
            mDemoStatus = 10;
        } else {
            switch (Z2GetSceneMgr()->getCurrentSceneNum()) {
            case 0xe:
                if (strcmp(demoName, "R00_start") == 0) {
                    mDemoStatus = 5;
                    Z2GetSeqMgr()->subBgmStart(Z2BGM_HIDDEN_VIL_D1);
                }
                break;
            case 5:
                if (strcmp(demoName, "B_W_START") == 0) {
                    Z2GetSeqMgr()->bgmStreamPrepare(0x200005f);
                    Z2GetSeqMgr()->bgmStreamPlay();
                    mDemoStatus = 9;
                }
                break;
            case 4:
                if (strcmp(demoName, "L0_rampart01") == 0) {
                    bVar1 = true;
                }
                break;
            case 0x28:
                if (strcmp(demoName, "R22-opening") == 0) {
                    bVar1 = true;
                }
                break;
            case 0x2b:
                if (strcmp(demoName, "R01-start") == 0) {
                    bVar1 = true;
                }
                break;
            case 0x2e:
                if (strcmp(demoName, "LV3R00OP") == 0) {
                    bVar1 = true;
                }
                break;
            case 0x31:
                if (strcmp(demoName, "R00_start") == 0) {
                    bVar1 = true;
                }
                break;
            }
            if (bVar1) {
                Z2GetSeqMgr()->setBattleBgmOff(true);
                mDemoStatus = 3;
            } else if (mDemoStatus == 0) {
                mDemoStatus = 1;
            }
        }
    }
}

/* 802B671C-802B6734 2B105C 0018+00 0/0 1/1 0/0 .text            processTime__11Z2StatusMgrFv */
void Z2StatusMgr::processTime() {
    u16 processed_hour = mHour * 256;
    mTime = processed_hour + mMinute;
}

/* 802B6734-802B6758 2B1074 0024+00 0/0 5/5 0/0 .text            checkDayTime__11Z2StatusMgrFv */
bool Z2StatusMgr::checkDayTime() {
    if (mHour >= 6 && mHour < 19) {
        return true;
    }

    return false;
}

/* 802B6758-802B6760 -00001 0008+00 0/0 0/0 0/0 .text            setEventBit__11Z2StatusMgrFPv */
void Z2StatusMgr::setEventBit(void* i_eventBit) {
    mEventBit = i_eventBit;
}

/* 802B6760-802B6784 2B10A0 0024+00 0/0 1/1 0/0 .text setCameraPolygonPos__11Z2StatusMgrFP3Vec */
void Z2StatusMgr::setCameraPolygonPos(Vec* i_polygonPos) {
    if (i_polygonPos != NULL) {
        mPolygonPosition = *i_polygonPos;
    }
}

/* 802B6784-802B6788 2B10C4 0004+00 0/0 1/1 0/0 .text setCameraGroupInfo__11Z2StatusMgrFUc */
void Z2StatusMgr::setCameraGroupInfo(u8) {}

/* 802B6788-802B6840 2B10C8 00B8+00 0/0 2/2 0/0 .text setCameraInWaterDepth__11Z2StatusMgrFf */
void Z2StatusMgr::setCameraInWaterDepth(f32 depth) {
    if (0.0f == depth) {
        mCameraInWaterDepthRatio = 0.0f;
        Z2GetFxLineMgr()->setUnderWaterFx(false);
    } else {
        if (Z2GetLink() != NULL) {
            if (Z2GetLink()->isInWater()) {
                if (depth >= 2000.0f) {
                    mCameraInWaterDepthRatio = 1.0f;
                } else {
                    mCameraInWaterDepthRatio =
                        Z2Calc::getParamByExp(depth, 0.0f, 2000.0f, 0.2f, 0.0f, 1.0f, Z2Calc::CURVE_SIGN_0);
                }
                Z2GetFxLineMgr()->setUnderWaterFx(true);
            }
        }
    }
    mUnderwaterDepth = depth;
}

/* 8039BC88-8039BC88 0282E8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */