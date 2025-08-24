#include "d/dolzel.h"

#include "d/d_msg_scrn_base.h"
#include "JSystem/J2DGraph/J2DGrafContext.h"
#include "JSystem/J2DGraph/J2DScreen.h"
#include "d/d_msg_object.h"
#include "d/d_msg_out_font.h"
#include "d/d_pane_class.h"
#include "cstring.h"

/* 8023C0DC-8023C124 236A1C 0048+00 0/0 9/9 0/0 .text            __ct__14dMsgScrnBase_cFv */
dMsgScrnBase_c::dMsgScrnBase_c() {
    init();
}

/* 8023C124-8023C16C 236A64 0048+00 1/0 9/9 0/0 .text            __dt__14dMsgScrnBase_cFv */
dMsgScrnBase_c::~dMsgScrnBase_c() {}

/* 8023C16C-8023C234 236AAC 00C8+00 1/1 9/9 0/0 .text            init__14dMsgScrnBase_cFv */
void dMsgScrnBase_c::init() {
    mpScreen = NULL;
    mpPmP_c = NULL;
    field_0x54 = 0;

    for (int i = 0; i < 7; i++) {
        mpTm_c[i] = NULL;
        mpTmr_c[i] = NULL;
    }

    mpOutFont = NULL;
    field_0x48 = NULL;
    field_0x4c = 0;
    mCharInfoPtr = NULL;

    mFontSize.mSizeX = mFontSize.mSizeY = 0.0f;
    mRubySize = 0.0f;
    mTextBoxPosX = 0.0f;
    mTextBoxPosY = 0.0f;
    mTextBoxScaleX = 1.0f;
    mTextBoxScaleY = 1.0f;
    mTBoxWidth = 0.0f;
    mTBoxHeight = 0.0f;
    mLineSpace = 0.0f;
    mCharSpace = 0.0f;
    mRubyCharSpace = 0.0f;
    mSelFontSize = 0.0f;
    mSelRubySize = 0.0f;

    for (int i = 0; i < 3; i++) {
        mSelTextBoxPosX[i] = 0.0f;
        mSelTextBoxPosY[i] = 0.0f;
    }

    mSelTBoxWidth = 0.0f;
    mSelCharSpace = 0.0f;
    mSelRubyCharSpace = 0.0f;
    mTextBoxPosOffsetY = 0.0f;
    field_0xb8 = 0.0f;
    mCharAlphaRate = 1.0f;
}

/* 8023C234-8023C274 236B74 0040+00 1/0 9/0 0/0 .text            multiDraw__14dMsgScrnBase_cFv */
void dMsgScrnBase_c::multiDraw() {
    if (field_0x48 != NULL) {
        dComIfGd_set2DOpa(field_0x48);
    }
}

/* 8023C274-8023C300 236BB4 008C+00 1/0 7/0 0/0 .text            draw__14dMsgScrnBase_cFv */
void dMsgScrnBase_c::draw() {
    J2DGrafContext* ctx = dComIfGp_getCurrentGrafPort();

    ctx->setup2D();
    mpScreen->draw(0.0f, 0.0f, ctx);
    drawSelf();
    ctx->setup2D();
}

/* 8023C300-8023C32C 236C40 002C+00 1/0 2/0 0/0 .text            drawSelf__14dMsgScrnBase_cFv */
void dMsgScrnBase_c::drawSelf() {
    drawOutFont(0.0f, 0.0f, 1.0f);
}

/* 8023C32C-8023C360 236C6C 0034+00 1/1 6/6 0/0 .text            drawOutFont__14dMsgScrnBase_cFfff
 */
void dMsgScrnBase_c::drawOutFont(f32 param_0, f32 param_1, f32 param_2) {
    mpOutFont->draw(NULL, param_0, param_1, param_2);
}

/* 8023C360-8023C3EC 236CA0 008C+00 0/0 2/2 0/0 .text            setString__14dMsgScrnBase_cFPcPc */
void dMsgScrnBase_c::setString(char* mpText, char* i_stringB) {
    for (int i = 0; i < 7; i++) {
        if (mpTm_c[i] != NULL) {
            JUT_ASSERT(262, ((J2DTextBox*)(mpTm_c[i]->getPanePtr()))->getStringAllocByte() > strlen(mpText));
            if (i == 0) {
                strcpy(((J2DTextBox*)mpTm_c[i]->getPanePtr())->getStringPtr(), mpText);
            } else {
                strcpy(((J2DTextBox*)mpTm_c[i]->getPanePtr())->getStringPtr(), i_stringB);
            }
        }
    }
}

/* 8023C3EC-8023C458 236D2C 006C+00 0/0 2/2 0/0 .text            setRubyString__14dMsgScrnBase_cFPc
 */
void dMsgScrnBase_c::setRubyString(char* mpText) {
    for (int i = 0; i < 3; i++) {
        if (mpTmr_c[i] != NULL) {
            JUT_ASSERT(288, ((J2DTextBox*)(mpTmr_c[i]->getPanePtr()))->getStringAllocByte() > strlen(mpText));
            strcpy(((J2DTextBox*)mpTmr_c[i]->getPanePtr())->getStringPtr(), mpText);
        }
    }
}

/* 8023C458-8023C480 236D98 0028+00 1/0 0/0 0/0 .text            fukiScale__14dMsgScrnBase_cFf */
void dMsgScrnBase_c::fukiScale(f32 i_scale) {
    mpPmP_c->paneScale(i_scale, i_scale);
}

/* 8023C480-8023C4A4 236DC0 0024+00 1/0 0/0 0/0 .text            fukiTrans__14dMsgScrnBase_cFff */
void dMsgScrnBase_c::fukiTrans(f32 i_posX, f32 i_posY) {
    mpPmP_c->paneTrans(i_posX, i_posY);
}

/* 8023C4A4-8023C4F4 236DE4 0050+00 1/0 0/0 0/0 .text            fukiAlpha__14dMsgScrnBase_cFf */
void dMsgScrnBase_c::fukiAlpha(f32 i_alpha) {
    fontAlpha(i_alpha);
    mpPmP_c->setAlphaRate(i_alpha);
}

/* 8023C4F4-8023C574 236E34 0080+00 1/0 5/0 0/0 .text            fontAlpha__14dMsgScrnBase_cFf */
void dMsgScrnBase_c::fontAlpha(f32 i_alpha) {
    for (int i = 0; i < 7; i++) {
        if (mpTm_c[i] != NULL) {
            mpTm_c[i]->setAlphaRate(i_alpha);
        }

        if (mpTmr_c[i] != NULL) {
            mpTmr_c[i]->setAlphaRate(i_alpha);
        }
    }
}

/* 8023C574-8023C5C8 236EB4 0054+00 1/0 8/8 0/0 .text            isTalkNow__14dMsgScrnBase_cFv */
bool dMsgScrnBase_c::isTalkNow() {
    switch (dMsgObject_getMsgObjectClass()->getStatus()) {
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 15:
    case 16:
    case 20:
    case 24:
        return true;
    default:
        return false;
    }
}
