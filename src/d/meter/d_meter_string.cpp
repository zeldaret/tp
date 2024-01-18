/**
 * d_meter_string.cpp
 * UI Mini-Game Text
 */

#include "d/meter/d_meter_string.h"
#include "JSystem/J2DGraph/J2DAnmLoader.h"
#include "JSystem/J2DGraph/J2DGrafContext.h"
#include "JSystem/J2DGraph/J2DScreen.h"
#include "JSystem/J2DGraph/J2DTextBox.h"
#include "JSystem/JUtility/JUTFont.h"
#include "d/com/d_com_inf_game.h"
#include "d/d_timer.h"
#include "d/meter/d_meter2_draw.h"
#include "d/meter/d_meter2_info.h"
#include "d/meter/d_meter_HIO.h"
#include "d/pane/d_pane_class.h"

/* 8020ED60-8020EDF4 2096A0 0094+00 0/0 1/1 0/0 .text            __ct__14dMeterString_cFi */
dMeterString_c::dMeterString_c(int i_stringID) {
    mpMapArchive = dComIfGp_getAllMapArchive();
    field_0x28 = 0;
    mStringID = i_stringID;

    _create();
    if (mpMapArchive != NULL) {
        createString(mStringID);
    }
}

/* 8020EDF4-8020EE70 209734 007C+00 1/0 0/0 0/0 .text            __dt__14dMeterString_cFv */
dMeterString_c::~dMeterString_c() {
    _delete();
}

/* 8020EE70-8020F150 2097B0 02E0+00 1/0 0/0 0/0 .text            _create__14dMeterString_cFv */
int dMeterString_c::_create() {
    if (mpMapArchive == NULL) {
        if (field_0x28 == 0) {
            dTimer_createTimer(9, 0x989298, 0, 0, 210.0f, 410.0f, 32.0f, 419.0f);
            field_0x28 = 1;
        }

        if (dComIfGp_getAllMapArchive() == NULL) {
            return cPhs_ERROR_e;
        }

        mpMapArchive = dComIfGp_getAllMapArchive();
    }

    mpScreen = new J2DScreen();
    JUT_ASSERT(mpScreen != 0);

    bool fg = mpScreen->setPriority("zelda_game_image_cow_get_in.blo", 0x20000, mpMapArchive);
    JUT_ASSERT(fg != false);
    dPaneClass_showNullPane(mpScreen);

    OSInitFastCast();
    mpGetInBck = (J2DAnmTransformKey*)J2DAnmLoaderDataBase::load(
        JKRGetNameResource("zelda_game_image_cow_get_in.bck", mpMapArchive));

    mpParentPane = new CPaneMgr(mpScreen, 'get_in_n', 2, NULL);
    JUT_ASSERT(mpParentPane != 0);

    mpRootPane = new CPaneMgr(mpScreen, 'n_all', 0, NULL);
    JUT_ASSERT(mpRootPane != 0);

    mpTextPane = new CPaneMgr(mpScreen, 'get_in', 0, NULL);
    JUT_ASSERT(mpTextPane != 0);

    static_cast<J2DTextBox*>(mpScreen->search('get_in_s'))->setFont(mDoExt_getMesgFont());
    static_cast<J2DTextBox*>(mpScreen->search('get_in'))->setFont(mDoExt_getMesgFont());
    static_cast<J2DTextBox*>(mpScreen->search('get_in_s'))->setString(0x100, "");
    static_cast<J2DTextBox*>(mpScreen->search('get_in'))->setString(0x100, "");

    mAnimFrame = 0.0f;
    mPikariAnimFrame = 0.0f;
    mOffsetX = 0;
    mOffsetY = 0;
    mStringID2 = 0;
    field_0x3c = 0xFF;
    playBckAnimation(0.0f);
    return cPhs_COMPLEATE_e;
}

/* 8020F150-8020F1B0 209A90 0060+00 1/0 0/0 0/0 .text            _execute__14dMeterString_cFUl */
int dMeterString_c::_execute(u32 unused) {
    if (mpMapArchive == NULL) {
        _create();

        if (mpMapArchive != NULL) {
            createString(mStringID);
        }
    }

    return 1;
}

