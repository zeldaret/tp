/**
 * d_menu_calibration.cpp
 * Wii Remote Calibration Option Menu
 */

#include "d/dolzel.h"

#include "d/d_menu_calibration.h"
#include "d/d_com_inf_game.h"
#include "d/d_select_cursor.h"
#include "d/d_meter2_info.h"
#include "d/d_meter_HIO.h"
#include "d/d_msg_string.h"
#include "m_Do/m_Do_controller_pad.h"

// Need 0xC bytes of padding with no symbol between dMenu_Calibration_c::__vtable and the end of .data
// This is likely caused by the vtable of an abstract base class getting put there and then stripped out.
// Not sure which abstract base class could go there though, so we simulate it with some dummy classes for now.
class dummy_abstract_class {
public:
    virtual void virt_func_0() = 0;
};
class dummy_child_class : dummy_abstract_class {
    virtual void virt_func_0();
};
static dummy_child_class dummy() {
    dummy_child_class temp;
    return temp;
}

/* 803BC28C-803BC2D4 0193AC 0048+00 1/2 0/0 0/0 .data            map_init_process */
typedef void (dMenu_Calibration_c::*initFunc)();
static initFunc map_init_process[] = {
    &dMenu_Calibration_c::step1_wait_init, &dMenu_Calibration_c::step1_move_init,
    &dMenu_Calibration_c::step2_wait_init, &dMenu_Calibration_c::step2_move_init,
    &dMenu_Calibration_c::step3_wait_init, &dMenu_Calibration_c::step3_move_init,
};

/* 803BC31C-803BC364 01943C 0048+00 1/2 0/0 0/0 .data            map_move_process */
typedef void (dMenu_Calibration_c::*moveFunc)();
static moveFunc map_move_process[] = {
    &dMenu_Calibration_c::step1_wait_move, &dMenu_Calibration_c::step1_move_move,
    &dMenu_Calibration_c::step2_wait_move, &dMenu_Calibration_c::step2_move_move,
    &dMenu_Calibration_c::step3_wait_move, &dMenu_Calibration_c::step3_move_move,
};

/* 801AED64-801AEDAC 1A96A4 0048+00 1/0 0/0 0/0 .text            __dt__19dMenu_Calibration_cFv */
dMenu_Calibration_c::~dMenu_Calibration_c() {}

/* 801AEDAC-801AEE2C 1A96EC 0080+00 0/0 1/1 0/0 .text            _move__19dMenu_Calibration_cFv */
void dMenu_Calibration_c::_move() {
    u8 last_process = mProcess;
    (this->*map_move_process[mProcess])();

    if (last_process != mProcess) {
        (this->*map_init_process[mProcess])();
    }

    setHIO(false);
}

/* 801AEE2C-801AEE30 1A976C 0004+00 1/1 0/0 0/0 .text            _draw__19dMenu_Calibration_cFv */
void dMenu_Calibration_c::_draw() {}

/* 801AEE30-801AEF60 1A9770 0130+00 1/0 0/0 0/0 .text step1_wait_init__19dMenu_Calibration_cFv */
void dMenu_Calibration_c::step1_wait_init() {
    field_0xfa = 0;
    setAButtonString(0);
    setBButtonString(0);
    setStepString(1240);     // "STEP 1"
    setExplainString(1245);  // "Point the Wii Remote at the screen and move the cursor vertically
                             // until it overlaps the central orange circle."

    ((J2DTextBox*)field_0x80->getPanePtr())->setFontSize(field_0xac[mCalibrationValue + 2]);

    Vec pos = field_0x68[mCalibrationValue + 2]->getGlobalVtxCenter(false, 0);
    mpSelectCursor->setPos(pos.x, pos.y, field_0x68[mCalibrationValue + 2]->getPanePtr(), false);

    field_0xfc = 0;
    field_0x7c->setAlphaRate(0.0f);
}

