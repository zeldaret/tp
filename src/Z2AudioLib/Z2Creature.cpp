/**
 * Z2Creature.cpp
 * Z2AudioLib - Creatures
 */

#include "Z2AudioLib/Z2Creature.h"
#include "Z2AudioLib/Z2Param.h"
#include "Z2AudioLib/Z2Calc.h"
#include "Z2AudioLib/Z2AudioMgr.h"

static void Z2_E_sw_modPitch(Z2SoundHandlePool*, u32);
static void Z2_E_ms_modVol(Z2SoundHandlePool*, u32);
static void Z2_E_mm_modPitch(Z2SoundHandlePool*, u32);
static void Z2_B_zan_modPitch(Z2SoundHandlePool*, u32);

/* 80455BD8-80455BDC 0041D8 0004+00 1/1 0/0 0/0 .sdata2          sAreaDefault */
static Z2EnemyArea const sAreaDefault = {true, 700, 1100, 1500};

/* 80455BE0-80455BE4 0041E0 0004+00 1/1 0/0 0/0 .sdata2          sAreaFloating */
static Z2EnemyArea const sAreaFloating = {false, 700, 1100, 1500};

/* 80455BE8-80455BEC 0041E8 0004+00 1/1 0/0 0/0 .sdata2          sAreaWide */
static Z2EnemyArea const sAreaWide = {true, 700, 1500, 3300};

/* 80455BF0-80455BF4 0041F0 0004+00 1/1 0/0 0/0 .sdata2          sAreaWideFloating */
static Z2EnemyArea const sAreaWideFloating = {false, 700, 1500, 3300};

/* 80455BF8-80455BFC 0041F8 0004+00 1/1 0/0 0/0 .sdata2          sAreaSmall */
static Z2EnemyArea const sAreaSmall = {true, 300, 700, 1000};

/* 80455C00-80455C04 004200 0004+00 1/1 0/0 0/0 .sdata2          sAreaSmallFloating */
static Z2EnemyArea const sAreaSmallFloating = {false, 500, 800, 1200};

struct EnemyInfo {
    char mName[8];
    Z2EnemyArea mEnemyArea;
};

/* 803CB230-803CB630 028350 0400+00 1/1 0/0 0/0 .data            mEnemyInfo */
static EnemyInfo mEnemyInfo[64] = {
    {"Dummy", sAreaDefault},
    {"E_s1", {true, 700, 1200, 2000}},
    {"E_yk", sAreaSmallFloating},
    {"E_yr", sAreaWideFloating},
    {"E_yg", {true, 300, 500, 700}},
    {"E_yc", sAreaWideFloating},
    {"E_yd", {true, 500, 900, 1500}},
    {"E_rdy", sAreaDefault},
    {"E_ymb", {false, 10, 20, 30}},
    {"", sAreaDefault},
    {"E_wb", sAreaDefault},
    {"E_rd", sAreaDefault},
    {"E_dn", sAreaDefault},
    {"E_kr", sAreaWideFloating},
    {"E_st", sAreaDefault},
    {"E_tk", {true, 700, 1500, 2500}},
    {"E_tk2", {true, 700, 1500, 2500}},
    {"E_cr", sAreaSmall},
    {"E_df", sAreaDefault},
    {"E_fs", sAreaDefault},
    {"E_SB", sAreaDefault},
    {"E_PM", sAreaDefault},
    {"E_db", {true, 500, 900, 1800}},
    {"E_kg", sAreaSmall},
    {"E_sh", sAreaDefault},
    {"E_sf", sAreaDefault},
    {"E_bs", {true, 200, 400, 600}},
    {"E_SM", sAreaDefault},
    {"E_ba", sAreaSmallFloating},
    {"E_bu", sAreaFloating},
    {"E_HM", sAreaDefault},
    {"E_ge", sAreaFloating},
    {"E_hz", {false, 500, 800, 1300}},
    {"E_ws", sAreaSmallFloating},
    {"E_oc", sAreaDefault},
    {"E_fz", sAreaDefault},
    {"E_fb", sAreaDefault},
    {"E_bg", sAreaSmall},
    {"E_mm", {true, 500, 800, 1500}},
    {"E_nz", {true, 500, 700, 1100}},
    {"E_po", sAreaWide},
    {"E_rb", sAreaDefault},
    {"E_sg", {true, 500, 700, 900}},
    {"E_hb", {true, 500, 900, 1500}},
    {"E_gb", {true, 1600, 3000, 4000}},
    {"E_ms", {true, 500, 700, 1100}},
    {"E_dd", sAreaDefault},
    {"E_bi", {true, 500, 700, 900}},
    {"E_tt", sAreaSmallFloating},
    {"E_ai", sAreaDefault},
    {"E_dk", sAreaSmall},
    {"E_ww", sAreaWide},
    {"E_gi", sAreaDefault},
    {"E_sm2", sAreaDefault},
    {"E_sw", {true, 400, 600, 1500}},
    {"E_rdb", {true, 500, 1000, 1500}},
    {"E_kk", sAreaDefault},
    {"E_hp", sAreaDefault},
    {"E_zh", sAreaDefault},
    {"E_gm", sAreaSmall},
    {"B_GG", {false, 1000, 2000, 4000}},
    {"E_mf", sAreaDefault},
    {"E_zm", sAreaDefault},
    {"B_tn", sAreaDefault},
};

/* 802C03C8-802C0420 2BAD08 0058+00 3/3 3/3 129/129 .text            __ct__10Z2CreatureFv */
Z2Creature::Z2Creature() {
    mpPos = NULL;
}

/* 802C0420-802C04E8 2BAD60 00C8+00 1/1 4/4 91/91 .text            __dt__10Z2CreatureFv */
Z2Creature::~Z2Creature() {
    deleteObject();
}

/* 802C04E8-802C0530 2BAE28 0048+00 4/2 2/2 0/0 .text            deleteObject__10Z2CreatureFv */
void Z2Creature::deleteObject() {
    mSoundObjAnime.mpAnimation = NULL;
    mSoundObjAnime.deleteObject();
    mSoundObjSimple1.deleteObject();
    mSoundObjSimple2.deleteObject();
}

/* 802C0530-802C05B0 2BAE70 0080+00 5/5 1/1 125/125 .text init__10Z2CreatureFP3VecP3VecUcUc */
void Z2Creature::init(Vec* param_0, Vec* param_1, u8 param_2, u8 param_3) {
    if (param_0) {
        mSoundObjAnime.init(param_0, param_2);
        mpPos = param_0;
    }
    if (param_1) {
        mSoundObjSimple1.init(param_1, param_3);
    }
}

/* 802C05B0-802C0618 2BAEF0 0068+00 2/2 1/1 0/0 .text init__10Z2CreatureFP3VecP3VecP3VecUcUcUc */
void Z2Creature::init(Vec* param_0, Vec* param_1, Vec* param_2, u8 param_3, u8 param_4,
                      u8 param_5) {
    init(param_0, param_1, param_3, param_4);
    if (param_2) {
        mSoundObjSimple2.init(param_2, param_5);
    }
}

