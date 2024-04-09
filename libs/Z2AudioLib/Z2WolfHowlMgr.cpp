//
// Z2WolfHowlMgr
//

#include "Z2AudioLib/Z2WolfHowlMgr.h"
#include "Z2AudioLib/Z2Creature.h"
#include "Z2AudioLib/Z2Calc.h"
#include "Z2AudioLib/Z2SeqMgr.h"
#include "Z2AudioLib/Z2SeMgr.h"
#include "Z2AudioLib/Z2SceneMgr.h"
#include "Z2AudioLib/Z2SoundMgr.h"
#include "Z2AudioLib/Z2Audience.h"
#include "d/d_demo.h"

/* ############################################################################################## */
/* 804508A0-804508A8 000320 0008+00 1/0 0/0 0/0 .sdata           sHowlTobikusa */
extern SongNote sHowlTobikusa[4];

/* 803CBC50-803CBC5C 028D70 000C+00 1/0 0/0 0/0 .data            sHowlUmakusa */
static SongNote sHowlUmakusa[6] = {
    {0x01, 0x0F}, {0x02, 0x0F}, {0x03, 0x3C}, {0x01, 0x0F}, {0x02, 0x0F}, {0x03, 0x3C},
};

/* 803CBC5C-803CBC68 028D7C 000C+00 1/0 0/0 0/0 .data            sHowlZeldaSong */
static SongNote sHowlZeldaSong[6] = {
    {0x02, 0x1E}, {0x01, 0x0F}, {0x03, 0x2D}, {0x02, 0x1E}, {0x01, 0x0F}, {0x03, 0x2D},
};

/* 803CBC68-803CBC74 028D88 000C+00 1/0 0/0 0/0 .data            sHowlLightPrelude */
static SongNote sHowlLightPrelude[6] = {
    {0x01, 0x14}, {0x03, 0x28}, {0x01, 0x14}, {0x03, 0x14}, {0x02, 0x14}, {0x01, 0x1E},
};

/* 803CBC74-803CBC80 028D94 000C+00 1/0 0/0 0/0 .data            sHowlSoulRequiem */
static SongNote sHowlSoulRequiem[6] = {
    {0x03, 0x1E}, {0x02, 0x0F}, {0x03, 0x0F}, {0x01, 0x1E}, {0x02, 0x1E}, {0x03, 0x1E},
};

/* 803CBC80-803CBC8C 028DA0 000C+00 1/0 0/0 0/0 .data            sHealingSong */
static SongNote sHealingSong[6] = {
    {0x01, 0x1E}, {0x02, 0x1E}, {0x03, 0x1E}, {0x01, 0x1E}, {0x02, 0x1E}, {0x03, 0x1E},
};

/* 803CBC8C-803CBC9C 028DAC 000E+02 1/0 0/0 0/0 .data            sNewSong1 */
static SongNote sNewSong1[7] = {
    {0x03, 0x1E}, {0x02, 0x1E}, {0x01, 0x1E}, {0x03, 0x28}, {0x02, 0x14}, {0x03, 0x1E}, {0x01, 0x1E},
};

/* 803CBC9C-803CBCAC 028DBC 0010+00 1/0 0/0 0/0 .data            sNewSong2 */
static SongNote sNewSong2[8] = {
    {0x01, 0x14}, {0x02, 0x14}, {0x03, 0x14}, {0x02, 0x3C}, {0x03, 0x14}, {0x01, 0x14}, {0x02, 0x14}, {0x03, 0x1E},
};

/* 803CBCAC-803CBCC0 028DCC 0012+02 1/0 0/0 0/0 .data            sNewSong3 */
static SongNote sNewSong3[9] = {
    {0x02, 0x1E}, {0x03, 0x3C}, {0x02, 0x28}, {0x01, 0x14}, {0x03, 0x3C}, {0x01, 0x14}, {0x02, 0x14}, {0x01, 0x14}, {0x02, 0x2D},
};