/* 801AEF60-801AF084 1A98A0 0124+00 1/0 0/0 0/0 .text step1_wait_move__19dMenu_Calibration_cFv */
void dMenu_Calibration_c::step1_wait_move() {
    s16 open_frames = g_drawHIO.mCalibration.mOpenFrames;
    field_0xfa++;

    if (field_0xfa >= open_frames) {
        field_0x58[0]->setAlphaRate(1.0f);
        field_0x7c->setAlphaRate(0.0f);
        field_0x58[1]->setAlphaRate(0.0f);
        mpSelectCursor->setAlphaRate(1.0f);
        mpSelectCursor->onPlayAnime(0);
        mProcess = PROC_STEP1_MOVE;
    } else {
        f32 alpha_rate = (f32)field_0xfa / (f32)open_frames;

        field_0x58[0]->setAlphaRate(alpha_rate);
        field_0x7c->setAlphaRate(0.0f);
        mpSelectCursor->setAlphaRate(alpha_rate);

        if (field_0x58[1]->getAlphaRate() != 0.0f) {
            field_0x58[1]->setAlphaRate(1.0f - alpha_rate);
        }
    }
}

/* 801AF084-801AF0C0 1A99C4 003C+00 1/0 0/0 0/0 .text step1_move_init__19dMenu_Calibration_cFv */
void dMenu_Calibration_c::step1_move_init() {
    setAButtonString(1032);  // "Next"
    setBButtonString(1377);  // "Cancel"
}