/* 802C0618-802C0628 2BAF58 0010+00 7/0 2/0 0/0 .text
 * setSoundStarter__10Z2CreatureFP14Z2SoundStarter              */
void Z2Creature::setSoundStarter(Z2SoundStarter* i_starter) {
    mSoundObjAnime.setSoundStarter(i_starter);
    mSoundObjSimple1.setSoundStarter(i_starter);
    mSoundObjSimple2.setSoundStarter(i_starter);
}

/* 802C0628-802C064C 2BAF68 0024+00 0/0 4/4 2/2 .text            initAnime__10Z2CreatureFPvbff */
void Z2Creature::initAnime(void* param_0, bool param_1, f32 param_2, f32 param_3) {
    mSoundObjAnime.initAnime(param_0, param_1, param_2, param_3);
}

/* 802C064C-802C06D0 2BAF8C 0084+00 7/3 2/1 0/0 .text            framework__10Z2CreatureFUlSc */
void Z2Creature::framework(u32 param_0, s8 param_1) {
    mSoundObjAnime.framework(param_0, param_1);
    mSoundObjSimple1.framework(param_0, param_1);
    mSoundObjSimple2.framework(param_0, param_1);
}

/* 802C06D0-802C06F4 2BB010 0024+00 0/0 3/3 2/2 .text            updateAnime__10Z2CreatureFff */
void Z2Creature::updateAnime(f32 param_0, f32 param_1) {
    mSoundObjAnime.updateAnime(param_0, param_1);
}

/* 802C06F4-802C0720 2BB034 002C+00 0/0 0/0 7/7 .text            stopAnime__10Z2CreatureFv */
void Z2Creature::stopAnime() {
    deleteObject();
}

/* 802C0720-802C087C 2BB060 015C+00 4/0 2/0 0/0 .text
 * startCreatureSound__10Z2CreatureF10JAISoundIDUlSc            */
Z2SoundHandlePool* Z2Creature::startCreatureSound(JAISoundID i_soundID, u32 param_1, s8 param_2) {
    switch (i_soundID) {
        case Z2SE_KOSARU_V_KAGO_WAIT:
            return mSoundObjSimple1.startSound(i_soundID, param_1, 0);
        default:
            Z2SoundHandlePool* handle = mSoundObjAnime.startSound(i_soundID, param_1, param_2);
            if (handle != NULL && *handle != NULL) {
                switch (i_soundID) {
                    case Z2SE_FAIRY_S_FLY:
                        f32 pitch = Z2Calc::getParamByExp((f32)param_1, 30.0f, 100.0f, 0.3f,
                                                          0.8f, 1.2f, Z2Calc::CURVE_SIGN_0);
                        f32 volume = Z2Calc::getParamByExp((f32)param_1, 30.0f, 100.0f, 0.3f,
                                                           0.5f, 1.0f, Z2Calc::CURVE_SIGN_0);
                        (*handle)->getAuxiliary().moveVolume(volume, 0);
                        (*handle)->getAuxiliary().movePitch(pitch, 0);
                }
            }
            return handle;
    }
}

/* 802C087C-802C0A4C 2BB1BC 01D0+00 4/0 2/0 0/0 .text
 * startCreatureSoundLevel__10Z2CreatureF10JAISoundIDUlSc       */