/* 803CBCC0-803CBD08 -00001 0048+00 1/1 0/0 0/0 .data            sGuideData */
static Z2WolfHowlData sGuideData[9] = {
    {4, sHowlTobikusa}, {6, sHowlUmakusa},     {6, sHowlZeldaSong},
    {6, sHealingSong},  {6, sHowlSoulRequiem}, {6, sHowlLightPrelude},
    {7, sNewSong1},     {8, sNewSong2},        {9, sNewSong3},
};

/* 80450880-80450884 000300 0004+00 2/2 0/0 0/0 .sdata           cPitchDown */
static f32 cPitchDown = 0.8909000158309937f;

/* 80450884-80450888 000304 0004+00 4/4 0/0 0/0 .sdata           cPitchCenter */
static f32 cPitchCenter = 1.0f;

/* 80450888-8045088C 000308 0004+00 2/2 0/0 0/0 .sdata           cPitchUp */
static f32 cPitchUp = 1.1892000436782837f;

static u8 struct_8045088C = 7;
static u8 struct_8045088D = 7;

/* 8045088E-80450890 00030E 0002+00 4/4 0/0 0/0 .sdata           None */
static u8 data_8045088E = 0x1E;
static u8 data_8045088F = 0x00;

/* 80450890-80450894 000310 0004+00 1/1 0/0 0/0 .sdata           cR_FlatWidth */
static f32 cR_FlatWidth = 0.9438700079917908f;

/* 80450894-80450898 -00001 0004+00 3/3 0/0 0/0 .sdata           None */
static u8 struct_80450894 = 0x05;
static u8 struct_80450895 = 0x1E;

/* 80450898-8045089C 000318 0004+00 1/1 0/0 0/0 .sdata           sStickHigh */
static f32 sStickHigh = 0.5f;

/* 8045089C-804508A0 00031C 0004+00 1/1 0/0 0/0 .sdata           sStickCenter */
static f32 sStickCenter = 1.0f / 5.0f;

/* 804508A0-804508A8 000320 0008+00 1/0 0/0 0/0 .sdata           sHowlTobikusa */
static SongNote sHowlTobikusa[4] = {
    {0x01, 0x1E},
    {0x03, 0x1E},
    {0x01, 0x1E},
    {0x03, 0x1E},
};

/* 802CAAC0-802CAB8C 2C5400 00CC+00 0/0 1/1 0/0 .text            __ct__13Z2WolfHowlMgrFv */
Z2WolfHowlMgr::Z2WolfHowlMgr() : JASGlobalInstance(this) {
    mpCurSong = NULL;
    mNowInputValue = 0.0f;
    field_0x18 = 1.0f;
    field_0x1c = 1.0f;
    field_0x20 = cPitchCenter;
    field_0x24 = cPitchCenter;
    field_0x28 = 1.0f;
    mTimer = 0;
    mReleaseTimer = 0;
    mCorrectCurveID = -1;
    field_0x90 = -1;
    field_0xba = 0;
    field_0xbb = 0;
    field_0xbc = 0;

    for (u8 i = 0; i < 20; i++) {
        field_0x92[i] = 0;
    }

    for (u8 i = 0; i < 10; i++) {
        field_0x38[i] = 0.0f;
        field_0x60[i] = 0.0f;
    }

    field_0x34 = 0.0f;
    field_0x30 = 0.0f;
    mpSongList = (Z2WolfHowlData*)&sGuideData;
}

/* 802CAB8C-802CABEC 2C54CC 0060+00 1/1 0/0 0/0 .text            resetState__13Z2WolfHowlMgrFv */
void Z2WolfHowlMgr::resetState() {
    field_0x18 = 1.0f;
    field_0x24 = cPitchCenter;
    field_0x28 = 1.0f;
    mTimer = 0;
    mReleaseTimer = 0;
    field_0xba = 0;

    for (u8 i = 0; i < 10; i++) {
        field_0x38[i] = 0.0f;
        field_0x60[i] = 0.0f;
    }

    field_0x34 = 0.0f;
    field_0x30 = 0.0f;
}

