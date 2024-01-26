//
// d_msg_scrn_light
//

#include "msg/scrn/d_msg_scrn_light.h"
#include "JSystem/JKernel/JKRFileLoader.h"
#include "JSystem/JKernel/JKRExpHeap.h"
#include "JSystem/JKernel/JKRArchive.h"
#include "JSystem/J2DGraph/J2DGrafContext.h"
#include "JSystem/J2DGraph/J2DScreen.h"
#include "JSystem/J2DGraph/J2DAnmLoader.h"
#include "d/pane/d_pane_class.h"
#include "d/com/d_com_inf_game.h"

extern u8 data_804510D8[8];

/* 8024575C-802457C4 24009C 0068+00 1/1 0/0 0/0 .text            __ct__19dMsgScrnLight_HIO_cFv */
dMsgScrnLight_HIO_c::dMsgScrnLight_HIO_c() {
    field_0x5 = 0;
    for (int i = 0; i < 9; i++) {
        field_0x6[i] = 0xa0;
        field_0x18[i] = 0x87;
        field_0x2a[i] = 0x14;
        field_0x3c[i] = 0x0;
        field_0xf[i] = 0xe1;
        field_0x21[i] = 0xd2;
        field_0x33[i] = 0x6e;
        field_0x45[i] = 0xd2;
    }
}

/* 802457C4-80245934 240104 0170+00 1/1 0/0 0/0 .text updateColor__19dMsgScrnLight_HIO_cFUc */
void dMsgScrnLight_HIO_c::updateColor(u8 param_0) {
    switch(param_0) {
    case 0:
        for (int i = 0; i < 9; i++) {
            field_0x6[i] = 0xa0;
            field_0x18[i] = 0x87;
            field_0x2a[i] = 0x14;
            field_0x3c[i] = 0x0;
            field_0xf[i] = 0xe1;
            field_0x21[i] = 0xd2;
            field_0x33[i] = 0x6e;
            field_0x45[i] = 0xa0;
        }
        break;
    case 2:
        for (int i = 0; i < 9; i++) {
            field_0x6[i] = 0xff;
            field_0x18[i] = 0xfa;
            field_0x2a[i] = 0x96;
            field_0x3c[i] = 0x0;
            field_0xf[i] = 0xff;
            field_0x21[i] = 0xff;
            field_0x33[i] = 0x6e;
            field_0x45[i] = 0xd2;
        }
        break;
    case 1:
        for (int i = 0; i < 9; i++) {
            field_0x6[i] = 0x28;
            field_0x18[i] = 0x6e;
            field_0x2a[i] = 0xb4;
            field_0x3c[i] = 0x0;
            field_0xf[i] = 0x28;
            field_0x21[i] = 0x6e;
            field_0x33[i] = 0xb4;
            field_0x45[i] = 0x78;
        }
        break;
    case 4:
        for (int i = 0; i < 9; i++) {
            field_0x6[i] = 0x46;
            field_0x18[i] = 0x96;
            field_0x2a[i] = 0x0;
            field_0x3c[i] = 0x0;
            field_0xf[i] = 0x46;
            field_0x21[i] = 0x96;
            field_0x33[i] = 0x0;
            field_0x45[i] = 0x96;
        }
        break;
    }
}

/* 804306D4-80430728 05D3F4 0050+04 3/3 0/0 0/0 .bss             g_MsgScrnLight_HIO_c */
dMsgScrnLight_HIO_c g_MsgScrnLight_HIO_c;

/* 80245934-80245B00 240274 01CC+00 0/0 4/4 1/1 .text            __ct__15dMsgScrnLight_cFUcUc */
dMsgScrnLight_c::dMsgScrnLight_c(u8 param_1, u8 param_2) {
    field_0x20 = param_1;
    field_0x21 = param_2;
    if (data_804510D8[0] == 0) {
        g_MsgScrnLight_HIO_c.field_0x4 = -1;
    }
    data_804510D8[0]++;
    g_MsgScrnLight_HIO_c.updateColor(param_1);
    mpScreen = new J2DScreen();
    JUT_ASSERT(250, mpScreen != 0);
    bool fg = mpScreen->setPriority("zelda_message_window_text_light.blo", 0x20000,
                                    dComIfGp_getMain2DArchive());
    JUT_ASSERT(254, fg != false);
    dPaneClass_showNullPane(mpScreen);
    OSInitFastCast();
    void* uVar7 = JKRGetNameResource("zelda_message_window_text_light.bck", dComIfGp_getMain2DArchive());
    field_0x8 = (J2DAnmTransform*)J2DAnmLoaderDataBase::load(uVar7);
    field_0x14 = 0.0f;
    uVar7 = JKRGetNameResource("zelda_message_window_text_light.bpk", dComIfGp_getMain2DArchive());
    field_0xc = (J2DAnmColor*)J2DAnmLoaderDataBase::load(uVar7);
    field_0xc->searchUpdateMaterialID(mpScreen);
    field_0x18 = 0.0f;
    mpParent_c = new CPaneMgr(mpScreen, 'moya00', 0, NULL);
    JUT_ASSERT(269, mpParent_c != 0);
    mpParent_c->getPanePtr()->setAnimation(field_0x8);
    mpParent_c->getPanePtr()->setAnimation(field_0xc);
    field_0x22 = 1;
    field_0x1c = 0.0f;
}

/* 80245B00-80245C04 240440 0104+00 1/0 0/0 0/0 .text            __dt__15dMsgScrnLight_cFv */
dMsgScrnLight_c::~dMsgScrnLight_c() {
    data_804510D8[0]--;
    delete mpScreen;
    mpScreen = NULL;
    delete field_0x8;
    field_0x8 = NULL;
    delete field_0xc;
    field_0xc = NULL;
    delete mpParent_c;
    mpParent_c = NULL;
}