/* 8020F1B0-8020F49C 209AF0 02EC+00 1/0 0/0 0/0 .text            draw__14dMeterString_cFv */
void dMeterString_c::draw() {
    if (mpMapArchive != NULL && !dComIfGp_isPauseFlag()) {
        J2DGrafContext* graf_ctx = dComIfGp_getCurrentGrafPort();
        graf_ctx->setup2D();

        f32 var_f31 = (f32)g_drawHIO.mMiniGame.field_0x172 +
                      ((f32)g_drawHIO.mMiniGame.mReadyFightTextWaitFrames + 60.0f);
        if (mAnimFrame > 0.0f && mAnimFrame < var_f31) {
            f32 var_f30 = 1.0f;

            if (mAnimFrame < 60.0f) {
                mAnimFrame += g_drawHIO.mMiniGame.mReadyFightTextAnimSpeed;
                if (mAnimFrame > 60.0f) {
                    mAnimFrame = 60.0f;
                }

                playBckAnimation(mAnimFrame);
            } else if (mAnimFrame < (f32)g_drawHIO.mMiniGame.mReadyFightTextWaitFrames + 60.0f) {
                mAnimFrame += var_f30;
            } else if (mAnimFrame < var_f31) {
                mAnimFrame += var_f30;
                var_f30 = acc(g_drawHIO.mMiniGame.field_0x172, var_f31 - mAnimFrame, 0);
            }

            mpParentPane->setAlphaRate(var_f30);
            mpRootPane->paneTrans(mOffsetX + g_drawHIO.mMiniGame.mReadyFightTextPosX,
                                  mOffsetY + g_drawHIO.mMiniGame.mReadyFightTextPosY);
            mpRootPane->scale(g_drawHIO.mMiniGame.mReadyFightTextSizeX,
                              g_drawHIO.mMiniGame.mReadyFightTextSizeY);
            mpScreen->draw(0.0f, 0.0f, graf_ctx);

            if (mPikariAnimFrame > 0.0f) {
                drawPikari();
            } else if (mPikariAnimFrame == -1.0f &&
                       mAnimFrame > g_drawHIO.mMiniGame.mReadyFightPikariAppearFrames)
            {
                mPikariAnimFrame = 18.0f - g_drawHIO.mMiniGame.mReadyFightPikariAnimSpeed;
            }

            if (mAnimFrame >= var_f31) {
                dMeter2Info_resetMeterString();
            }
        }
    }
}

/* 8020F49C-8020F5A4 209DDC 0108+00 1/0 0/0 0/0 .text            _delete__14dMeterString_cFv */
int dMeterString_c::_delete() {
    delete mpScreen;
    mpScreen = NULL;

    delete mpGetInBck;
    mpGetInBck = NULL;

    delete mpParentPane;
    mpParentPane = NULL;

    delete mpRootPane;
    mpRootPane = NULL;

    delete mpTextPane;
    mpTextPane = NULL;

    if (field_0x28 != 0) {
        dComIfG_TimerDeleteRequest(9);
    }

    return 1;
}

/* 8020F5A4-8020F66C 209EE4 00C8+00 2/2 1/1 0/0 .text            createString__14dMeterString_cFi */
int dMeterString_c::createString(int i_stringID) {
    char str_buf[32];
    dMeter2Info_getString(i_stringID, str_buf, NULL);
    strcpy(static_cast<J2DTextBox*>(mpScreen->search('get_in_s'))->getStringPtr(), str_buf);
    strcpy(static_cast<J2DTextBox*>(mpScreen->search('get_in'))->getStringPtr(), str_buf);

    mAnimFrame = 40.0f;
    mPikariAnimFrame = -1.0f;
    mOffsetX = 0;
    mOffsetY = 0;
    mStringID2 = i_stringID;
    return 1;
}