/* 802CABEC-802CACB0 2C552C 00C4+00 1/1 0/0 0/0 .text            calcVolumeMod__13Z2WolfHowlMgrFf */
void Z2WolfHowlMgr::calcVolumeMod(f32 param_0) {
    if (field_0x00) {
        if (mTimer < data_8045088E) {
            field_0x00->getAuxiliary().moveVolume(1.0f, 0);
        } else {
            f32 dVar7 = 1.0f;
            if (mReleaseTimer != 0x0) {
                dVar7 = getParamByExp(mReleaseTimer, 30.0f, 0.0f, 2.0f, 0.0f, 1.0f, Z2Calc::CURVE_SIGN_1);
            }
            field_0x18 = dVar7;
            if (field_0x00) {
                field_0x00->getAuxiliary().moveVolume(field_0x18, 0);
            }
            field_0x1c = field_0x18;
        }
    }
}

/* 802CACB0-802CACCC 2C55F0 001C+00 1/1 0/0 0/0 .text            getNowPitch__13Z2WolfHowlMgrFv */
f32 Z2WolfHowlMgr::getNowPitch() {
    if (field_0x00) {
        return field_0x00->getAuxiliary().mParams.mPitch;
    }

    return 1.0f;
}

/* 802CACCC-802CACD4 2C560C 0008+00 0/0 2/2 0/0 .text            getNowInputValue__13Z2WolfHowlMgrFv
 */
f32 Z2WolfHowlMgr::getNowInputValue() {
    return mNowInputValue;
}

/* 802CACD4-802CAED4 2C5614 0200+00 1/1 0/0 0/0 .text            calcPitchMod__13Z2WolfHowlMgrFff */
void Z2WolfHowlMgr::calcPitchMod(f32 param_0, f32 param_1) {
    f32 dVar12 = 1.0f;
    field_0x20 = getNowPitch();
    if (mReleaseTimer != 0) {
        f32 dVar11 = getParamByExp(mReleaseTimer, 30.0f, 0.0f, 1.0f, 0.97f, 1.0f, Z2Calc::CURVE_SIGN_0);
        dVar11 = field_0x24 * dVar11;
        if (field_0x00) {
            field_0x00->getAuxiliary().movePitch(dVar11, 0);
        }
    } else {
        if (mTimer < data_8045088E) {
            field_0x34 = 0.0f;
        } else {
            f32 dVar11 = 1.0f;
            if (mNowInputValue < 0.0f) {
                dVar11 = Z2Calc::linearTransform(mNowInputValue, -1.0f, 0.0f, cPitchDown, 1.0f, false);
            } else if (mNowInputValue > 0.0f) {
                dVar11 = Z2Calc::linearTransform(mNowInputValue, 1.0f, 0.0f,cPitchUp, 1.0f, false);
            }
            
            f32 temp = dVar11 * cPitchCenter;
            f32 fVar5 = temp - (dVar12 = field_0x24);
            if (fVar5 == 0.0f) {
                dVar12 = dVar12;
            } else if (fVar5 > 0.0f) {
                dVar12 += fVar5 / struct_8045088C;
            } else {
                dVar12 += fVar5 / struct_8045088D;
            }
        }
        field_0x24 = dVar12;
        f32 dVar11 = Z2Calc::linearTransform(param_1, 0.0f, 1.0f, 1.0f, cR_FlatWidth, true);
        f32 fVar5 = field_0x28 + (dVar11 - field_0x28) / struct_80450894;
        field_0x28 = fVar5;
        dVar12 *= fVar5;
        if (field_0x00) {
            field_0x00->getAuxiliary().movePitch(dVar12, 0);
        }
    }
}