/* 801AF0C0-801AF188 1A9A00 00C8+00 1/0 0/0 0/0 .text step1_move_move__19dMenu_Calibration_cFv */
void dMenu_Calibration_c::step1_move_move() {
    if (mDoCPd_c::getTrigA(PAD_1)) {
        mProcess = PROC_STEP2_WAIT;
        field_0xff = 0;
        Z2GetAudioMgr()->seStart(Z2SE_SY_MENU_NEXT, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        dMeter2Info_set2DVibration();
    } else if (mDoCPd_c::getTrigB(PAD_1)) {
        field_0x101 = 0;
        mStatus = 0;
        Z2GetAudioMgr()->seStart(Z2SE_SY_MENU_BACK, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        dMeter2Info_set2DVibration();
    }
}

/* 801AF188-801AF1F4 1A9AC8 006C+00 1/0 0/0 0/0 .text step2_wait_init__19dMenu_Calibration_cFv */
void dMenu_Calibration_c::step2_wait_init() {
    field_0xfa = 0;
    setAButtonString(0);
    setBButtonString(0);
    setStepString(1242);     // "STEP 2"
    setExplainString(1241);  // "Please adjust the orange bar so that it matches the exact size and
                             // position of the Sensor Bar."
    mpSelectCursor->offPlayAnime(0);
}

/* 801AF1F4-801AF380 1A9B34 018C+00 1/0 0/0 0/0 .text step2_wait_move__19dMenu_Calibration_cFv */
void dMenu_Calibration_c::step2_wait_move() {
    s16 open_frames = g_drawHIO.mCalibration.mOpenFrames;
    field_0xfa++;

    if (field_0xfa >= open_frames) {
        field_0x58[1]->setAlphaRate(1.0f);
        field_0x58[0]->setAlphaRate(0.0f);
        field_0x7c->setAlphaRate(0.0f);
        field_0x58[2]->setAlphaRate(0.0f);
        field_0x90->setAlphaRate(0.0f);

        if (field_0xff == 0) {
            mpSelectCursor->setAlphaRate(0.0f);
        }

        mProcess = PROC_STEP2_MOVE;
    } else {
        f32 alpha_rate = (f32)field_0xfa / (f32)open_frames;

        field_0x58[1]->setAlphaRate(alpha_rate);

        if (field_0x58[0]->getAlphaRate() != 0.0f) {
            field_0x58[0]->setAlphaRate(1.0f - alpha_rate);
            field_0x7c->setAlphaRate(1.0f - alpha_rate);
        }

        if (field_0x58[2]->getAlphaRate() != 0.0f) {
            field_0x58[2]->setAlphaRate(1.0f - alpha_rate);
            field_0x90->setAlphaRate(1.0f - alpha_rate);
        }

        if (field_0xff == 0) {
            mpSelectCursor->setAlphaRate(alpha_rate);
        }
    }
}

/* 801AF380-801AF3BC 1A9CC0 003C+00 1/0 0/0 0/0 .text step2_move_init__19dMenu_Calibration_cFv */
void dMenu_Calibration_c::step2_move_init() {
    setAButtonString(1032);  // "Next"
    setBButtonString(1017);  // "Back"
}

/* 801AF3BC-801AF488 1A9CFC 00CC+00 1/0 0/0 0/0 .text step2_move_move__19dMenu_Calibration_cFv */
void dMenu_Calibration_c::step2_move_move() {
    if (mDoCPd_c::getTrigA(PAD_1)) {
        mProcess = PROC_STEP3_WAIT;
        field_0xff = 0;
        Z2GetAudioMgr()->seStart(Z2SE_SY_MENU_NEXT, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        dMeter2Info_set2DVibration();
    } else if (mDoCPd_c::getTrigB(PAD_1)) {
        mProcess = PROC_STEP1_WAIT;
        field_0xff = 1;
        Z2GetAudioMgr()->seStart(Z2SE_SY_MENU_BACK, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        dMeter2Info_set2DVibration();
    }
}

/* 801AF488-801AF4F8 1A9DC8 0070+00 1/0 0/0 0/0 .text step3_wait_init__19dMenu_Calibration_cFv */
void dMenu_Calibration_c::step3_wait_init() {
    field_0xfa = 0;
    setAButtonString(0);
    setBButtonString(0);
    setStepString(1244);     // "STEP 3"
    setExplainString(1243);  // "Point the Wii Remote at the screen and adjust your distance from
                             // the screen until the blue circle overlaps the orange circle."
    field_0xfc = 0;

    field_0x90->setAlphaRate(0.0f);
}

/* 801AF4F8-801AF5F4 1A9E38 00FC+00 1/0 0/0 0/0 .text step3_wait_move__19dMenu_Calibration_cFv */
void dMenu_Calibration_c::step3_wait_move() {
    s16 open_frames = g_drawHIO.mCalibration.mOpenFrames;
    field_0xfa++;

    if (field_0xfa >= open_frames) {
        field_0x58[2]->setAlphaRate(1.0f);
        field_0x90->setAlphaRate(0.0f);
        field_0x58[1]->setAlphaRate(0.0f);

        mProcess = PROC_STEP3_MOVE;
    } else {
        f32 alpha_rate = (f32)field_0xfa / (f32)open_frames;

        field_0x58[2]->setAlphaRate(alpha_rate);
        field_0x90->setAlphaRate(0.0f);

        if (field_0x58[1]->getAlphaRate() != 0.0f) {
            field_0x58[1]->setAlphaRate(1.0f - alpha_rate);
        }
    }
}

/* 801AF5F4-801AF630 1A9F34 003C+00 1/0 0/0 0/0 .text step3_move_init__19dMenu_Calibration_cFv */
void dMenu_Calibration_c::step3_move_init() {
    setAButtonString(1378);  // "End"
    setBButtonString(1017);  // "Back"
}

/* 801AF630-801AF710 1A9F70 00E0+00 1/0 0/0 0/0 .text step3_move_move__19dMenu_Calibration_cFv */
void dMenu_Calibration_c::step3_move_move() {
    if (mDoCPd_c::getTrigA(PAD_1)) {
        mStatus = 0;
        field_0x101 = 1;
        Z2GetAudioMgr()->seStart(Z2SE_SY_MENU_BACK, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        dMeter2Info_set2DVibration();
        setCalibrationValue();
    } else if (mDoCPd_c::getTrigB(PAD_1)) {
        mProcess = PROC_STEP2_WAIT;
        field_0xff = 1;
        Z2GetAudioMgr()->seStart(Z2SE_SY_MENU_BACK, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        dMeter2Info_set2DVibration();
    }
}

/* 801AF710-801AF738 1AA050 0028+00 1/1 0/0 0/0 .text setCalibrationValue__19dMenu_Calibration_cFv
 */
void dMenu_Calibration_c::setCalibrationValue() {
    dComIfGs_setOptCalValue(mCalibrationValue);
    dComIfGs_setOptCalibrateDist(mCalibrateDist);
    field_0xec = mCalibrationValue;
    field_0xf6 = mCalibrateDist;
}

/* 801AF738-801AF7E8 1AA078 00B0+00 6/6 0/0 0/0 .text setAButtonString__19dMenu_Calibration_cFUs
 */
void dMenu_Calibration_c::setAButtonString(u16 i_stringID) {
    if (i_stringID == 0) {
        for (int i = 0; i < 5; i++) {
            strcpy(mpAButtonString[i]->getStringPtr(), "");
        }
    } else {
        for (int i = 0; i < 5; i++) {
            dMeter2Info_getStringKanji(i_stringID, mpAButtonString[i]->getStringPtr(), NULL);
        }
    }
}

/* 801AF7E8-801AF898 1AA128 00B0+00 6/6 0/0 0/0 .text setBButtonString__19dMenu_Calibration_cFUs
 */
void dMenu_Calibration_c::setBButtonString(u16 i_stringID) {
    if (i_stringID == 0) {
        for (int i = 0; i < 5; i++) {
            strcpy(mpBButtonString[i]->getStringPtr(), "");
        }
    } else {
        for (int i = 0; i < 5; i++) {
            dMeter2Info_getStringKanji(i_stringID, mpBButtonString[i]->getStringPtr(), NULL);
        }
    }
}

/* 801AF898-801AF948 1AA1D8 00B0+00 3/3 0/0 0/0 .text setStepString__19dMenu_Calibration_cFUs */
void dMenu_Calibration_c::setStepString(u16 i_stringID) {
    if (i_stringID == 0) {
        for (int i = 0; i < 3; i++) {
            strcpy(mpStepString[i]->getStringPtr(), "");
        }
    } else {
        for (int i = 0; i < 3; i++) {
            dMeter2Info_getStringKanji(i_stringID, mpStepString[i]->getStringPtr(), NULL);
        }
    }
}

/* 801AF948-801AFA00 1AA288 00B8+00 3/3 0/0 0/0 .text setExplainString__19dMenu_Calibration_cFUs
 */
void dMenu_Calibration_c::setExplainString(u16 i_stringID) {
    if (i_stringID == 0) {
        for (int i = 0; i < 3; i++) {
            strcpy(mpExplainString[i]->getStringPtr(), "");
        }
    } else {
        for (int i = 0; i < 3; i++) {
            mpMsgString->getString(i_stringID, mpExplainString[i], NULL, NULL, NULL, 0);
        }
    }
}

/* 801AFA00-801AFBF4 1AA340 01F4+00 1/1 0/0 0/0 .text            setHIO__19dMenu_Calibration_cFb */
void dMenu_Calibration_c::setHIO(bool i_useHIO) {
    if (i_useHIO || g_drawHIO.mCalibration.mDebug) {
        field_0x7c->scale(g_drawHIO.mCalibration.mCircleScale, g_drawHIO.mCalibration.mCircleScale);
        field_0x90->scale(g_drawHIO.mCalibration.mCircleScale2,
                          g_drawHIO.mCalibration.mCircleScale2);
    }

    if (g_drawHIO.mCollectScreen.mButtonDebugON || i_useHIO) {
        if (field_0x94 != NULL) {
            field_0x94->paneTrans(g_drawHIO.mCollectScreen.mButtonAPosX,
                                  g_drawHIO.mCollectScreen.mButtonAPosY);
            field_0x94->scale(g_drawHIO.mCollectScreen.mButtonAScale,
                              g_drawHIO.mCollectScreen.mButtonAScale);
        }

        if (field_0x98 != NULL) {
            field_0x98->paneTrans(g_drawHIO.mCollectScreen.mButtonBPosX,
                                  g_drawHIO.mCollectScreen.mButtonBPosY);
            field_0x98->scale(g_drawHIO.mCollectScreen.mButtonBScale,
                              g_drawHIO.mCollectScreen.mButtonBScale);
        }

        if (field_0x9c != NULL) {
            field_0x9c->paneTrans(g_drawHIO.mCollectScreen.mButtonATextPosX,
                                  g_drawHIO.mCollectScreen.mButtonATextPosY);
            field_0x9c->scale(g_drawHIO.mCollectScreen.mButtonATextScale,
                              g_drawHIO.mCollectScreen.mButtonATextScale);
        }

        if (field_0xa0 != NULL) {
            field_0xa0->paneTrans(g_drawHIO.mCollectScreen.mButtonBTextPosX,
                                  g_drawHIO.mCollectScreen.mButtonBTextPosY);
            field_0xa0->scale(g_drawHIO.mCollectScreen.mButtonBTextScale,
                              g_drawHIO.mCollectScreen.mButtonBTextScale);
        }
    }
}

/* 801AFBF4-801AFC14 1AA534 0020+00 1/0 0/0 0/0 .text            draw__19dMenu_Calibration_cFv */
void dMenu_Calibration_c::draw() {
    _draw();
}