/* 8020F66C-8020F6EC 209FAC 0080+00 2/2 0/0 0/0 .text playBckAnimation__14dMeterString_cFf */
void dMeterString_c::playBckAnimation(f32 i_frame) {
    mpParentPane->getPanePtr()->setAnimation(mpGetInBck);
    mpGetInBck->setFrame(i_frame);
    mpParentPane->getPanePtr()->animationTransform();
    mpParentPane->getPanePtr()->setAnimation((J2DAnmTransform*)NULL);
}

/* 8020F6EC-8020FA88 20A02C 039C+00 1/1 0/0 0/0 .text            drawPikari__14dMeterString_cFv */
void dMeterString_c::drawPikari() {
    f32 anim_frame = mPikariAnimFrame;
    Vec center = mpTextPane->getGlobalVtxCenter(false, 0);
    char* string = static_cast<J2DTextBox*>(mpTextPane->getPanePtr())->getStringPtr();

    s16 str_idx = 0;
    f32 var_f25 = 0.0f;
    f32 var_f29 = 0.0f;
    J2DTextBox::TFontSize font_size;
    static_cast<J2DTextBox*>(mpTextPane->getPanePtr())->getFontSize(font_size);
    JUTFont* font_p = mDoExt_getMesgFont();

    f32 var_f28 = 1.0f;
    for (J2DPane* pane = mpTextPane->getPanePtr(); pane != NULL; pane = pane->getParentPane()) {
        var_f28 *= pane->getScaleX();
    }

    for (; string[str_idx] != 0; str_idx++) {
        int c = string[str_idx] & 0xFF;
        if (str_idx > 0) {
            var_f25 += var_f28 * static_cast<J2DTextBox*>(mpTextPane->getPanePtr())->getCharSpace();
        }

        if (isLeadByte(c)) {
            c = ((string[str_idx] & 0xFF) << 8) | (string[str_idx + 1] & 0xFF);
            str_idx++;
        } else {
            c = string[str_idx] & 0xFF;
        }

        var_f25 +=
            var_f28 * (font_size.mSizeX * ((f32)font_p->getWidth(c) / (f32)font_p->getCellWidth()));
    }

    var_f25 = center.x - (var_f25 / 2);
    f32 frame;

    for (str_idx = 0; string[str_idx] != 0; str_idx++) {
        frame = anim_frame;
        int c = string[str_idx] & 0xFF;
        if (str_idx > 0) {
            var_f29 += var_f28 * static_cast<J2DTextBox*>(mpTextPane->getPanePtr())->getCharSpace();
        }

        if (isLeadByte(c)) {
            c = ((string[str_idx] & 0xFF) << 8) | (string[str_idx + 1] & 0xFF);
            str_idx++;
        } else {
            c = string[str_idx] & 0xFF;
        }

        f32 temp_f24 =
            var_f28 * (font_size.mSizeX * ((f32)font_p->getWidth(c) / (f32)font_p->getCellWidth()));
        if (c != 0x20 && c != 0x8140) {
            dMeter2Info_getMeterClass()->getMeterDrawPtr()->drawPikari(
                (temp_f24 / 2) + (var_f25 + var_f29), center.y, &frame,
                g_drawHIO.mMiniGame.mReadyFightPikariScale,
                g_drawHIO.mMiniGame.mReadyFightPikariFrontOuter,
                g_drawHIO.mMiniGame.mReadyFightPikariFrontInner,
                g_drawHIO.mMiniGame.mReadyFightPikariBackOuter,
                g_drawHIO.mMiniGame.mReadyFightPikariBackInner,
                g_drawHIO.mMiniGame.mReadyFightPikariAnimSpeed, 0);
        }

        var_f29 += temp_f24;
    }

    mPikariAnimFrame = frame;
}

/* 8020FA88-8020FAB4 20A3C8 002C+00 1/1 0/0 0/0 .text            isLeadByte__14dMeterString_cFi */
bool dMeterString_c::isLeadByte(int c) {
    return (c >= 0x81 && c <= 0x9F) || (c >= 0xE0 && c <= 0xFC);
}