/* 802CAED4-802CB100 2C5814 022C+00 0/0 1/1 0/0 .text startWolfHowlSound__13Z2WolfHowlMgrFffbf */
s8 Z2WolfHowlMgr::startWolfHowlSound(f32 param_0, f32 param_1, bool param_2, f32 param_3) {
    if (mCorrectCurveID > 1) {
        Z2GetSeqMgr()->i_setWindStoneVol(0.0f, 0);
    }

    if (Z2GetSeqMgr()->isItemGetDemo() || (mReleaseTimer != 0)) {
        param_2 = false;
    } else {
        if (param_1 > sStickCenter) {
            mNowInputValue = Z2Calc::linearTransform(param_1, sStickCenter, sStickHigh, 0.0f, 1.0f, false);
        } else {
            f32 fVar1 = -1.0f * sStickCenter;
            if (param_1 < fVar1) {
                mNowInputValue = Z2Calc::linearTransform(param_1, fVar1, -1.0f * sStickHigh, 0.0f, -1.0f, false);
            } else {
                mNowInputValue = 0.0f;
            }
        }
    }

    if (param_2) { 
        if (mTimer > data_8045088E) {
            Z2GetSoundStarter()->startLevelSound(0x10035, &field_0x00, NULL);
        }
        if (field_0x00) {
            calcPitchMod(0.0f, 0.0f);
            calcVolumeMod(param_3);
        }
        mTimer++;
    } else {
         if (mTimer > data_8045088E) {
            if (mReleaseTimer < 0x1e) {
                Z2GetSoundStarter()->startLevelSound(0x10035, &field_0x00, NULL);
                if (field_0x00) {
                    calcPitchMod(0.0f, 0.0f);
                    calcVolumeMod(param_3);
                }
                mReleaseTimer++;
                mTimer++;
            } else {
                resetState();
            }
        } else {
            resetState();
        }
    }

    return checkLine();
}

/* 802CB100-802CB320 2C5A40 0220+00 0/0 1/1 0/0 .text
 * setCorrectData__13Z2WolfHowlMgrFScP14Z2WolfHowlData          */
void Z2WolfHowlMgr::setCorrectData(s8 param_0, Z2WolfHowlData* param_1) {
    if (param_0 == mCorrectCurveID) {
        return;
    }
    if (param_0 == -1) {
        mCorrectCurveID = -1;
        mpCurSong = 0;
        return;
    }
    if (param_1 == NULL) {
        if (param_0 >= 9) {
            mCorrectCurveID = -1;
            mpCurSong = 0;
            return;
        }
        param_1 = &mpSongList[param_0];
    }
    mCorrectCurveID = param_0;
    mpCurSong = param_1;

    switch(param_0) {
    case 3:
        cPitchUp = 1.1224600076675415f;
        cPitchCenter = 1.0594600439071655f;
        cPitchDown = 0.7936859726905823f;
        break;
    case 4:
        cPitchUp = 1.2599060535430908f;
        cPitchCenter = 0.9438700079917908f;
        cPitchDown = 0.8408849835395813f;
        break;
    case 6:
        cPitchUp = 1.3348400592803955f;
        cPitchCenter = 0.8909000158309937f;
        cPitchDown = 0.8909000158309937f;
        break;
    case 7:
        cPitchUp = 1.2599060535430908f;
        cPitchCenter = 0.9438700079917908f;
        cPitchDown = 0.8909000158309937f;
        break;
    case 8:
        cPitchUp = 1.1224600076675415f;
        cPitchCenter = 0.9438700079917908f;
        cPitchDown = 0.7491499781608582f;
        break;
    default:
        cPitchUp = 1.1892000436782837f;
        cPitchCenter = 1.0f;
        cPitchDown = 0.8909000158309937f;
        break;
    }

    field_0xbe = 0;
    u32 uVar4 = 0;

    for (u8 bVar5 = 0; bVar5 < getCorrectLineNum(); bVar5++) {
        uVar4 += getCorrectLine(bVar5).length;
        if (getCorrectLine(bVar5).barType != 0) {
            field_0xbe += struct_80450895;
            field_0xbe += getCorrectLine(bVar5).length;
        }
    }
    field_0xbe -= uVar4 >> 2;
}