/* 80245C04-80245F90 240544 038C+00 0/0 2/2 0/0 .text            draw__15dMsgScrnLight_cFPffffffUc
 */
void dMsgScrnLight_c::draw(f32* param_1, f32 param_2, f32 param_3, f32 param_4, f32 param_5,
                           f32 param_6, u8 param_7) {
    if (g_MsgScrnLight_HIO_c.field_0x5 != 0) {
        if (param_7 < 9) {
            mpParent_c->setBlackWhite(JUtility::TColor(g_MsgScrnLight_HIO_c.field_0x6[param_7],
                                                       g_MsgScrnLight_HIO_c.field_0x18[param_7],
                                                       g_MsgScrnLight_HIO_c.field_0x2a[param_7],
                                                       g_MsgScrnLight_HIO_c.field_0x3c[param_7]),
                                      JUtility::TColor(g_MsgScrnLight_HIO_c.field_0xf[param_7],
                                                       g_MsgScrnLight_HIO_c.field_0x21[param_7],
                                                       g_MsgScrnLight_HIO_c.field_0x33[param_7],
                                                       g_MsgScrnLight_HIO_c.field_0x45[param_7]));
        } else {
            mpParent_c->setBlackWhite(mpParent_c->getInitBlack(), mpParent_c->getInitWhite());
        }
    } else {
        if (field_0x20 == 0) {
            mpParent_c->setBlackWhite(JUtility::TColor(0xa0, 0x87, 0x14, 0),
                                      JUtility::TColor(0xe1, 0xd2, 0x6e, 0xa0));
        } else if (field_0x20 == 2) {
            mpParent_c->setBlackWhite(JUtility::TColor(0xff, 0xff, 0x96, 0),
                                      JUtility::TColor(0xff, 0xff, 0x6e, 0xd2));
        } else if (field_0x20 == 1) {
            mpParent_c->setBlackWhite(JUtility::TColor(0x28, 0x6e, 0xb4, 0),
                                      JUtility::TColor(0x28, 0x6e, 0xb4, 0x78));
        } else if (field_0x20 == 4) {
            mpParent_c->setBlackWhite(JUtility::TColor(0x46, 0x96, 0, 0),
                                      JUtility::TColor(0x46, 0x96, 0, 0x96));
        } else {
            mpParent_c->setBlackWhite(mpParent_c->getInitBlack(), mpParent_c->getInitWhite());
        }
    }
    if (field_0x22 != 0) {
        *param_1 += 1.0f;
        if (*param_1 >= field_0x8->getFrameMax()) {
            *param_1 = 0.0f;
        }
        field_0x14 = *param_1;
        field_0x18 = *param_1;
    }
    drawCommon(param_2, param_3, param_4, param_5, param_6);
}

/* 80245F90-802460DC 2408D0 014C+00 0/0 1/1 1/1 .text
 * draw__15dMsgScrnLight_cFPfffffffQ28JUtility6TColorQ28JUtility6TColor */
void dMsgScrnLight_c::draw(f32* param_1, f32 param_2, f32 param_3, f32 param_4, f32 param_5,
                           f32 param_6, f32 param_7, JUtility::TColor param_8,
                           JUtility::TColor param_9) {
    mpParent_c->setBlackWhite(param_8, param_9);
    if (field_0x22 != 0) {
        *param_1 += param_7;
        if (*param_1 >= field_0x8->getFrameMax()) {
            *param_1 = 0.0f;
        }
        field_0x14 = *param_1;
        field_0x18 = *param_1;
    }
    drawCommon(param_2, param_3, param_4, param_5, param_6);
}

/* 802460DC-80246348 240A1C 026C+00 2/2 0/0 0/0 .text            drawCommon__15dMsgScrnLight_cFfffff
 */
void dMsgScrnLight_c::drawCommon(f32 param_1, f32 param_2, f32 param_3, f32 param_4,
                                     f32 param_5) {
    J2DGrafContext* grafContext = dComIfGp_getCurrentGrafPort();
    grafContext->setup2D();
    f32 dVar9 = mpParent_c->getAlphaRate();
    if (((field_0x21 == 3 || field_0x21 == 0x5) &&
         param_5 < field_0x1c) ||
        (field_0x21 != 3 && field_0x21 != 0x5 && 1.0f != param_5))
    {
        if (field_0x22 != 0) {
            mpParent_c->getPanePtr()->setAnimation((J2DAnmTransform*)NULL);
            mpParent_c->getPanePtr()->setAnimation((J2DAnmColor*)NULL);
            field_0x22 = 0;
        }
        mpParent_c->setAlphaRate(dVar9 * param_5);
    } else if (field_0x22 == 0) {
        mpParent_c->getPanePtr()->setAnimation(field_0x8);
        mpParent_c->getPanePtr()->setAnimation(field_0xc);
        field_0x22 = 01;
    }
    if (field_0x22 != 0) {
        field_0x8->setFrame(field_0x14);
        field_0xc->setFrame(field_0x18);
        mpParent_c->getPanePtr()->animationTransform();
        mpScreen->animation();
    }
    mpParent_c->translate(param_1, param_2);
    f32 dVar11 = mpParent_c->getInitScaleX();
    f32 dVar12 = mpParent_c->getInitScaleY();
    mpParent_c->scale(dVar11 * param_3, dVar12 * param_4);
    mpScreen->draw(0.0f, 0.0f, grafContext);
    if (1.0f != param_5) {
        mpParent_c->setAlphaRate(dVar9);
    }
    field_0x1c = param_5;
}

/* 80399B08-80399B08 026168 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