Z2SoundHandlePool* Z2Creature::startCreatureSoundLevel(JAISoundID i_soundID, u32 param_1, s8 param_2) {
    switch (i_soundID) {
        case 0x600d6:
            Z2GetAudioMgr()->seStartLevel(i_soundID, mpPos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
            return NULL;
        default:
            Z2SoundHandlePool* handle = mSoundObjAnime.startLevelSound(i_soundID, param_1, param_2);
            if (handle != NULL && *handle != NULL) {
                if (i_soundID == Z2SE_YM_SNOBO_RIDE || i_soundID == Z2SE_YW_SNOBO_RIDE) {
                    f32 volume = 0.0f;
                    if (param_1 != 0) {
                        volume = Z2Calc::getParamByExp((f32)param_1, 0.0f, 92.0f, 0.25f,
                                                        0.4f, 1.0f, Z2Calc::CURVE_SIGN_0);
                    }
                    f32 pitch = Z2Calc::getParamByExp((f32)param_1, 0.0f, 92.0f, 0.3f,
                                                        0.5f, 1.2f, Z2Calc::CURVE_SIGN_0);
                    
                    (*handle)->getAuxiliary().moveVolume(volume, 0);
                    (*handle)->getAuxiliary().movePitch(pitch, 0);
                } else if (i_soundID == Z2SE_ZRZ_MV) {
                    (*handle)->getAuxiliary().moveVolume((f32)param_1 / 100.0f, 0);
                }
            }
            return handle;
    }
}

/* 802C0A4C-802C0AF8 2BB38C 00AC+00 4/1 2/0 0/0 .text
 * startCreatureVoice__10Z2CreatureF10JAISoundIDSc              */
Z2SoundHandlePool* Z2Creature::startCreatureVoice(JAISoundID i_soundID, s8 param_1) {
    switch (i_soundID) {
        case Z2SE_MDN_V_FLY_OUT:
        case Z2SE_MDN_V_MGN_TAME:
        case Z2SE_MDN_V_CLINGST:
        case Z2SE_MDN_V_LV_PANIC:
        case Z2SE_MDN_V_HIT:
        case Z2SE_MDN_V_LOOKABOUT_1:
        case Z2SE_MDN_V_WLSWIMDIE:
        case Z2SE_MDN_V_WAITD:
        case Z2SE_MDN_V_SWAITA:
        case Z2SE_MDN_V_SWAITB_1:
        case Z2SE_MDN_V_SWAITB_3:
        case Z2SE_MDN_V_SWAITC:
        case Z2SE_MDN_V_SWAITD:
        case Z2SE_MDN_V_LEADSWAIT:
        case Z2SE_MDN_V_HIP:
        case Z2SE_MDN_V_WLDIEA:
        case Z2SE_MDN_V_ENTRANCE:
        case Z2SE_MDN_V_DOOROP:
        case Z2SE_MDN_V_ROPEWAIT_1:
        case Z2SE_MDN_V_ROPEWAIT_2:
        case Z2SE_MDN_V_ROPEFALTER:
        case Z2SE_MDN_V_WAITTP:
            if (Z2GetSpeechMgr2()->isMidnaSpeak()) {
                return NULL;
            }
    }
    return mSoundObjSimple1.startSound(i_soundID, 0, param_1);
}

/* 802C0AF8-802C0B70 2BB438 0078+00 3/0 2/0 0/0 .text
 * startCreatureVoiceLevel__10Z2CreatureF10JAISoundIDSc         */
Z2SoundHandlePool* Z2Creature::startCreatureVoiceLevel(JAISoundID i_soundID, s8 param_1) {
    if (i_soundID == Z2SE_MDN_V_WAITD) {
        if (Z2GetStatusMgr()->getDemoStatus() == 2 || !Z2GetSceneMgr()->isInGame()) {
            return NULL;
        }
    }
    return mSoundObjSimple1.startLevelSound((u32)i_soundID, 0, param_1);
}

/* 802C0B70-802C0BAC 2BB4B0 003C+00 4/0 2/0 0/0 .text
 * startCreatureExtraSound__10Z2CreatureF10JAISoundIDUlSc       */
Z2SoundHandlePool* Z2Creature::startCreatureExtraSound(JAISoundID param_0, u32 param_1, s8 param_2) {
    return mSoundObjSimple2.startSound(param_0, param_1, param_2);
}

/* 802C0BAC-802C0BE8 2BB4EC 003C+00 4/0 2/0 0/0 .text
 * startCreatureExtraSoundLevel__10Z2CreatureF10JAISoundIDUlSc  */
Z2SoundHandlePool* Z2Creature::startCreatureExtraSoundLevel(JAISoundID param_0, u32 param_1, s8 param_2) {
    return mSoundObjSimple2.startLevelSound(param_0, param_1, param_2);
}

/* 802C0BE8-802C0C10 2BB528 0028+00 4/0 2/0 0/0 .text startCollisionSE__10Z2CreatureFUlUl */
Z2SoundHandlePool* Z2Creature::startCollisionSE(u32 param_0, u32 param_1) {
    return mSoundObjAnime.startCollisionSE(param_0, param_1, NULL);
}

/* 802C0C10-802C0C6C 2BB550 005C+00 0/0 0/0 12/12 .text            __ct__17Z2CreatureCitizenFv */
Z2CreatureCitizen::Z2CreatureCitizen() :
    JSULink<Z2CreatureCitizen>(this),
    mCitizenID(-1),
    field_0xa1(-1),
    mLinkSearch(false)
{
    /* empty function */
}

/* 802C0C6C-802C0CE4 2BB5AC 0078+00 0/0 0/0 12/12 .text            __dt__17Z2CreatureCitizenFv */
Z2CreatureCitizen::~Z2CreatureCitizen() {
    /* empty function */
}

/* 802C0CE4-802C0D04 2BB624 0020+00 0/0 2/2 7/7 .text init__17Z2CreatureCitizenFP3VecP3VecUcUc */
void Z2CreatureCitizen::init(Vec* param_0, Vec* param_1, u8 param_2, u8 param_3) {
    Z2Creature::init(param_0, param_1, param_2, param_3);
}

/* 802C0D04-802C0D48 2BB644 0044+00 1/0 0/0 0/0 .text   deleteObject__17Z2CreatureCitizenFv */
void Z2CreatureCitizen::deleteObject() {
    if (mLinkSearch == false) {
        Z2GetSeMgr()->decrCrowdSize();
    }
    Z2Creature::deleteObject();
}

/* 802C0D48-802C0E18 2BB688 00D0+00 0/0 2/2 4/4 .text setMdlType__17Z2CreatureCitizenFScbb */
void Z2CreatureCitizen::setMdlType(s8 param_0, bool param_1, bool param_2) {
    s8 a = param_0 & 0x3f;
    s8 b = param_1 ? 0x40 : 0;
    s8 c = param_2 ? 0x80 : 0;
    mCitizenID = a + c + b;
    if (!param_2) {
        Z2GetSeMgr()->incrCrowdSize();
    }
    if (param_0 == 0) {
        field_0xa1 = data_80451358;
        data_80451358 = !data_80451358;
    }
    else if (param_0 == 1) {
        field_0xa1 = data_80451359;
        data_80451359 = !data_80451359;
    }
}

/* 802C0E18-802C0ED8 2BB758 00C0+00 0/0 0/0 21/21 .text            playVoice__17Z2CreatureCitizenFi
 */
void Z2CreatureCitizen::playVoice(int i_sound) {
    u32 tmp = mCitizenID;
    u32 sound_id = Z2SE_MAN_A1_V_AWAY + 6 * tmp + i_sound;
    switch (mCitizenID) {
    case 0:
    case 1:
        if (field_0xa1 == 1) {
            sound_id += 3;
        }
        break;
    }
    mSoundObjSimple1.startSound(sound_id, 0, -1);
    if ((i_sound == 0 || i_sound == 2) && !mLinkSearch) {
        Z2GetSeMgr()->decrCrowdSize();
        mLinkSearch = true;
    }
}

/* 802C0ED8-802C0F64 2BB818 008C+00 1/0 0/0 0/0 .text
 * startCreatureVoice__17Z2CreatureCitizenF10JAISoundIDSc       */
Z2SoundHandlePool* Z2CreatureCitizen::startCreatureVoice(JAISoundID i_soundID, s8 param_1) {
    switch (i_soundID) {
    case Z2SE_KIU_V_FEAR:
    case Z2SE_HANA_V_FEAR:
    case Z2SE_MICH_V_FEAR:
        if (!mLinkSearch) {
            Z2GetSeMgr()->decrCrowdSize();
            mLinkSearch = true;
        }
        break;
    }
    return Z2Creature::startCreatureVoice(i_soundID, -1);
}

/* 802C0F64-802C0FC4 2BB8A4 0060+00 2/2 0/0 100/100 .text            __ct__15Z2CreatureEnemyFv */
Z2CreatureEnemy::Z2CreatureEnemy() :
    JSULink<Z2CreatureEnemy>(this),
    mEnemyID(0),
    field_0xa1(1),
    mLinkSearch(false),
    field_0xa3(0)
{
    /* empty function */    
}

/* 802C0FC4-802C1094 2BB904 00D0+00 3/2 0/0 0/0 .text            deleteObject__15Z2CreatureEnemyFv
 */
void Z2CreatureEnemy::deleteObject() {
    if (mEnemyID == 0x2c) {
        Z2GetSeqMgr()->unMuteSceneBgm(0x21);
    }
    if (getSupervisor() != NULL) {
        Z2GetSoundObjMgr()->removeEnemy(this);
    }
    mSoundObjAnime.stopAnime();
    mSoundObjAnime.deleteObject();
    mSoundObjSimple1.deleteObject();
    mSoundObjSimple2.deleteObject();
}

/* 802C1094-802C10B4 2BB9D4 0020+00 0/0 0/0 98/98 .text init__15Z2CreatureEnemyFP3VecP3VecUcUc */
void Z2CreatureEnemy::init(Vec* param_0, Vec* param_1, u8 param_2, u8 param_3) {
    Z2Creature::init(param_0, param_1, param_2, param_3);
}

/* 802C10B4-802C10D4 2BB9F4 0020+00 0/0 0/0 3/3 .text init__15Z2CreatureEnemyFP3VecP3VecP3VecUcUcUc
 */
void Z2CreatureEnemy::init(Vec* param_0, Vec* param_1, Vec* param_2, u8 param_3, u8 param_4,
                           u8 param_5) {
    Z2Creature::init(param_0, param_1, param_2, param_3, param_4, param_5);
}

/* 802C10D4-802C110C 2BBA14 0038+00 1/0 0/0 0/0 .text framework__15Z2CreatureEnemyFUlSc */
void Z2CreatureEnemy::framework(u32 param_0, s8 param_1) {
    if (field_0xa1 < 1) {
        field_0xa1 += 1;
    }
    Z2Creature::framework(param_0, param_1);
}

/* 802C110C-802C136C 2BBA4C 0260+00 4/0 0/0 0/0 .text
 * startCreatureSound__15Z2CreatureEnemyF10JAISoundIDUlSc       */
Z2SoundHandlePool* Z2CreatureEnemy::startCreatureSound(JAISoundID i_soundID, u32 param_1, s8 param_2) {
    Z2SoundHandlePool* handle = mSoundObjAnime.startSound(i_soundID, param_1, param_2);

    switch (mEnemyID) {
    case Z2_ENEMY_SF:
        if (i_soundID == Z2SE_EN_SF_BREAK_DOWN) {
            field_0xa3 = 1;
            Z2GetSoundObjMgr()->getEnemyList()->remove(this);
        } else if (field_0xa3 != 0 && i_soundID == Z2SE_EN_SF_BUILD_UP) {
            field_0xa3 = 0;
            Z2GetSoundObjMgr()->getEnemyList()->append(this);
        }
        break;
    case Z2_ENEMY_FZ:
        if (handle != NULL && handle->isSoundAttached() && i_soundID == Z2SE_EN_FZ_BOUND) {
            f32 volume = Z2Calc::linearTransform(param_1, 10.0f, 50.0f, 0.1f, 1.0f, false);
            f32 pitch = Z2Calc::linearTransform(param_1, 10.0f, 50.0f, 0.8f, 1.2f, false);
            (*handle)->getAuxiliary().moveVolume(volume, 0);
            (*handle)->getAuxiliary().movePitch(pitch, 0);
        }
        break;
    case Z2_ENEMY_MS:
        Z2_E_ms_modVol(handle, mSoundObjAnime.field_0x1c);
        break;
    case Z2_ENEMY_SW:
        Z2_E_sw_modPitch(handle, param_1);
        break;
    case Z2_ENEMY_MM:
        Z2_E_mm_modPitch(handle, mSoundObjAnime.field_0x1c);
        break;
    case Z2_ENEMY_SM2:
        if (i_soundID == Z2SE_EN_SM_HIT) {
            field_0xa3 = 1;
            Z2GetSeqMgr()->setBattleLastHit(struct_80450869);
        }
        break;
    }
    
    switch (i_soundID) {
    case Z2SE_EN_ZAN_YO_LAND:
        Z2_B_zan_modPitch(handle, mSoundObjAnime.field_0x1c);
        break;
    case Z2SE_EN_ZAN_YO_FLOAT_WAIT:
        if (mSoundObjAnime.field_0x1c > 100) {
            return NULL;
        }
        break;
    }

    return handle;
}

/* 802C136C-802C168C 2BBCAC 0320+00 2/0 0/0 0/0 .text
 * startCreatureSoundLevel__15Z2CreatureEnemyF10JAISoundIDUlSc  */
Z2SoundHandlePool* Z2CreatureEnemy::startCreatureSoundLevel(JAISoundID i_soundID, u32 param_1, s8 param_2) {
    if (i_soundID == 0x7FFFF) {
        cXyz pos;
        Z2GetAudience()->convertAbsToRel(*mpPos, &pos, 0);
        f32 volume = Z2GetAudience()->calcRelPosVolume(pos, 2.0f, 0);
        f32 pan = Z2GetAudience()->calcRelPosPan(pos, 0);
        f32 dolby = Z2GetAudience()->calcRelPosDolby(pos, 0);
        Z2GetSeqMgr()->setChildTrackVolume(Z2GetSeqMgr()->getMainBgmHandle(),
                                           7, volume, 0, pan, dolby);
        return NULL;
    }

    Z2SoundHandlePool* handle = mSoundObjAnime.startLevelSound(i_soundID, param_1, param_2);

    switch (mEnemyID) {
    case Z2_ENEMY_FZ:
        if (handle != NULL && *handle != NULL && i_soundID == Z2SE_EN_FZ_MOVE) {
            f32 volume = Z2Calc::getParamByExp(param_1, 1.0f, 50.0f, 0.4f, 0.1f, 1.1f,
                                               Z2Calc::CURVE_SIGN_1);
            (*handle)->getAuxiliary().moveVolume(volume, 0);
        }
        break;
    case Z2_ENEMY_SW:
        Z2_E_sw_modPitch(handle, param_1);
        break;
    case Z2_ENEMY_RB:
        if (handle != NULL && *handle != NULL && i_soundID == Z2SE_EN_RB_MOVE) {
            f32 volume = Z2Calc::getParamByExp(param_1, 4.0f, 35.0f, 0.6f, 0.7f, 1.0f,
                                               Z2Calc::CURVE_SIGN_1);
            f32 pitch = Z2Calc::getParamByExp(param_1, 4.0f, 35.0f, 0.4f, 0.8f, 1.0f,
                                              Z2Calc::CURVE_SIGN_1);
            (*handle)->getAuxiliary().moveVolume(volume, 0);
            (*handle)->getAuxiliary().movePitch(pitch, 0);
            break;
        }
        // no break
    default:
        if (handle != NULL && *handle != NULL && i_soundID == Z2SE_EN_PH_PROPELLER) {
            f32 volume = Z2Calc::getParamByExp(param_1, 0.0f, 30.0f, 0.4f, 0.0f, 1.0f,
                                               Z2Calc::CURVE_SIGN_1);
            f32 pitch = Z2Calc::getParamByExp(param_1, 4000.0f, 13000.0f, 0.4f, 0.8f, 1.2f,
                                              Z2Calc::CURVE_SIGN_1);
            (*handle)->getAuxiliary().moveVolume(volume, 0);
            (*handle)->getAuxiliary().movePitch(pitch, 0);
        }
        break;
    }

    return handle;
}

/* 802C168C-802C1948 2BBFCC 02BC+00 4/0 0/0 0/0 .text
 * startCreatureVoice__15Z2CreatureEnemyF10JAISoundIDSc         */
Z2SoundHandlePool* Z2CreatureEnemy::startCreatureVoice(JAISoundID i_soundID, s8 param_1) {
    if (Z2GetSeqMgr()->getMainBgmID() == Z2BGM_BOSS_ZANT) {
        switch (Z2GetSeqMgr()->mBgmStatus) {
        case 0:
        case 1:
            break;
        case 2:
        case 3:
            switch (i_soundID) {
            case Z2SE_EN_ZAN_V_ATK_BALL:
                i_soundID = Z2SE_EN_ZAN_V_ATK_BALL_MG;
                break;
            case Z2SE_EN_ZAN_V_DMG:
                i_soundID = Z2SE_EN_ZAN_V_DMG_MG;
                break;
            }
            break;
        case 4:
        case 5:
            switch (i_soundID) {
            case Z2SE_EN_ZAN_V_ATK_BALL:
                i_soundID = Z2SE_EN_ZAN_V_ATK_BALL_OI;
                break;
            case Z2SE_EN_ZAN_V_DMG:
                i_soundID = Z2SE_EN_ZAN_V_DMG_OI;
                break;
            }
            break;
        case 6:
        case 7:
            switch (i_soundID) {
            case Z2SE_EN_ZAN_V_ATK_BALL:
                i_soundID = Z2SE_EN_ZAN_V_ATK_BALL_MK;
                break;
            case Z2SE_EN_ZAN_V_DMG:
                i_soundID = Z2SE_EN_ZAN_V_DMG_MK;
                break;
            }
            break;
        case 8:
        case 9:
            switch (i_soundID) {
            case Z2SE_EN_ZAN_V_DMG:
                i_soundID = Z2SE_EN_ZAN_V_DMG_YO;
                break;
            }
            break;
        case 10:
        case 11:
            switch (i_soundID) {
            case Z2SE_EN_ZAN_V_DMG:
                i_soundID = Z2SE_EN_ZAN_V_DMG_CTL;
                break;
            }
            break;
        }
    }

    u32 var1 = 0;
    if (mEnemyID == 7) {
        var1 = 1;
    }
    Z2SoundHandlePool* handle = mSoundObjSimple1.startSound(i_soundID, var1, param_1);

    switch (mEnemyID) {
    case Z2_ENEMY_SH:
        if (i_soundID == Z2SE_EN_SH_V_DEAD) {
            field_0xa3 = 1;
            Z2GetSeqMgr()->setBattleLastHit(struct_80450869);
        }
        break;
    case Z2_ENEMY_BS:
        if (i_soundID == Z2SE_EN_BS_V_DEAD) {
            field_0xa3 = 1;
            Z2GetSeqMgr()->setBattleLastHit(struct_80450869);
        }
        break;
    case Z2_ENEMY_MS:
        Z2_E_ms_modVol(handle, mSoundObjSimple1.field_0x1c);
        break;
    case Z2_ENEMY_SW:
        Z2_E_sw_modPitch(handle, mSoundObjSimple1.field_0x1c);
        break;
    case Z2_ENEMY_MM:
        Z2_E_mm_modPitch(handle, mSoundObjSimple1.field_0x1c);
        break;
    }

    if (i_soundID == Z2SE_EN_ZAN_YO_V_KENKEN) {
        Z2_B_zan_modPitch(handle, mSoundObjSimple1.field_0x1c);
    }

    return handle;
}

/* 802C1948-802C199C 2BC288 0054+00 3/0 0/0 0/0 .text
 * startCreatureVoiceLevel__15Z2CreatureEnemyF10JAISoundIDSc    */
Z2SoundHandlePool* Z2CreatureEnemy::startCreatureVoiceLevel(JAISoundID i_soundID, s8 param_1) {
    u32 var1 = 0;
    if (mEnemyID == Z2_ENEMY_RDY) {
        var1 = 1;
    }
    return mSoundObjSimple1.startLevelSound(i_soundID, var1, param_1);
}

/* 802C199C-802C19D8 2BC2DC 003C+00 3/0 0/0 0/0 .text
 * startCreatureExtraSound__15Z2CreatureEnemyF10JAISoundIDUlSc  */
Z2SoundHandlePool* Z2CreatureEnemy::startCreatureExtraSound(JAISoundID i_soundID, u32 param_1,
                                                            s8 param_2) {
    return mSoundObjSimple2.startSound(i_soundID, param_1, param_2);
}

/* 802C19D8-802C1A14 2BC318 003C+00 3/0 0/0 0/0 .text
 * startCreatureExtraSoundLevel__15Z2CreatureEnemyF10JAISoundIDUlSc */
Z2SoundHandlePool* Z2CreatureEnemy::startCreatureExtraSoundLevel(JAISoundID i_soundID, u32 param_1,
                                                                 s8 param_2) {
    return mSoundObjSimple2.startLevelSound(i_soundID, param_1, param_2);
}

/* 802C1A14-802C1B7C 2BC354 0168+00 4/0 0/0 0/0 .text startCollisionSE__15Z2CreatureEnemyFUlUl */
Z2SoundHandlePool* Z2CreatureEnemy::startCollisionSE(u32 param_0, u32 param_1) {
    u8 var1;
    switch (mEnemyID) {
    case Z2_ENEMY_WS:
        field_0xa3 = 1;
        Z2GetSeqMgr()->setBattleLastHit(struct_80450869);
        return mSoundObjAnime.startCollisionSE(param_0, param_1, NULL);
    case Z2_ENEMY_BI:
        if (getSupervisor() != NULL) {
            Z2GetSoundObjMgr()->removeEnemy(this);
        }
        return mSoundObjAnime.startCollisionSE(param_0, param_1, NULL);
    default:
        switch (param_1) {
        case 0x1e:
        case 0x1f:
        case 0x22:
        case 0x23:
        case 0x25:
        case 0x28:
        case 0x29:
        case 0x2a:
        case 0x2d:
        case 0x34:
            Z2GetSeqMgr()->setBattleSeqState(2);
            break;
        case 0x20:
        case 0x24:
            field_0xa3 = 1;
            var1 = struct_80450869;
            if (param_0 == Z2SE_HIT_SWORD || param_0 == Z2SE_HIT_SWORD_STAB
                                          || param_0 == Z2SE_HIT_WOLFBITE) {
                var1 = 0x14;
            }
            Z2GetSeqMgr()->setBattleLastHit(var1);
            break;
        case 0x21:
            if (mEnemyID == 0x2b) {
                field_0xa3 = 1;
                Z2GetSeqMgr()->setBattleLastHit(struct_80450869);
            } else if (mEnemyID == 0x16) {
                Z2GetSeqMgr()->setBattleSeqState(2);
            }
            break;
        }
        return mSoundObjAnime.startCollisionSE(param_0, param_1, NULL);
    }
}

/* 802C1B7C-802C1B90 2BC4BC 0014+00 0/0 0/0 55/55 .text setLinkSearch__15Z2CreatureEnemyFb */
void Z2CreatureEnemy::setLinkSearch(bool b_search) {
    if (field_0xa3 != 0) {
        return;
    }
    mLinkSearch = b_search;
}

/* 802C1B90-802C1BE8 2BC4D0 0058+00 0/0 0/0 72/72 .text setEnemyName__15Z2CreatureEnemyFPCc */
void Z2CreatureEnemy::setEnemyName(char const* i_name) {
    if (i_name == NULL) {
        field_0xa1 = -1;
    } else {
        mEnemyID = Z2GetSoundObjMgr()->getEnemyID(i_name, this);
    }
}

/* 802C1BE8-802C1C24 2BC528 003C+00 0/0 0/0 1/1 .text            __ct__16Z2CreatureSumomoFv */
Z2CreatureSumomo::Z2CreatureSumomo() {
    /* empty function */
}

/* 802C1C24-802C1CA0 2BC564 007C+00 0/0 0/0 8/8 .text playSumomoBgm__16Z2CreatureSumomoFUl */
void Z2CreatureSumomo::playSumomoBgm(u32 param_0) {
    if (Z2GetSeqMgr()->getSubBgmID() != Z2BGM_SUMOMO) {
        if (param_0 < 700) {
            Z2GetSeqMgr()->subBgmStart(Z2BGM_SUMOMO);
        }
    } else if (param_0 >= 1000 && Z2GetStatusMgr()->getDemoStatus() != 6) {
        Z2GetSeqMgr()->subBgmStop();
    }
}

/* 802C1CA0-802C1D10 2BC5E0 0070+00 1/0 0/0 0/0 .text            deleteObject__16Z2CreatureSumomoFv
 */
void Z2CreatureSumomo::deleteObject() {
    if (Z2GetSeqMgr()->getSubBgmID() == Z2BGM_SUMOMO && Z2GetStatusMgr()->getDemoStatus() != 6) {
        Z2GetSeqMgr()->subBgmStop();
    }
    Z2Creature::deleteObject();
}

/* 802C1D10-802C1D4C 2BC650 003C+00 0/0 0/0 3/3 .text            __ct__18Z2SoundObjBeeGroupFv */
Z2SoundObjBeeGroup::Z2SoundObjBeeGroup() {
    /* empty function */
}

/* 802C1D4C-802C1D6C 2BC68C 0020+00 1/0 0/0 0/0 .text            init__18Z2SoundObjBeeGroupFP3VecUc
 */
void Z2SoundObjBeeGroup::init(Vec* param_0, u8 param_1) {
    Z2SoundObjBase::init(param_0, param_1);
}

/* 802C1D6C-802C1F54 2BC6AC 01E8+00 0/0 0/0 2/2 .text
 * playBeeGroupSound__18Z2SoundObjBeeGroupF10JAISoundIDUc       */
void Z2SoundObjBeeGroup::playBeeGroupSound(JAISoundID i_soundID, u8 param_1) {
    if (param_1 == 0) {
        return;
    }

    u32 sound_id = (u32)i_soundID;
    JAISoundID sound_id2;

    switch (sound_id) {
    case Z2SE_EN_BE_STAY:
        sound_id2 = Z2SE_EN_BE_STAY_GROUP;
        break;
    case Z2SE_EN_BE_FLY:
        sound_id2 = Z2SE_EN_BE_FLY_GROUP;
        break;
    case Z2SE_EN_BE_FLY_D:
        sound_id2 = Z2SE_EN_BE_FLY_GROUP_D;
        break;
    case Z2SE_EN_BUG_WALK_GRD:
        sound_id2 = Z2SE_EN_BUG_WALK_GRD_GRP;
        break;
    case Z2SE_EN_BUG_WALK_BODY:
        sound_id2 = Z2SE_EN_BUG_WALK_BODY_GRP;
        break;
    }

    Z2SoundHandlePool* handle1 = startLevelSound(sound_id, 0, -1);
    Z2SoundHandlePool* handle2 = startLevelSound(sound_id2, 0, -1);

    if (handle1 != NULL && *handle1 != NULL) {
        f32 volume = Z2Calc::linearTransform(param_1, 1.0f, 5.0f, 0.5f, 1.0f, false);
        (*handle1)->getAuxiliary().moveVolume(volume, 0);
    }
    if (handle2 != NULL && *handle2 != NULL) {
        f32 volume = Z2Calc::linearTransform(param_1, 1.0f, 20.0f, 0.1f, 1.0f, false);
        (*handle2)->getAuxiliary().moveVolume(volume, 0);
    }
}

/* 802C1F54-802C1FB0 2BC894 005C+00 0/0 0/0 1/1 .text            __ct__12Z2CreatureFMFv */
Z2CreatureFM::Z2CreatureFM() {
    /* empty function */
}

/* 802C1FB0-802C1FFC 2BC8F0 004C+00 1/0 0/0 0/0 .text            deleteObject__12Z2CreatureFMFv */
void Z2CreatureFM::deleteObject() {
    Z2CreatureEnemy::deleteObject();
    field_0xa4.deleteObject();
    field_0xc4.deleteObject();
    field_0xe4.deleteObject();
    field_0x104.deleteObject();
}

/* 802C1FFC-802C20E8 2BC93C 00EC+00 0/0 0/0 1/1 .text
 * init__12Z2CreatureFMFP3VecP3VecP3VecP3VecP3VecP3VecUcUcUcUcUcUc */
void Z2CreatureFM::init(Vec* param_0, Vec* param_1, Vec* param_2, Vec* param_3, Vec* param_4,
                        Vec* param_5, u8 param_6, u8 param_7, u8 param_8, u8 param_9,
                        u8 param_10, u8 param_11) {
    Z2Creature::init(param_0, param_1, param_6, param_7);
    if (param_2 != NULL) {
        field_0xa4.init(param_2, param_8);
    }
    if (param_3 != NULL) {
        field_0xc4.init(param_3, param_9);
    }
    if (param_4 != NULL) {
        field_0xe4.init(param_4, param_10);
    }
    if (param_5 != NULL) {
        field_0x104.init(param_5, param_11);
    }
}

/* 802C20E8-802C2194 2BCA28 00AC+00 1/0 0/0 0/0 .text            framework__12Z2CreatureFMFUlSc */
void Z2CreatureFM::framework(u32 param_0, s8 param_1) {
    Z2Creature::framework(param_0, param_1);
    field_0xa4.framework(param_0, param_1);
    field_0xc4.framework(param_0, param_1);
    field_0xe4.framework(param_0, param_1);
    field_0x104.framework(param_0, param_1);
}

/* 802C2194-802C2290 2BCAD4 00FC+00 0/0 0/0 1/1 .text
 * startChainSound__12Z2CreatureFMF10JAISoundIDUcfUlSc          */
Z2SoundHandlePool* Z2CreatureFM::startChainSound(JAISoundID i_soundID, u8 param_1, f32 param_2,
                                                 u32 param_3, s8 param_4) {
    switch (param_1) {
    case 0:
        return field_0xa4.startSound(i_soundID, param_3, param_4);
    case 1:
        return field_0xc4.startSound(i_soundID, param_3, param_4);
    case 2:
        return field_0xe4.startSound(i_soundID, param_3, param_4);
    case 3:
        return field_0x104.startSound(i_soundID, param_3, param_4);
    default:
        return NULL;
    }
}

/* 802C2290-802C24B0 2BCBD0 0220+00 0/0 0/0 1/1 .text
 * startChainSoundLevel__12Z2CreatureFMF10JAISoundIDUcfUlSc     */
Z2SoundHandlePool* Z2CreatureFM::startChainSoundLevel(JAISoundID i_soundID, u8 param_1, f32 param_2,
                                                      u32 param_3, s8 param_4) {
    Z2SoundHandlePool* handle;
    f32 pitch;
    switch (param_1) {
    case 0:
        handle = field_0xa4.startLevelSound(i_soundID, param_3, param_4);
        if (handle != NULL && *handle != NULL) {
            if (param_2 > 30.0f) {
                pitch = 1.06f;
            } else {
                pitch = (param_2 * 5.0f) / 100.0f;
            }
            pitch += Z2Calc::getRandom(0.03f, 1.0f, 0.5f) + 0.7f;
            if (pitch > 1.06f) {
                pitch = 1.06f;
            }
            (*handle)->getAuxiliary().movePitch(pitch, 3);
            return handle;
        }
        return NULL;
    case 1:
        handle = field_0xa4.startLevelSound(i_soundID, param_3, param_4);
        if (handle != NULL && *handle != NULL) {
            if (param_2 > 30.0f) {
                pitch = 1.06f;
            } else {
                pitch = (param_2 * 5.0f) / 100.0f;
            }
            pitch += Z2Calc::getRandom(0.03f, 1.0f, 0.5f) + 0.5f;
            if (pitch > 1.06f) {
                pitch = 1.06f;
            }
            (*handle)->getAuxiliary().movePitch(pitch, 3);
            return handle;
        }
        return NULL;
    case 2:
        return field_0xe4.startLevelSound(i_soundID, param_3, param_4);
    case 3:
        return field_0x104.startLevelSound(i_soundID, param_3, param_4);
    default:
        return NULL;
    }
}

/* 802C24B0-802C24D0 2BCDF0 0020+00 0/0 0/0 1/1 .text init__13Z2CreatureGobFP3VecP3VecP3VecUcUcUc
 */
void Z2CreatureGob::init(Vec* param_0, Vec* param_1, Vec* param_2, u8 param_3, u8 param_4,
                         u8 param_5) {
    Z2Creature::init(param_0, param_1, param_2, param_3, param_4, param_5);
}

/* 802C24D0-802C2578 2BCE10 00A8+00 1/0 0/0 0/0 .text
 * startCreatureVoiceLevel__13Z2CreatureGobF10JAISoundIDSc      */
Z2SoundHandlePool* Z2CreatureGob::startCreatureVoiceLevel(JAISoundID i_soundID, s8 param_1) {
    if (mSoundObjSimple1.getHandleSoundID(Z2SE_EN_GOB_V_DAMAGE) != NULL ||
        mSoundObjSimple1.getHandleSoundID(Z2SE_EN_GOB_V_STOMACH) != NULL)
    {
        return NULL;
    }
    return mSoundObjSimple1.startLevelSound(i_soundID, 0, param_1);
}

/* 802C2578-802C25EC 2BCEB8 0074+00 0/0 0/0 1/1 .text            __ct__12Z2CreatureOIFv */
Z2CreatureOI::Z2CreatureOI() {
    /* empty function */
}

/* 802C25EC-802C2670 2BCF2C 0084+00 1/0 0/0 0/0 .text            deleteObject__12Z2CreatureOIFv */
void Z2CreatureOI::deleteObject() {
    Z2CreatureEnemy::deleteObject();
    field_0xa4.deleteObject();
    field_0xc4.deleteObject();
    field_0xe4.deleteObject();
    mTentacleSounds[0].deleteObject();
    mTentacleSounds[1].deleteObject();
    mTentacleSounds[2].deleteObject();
    mTentacleSounds[3].deleteObject();
    mTentacleSounds[4].deleteObject();
    mTentacleSounds[5].deleteObject();
    mTentacleSounds[6].deleteObject();
    mTentacleSounds[7].deleteObject();
}

/* 802C2670-802C2864 2BCFB0 01F4+00 0/0 0/0 1/1 .text
 * init__12Z2CreatureOIFP3VecP3VecP3VecP3VecP3VecP3VecP3VecP3VecP3VecP3VecP3VecP3VecP3Vec */
void Z2CreatureOI::init(Vec* param_0, Vec* param_1, Vec* param_2, Vec* param_3, Vec* param_4,
                        Vec* param_5, Vec* param_6, Vec* param_7, Vec* param_8, Vec* param_9,
                        Vec* param_10, Vec* param_11, Vec* param_12) {
    Z2Creature::init(param_0, param_1, 1, 1);
    if (param_2 != NULL) {
        field_0xa4.init(param_2, 1);
    }
    if (param_3 != NULL) {
        field_0xc4.init(param_3, 1);
    }
    if (param_4 != NULL) {
        field_0xe4.init(param_4, 1);
    }
    if (param_5 != NULL) {
        mTentacleSounds[0].init(param_5, 1);
    }
    if (param_6 != NULL) {
        mTentacleSounds[1].init(param_6, 1);
    }
    if (param_7 != NULL) {
        mTentacleSounds[2].init(param_7, 1);
    }
    if (param_8 != NULL) {
        mTentacleSounds[3].init(param_8, 1);
    }
    if (param_9 != NULL) {
        mTentacleSounds[4].init(param_9, 1);
    }
    if (param_10 != NULL) {
        mTentacleSounds[5].init(param_10, 1);
    }
    if (param_11 != NULL) {
        mTentacleSounds[6].init(param_11, 1);
    }
    if (param_12 != NULL) {
        mTentacleSounds[7].init(param_12, 1);
    }
}

/* 802C2864-802C29D4 2BD1A4 0170+00 1/0 0/0 0/0 .text            framework__12Z2CreatureOIFUlSc */
void Z2CreatureOI::framework(u32 param_0, s8 param_1) {
    Z2Creature::framework(param_0, param_1);
    field_0xa4.framework(param_0, param_1);
    field_0xc4.framework(param_0, param_1);
    field_0xe4.framework(param_0, param_1);
    mTentacleSounds[0].framework(param_0, param_1);
    mTentacleSounds[1].framework(param_0, param_1);
    mTentacleSounds[2].framework(param_0, param_1);
    mTentacleSounds[3].framework(param_0, param_1);
    mTentacleSounds[4].framework(param_0, param_1);
    mTentacleSounds[5].framework(param_0, param_1);
    mTentacleSounds[6].framework(param_0, param_1);
    mTentacleSounds[7].framework(param_0, param_1);
}

/* 802C29D4-802C2C84 2BD314 02B0+00 1/0 0/0 0/0 .text
 * startCreatureSoundLevel__12Z2CreatureOIF10JAISoundIDUlSc     */
Z2SoundHandlePool* Z2CreatureOI::startCreatureSoundLevel(JAISoundID i_soundID, u32 param_1,
                                                         s8 param_2) {
    if (i_soundID == Z2SE_EN_OI_MOVE) {
        Z2SoundHandlePool* handle1 = mSoundObjAnime.startLevelSound(i_soundID, param_1, param_2);
        Z2SoundHandlePool* handle2 = field_0xa4.startLevelSound(i_soundID, param_1, param_2);
        Z2SoundHandlePool* handle3 = field_0xc4.startLevelSound(i_soundID, param_1, param_2);
        Z2SoundHandlePool* handle4 = field_0xe4.startLevelSound(i_soundID, param_1, param_2);

        f32 volume = Z2Calc::getParamByExp(param_1, 0.0f, 42.0f, 0.4f, 0.0f, 1.0f,
                                           Z2Calc::CURVE_SIGN_1);
        f32 pitch = Z2Calc::getParamByExp(param_1, 0.0f, 42.0f, 0.4f, 0.9f, 1.1f,
                                          Z2Calc::CURVE_SIGN_1);
        
        if (handle1 != NULL && *handle1 != NULL) {
            (*handle1)->getAuxiliary().moveVolume(volume, 0);
            (*handle1)->getAuxiliary().movePitch(pitch, 0);
        } else {
            return NULL;
        }

        if (handle2 != NULL && *handle2 != NULL) {
            (*handle2)->getAuxiliary().moveVolume(volume, 0);
            (*handle2)->getAuxiliary().movePitch(pitch, 0);
        } else {
            return NULL;
        }

        if (handle3 != NULL && *handle3 != NULL) {
            (*handle3)->getAuxiliary().moveVolume(volume, 0);
            (*handle3)->getAuxiliary().movePitch(pitch, 0);
        } else {
            return NULL;
        }

        if (handle4 != NULL && *handle4 != NULL) {
            (*handle4)->getAuxiliary().moveVolume(volume, 0);
            (*handle4)->getAuxiliary().movePitch(pitch, 0);
            return handle4;
        } else {
            return NULL;
        }
    } else {
        return mSoundObjAnime.startLevelSound(i_soundID, param_1, param_2);
    }
}

/* 802C2C84-802C2CD4 2BD5C4 0050+00 0/0 0/0 1/1 .text
 * startTentacleSound__12Z2CreatureOIF10JAISoundIDUcUlSc        */
Z2SoundHandlePool* Z2CreatureOI::startTentacleSound(JAISoundID i_soundID, u8 param_1, u32 param_2,
                                                    s8 param_3) {
    return mTentacleSounds[param_1].startSound(i_soundID, param_2, param_3);
}

/* 802C2CD4-802C2DE0 2BD614 010C+00 0/0 0/0 1/1 .text
 * startTentacleSoundLevel__12Z2CreatureOIF10JAISoundIDUcfUlSc  */
Z2SoundHandlePool* Z2CreatureOI::startTentacleSoundLevel(JAISoundID i_soundID, u8 param_1,
                                                         f32 param_2, u32 param_3, s8 param_4) {
    Z2SoundHandlePool* handle =
        mTentacleSounds[param_1].startLevelSound(i_soundID, param_3, param_4);
    if (handle != NULL && *handle != NULL) {
        f32 volume = Z2Calc::getParamByExp(param_2, 0.0f, 60.0f, 0.4f, 0.0f, 1.0f,
                                           Z2Calc::CURVE_SIGN_1);
        f32 pitch = Z2Calc::getParamByExp(param_2, 0.0f, 60.0f, 0.4f, 0.9f, 1.1f,
                                          Z2Calc::CURVE_SIGN_1);
        (*handle)->getAuxiliary().moveVolume(volume, 0);
        (*handle)->getAuxiliary().movePitch(pitch, 0);
        return handle;
    } else {
        return NULL;
    }
}

/* 802C2DE0-802C2E54 2BD720 0074+00 3/3 0/0 0/0 .text Z2_E_sw_modPitch__FP17Z2SoundHandlePoolUl */
static void Z2_E_sw_modPitch(Z2SoundHandlePool* i_handle, u32 param_1) {
    if (i_handle != NULL && *i_handle != NULL) {
        f32 pitch = 1.0f;
        switch (param_1) {
        case 1:
            pitch = 1.1f;
            break;
        case 3:
            pitch = 0.8f;
            break;
        }
        (*i_handle)->getAuxiliary().movePitch(pitch, 0);
    }
}

/* 802C2E54-802C2E9C 2BD794 0048+00 2/2 0/0 0/0 .text Z2_E_ms_modVol__FP17Z2SoundHandlePoolUl */
static void Z2_E_ms_modVol(Z2SoundHandlePool* i_handle, u32 param_1) {
    if (i_handle != NULL && *i_handle != NULL && param_1 == 1) {
        (*i_handle)->getAuxiliary().moveVolume(0.2f, 0);
    }
}

/* 802C2E9C-802C2EE4 2BD7DC 0048+00 2/2 0/0 0/0 .text Z2_E_mm_modPitch__FP17Z2SoundHandlePoolUl */
static void Z2_E_mm_modPitch(Z2SoundHandlePool* i_handle, u32 param_1) {
    if (i_handle != NULL && *i_handle != NULL && param_1 == 3) {
        (*i_handle)->getAuxiliary().movePitch(0.7f, 0);
    }
}

/* 802C2EE4-802C3040 2BD824 015C+00 2/2 0/0 0/0 .text Z2_B_zan_modPitch__FP17Z2SoundHandlePoolUl */
static void Z2_B_zan_modPitch(Z2SoundHandlePool* i_handle, u32 param_1) {
    if (i_handle != NULL && *i_handle != NULL) {
        f32 pitch;
        f32 volume = 1.0f;
        if (param_1 > 400) {
            pitch = 0.5f;
        } else if (param_1 > 100) {
            pitch = Z2Calc::getParamByExp(400 - param_1, 0.0f, 300.0f, 0.4f, 0.5f, 1.0f,
                                          Z2Calc::CURVE_SIGN_0);
        } else {
            pitch = Z2Calc::getParamByExp(100 - param_1, 0.0f, 50.0f, 0.4f, 1.0f, 1.5f,
                                          Z2Calc::CURVE_SIGN_0);
            volume = Z2Calc::getParamByExp(param_1, 50.0f, 100.0f, 0.4f, 0.4f, 1.0f,
                                           Z2Calc::CURVE_SIGN_0);
        }
        (*i_handle)->getAuxiliary().movePitch(pitch, 0);
        (*i_handle)->getAuxiliary().moveVolume(volume, 0);
    }
}