/* 802CB320-802CB370 2C5C60 0050+00 3/3 2/2 0/0 .text            getCorrectLine__13Z2WolfHowlMgrFUc
 */
SongNote Z2WolfHowlMgr::getCorrectLine(u8 param_0) {
    u16 local_18;

    if (mpCurSong == 0 || param_0 >= mpCurSong->mLineNum) {
        SongNote note;
        note.barType = 0;
        note.length = 0;
        return note; 
    }
    return mpCurSong->mSongData[param_0];
}

/* 802CB370-802CB38C 2C5CB0 001C+00 2/2 1/1 0/0 .text getCorrectLineNum__13Z2WolfHowlMgrFv */
u8 Z2WolfHowlMgr::getCorrectLineNum() {
    if (mpCurSong != NULL) {
        return mpCurSong->mLineNum;
    }

    return 0;
}

/* ############################################################################################## */
/* 804341F8-8043421C 060F18 0024+00 2/2 0/0 0/0 .bss             sCorrectPhrase */
static JAISoundID sCorrectPhrase[9] = {
    0x1000052, 0x1000053, 0x1000054, 0x1000072, 0x1000068,
    0x1000055, 0x1000075, 0x100007c, 0x100007f,
};

/* 8043421C-80434240 060F3C 0024+00 2/3 0/0 0/0 .bss             sWindStoneSound */
static JAISoundID sWindStoneSound[9] = {
    0xffffffff, 0xffffffff, 0x100005b, 0x1000071, 0x1000067,
    0x100005c,  0x1000074,  0x100007b, 0x100007e,
};

/* 80434240-80434268 060F60 0024+04 1/2 0/0 0/0 .bss             sCorrectDuo */
static JAISoundID sCorrectDuo[9] = {
    0xffffffff, 0xffffffff, 0xffffffff, 0x1000073, 0x1000069,
    0x1000066,  0x1000076,  0x100007d,  0x1000080,
};

/* 802CB38C-802CB650 2C5CCC 02C4+00 1/1 0/0 0/0 .text            checkLine__13Z2WolfHowlMgrFv */
s8 Z2WolfHowlMgr::checkLine() {
    if (mCorrectCurveID == -1 || mpCurSong == NULL) {
        return -1;
    }

    if (Z2GetSeqMgr()->isItemGetDemo()) {
        return mCorrectCurveID;
    }
    if (mTimer == 0) {
        if (field_0x90 > 0) {
            field_0x90 = -1;
        }
        return -1;
    } else if (field_0x90 >= field_0xbe) {
        u32 uVar1 = 0;
        for (u8 i = 0; i < getCorrectLineNum(); i++) {
            uVar1 += getCorrectLine(i).length;
        }
        if (mTimer - data_8045088E < uVar1) {
            return -1;
        } 
        Z2GetSeMgr()->seStart(0xd, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        if (mCorrectCurveID > 2) {
            if (Z2GetSceneMgr()->getCurrentSceneNum() == 0x21) {
                Z2GetSeqMgr()->subBgmStart(sCorrectDuo[mCorrectCurveID]);
            }
        } else { 
            Z2GetSeqMgr()->subBgmStart(sCorrectPhrase[mCorrectCurveID]);
        }
        field_0x90 = 0xffff;
        return mCorrectCurveID;
    } else {
        if (mTimer == 1) {
            field_0x90 = 0;
            field_0xba = 0;
            field_0xbc = 0;
        } else if (mTimer >= data_8045088E) {
            u32 r29 = mTimer - data_8045088E;
            u32 uVar1 = 0;
            for (u8 i = 0; i <= field_0xba; i++) {
                uVar1 += getCorrectLine(i).length;
            }
            if (r29 > uVar1 && field_0xba < getCorrectLineNum()) {
                field_0x90 += field_0xbc;
                if (field_0xbc > getCorrectLine(field_0xba).length / 6) {
                    field_0x90 += struct_80450895;
                }
                field_0xba++;
                field_0xbc = 0;
            } else {
                if (getOnLineNum() > -1) {
                    field_0xbc++;
                }
            }
        }
        return -1;
    }
    
    return mCorrectCurveID;
}

/* 802CB650-802CB6EC 2C5F90 009C+00 1/1 1/1 0/0 .text            getOnLineNum__13Z2WolfHowlMgrFv */
s8 Z2WolfHowlMgr::getOnLineNum() {
    SongNote note = getCorrectLine(field_0xba);
    if ((note.barType == 1 && mNowInputValue == 1.0f) ||
        (note.barType == 2 && mNowInputValue == 0.0f) ||
        (note.barType == 3 && mNowInputValue == -1.0f)) {
        s8 rv = field_0xba;
        return rv;
    }

    return -1;
}

/* 802CB6EC-802CBA88 2C602C 039C+00 0/0 0/0 2/2 .text startWindStoneSound__13Z2WolfHowlMgrFScP3Vec
 */
void Z2WolfHowlMgr::startWindStoneSound(s8 param_0, Vec* param_1) {
    if (param_1 == NULL || Z2GetLink() == NULL || Z2GetLink()->getCurrentPos() == NULL) {
        return; 
    }
    JGeometry::TVec3<f32> local_60 = Z2GetAudience()->getAudioCamPos();
    f32 dVar13 = sqrtf(VECSquareDistance(param_1, local_60));
    if (dVar13 > 2100.0f && field_0x04) {
        field_0x04->stop();
    } else if (dVar13 < 2100.0f && !field_0x04) {
        Z2GetSoundMgr()->startSound(sWindStoneSound[param_0], &field_0x04, (const JGeometry::TVec3<f32>*)param_1);
    }
    if (field_0x04) {
        field_0x04->fadeIn(0);
        field_0x04->stop(0x1e);
        if (Z2GetLink()->getLinkState() == 1) {
            f32 fVar14 = sqrtf(VECSquareDistance(param_1, Z2GetLink()->getCurrentPos()));
            f32 dVar13 = 1.0f;
            if (fVar14 < 150.0f) {
                dVar13 = 0.0f;
            } else if (fVar14 < 2000.0f) {
                dVar13 = Z2Calc::getParamByExp(fVar14, 150.0f, 2000.0f, 
                    0.45f, 0.05f, dVar13, Z2Calc::CURVE_SIGN_0);
            }
            Z2GetSeqMgr()->i_setWindStoneVol(dVar13, 0);
            field_0x04->getAuxiliary().moveVolume(0.4f, 0);
        } else {
            field_0x04->getAuxiliary().moveVolume(0.04f, 0);
        }
    }
}

/* 802CBA88-802CBB58 2C63C8 00D0+00 0/0 1/1 0/0 .text            startGuideMelody__13Z2WolfHowlMgrFb
 */
int Z2WolfHowlMgr::startGuideMelody(bool param_0) {
    Z2GetSeqMgr()->i_setWindStoneVol(0.0f, 0);
    if (param_0) {
        Z2GetSoundMgr()->startSound(sWindStoneSound[mCorrectCurveID], &field_0x08, NULL);
    }
    if (field_0x08) {
        field_0x08->fadeIn(0);
        field_0x08->stop(0x1e);
        return field_0x08->getCount();
    }
    return 0;
}

/* 802CBB58-802CBB7C 2C6498 0024+00 0/0 1/1 0/0 .text            skipCorrectDemo__13Z2WolfHowlMgrFv
 */
void Z2WolfHowlMgr::skipCorrectDemo() {
    Z2GetSeqMgr()->stopWolfHowlSong();
}

