/**
 * d_meter2_draw.cpp
 * Main HUD drawing
 */

#include "d/dolzel.h" // IWYU pragma: keep

#include "d/d_meter2_draw.h"
#include "JSystem/J2DGraph/J2DAnmLoader.h"
#include "JSystem/J2DGraph/J2DGrafContext.h"
#include "JSystem/J2DGraph/J2DScreen.h"
#include "JSystem/J2DGraph/J2DTextBox.h"
#include "JSystem/JKernel/JKRExpHeap.h"
#include "d/actor/d_a_alink.h"
#include "d/d_item.h"
#include "d/d_item_data.h"
#include "d/d_kantera_icon_meter.h"
#include "d/d_meter_HIO.h"
#include "d/d_meter2_info.h"
#include "d/d_msg_class.h"
#include "d/d_msg_object.h"
#include "d/d_pane_class.h"
#include <cstring>

#include "d/d_menu_window.h"
#include "d/d_meter_button.h"

#if PLATFORM_WII
#include "d/d_cursor_mng.h"
#endif

#if PLATFORM_WII
#define KANTERA_METER_CNT 4
#else
#define KANTERA_METER_CNT 2
#endif

#if PLATFORM_WII
static dCsr_mng_c::bloObj_c* l_bloObj;
static dCsr_mng_c::csr_c* l_bloCsr;
static dComIfG_inf_c::baseCsr_c* l_baseCsr;
#endif

dMeter2Draw_c::dMeter2Draw_c(JKRExpHeap* mp_heap) {

#if PLATFORM_WII
    static u64 const a_tag[] = {
        MULTI_CHAR('cont_a11'), MULTI_CHAR('cont_a16'), MULTI_CHAR('cont_a17'),
        MULTI_CHAR('cont_a18'), MULTI_CHAR('cont_a19'),
    };
    static u64 const a2_tag[] = {
        MULTI_CHAR('cont_a10'), MULTI_CHAR('cont_a12'), MULTI_CHAR('cont_a13'),
        MULTI_CHAR('cont_a14'), MULTI_CHAR('cont_a15'),
    };
    static u64 const b_tag[] = {
        MULTI_CHAR('cont_bt5'), MULTI_CHAR('cont_bt6'), MULTI_CHAR('cont_bt7'),
        MULTI_CHAR('cont_bt9'), MULTI_CHAR('cont_b10'),
    };
    static u64 const back_tag[] = {
        MULTI_CHAR('con_ba_1'), MULTI_CHAR('con_bac5'), MULTI_CHAR('con_bac6'),
        MULTI_CHAR('con_bac7'), MULTI_CHAR('con_bac8'),
    };
    static u64 const z_tag[] = {
        MULTI_CHAR('cont_zt9'), MULTI_CHAR('cont_z14'), MULTI_CHAR('cont_z15'),
        MULTI_CHAR('cont_z16'), MULTI_CHAR('cont_z17'),
    };
    static u64 const jd_tag[] = {
        MULTI_CHAR('cont_jt1'), MULTI_CHAR('cont_z10'), MULTI_CHAR('cont_z11'),
        MULTI_CHAR('cont_z12'), MULTI_CHAR('cont_z13'),
    };
    static u64 const x_tag[] = {
        MULTI_CHAR('cont_x10'), MULTI_CHAR('cont_xt9'), MULTI_CHAR('cont_xt8'),
        MULTI_CHAR('cont_xt7'), MULTI_CHAR('cont_xt6'),
    };
    static u64 const y_tag[] = {
        MULTI_CHAR('cont_y10'), MULTI_CHAR('cont_yt9'), MULTI_CHAR('cont_yt8'),
        MULTI_CHAR('cont_yt7'), MULTI_CHAR('cont_yt6'),
    };
    static u64 const t_tag[] = {
        MULTI_CHAR('info_ar0'), MULTI_CHAR('info_ar1'), MULTI_CHAR('info_ar2'),
        MULTI_CHAR('info_ar3'), MULTI_CHAR('info_ar4'), MULTI_CHAR('info_ar5'),
        MULTI_CHAR('info_ar6'), MULTI_CHAR('info_ar7'), MULTI_CHAR('info_ar8'),
        MULTI_CHAR('info_ar9'),
    };

    UNUSED(back_tag);
#else
    static u64 const a_tag[] = {
        MULTI_CHAR('cont_at1'), MULTI_CHAR('cont_at2'), MULTI_CHAR('cont_at3'),
        MULTI_CHAR('cont_at4'), MULTI_CHAR('cont_at'),
    };
    static u64 const b_tag[] = {
        MULTI_CHAR('cont_bt1'), MULTI_CHAR('cont_bt2'), MULTI_CHAR('cont_bt3'),
        MULTI_CHAR('cont_bt4'), MULTI_CHAR('cont_bt'),
    };
    static u64 const z_tag[] = {
        MULTI_CHAR('cont_zt1'), MULTI_CHAR('cont_zt2'), MULTI_CHAR('cont_zt3'),
        MULTI_CHAR('cont_zt4'), MULTI_CHAR('cont_rt'),
    };
    static u64 const x_tag[] = {
        MULTI_CHAR('cont_xt1'), MULTI_CHAR('cont_xt2'), MULTI_CHAR('cont_xt3'),
        MULTI_CHAR('cont_xt4'), MULTI_CHAR('cont_xt5'),
    };
    static u64 const y_tag[] = {
        MULTI_CHAR('cont_yt1'), MULTI_CHAR('cont_yt2'), MULTI_CHAR('cont_yt3'),
        MULTI_CHAR('cont_yt4'), MULTI_CHAR('cont_yt5'),
    };
#endif

    static const char* bmg_filename[] = {
        "zel_00.bmg", "zel_01.bmg", "zel_02.bmg", "zel_03.bmg", "zel_04.bmg",
        "zel_05.bmg", "zel_06.bmg", "zel_07.bmg", "zel_08.bmg", "zel_99.bmg",
    };

    OS_REPORT("enter dMeter2Draw_c::dMeter2Draw_c(JKRExpHeap *mp_heap)\n");

    heap = mp_heap;
    JKRHeap* heap = mDoExt_setCurrentHeap(dComIfGp_getMsgExpHeap());

    void* msg_res = JKRGetTypeResource('ROOT', "zel_00.bmg", dComIfGp_getMsgDtArchive(0));
    dMeter2Info_setMsgResource(msg_res);

    void* stg_msg_res = JKRGetTypeResource('ROOT', bmg_filename[dMsgObject_getGroupID()],
                                           dComIfGp_getMsgDtArchive(1));
    dMeter2Info_setStageMsgResource(stg_msg_res);

    void* msg_unit_res = JKRGetTypeResource('ROOT', "zel_unit.bmg", dComIfGp_getMsgDtArchive(0));
    dMeter2Info_setMsgUnitResource(msg_unit_res);
    mDoExt_setCurrentHeap(heap);

    mpScreen = new J2DScreen();
    JUT_ASSERT(119, mpScreen != NULL);
#if PLATFORM_WII
    bool fg = mpScreen->setPriority("zelda_game_image_revo.blo", 0x20000, dComIfGp_getMain2DArchive());
#else
    bool fg = mpScreen->setPriority("zelda_game_image.blo", 0x20000, dComIfGp_getMain2DArchive());
#endif
    JUT_ASSERT(172, fg != false);

#if PLATFORM_WII
    l_baseCsr = new dComIfG_inf_c::baseCsr_c(1);
    l_baseCsr->create();

    l_bloCsr = new dCsr_mng_c::csr_c();
    l_bloCsr->set(NULL, 2, 0x32, 0);
    dCsr_mng_c::entryCsr(l_bloCsr);

    l_bloObj = new dCsr_mng_c::bloObj_c();
    l_bloObj->create(mpScreen, 2, 0x32, 0);
    dCsr_mng_c::entryObj(l_bloObj);

    mpScreen->search(MULTI_CHAR('item_n'))->hide();

    mpWiiScreen = new J2DScreen();
    mpWiiScreen->setPriority("zelda_game_image_text.blo", 0x20000, dComIfGp_getMain2DArchive());

    CPaneMgr paneMgr = CPaneMgr();

    f32 unk[3][4];
    Vec globalVtx = paneMgr.getGlobalVtx(mpScreen->search(MULTI_CHAR('map_bp2')), &unk, 0, false, 0);
    Vec globalVtxCenter = paneMgr.getGlobalVtxCenter(mpScreen->search(MULTI_CHAR('map_n')), false, 0);

    f32 invScale = mDoGph_gInf_c::m_invScale;
    f32 temp_f0 = g_drawHIO.mTouchAreaUnselectScale[0] * (globalVtxCenter.x - globalVtx.x);
    field_0x73c = temp_f0 * invScale;
#else
    dPaneClass_showNullPane(mpScreen);

#if PLATFORM_GCN
    mpScreen->search(MULTI_CHAR('ju_ring5'))->hide();
#endif
    field_0x73c = 0.0f;
#endif

    for (int i = 0; i < KANTERA_METER_CNT; i++) {
        mpKanteraMeter[i] = new dKantera_icon_c();
        JUT_ASSERT(181, mpKanteraMeter[i] != NULL);
    }

    mpKanteraScreen = new J2DScreen();
    JUT_ASSERT(185, mpKanteraScreen != NULL);
    fg = mpKanteraScreen->setPriority("zelda_game_image_kantera.blo", 0x20000,
                                      dComIfGp_getMain2DArchive());
    JUT_ASSERT(189, fg != false);
    dPaneClass_showNullPane(mpKanteraScreen);

    mpPikariScreen = new J2DScreen();
    JUT_ASSERT(193, mpPikariScreen != NULL);
    fg = mpPikariScreen->setPriority("zelda_icon_pikari.blo", 0x20000, dComIfGp_getMain2DArchive());
    JUT_ASSERT(197, fg != false);
    dPaneClass_showNullPane(mpPikariScreen);

    mpPikariParent = new CPaneMgr(mpPikariScreen, MULTI_CHAR('pika_n'), 0, NULL);
    JUT_ASSERT(201, mpPikariParent != NULL);
    mPikariBlack = static_cast<J2DPicture*>(mpPikariScreen->search(MULTI_CHAR('pika00')))->getBlack();
    mPikariWhite = static_cast<J2DPicture*>(mpPikariScreen->search(MULTI_CHAR('pika00')))->getWhite();

    OSInitFastCast();
    void* pikari_bck = JKRGetNameResource("zelda_icon_pikari.bck", dComIfGp_getMain2DArchive());
    mPikariBck = (J2DAnmTransformKey*)J2DAnmLoaderDataBase::load(pikari_bck);
    playPikariBckAnimation(1.0f);

    void* pikari_bpk = JKRGetNameResource("zelda_icon_pikari.bpk", dComIfGp_getMain2DArchive());
    mPikariBpk = (J2DAnmColor*)J2DAnmLoaderDataBase::load(pikari_bpk);
    mPikariBpk->searchUpdateMaterialID(mpPikariScreen);
    playPikariBpkAnimation(1.0f);

    mpParent = new CPaneMgr(mpScreen, MULTI_CHAR('n_all'), 2, NULL);
    JUT_ASSERT(220, mpParent != NULL);

    for (int i = 0; i < 5; i++) {
#if PLATFORM_WII
        mpAText[i] = new CPaneMgr(mpWiiScreen, a_tag[i], 0, NULL);
#else
        mpAText[i] = new CPaneMgr(mpScreen, a_tag[i], 0, NULL);
#endif
        JUT_ASSERT(228, mpAText[i] != NULL);
        static_cast<J2DTextBox*>(mpAText[i]->getPanePtr())->setString(64, "");
        static_cast<J2DTextBox*>(mpAText[i]->getPanePtr())->setFont(mDoExt_getMesgFont());
        static_cast<J2DTextBox*>(mpAText[i]->getPanePtr())
            ->setCharSpace(g_drawHIO.mButtonATextSpacing);

#if PLATFORM_WII
        field_0x10c_wii[i] = new CPaneMgr(mpWiiScreen, a2_tag[i], 0, NULL);
        JUT_ASSERT(0, field_0x10c_wii[i] != NULL);
        static_cast<J2DTextBox*>(field_0x10c_wii[i]->getPanePtr())->setString(64, "");
        static_cast<J2DTextBox*>(field_0x10c_wii[i]->getPanePtr())->setFont(mDoExt_getMesgFont());
        static_cast<J2DTextBox*>(field_0x10c_wii[i]->getPanePtr())
                    ->setCharSpace(g_drawHIO.mButtonATextSpacing);
#endif

#if PLATFORM_WII
        mpBText[i] = new CPaneMgr(mpWiiScreen, b_tag[i], 0, NULL);
#else
        mpBText[i] = new CPaneMgr(mpScreen, b_tag[i], 0, NULL);
#endif
        JUT_ASSERT(249, mpBText[i] != NULL);
        static_cast<J2DTextBox*>(mpBText[i]->getPanePtr())->setString(64, "");
        static_cast<J2DTextBox*>(mpBText[i]->getPanePtr())->setFont(mDoExt_getMesgFont());

#if PLATFORM_WII
        field_0x120_wii[i] = new CPaneMgr(mpWiiScreen, jd_tag[i], 0, NULL);
        JUT_ASSERT(0, field_0x120_wii[i] != NULL);
        static_cast<J2DTextBox*>(field_0x120_wii[i]->getPanePtr())->setString(64, "");
        static_cast<J2DTextBox*>(field_0x120_wii[i]->getPanePtr())->setFont(mDoExt_getMesgFont());
#endif

#if PLATFORM_WII
        mpXYText[i][2] = new CPaneMgr(mpWiiScreen, z_tag[i], 0, NULL);
#else
        mpXYText[i][2] = new CPaneMgr(mpScreen, z_tag[i], 0, NULL);
#endif
        JUT_ASSERT(271, mpXYText[i][2] != NULL);
        static_cast<J2DTextBox*>(mpXYText[i][2]->getPanePtr())->setString(64, "");
        static_cast<J2DTextBox*>(mpXYText[i][2]->getPanePtr())->setFont(mDoExt_getMesgFont());

#if PLATFORM_WII
        mpXYText[i][0] = new CPaneMgr(mpWiiScreen, x_tag[i], 0, NULL);
#else
        mpXYText[i][0] = new CPaneMgr(mpScreen, x_tag[i], 0, NULL);
#endif
        JUT_ASSERT(283, mpXYText[i][0] != NULL);
        static_cast<J2DTextBox*>(mpXYText[i][0]->getPanePtr())->setString(64, "");
        static_cast<J2DTextBox*>(mpXYText[i][0]->getPanePtr())->setFont(mDoExt_getMesgFont());

#if PLATFORM_WII
        mpXYText[i][1] = new CPaneMgr(mpWiiScreen, y_tag[i], 0, NULL);
#else
        mpXYText[i][1] = new CPaneMgr(mpScreen, y_tag[i], 0, NULL);
#endif
        JUT_ASSERT(295, mpXYText[i][1] != NULL);
        static_cast<J2DTextBox*>(mpXYText[i][1]->getPanePtr())->setString(64, "");
        static_cast<J2DTextBox*>(mpXYText[i][1]->getPanePtr())->setFont(mDoExt_getMesgFont());

    }

#if PLATFORM_WII
    field_0x104_wii = new J2DScreen();
    JUT_ASSERT(0, mpScreen != NULL);
    bool fg2 = field_0x104_wii->setPriority("zelda_pointing_message.blo", 0x20000, dComIfGp_getMain2DArchive());
    JUT_ASSERT(0, fg2 != false);

    field_0x108_wii = new CPaneMgr(field_0x104_wii, MULTI_CHAR('text_n'), 2, NULL);
    JUT_ASSERT(0, field_0x108_wii != NULL);

    for (int i = 0; i < ARRAY_SIZE(t_tag); i++) {
        J2DPane* pane = field_0x104_wii->search(t_tag[i]);
        static_cast<J2DTextBox*>(pane)->setString(64, "");
        static_cast<J2DTextBox*>(pane)->setFont(mDoExt_getMesgFont());
    }
#else
    J2DTextBox::TFontSize font_size;
#if VERSION != VERSION_GCN_JPN && VERSION != VERSION_SHIELD
    font_size.mSizeX = 17.0f;
    font_size.mSizeY = 20.0f;
    for (int i = 0; i < 5; i++) {
        static_cast<J2DTextBox*>(mpAText[i]->getPanePtr())->setFontSize(font_size);
        static_cast<J2DTextBox*>(mpBText[i]->getPanePtr())->setFontSize(font_size);
        static_cast<J2DTextBox*>(mpXYText[i][0]->getPanePtr())->setFontSize(font_size);
        static_cast<J2DTextBox*>(mpXYText[i][1]->getPanePtr())->setFontSize(font_size);
        static_cast<J2DTextBox*>(mpXYText[i][2]->getPanePtr())->setFontSize(font_size);
    }
#endif
#endif

    init();
    field_0xa8 = 0;
    field_0x1e4 = 0;
    field_0x2fc = 0;
#if PLATFORM_WII
    field_0x3e4_wii = NULL;
#else
    field_0x36c = NULL;
#endif

    OS_REPORT("exit dMeter2Draw_c::dMeter2Draw_c(JKRExpHeap *mp_heap)\n");
}

dMeter2Draw_c::~dMeter2Draw_c() {
    dComIfGp_getMsgDtArchive(0)->removeResource(dMeter2Info_getMsgResource());
    dComIfGp_getMsgDtArchive(0)->removeResource(dMeter2Info_getMsgUnitResource());
    dComIfGp_getItemIconArchive()->removeResourceAll();

    delete mpScreen;
    mpScreen = NULL;

#if PLATFORM_WII
    delete mpWiiScreen;
    mpWiiScreen = NULL;

    dCsr_mng_c::releaseObj(l_bloObj);
    delete l_bloObj;
    l_bloObj = NULL;

    dCsr_mng_c::releaseCsr(l_bloCsr);
    delete l_bloCsr;
    l_bloCsr = NULL;

    delete l_baseCsr;
    l_baseCsr = NULL;
#endif

    delete mpKanteraScreen;
    mpKanteraScreen = NULL;

    for (int i = 0; i < KANTERA_METER_CNT; i++) {
        delete mpKanteraMeter[i];
        mpKanteraMeter[i] = NULL;
    }

    delete mpParent;
    mpParent = NULL;

    delete mpPikariScreen;
    mpPikariScreen = NULL;

    delete mpPikariParent;
    mpPikariParent = NULL;

    delete mPikariBck;
    mPikariBck = NULL;

    delete mPikariBpk;
    mPikariBpk = NULL;

    for (int i = 0; i < ARRAY_SIZE(mpAText); i++) {
        delete mpAText[i];
        mpAText[i] = NULL;

#if PLATFORM_WII
        delete field_0x10c_wii[i];
        field_0x10c_wii[i] = NULL;
#endif

        delete mpBText[i];
        mpBText[i] = NULL;

#if PLATFORM_WII
        if (field_0x104_wii != NULL) {
            delete field_0x104_wii;
            field_0x104_wii = NULL;
        }

        if (field_0x108_wii != NULL) {
            delete field_0x108_wii;
            field_0x108_wii = NULL;
        }

        delete field_0x120_wii[i];
        field_0x120_wii[i] = NULL;
#endif

        for (int j = 0; j < ARRAY_SIZE(mpXYText[0]); j++) {
            delete mpXYText[i][j];
            mpXYText[i][j] = NULL;
        }
    }

    delete mpLifeParent;
    mpLifeParent = NULL;

    for (int i = 0; i < 20; i++) {
        delete mpLifeParts[i];
        mpLifeParts[i] = NULL;

        delete mpHeartMark[i];
        mpHeartMark[i] = NULL;

        delete mpHeartBase[i];
        mpHeartBase[i] = NULL;

        delete mpLifeTexture[i][0];
        mpLifeTexture[i][0] = NULL;

        delete mpLifeTexture[i][1];
        mpLifeTexture[i][1] = NULL;
    }

    delete mpBigHeart;
    mpBigHeart = NULL;

    delete mpMagicParent;
    mpMagicParent = NULL;

    delete mpMagicBase;
    mpMagicBase = NULL;

    delete mpMagicFrameL;
    mpMagicFrameL = NULL;

    delete mpMagicFrameR;
    mpMagicFrameR = NULL;

    for (int i = 0; i < 3; i++) {
        delete mpOxygenBpk[i];
        mpOxygenBpk[i] = NULL;
    }

    delete mpMagicMeter;
    mpMagicMeter = NULL;

    for (int i = 0; i < 2; i++) {
        delete mpSIParent[i];
        mpSIParent[i] = NULL;
    }

    delete mpLightDropParent;
    mpLightDropParent = NULL;

    for (int i = 0; i < 16; i++) {
        for (int j = 0; j < 3; j++) {
            if (mpSIParts[i][j] != NULL) {
                delete mpSIParts[i][j];
                mpSIParts[i][j] = NULL;
            }
        }
    }

    delete mpRupeeKeyParent;
    mpRupeeKeyParent = NULL;

    for (int i = 0; i < 4; i++) {
        delete mpRupeeTexture[i][0];
        mpRupeeTexture[i][0] = NULL;

        delete mpRupeeTexture[i][1];
        mpRupeeTexture[i][1] = NULL;
    }

    for (int i = 0; i < 3; i++) {
        delete mpRupeeParent[i];
        mpRupeeParent[i] = NULL;
    }

    for (int i = 0; i < 5; i++) {
        delete mpKeyTexture[i];
        mpKeyTexture[i] = NULL;
    }

    delete mpKeyParent;
    mpKeyParent = NULL;

    for (int i = 0; i < ARRAY_SIZE(mpItemBTex); i++) {
        for (int j = 0; j < ARRAY_SIZE(mpItemBTex[0]); j++) {
            heap->free(mpItemBTex[i][j]);
            mpItemBTex[i][j] = NULL;
        }
    }

    for (int i = 0; i < ARRAY_SIZE(mpItemXYTex); i++) {
        for (int j = 0; j < ARRAY_SIZE(mpItemXYTex[0]); j++) {
            for (int k = 0; k < ARRAY_SIZE(mpItemXYTex[0][0]); k++) {
                heap->free(mpItemXYTex[i][j][k]);
                mpItemXYTex[i][j][k] = NULL;
            }
        }
    }

    delete mpItemB;
    mpItemB = NULL;
    mpItemBPane = NULL;

    for (int i = 0; i < ARRAY_SIZE(mpItemXY); i++) {
        if (mpItemXY[i] != NULL) {
            delete mpItemXY[i];
            mpItemXY[i] = NULL;
        }
    }

    delete mpItemR;
    mpItemR = NULL;

    for (int i = 0; i < 3; i++) {
        mpItemXYPane[i] = NULL;
    }

    delete mpLightB;
    mpLightB = NULL;

    for (int i = 0; i < ARRAY_SIZE(mpLightXY); i++) {
        if (mpLightXY[i] != NULL) {
            delete mpLightXY[i];
            mpLightXY[i] = NULL;
        }
    }

    delete mpBTextA;
    mpBTextA = NULL;

    delete mpBTextB;
    mpBTextB = NULL;

#if PLATFORM_WII
    for (int i = 0; i < 3; i++) {
        if (mpXYTextN[i] != NULL) {
            delete mpXYTextN[i];
            mpXYTextN[i] = NULL;
        }
    }

    delete mpFATextN;
    mpFATextN = NULL;

    delete mpFA2TextN;
    mpFA2TextN = NULL;

    delete mpFBTextN;
    mpFBTextN = NULL;

    for (int i = 0; i < ARRAY_SIZE(mpTextXY); i++) {
        delete mpTextXY[i];
        mpTextXY[i] = NULL;
    }

    delete mpItemT1N;
    mpItemT1N = NULL;

    delete mpFJTextN;
    mpFJTextN = NULL;
#else
    for (int i = 0; i < ARRAY_SIZE(mpTextXY); i++) {
        if (mpBTextXY[i] != NULL) {
            delete mpBTextXY[i];
            mpBTextXY[i] = NULL;
        }
    }

    delete mpTextA;
    mpTextA = NULL;

    delete mpTextB;
    mpTextB = NULL;

    for (int i = 0; i < 3; i++) {
        delete mpTextXY[i];
        mpTextXY[i] = NULL;
    }
#endif

    delete mpTextI;
    mpTextI = NULL;

    delete mpTextM;
    mpTextM = NULL;

    for (int i = 0; i < ARRAY_SIZE(mpJujiI); i++) {
#if PLATFORM_GCN
        if (mpJujiI[i] != NULL)
#endif
        {
            delete mpJujiI[i];
            mpJujiI[i] = NULL;
        }

#if PLATFORM_GCN
        if (mpJujiM[i] != NULL)
#endif
        {
            delete mpJujiM[i];
            mpJujiM[i] = NULL;
        }
    }

    delete mpButtonParent;
    mpButtonParent = NULL;

#if PLATFORM_WII
    delete field_0x364_wii;
    field_0x364_wii = NULL;
#endif

    delete mpButtonA;
    mpButtonA = NULL;

    delete mpButtonB;
    mpButtonB = NULL;

#if PLATFORM_WII
    delete field_0x41c_wii;
    field_0x41c_wii = NULL;

    delete field_0x420_wii;
    field_0x420_wii = NULL;
#endif

    delete mpButtonMidona;
    mpButtonMidona = NULL;

    for (int i = 0; i < ARRAY_SIZE(mpButtonXY); i++) {
        delete mpButtonXY[i];
        mpButtonXY[i] = NULL;
    }

#if PLATFORM_WII
    delete field_0x418_wii;
    field_0x418_wii = NULL;
#endif

    if (mpUzu != NULL) {
        delete mpUzu;
        mpUzu = NULL;
    }

    delete mpButtonCrossParent;
    mpButtonCrossParent = NULL;

#if PLATFORM_WII
    for (int i = 0; i < ARRAY_SIZE(field_0x134_wii); i++) {
        delete field_0x134_wii[i];
        field_0x134_wii[i] = NULL;
    }

    for (int i = 0; i < ARRAY_SIZE(field_0x524); i++) {
        for (int j = 0; j < ARRAY_SIZE(field_0x524[0]); j++) {
            delete field_0x524[i][j];
            field_0x524[i][j] = NULL;
        }
    }

    for (int i = 0; i < ARRAY_SIZE(field_0x370); i++) {
        if (field_0x3e8_wii[i] != NULL) {
            delete field_0x3e8_wii[i];
            field_0x3e8_wii[i] = NULL;
        }

        if (field_0x370[i] != NULL) {
            delete field_0x370[i];
            field_0x370[i] = NULL;
        }
    }

    delete field_0x36c;
    field_0x36c = NULL;
#endif

#if PLATFORM_WII
    for (int i = 0; i < ARRAY_SIZE(field_0x530_wii); i++) {
        if (field_0x530_wii[i] != NULL) {
            delete field_0x530_wii[i];
            field_0x530_wii[i] = NULL;
        }

        if (field_0x544_wii[i] != NULL) {
            delete field_0x544_wii[i];
            field_0x544_wii[i] = NULL;
        }
    }
#endif

    for (int i = 0; i < ARRAY_SIZE(mpItemNumTex); i++) {
        for (int j = 0; j < 3; j++) {
            if (mpItemNumTex[i][j] != NULL) {
                delete mpItemNumTex[i][j];
                mpItemNumTex[i][j] = NULL;
            }
        }
    }

    for (int i = 0; i < ARRAY_SIZE(field_0x9c); i++) {
        if (field_0x9c[i] != NULL) {
            delete field_0x9c[i];
            field_0x9c[i] = NULL;
        }
    }
}

void dMeter2Draw_c::init() {
    field_0x608 = 0.0f;
    field_0x60c = 0.0f;
#if PLATFORM_WII
    field_0x6a4_wii = 0.0f;
    field_0x6a8_wii = 0.0f;
#endif

    for (int i = 0; i < ARRAY_SIZE(field_0x620); i++) {
        field_0x620[i] = 0.0f;
        field_0x610[i] = 0.0f;
    }

    field_0x61c = 0.0f;
    for (int i = 0; i < 16; i++) {
        field_0x62c[i] = 0.0f;
        field_0x66c[i] = 0.0f;
    }

    field_0x759 = 0;
    field_0x75a = 0;
#if PLATFORM_WII
    field_0x75b = 0;
#endif
    for (int i = 0; i < ARRAY_SIZE(field_0x75c); i++) {
        field_0x75c[i] = 0;
    }

    field_0x75f = 0;
    field_0x756 = -1;
    field_0x760 = 0;

    for (int j = 0; j < 3; j++) {
        field_0x6ac[j] = 0.0f;
        field_0x6b8[j] = 0.0f;
        field_0x6c4[j] = 0.0f;
        field_0x6d0[j] = 0.0f;
    }

    field_0x6dc = 0.0f;
    field_0x6e0 = 0.0f;
    field_0x6e4 = 0.0f;
    field_0x6e8 = 0.0f;
    field_0x6ec = 0.0f;
    field_0x6f0 = 0.0f;
#if PLATFORM_WII
    field_0x790_wii = 0.0f;
    field_0x794_wii = 0.0f;
#endif
    mParentScale = g_drawHIO.mParentScale;
    mParentAlpha = g_drawHIO.mParentAlpha;
    mButtonsPosX = 0.0f;
    mButtonsPosY = 0.0f;
    mButtonsScale = 1.0f;
    field_0x78c = g_drawHIO.mButtonDisplayBackScale;
    mLifeParentAlpha = 0.0f;
    mLifeParentHeartAlpha = g_drawHIO.mLifeParentHeartAlpha;
    mHeartBaseAlpha = g_drawHIO.mHeartBaseAlpha;
    mHeartAlpha = g_drawHIO.mHeartAlpha;
    mBigHeartAlpha = g_drawHIO.mBigHeartAlpha;
    field_0x7a4 = 0.0f;
    mMagicMeterAlpha = g_drawHIO.mMagicMeterAlpha;
    mMagicMeterFrameAlpha = g_drawHIO.mMagicMeterFrameAlpha;
    field_0x7b0 = 0.0f;
    mLanternMeterAlpha = g_drawHIO.mLanternMeterAlpha;
    mLanternMeterFrameAlpha = g_drawHIO.mLanternMeterFrameAlpha;
    field_0x7bc = 0.0f;
    mOxygenMeterAlpha = g_drawHIO.mOxygenMeterAlpha;
    mOxygenMeterFrameAlpha = g_drawHIO.mOxygenMeterFrameAlpha;
    field_0x7c8 = 0.0f;
    field_0x860[0] = field_0x860[1] = 0;
    field_0x7cc = g_drawHIO.mParentAlpha;
    field_0x7d0 = g_drawHIO.mRupeeKeyAlpha;
    mRupeeAlpha = g_drawHIO.mRupeeAlpha;
    mRupeeFrameAlpha = g_drawHIO.mRupeeFrameAlpha;
    mRupeeCountAlpha = g_drawHIO.mRupeeCountAlpha;
    field_0x7e0 = g_drawHIO.mParentAlpha;
    field_0x7e4 = g_drawHIO.mRupeeKeyAlpha;
    mKeyAlpha = g_drawHIO.mKeyAlpha;
    mKeyNumAlpha = g_drawHIO.mKeyNumAlpha;
    field_0x7f0 = g_drawHIO.mParentAlpha;
    mMainHUDButtonsAlpha = g_drawHIO.mMainHUDButtonsAlpha;
    mButtonDisplayBackAlpha = g_drawHIO.mButtonDisplayBackAlpha;
    mButtonAAlpha = g_drawHIO.mButtonAAlpha;
    mButtonBAlpha = g_drawHIO.mButtonBAlpha;
    mButtonXAlpha = g_drawHIO.mButtonXAlpha;
    mButtonYAlpha = g_drawHIO.mButtonYAlpha;
    field_0x80c = g_drawHIO.field_0x168;
    field_0x810 = g_drawHIO.mButtonZAlpha;

    for (int i = 0; i < 2; i++) {
        mItemBBaseAlpha[i] = g_drawHIO.mItemBBaseAlpha[i];
        mButtonXItemBaseAlpha[i] = g_drawHIO.mButtonXItemBaseAlpha[i];
        mButtonYItemBaseAlpha[i] = g_drawHIO.mButtonYItemBaseAlpha[i];
        mButtonZWiiItemBaseAlpha[i] = g_drawHIO.mButtonZWiiItemBaseAlpha[i];
    }

    mButtonZGCNItemBaseAlpha = g_drawHIO.mButtonZGCNItemBaseAlpha;
    mButtonBaseAlpha = g_drawHIO.mButtonBaseAlpha;
    mButtonATextSpacing = g_drawHIO.mButtonATextSpacing;
    mButtonCrossAlpha = g_drawHIO.mButtonCrossAlpha;
    mButtonCrossITEMAlpha = g_drawHIO.mButtonCrossITEMAlpha;
    mButtonCrossMAPAlpha = g_drawHIO.mButtonCrossMAPAlpha;

    mButtonATextColor.r = g_drawHIO.mButtonATextColor.r;
    mButtonATextColor.g = g_drawHIO.mButtonATextColor.g;
    mButtonATextColor.b = g_drawHIO.mButtonATextColor.b;
    mButtonATextColor.a = g_drawHIO.mButtonATextColor.a;

    mButtonBTextColor.r = g_drawHIO.mButtonBFontColor.r;
    mButtonBTextColor.g = g_drawHIO.mButtonBFontColor.g;
    mButtonBTextColor.b = g_drawHIO.mButtonBFontColor.b;
    mButtonBTextColor.a = g_drawHIO.mButtonBFontColor.a;

    field_0x854.r = g_drawHIO.field_0x2f0.r;
    field_0x854.g = g_drawHIO.field_0x2f0.g;
    field_0x854.b = g_drawHIO.field_0x2f0.b;
    field_0x854.a = g_drawHIO.field_0x2f0.a;

    mButtonZTextColor.r = g_drawHIO.mButtonZFontColor.r;
    mButtonZTextColor.g = g_drawHIO.mButtonZFontColor.g;
    mButtonZTextColor.b = g_drawHIO.mButtonZFontColor.b;
    mButtonZTextColor.a = g_drawHIO.mButtonZFontColor.a;

    mButtonXYTextColor.r = g_drawHIO.mButtonXYTextColor.r;
    mButtonXYTextColor.g = g_drawHIO.mButtonXYTextColor.g;
    mButtonXYTextColor.b = g_drawHIO.mButtonXYTextColor.b;
    mButtonXYTextColor.a = g_drawHIO.mButtonXYTextColor.a;

    setItemParamX(0);
    setItemParamY(0);
    setItemParamZ(0);
    setItemParamB(0);
    initLife();
    initMagic();
    initLightDrop();
    initRupeeKey();
    initButton();
    initButtonCross();
#if PLATFORM_WII
    initTouchSubMenu();
#else
    field_0x772 = 0;
#endif
}

void dMeter2Draw_c::exec(u32 i_status) {
    if (mParentScale != g_drawHIO.mParentScale) {
        mParentScale = g_drawHIO.mParentScale;
        mpParent->scale(g_drawHIO.mParentScale, g_drawHIO.mParentScale);
    }

    if (mParentAlpha != g_drawHIO.mParentAlpha) {
        mParentAlpha = g_drawHIO.mParentAlpha;
        mpParent->setAlphaRate(g_drawHIO.mParentAlpha);
    }

    if (i_status & 0x1000000) {
        if (mButtonsPosX != g_drawHIO.mRingHUDButtonsPosX ||
            mButtonsPosY != g_drawHIO.mRingHUDButtonsPosY)
        {
            mButtonsPosX = g_drawHIO.mRingHUDButtonsPosX;
            mButtonsPosY = g_drawHIO.mRingHUDButtonsPosY;
            mpButtonParent->paneTrans(g_drawHIO.mRingHUDButtonsPosX, g_drawHIO.mRingHUDButtonsPosY);
#if PLATFORM_WII
            field_0x364_wii->paneTrans(g_drawHIO.mRingHUDButtonsPosX, g_drawHIO.mRingHUDButtonsPosY);
#endif
        }

        if (mButtonsScale != g_drawHIO.mRingHUDButtonsScale) {
            mButtonsScale = g_drawHIO.mRingHUDButtonsScale;
            mpButtonParent->scale(g_drawHIO.mRingHUDButtonsScale, g_drawHIO.mRingHUDButtonsScale);
#if PLATFORM_WII
            field_0x364_wii->scale(g_drawHIO.mRingHUDButtonsScale, g_drawHIO.mRingHUDButtonsScale);
#endif
        }
    } else {
        if (mButtonsPosX != g_drawHIO.mMainHUDButtonsPosX ||
            mButtonsPosY != g_drawHIO.mMainHUDButtonsPosY)
        {
            mButtonsPosX = g_drawHIO.mMainHUDButtonsPosX;
            mButtonsPosY = g_drawHIO.mMainHUDButtonsPosY;
            mpButtonParent->paneTrans(g_drawHIO.mMainHUDButtonsPosX, g_drawHIO.mMainHUDButtonsPosY);
#if PLATFORM_WII
            field_0x364_wii->paneTrans(g_drawHIO.mMainHUDButtonsPosX, g_drawHIO.mMainHUDButtonsPosY);
#endif
        }

        if (mButtonsScale != g_drawHIO.mMainHUDButtonsScale) {
            mButtonsScale = g_drawHIO.mMainHUDButtonsScale;
            mpButtonParent->scale(g_drawHIO.mMainHUDButtonsScale, g_drawHIO.mMainHUDButtonsScale);
#if PLATFORM_WII
            field_0x364_wii->scale(g_drawHIO.mMainHUDButtonsScale, g_drawHIO.mMainHUDButtonsScale);
#endif
        }
    }
}

void dMeter2Draw_c::draw() {
    J2DGrafContext* graf_ctx = dComIfGp_getCurrentGrafPort();
    graf_ctx->setup2D();

    mpScreen->draw(0.0f, 0.0f, graf_ctx);

#if PLATFORM_WII
    moveItemDraw();
    field_0x772 = 0;
    if (mpRupeeParent[0]->getAlphaRate() == 0.0f && mpKeyParent->getAlphaRate() == 0.0f) {
        mpScreen->search('N_r_k')->hide();
    } else {
        mpScreen->search('N_r_k')->show();
    }

    l_bloCsr->m_csr = NULL;

    if (!daPy_getPlayerActorClass()->checkEnemyAttentionLock() &&
        (daPy_getPlayerActorClass()->checkPointSubWindowMode() ||
            dComIfGp_isPauseFlag()) &&
        dComIfGs_getSaveInfo()->getPlayer().getConfig().getShortCut() &&
        dMw_isMenuRing()) {
        if (field_0x3e8_wii[0]->getAlphaRate() == 1.0f ||
            field_0x3e8_wii[1]->getAlphaRate() == 1.0f ||
            mpITextN->getAlphaRate() == 1.0f ||
            mpRupeeParent[0]->getAlphaRate() == 1.0f ||
            mpKeyParent->getAlphaRate() == 1.0f ||
            dComIfGp_isPauseFlag()) {
            l_bloObj->calc();

            if (l_bloCsr->m_pointed_obj != NULL) {
                u64 infoTag = static_cast<dCsr_mng_c::bloObj_c*>(l_bloCsr->m_pointed_obj)
                    ->m_pane_handle->mInfoTag;

                l_bloCsr->m_csr = l_baseCsr;

                if (infoTag == MULTI_CHAR('N_mapbar')) {
                    if (dMeter2Info_isMapOpenCheck() &&
                        field_0x3e8_wii[0]->getAlphaRate() == 1.0f) {
                        if (!dComIfGp_isPauseFlag()) {
                            dComIfGp_setDoStatusForce(0xF, 0);
                            field_0x772 = 1;
                        } else {
                            if (!g_meter2_info.getMapDrugFlag()) {
                                field_0x772 = 1;
                            }
                        }
                    }
                } else if (infoTag == MULTI_CHAR('N_are_m')) {
                    if (dMeter2Info_isAreaMapOpenCheck() &&
                        field_0x3e8_wii[1]->getAlphaRate() == 1.0f) {
                        if (!dComIfGp_isPauseFlag()) {
                            dComIfGp_setDoStatusForce(0xF, 0);
                        }
                        field_0x772 = 2;
                    }
                } else if (infoTag == MULTI_CHAR('N_item2')) {
                    if (dMeter2Info_isItemOpenCheck() && mpITextN->getAlphaRate() == 1.0f) {
                        if (!dComIfGp_isPauseFlag()) {
                            if (getCameraSubject() == NULL &&
                                getItemSubject() == NULL &&
                                getPlayerSubject() == NULL) {
                                dComIfGp_setDoStatusForce(0xF, 0);
                            }
                        }
                        field_0x772 = 3;
                    }
                } else if (infoTag == MULTI_CHAR('N_r_k')) {
                    if (mpRupeeParent[0]->getAlphaRate() > 0.0f ||
                        mpKeyParent->getAlphaRate() > 0.0f) {
                        if (!dComIfGp_isPauseFlag()) {
                            dComIfGp_setDoStatusForce(0xF, 0);
                        }
                        field_0x772 = 4;
                    }
                }
            }
        }
    }
#endif

    drawKanteraScreen(1);
    drawKanteraScreen(2);

    for (int i = 0; i < KANTERA_METER_CNT; i++) {
#if PLATFORM_WII
        if (i == 3) {
            for (int j = 0; j < 3; j++) {
                f32 var_f28 = mItemParams[3].num_scale * 16.0f;
                Vec spEC = mpItemB->getPanePtr()->getGlbVtx(0);
                Vec spE0 = mpItemB->getPanePtr()->getGlbVtx(3);
                mpItemNumTex[3][j]->draw(mItemParams[3].num_pos_x +
                                     (((spEC.x + spE0.x) * 0.5f) + (var_f28 * j)),
                                 mItemParams[3].num_pos_y +
                                     (((spEC.y + spE0.y) * 0.5f) + mpItemB->getSizeY()),
                                 var_f28, var_f28, false, false, false);
            }
        } else
#endif
        {
            if (mpItemXY[i] != NULL) {
                for (int j = 0; j < 3; j++) {
                    f32 temp_f30 = mItemParams[i].num_scale * 16.0f;

                    Vec vtx0 = mpItemXY[i]->getPanePtr()->getGlbVtx(0);
                    Vec vtx3 = mpItemXY[i]->getPanePtr()->getGlbVtx(3);

                    mpItemNumTex[i][j]->draw(mItemParams[i].num_pos_x +
                                                 (((vtx0.x + vtx3.x) * 0.5f) + (temp_f30 * j)),
                                             mItemParams[i].num_pos_y +
                                                 (((vtx0.y + vtx3.y) * 0.5f) + mpItemXY[i]->getSizeY()),
                                             temp_f30, temp_f30, false, false, false);
                }
            }
        }
    }

    for (int i = 0; i < KANTERA_METER_CNT; i++) {
        mpKanteraMeter[i]->drawSelf();
    }

#if PLATFORM_WII
    mpWiiScreen->draw(0.0f, 0.0f, graf_ctx);

    if (++field_0x6a8_wii >= 30.0f) {
        field_0x6a8_wii = 0.0f;
    }

    if (field_0x6a8_wii != 0.0f) {
        f32 alphaRate;
        if (field_0x6a8_wii < 15.0f) {
            alphaRate = field_0x6a8_wii / 15.0f;
        } else {
            alphaRate = (30.0f - field_0x6a8_wii) / 15.0f;
        }

        field_0x108_wii->setAlphaRate(alphaRate);
        field_0x104_wii->draw(0.0f, 0.0f, graf_ctx);
    }
#endif

    if (!dComIfGp_isPauseFlag() && mpButtonParent->getAlphaRate() != 0.0f) {
        if (field_0x608 > 0.0f) {
            drawPikari(mpBTextA, &field_0x608, g_drawHIO.mButtonAPikariScale,
                       g_drawHIO.mButtonAPikariFrontOuter, g_drawHIO.mButtonAPikariFrontInner,
                       g_drawHIO.mButtonAPikariBackOuter, g_drawHIO.mButtonAPikariBackInner,
                       g_drawHIO.mButtonAPikariAnimSpeed, field_0x759);
        }

        if (field_0x60c > 0.0f) {
            drawPikari(mpBTextB, &field_0x60c, g_drawHIO.mButtonBPikariScale,
                       g_drawHIO.mButtonBPikariFrontOuter, g_drawHIO.mButtonBPikariFrontInner,
                       g_drawHIO.mButtonBPikariBackOuter, g_drawHIO.mButtonBPikariBackInner,
                       g_drawHIO.mButtonBPikariAnimSpeed, field_0x75a);
        }

#if PLATFORM_WII
        if (field_0x61c > 0.0f) {
            drawPikari(
                mpItemB,
                &field_0x61c,
                g_drawHIO.field_0x3d0,
                g_drawHIO.field_0x4c0, g_drawHIO.field_0x4bc,
                g_drawHIO.field_0x4c8, g_drawHIO.field_0x4c4,
                g_drawHIO.field_0x4cc, NULL);
        }

        for (int i = 0; i < 4; i++) {
            if (mpItemXY[i] != NULL && field_0x610[i] > 0.0f) {
                drawPikari(
                    mpItemXY[i],
                    &field_0x610[i],
                    g_drawHIO.field_0x3d4,
                    g_drawHIO.field_0x4d4, g_drawHIO.field_0x4d0,
                    g_drawHIO.field_0x4dc, g_drawHIO.field_0x4d8,
                    g_drawHIO.field_0x4e0, NULL);
            }
        }
#endif

        for (int i = 0; i < ARRAY_SIZE(field_0x610); i++) {
            if (field_0x620[i] > 0.0f) {
                drawPikari(
#if PLATFORM_WII
                    mpItemXY[i],
#else
                    mpBTextXY[i],
#endif
                    &field_0x620[i],
                    g_drawHIO.mButtonXYPikariScale,
                    g_drawHIO.mButtonXYPikariFrontOuter, g_drawHIO.mButtonXYPikariFrontInner,
                    g_drawHIO.mButtonXYPikariBackOuter, g_drawHIO.mButtonXYPikariBackInner,
                    g_drawHIO.mButtonXYPikariAnimSpeed, field_0x75c[i]);
            }
        }
    }

    if (mpLightDropParent->getAlphaRate() != 0.0f) {
        f32 var_f28 = g_drawHIO.mLightDrop.mPikariScaleNormal;
        f32 var_f29 = g_drawHIO.mLightDrop.mDropPikariAnimSpeed;

        if (field_0x756 >= 0) {
            var_f29 = g_drawHIO.mLightDrop.mDropPikariAnimSpeed_Completed;
            if (field_0x756 <= g_drawHIO.mLightDrop.mPikariInterval * 15) {
                int temp_r4 = (field_0x756 % g_drawHIO.mLightDrop.mPikariInterval);
                int temp_r3_5 = field_0x756 / g_drawHIO.mLightDrop.mPikariInterval;

                if (temp_r4 == 0 && field_0x62c[temp_r3_5] == 0.0f) {
                    field_0x62c[temp_r3_5] = 18.0f;
                }

                var_f28 = g_drawHIO.mLightDrop.mPikariScaleComplete;
                field_0x756++;
            } else {
                if (field_0x756 == g_drawHIO.mLightDrop.mPikariInterval * 15 + 1) {
                    if (field_0x62c[15] == 0.0f) {
                        field_0x756++;
                    }

                    var_f28 = g_drawHIO.mLightDrop.mPikariScaleComplete;
                } else if (field_0x756 >= g_drawHIO.mLightDrop.mPikariInterval * 15 + 1 +
                                              g_drawHIO.mLightDrop.field_0x54) {
                    for (int i = 0; i < 16; i++) {
                        field_0x62c[i] = 18.0f - var_f29;
                        field_0x66c[i] = 18.0f - g_drawHIO.mLightDrop.mPikariLoopAnimSpeed;
                    }

                    field_0x756 = -1;
                } else {
                    field_0x756++;
                }
            }
        }

        for (int i = 0; i < 16; i++) {
            if (field_0x66c[i] > 0.0f) {
                drawPikari(mpSIParts[i][1], &g_drawHIO.mLightDrop.mPikariLoopBackStopFrame,
                           g_drawHIO.mLightDrop.mPikariLoopBackScale,
                           g_drawHIO.mLightDrop.mPikariLoopFrontOuter[1],
                           g_drawHIO.mLightDrop.mPikariLoopFrontInner[1],
                           g_drawHIO.mLightDrop.mPikariLoopBackOuter[1],
                           g_drawHIO.mLightDrop.mPikariLoopBackInner[1], 0.0f, 3);
                drawPikari(mpSIParts[i][1], &field_0x66c[i], g_drawHIO.mLightDrop.mPikariLoopScale,
                           g_drawHIO.mLightDrop.mPikariLoopFrontOuter[0],
                           g_drawHIO.mLightDrop.mPikariLoopFrontInner[0],
                           g_drawHIO.mLightDrop.mPikariLoopBackOuter[0],
                           g_drawHIO.mLightDrop.mPikariLoopBackInner[0],
                           g_drawHIO.mLightDrop.mPikariLoopAnimSpeed, 3);
            }

            if (g_drawHIO.mLightDrop.mAnimDebug) {
                if (dComIfGp_getNeedLightDropNum() !=
                    dComIfGs_getLightDropNum(dComIfGp_getStartStageDarkArea()))
                {
                    field_0x66c[i] = 0.0f;
                }
            }
        }

        for (int i = 0; i < 16; i++) {
            if (field_0x62c[i] > 0.0f) {
                drawPikari(mpSIParts[i][1], &field_0x62c[i], var_f28,
                           g_drawHIO.mLightDrop.mDropPikariFrontOuter,
                           g_drawHIO.mLightDrop.mDropPikariFrontInner,
                           g_drawHIO.mLightDrop.mDropPikariBackOuter,
                           g_drawHIO.mLightDrop.mDropPikariBackInner, var_f29, field_0x75f);
            }
        }
    }

    if (field_0x738 > 0.0f) {
        drawPikari(mpButtonMidona, &field_0x738, g_drawHIO.mMidnaIconPikariScale,
                   g_drawHIO.mMidnaIconPikariFrontOuter, g_drawHIO.mMidnaIconPikariFrontInner,
                   g_drawHIO.mMidnaIconPikariBackOuter, g_drawHIO.mMidnaIconPikariBackInner,
                   g_drawHIO.mMidnaIconPikariAnimSpeed, 3);
    }
}

void dMeter2Draw_c::initLife() {
    if (dComIfGs_getLife() > dComIfGs_getMaxLifeGauge()) {
        // "●●●●●●Heart Count adjust======>%d, %d\n"
        OS_REPORT("●●●●●●ハートの数調整======>%d, %d\n", dComIfGs_getLife(),
                  dComIfGs_getMaxLifeGauge());
        dComIfGs_setLife(dComIfGs_getMaxLifeGauge());
    }

    static u64 const life_tag[] = {
        MULTI_CHAR('hpb_00'), MULTI_CHAR('hpb_01'), MULTI_CHAR('hpb_02'), MULTI_CHAR('hpb_03'), MULTI_CHAR('hpb_04'), MULTI_CHAR('hpb_05'), MULTI_CHAR('hpb_06'),
        MULTI_CHAR('hpb_07'), MULTI_CHAR('hpb_08'), MULTI_CHAR('hpb_09'), MULTI_CHAR('hpb_10'), MULTI_CHAR('hpb_11'), MULTI_CHAR('hpb_12'), MULTI_CHAR('hpb_13'),
        MULTI_CHAR('hpb_14'), MULTI_CHAR('hpb_15'), MULTI_CHAR('hpb_16'), MULTI_CHAR('hpb_17'), MULTI_CHAR('hpb_18'), MULTI_CHAR('hpb_19'),
    };

    static u64 const mark_tag[] = {
        MULTI_CHAR('heartn00'), MULTI_CHAR('heartn01'), MULTI_CHAR('heartn02'), MULTI_CHAR('heartn03'), MULTI_CHAR('heartn04'), MULTI_CHAR('heartn05'), MULTI_CHAR('heartn06'),
        MULTI_CHAR('heartn07'), MULTI_CHAR('heartn08'), MULTI_CHAR('heartn09'), MULTI_CHAR('heartn10'), MULTI_CHAR('heartn11'), MULTI_CHAR('heartn12'), MULTI_CHAR('heartn13'),
        MULTI_CHAR('heartn14'), MULTI_CHAR('heartn15'), MULTI_CHAR('heartn16'), MULTI_CHAR('heartn17'), MULTI_CHAR('heartn18'), MULTI_CHAR('heartn19'),
    };

    static u64 const base_tag[] = {
        MULTI_CHAR('h_ba_n00'), MULTI_CHAR('h_ba_n01'), MULTI_CHAR('h_ba_n02'), MULTI_CHAR('h_ba_n03'), MULTI_CHAR('h_ba_n04'), MULTI_CHAR('h_ba_n05'), MULTI_CHAR('h_ba_n06'),
        MULTI_CHAR('h_ba_n07'), MULTI_CHAR('h_ba_n08'), MULTI_CHAR('h_ba_n09'), MULTI_CHAR('h_ba_n10'), MULTI_CHAR('h_ba_n11'), MULTI_CHAR('h_ba_n12'), MULTI_CHAR('h_ba_n13'),
        MULTI_CHAR('h_ba_n14'), MULTI_CHAR('h_ba_n15'), MULTI_CHAR('h_ba_n16'), MULTI_CHAR('h_ba_n17'), MULTI_CHAR('h_ba_n18'), MULTI_CHAR('h_ba_n19'),
    };

    static u64 const lifet1_tag[] = {
        MULTI_CHAR('hear_00s'), MULTI_CHAR('hear_01s'), MULTI_CHAR('hear_02s'), MULTI_CHAR('hear_03s'), MULTI_CHAR('hear_04s'), MULTI_CHAR('hear_05s'), MULTI_CHAR('hear_06s'),
        MULTI_CHAR('hear_07s'), MULTI_CHAR('hear_08s'), MULTI_CHAR('hear_09s'), MULTI_CHAR('hear_10s'), MULTI_CHAR('hear_11s'), MULTI_CHAR('hear_12s'), MULTI_CHAR('hear_13s'),
        MULTI_CHAR('hear_14s'), MULTI_CHAR('hear_15s'), MULTI_CHAR('hear_16s'), MULTI_CHAR('hear_17s'), MULTI_CHAR('hear_18s'), MULTI_CHAR('hear_19s'),
    };

    static u64 const lifet2_tag[] = {
        MULTI_CHAR('hear_00'), MULTI_CHAR('hear_01'), MULTI_CHAR('hear_02'), MULTI_CHAR('hear_03'), MULTI_CHAR('hear_04'), MULTI_CHAR('hear_05'), MULTI_CHAR('hear_06'),
        MULTI_CHAR('hear_07'), MULTI_CHAR('hear_08'), MULTI_CHAR('hear_09'), MULTI_CHAR('hear_10'), MULTI_CHAR('hear_11'), MULTI_CHAR('hear_12'), MULTI_CHAR('hear_13'),
        MULTI_CHAR('hear_14'), MULTI_CHAR('hear_15'), MULTI_CHAR('hear_16'), MULTI_CHAR('hear_17'), MULTI_CHAR('hear_18'), MULTI_CHAR('hear_19'),
    };

    mpLifeParent = new CPaneMgr(mpScreen, MULTI_CHAR('heart_n'), 2, NULL);
    JUT_ASSERT(1493, mpLifeParent != NULL);

    for (int i = 0; i < 20; i++) {
        mpLifeParts[i] = new CPaneMgr(mpScreen, life_tag[i], 0, NULL);
        JUT_ASSERT(1497, mpLifeParts[i] != NULL);

        mpHeartMark[i] = new CPaneMgr(mpScreen, mark_tag[i], 2, NULL);
        JUT_ASSERT(1500, mpHeartMark[i] != NULL);

        mpHeartBase[i] = new CPaneMgrAlpha(mpScreen, base_tag[i], 2, NULL);
        JUT_ASSERT(1503, mpHeartBase[i] != NULL);

        mpLifeTexture[i][0] = new CPaneMgrAlpha(mpScreen, lifet1_tag[i], 0, NULL);
        JUT_ASSERT(1506, mpLifeTexture[i][0] != NULL);

        mpLifeTexture[i][1] = new CPaneMgrAlpha(mpScreen, lifet2_tag[i], 0, NULL);
        JUT_ASSERT(1509, mpLifeTexture[i][1] != NULL);
    }

    mpBigHeart = new CPaneMgr(mpScreen, MULTI_CHAR('bigh_n'), 2, NULL);
    JUT_ASSERT(1513, mpBigHeart != NULL);

    mpLifeParent->setAlphaRate(0.0f);

    f32 var_f1 = g_drawHIO.mLifeTopPosX;
    f32 var_f2 = 0.0f;

    if (dComIfGs_getMaxLife() <= 50) {
        var_f2 = g_drawHIO.mLifeTopPosY;
    }

    drawLife(dComIfGs_getMaxLife(), dComIfGs_getLife(), g_drawHIO.mLifeGaugePosX + var_f1,
             g_drawHIO.mLifeGaugePosY + var_f2);
    setAlphaLifeChange(true);
}

void dMeter2Draw_c::initMagic() {
    field_0x550 = 0.0f;
    field_0x554 = 0.0f;

    mpMagicParent = new CPaneMgr(mpKanteraScreen, MULTI_CHAR('magic_n'), 2, NULL);
    JUT_ASSERT(1546, mpMagicParent != NULL);

    mpMagicBase = new CPaneMgr(mpKanteraScreen, MULTI_CHAR('mm_base'), 0, NULL);
    JUT_ASSERT(1549, mpMagicBase != NULL);

    mpMagicFrameL = new CPaneMgr(mpKanteraScreen, MULTI_CHAR('m_w_l_n'), 2, NULL);
    JUT_ASSERT(1552, mpMagicFrameL != NULL);

    mpMagicFrameR =
        new CPaneMgr(mpKanteraScreen, MULTI_CHAR('m_w_r_n'), 2, NULL);
    JUT_ASSERT(1555, mpMagicFrameR != NULL);

    mpMagicMeter = new CPaneMgr(mpKanteraScreen, MULTI_CHAR('mm_00'), 0, NULL);
    JUT_ASSERT(1558, mpMagicMeter != NULL);

    OSInitFastCast();

    void* res = JKRGetNameResource("zelda_game_image_sanso_10percent.bpk",
                                              dComIfGp_getMain2DArchive());
    mpOxygenBpk[0] = (J2DAnmColor*)J2DAnmLoaderDataBase::load(res);
    mpOxygenBpk[0]->searchUpdateMaterialID(mpKanteraScreen);

    res = JKRGetNameResource("zelda_game_image_sanso_25percent.bpk",
                                        dComIfGp_getMain2DArchive());
    mpOxygenBpk[1] = (J2DAnmColor*)J2DAnmLoaderDataBase::load(res);
    mpOxygenBpk[1]->searchUpdateMaterialID(mpKanteraScreen);

    res = JKRGetNameResource("zelda_game_image_sanso_50percent.bpk",
                                        dComIfGp_getMain2DArchive());
    mpOxygenBpk[2] = (J2DAnmColor*)J2DAnmLoaderDataBase::load(res);
    mpOxygenBpk[2]->searchUpdateMaterialID(mpKanteraScreen);

    field_0x558 = 0.0f;
    mpMagicParent->setAlphaRate(0.0f);

    f32 offsetX = g_drawHIO.mLifeTopPosX;
    f32 offsetY = 0.0f;

    if (dComIfGs_getMaxLife() <= 50) {
        offsetY = g_drawHIO.mLifeTopPosY;
    }

    for (int i = 0; i < 3; i++) {
        mMeterAlphaRate[i] = 0.0f;
        field_0x742[i] = 0;
    }

    drawMagic(dComIfGs_getMaxMagic(), dComIfGs_getMagic(), g_drawHIO.mMagicMeterPosX + offsetX,
              g_drawHIO.mMagicMeterPosY + offsetY);
    setAlphaMagicChange(true);

    drawKantera(dComIfGs_getMaxOil(), dComIfGs_getOil(), g_drawHIO.mLanternMeterPosX + offsetX,
                g_drawHIO.mNoMagicPosY + (g_drawHIO.mLanternMeterPosY + offsetY));
    setAlphaKanteraChange(true);
}

void dMeter2Draw_c::initLightDrop() {
    mpLightDropParent = new CPaneMgr(mpScreen, MULTI_CHAR('s_tuta_n'), 2, NULL);
    JUT_ASSERT(1610, mpLightDropParent != NULL);

    static u64 const tuta_0[] = {
        's_00', 's_01', 's_02', 's_03', 's_04', 's_05', 's_06', 's_07',
        's_08', 's_09', 's_10', 's_11', 's_12', 's_13', 's_14', 's_15',
    };

    static u64 const tuta_1[] = {
        MULTI_CHAR('sl_00'), MULTI_CHAR('sl_01'), MULTI_CHAR('sl_02'), MULTI_CHAR('sl_03'), MULTI_CHAR('sl_04'), MULTI_CHAR('sl_05'), MULTI_CHAR('sl_06'), MULTI_CHAR('sl_07'),
        MULTI_CHAR('sl_08'), MULTI_CHAR('sl_09'), MULTI_CHAR('sl_10'), MULTI_CHAR('sl_11'), MULTI_CHAR('sl_12'), MULTI_CHAR('sl_13'), MULTI_CHAR('sl_14'), MULTI_CHAR('sl_15'),
    };

    static u64 const tuta_2[] = {
        MULTI_CHAR('scp_00'), MULTI_CHAR('scp_01'), MULTI_CHAR('scp_02'), MULTI_CHAR('scp_03'), MULTI_CHAR('scp_04'), MULTI_CHAR('scp_05'), MULTI_CHAR('scp_06'), MULTI_CHAR('scp_07'),
        MULTI_CHAR('scp_08'), MULTI_CHAR('scp_09'), MULTI_CHAR('scp_10'), MULTI_CHAR('scp_11'), MULTI_CHAR('scp_12'), MULTI_CHAR('scp_13'), MULTI_CHAR('scp_14'), MULTI_CHAR('scp_15'),
    };

    for (int i = 0; i < 16; i++) {
        mpSIParts[i][0] = new CPaneMgr(mpScreen, tuta_0[i], 0, NULL);
        JUT_ASSERT(1626, mpSIParts[i][0] != NULL);

        mpSIParts[i][1] = new CPaneMgr(mpScreen, tuta_1[i], 0, NULL);
        JUT_ASSERT(1628, mpSIParts[i][1] != NULL);

        mpSIParts[i][2] = new CPaneMgr(mpScreen, tuta_2[i], 0, NULL);
        JUT_ASSERT(1630, mpSIParts[i][2] != NULL);
    }

    mpSIParent[0] = new CPaneMgr(mpScreen, MULTI_CHAR('tuta_n'), 2, NULL);
    JUT_ASSERT(1634, mpSIParent[0] != NULL);

    mpSIParent[1] = new CPaneMgr(mpScreen, MULTI_CHAR('s_null'), 2, NULL);
    JUT_ASSERT(1636, mpSIParent[1] != NULL);

    mpLightDropParent->setAlphaRate(0.0f);
    field_0x6fc = 0.0f;
    mLightDropVesselScale = g_drawHIO.mLightDrop.mVesselScale;
    field_0x6f8 = 1.0f;

    for (int i = 0; i < 3; i++) {
        if (dComIfGs_isLightDropGetFlag(i)) {
            dMeter2Info_setLightDropGetFlag(i, 0xFF);
        } else {
            dMeter2Info_setLightDropGetFlag(i, 0);
        }
    }

#if WIDESCREEN_SUPPORT && !PLATFORM_SHIELD
    f32 vesselPosX;
    f32 vesselPosY;
    if (mDoGph_gInf_c::mWide == 1) {
        vesselPosX = g_drawHIO.mLightDrop.mVesselPosX;
        vesselPosY = g_drawHIO.mLightDrop.mVesselPosY;
    } else {
        vesselPosX = g_drawHIO.mLightDrop.mVesselPosX_4x3;
        vesselPosY = g_drawHIO.mLightDrop.mVesselPosY_4x3;
    }
    drawLightDrop(dComIfGs_getLightDropNum(dComIfGp_getStartStageDarkArea()),
                  dComIfGp_getNeedLightDropNum(), vesselPosX, vesselPosY,
                  g_drawHIO.mLightDrop.mVesselScale, g_drawHIO.mLightDrop.mVesselAlpha[0], 0);
#else
    drawLightDrop(dComIfGs_getLightDropNum(dComIfGp_getStartStageDarkArea()),
                  dComIfGp_getNeedLightDropNum(), g_drawHIO.mLightDrop.mVesselPosX, g_drawHIO.mLightDrop.mVesselPosY,
                  g_drawHIO.mLightDrop.mVesselScale, g_drawHIO.mLightDrop.mVesselAlpha[0], 0);
#endif
    setAlphaLightDropChange(true);
}

void dMeter2Draw_c::initRupeeKey() {
    mpRupeeKeyParent = new CPaneMgr(mpScreen, MULTI_CHAR('r_k_n'), 2, NULL);
    JUT_ASSERT(1693, mpRupeeKeyParent != NULL);
    field_0x718 = 1.0f;

    static u64 const rupeet1_tag[] = {MULTI_CHAR('r_n_1_s'), MULTI_CHAR('r_n_2_s'), MULTI_CHAR('r_n_3_s'), MULTI_CHAR('r_n_4_s')};
    static u64 const rupeet2_tag[] = {MULTI_CHAR('r_n_1'), MULTI_CHAR('r_n_2'), MULTI_CHAR('r_n_3'), MULTI_CHAR('r_n_4')};

    for (int i = 0; i < 4; i++) {
        mpRupeeTexture[i][0] = new CPaneMgr(mpScreen, rupeet1_tag[i], 0, NULL);
        JUT_ASSERT(1699, mpRupeeTexture[i][0] != NULL);
        mpRupeeTexture[i][0]->getPanePtr()->setBasePosition(J2DBasePosition_4);

        mpRupeeTexture[i][1] = new CPaneMgr(mpScreen, rupeet2_tag[i], 0, NULL);
        JUT_ASSERT(1703, mpRupeeTexture[i][1] != NULL);
        mpRupeeTexture[i][1]->getPanePtr()->setBasePosition(J2DBasePosition_4);
    }

    mpRupeeParent[0] = new CPaneMgr(mpScreen, MULTI_CHAR('rupi_n'), 2, NULL);
    JUT_ASSERT(1708, mpRupeeParent[0] != NULL);

    mpRupeeParent[1] = new CPaneMgr(mpScreen, MULTI_CHAR('moyou_rn'), 2, NULL);
    JUT_ASSERT(1711, mpRupeeParent[1] != NULL);

    mpRupeeParent[2] = new CPaneMgr(mpScreen, MULTI_CHAR('moyou_ln'), 2, NULL);
    JUT_ASSERT(1714, mpRupeeParent[2] != NULL);

    mpRupeeParent[0]->setAlphaRate(0.0f);
    mpRupeeParent[1]->setAlphaRate(0.0f);
    mpRupeeParent[2]->setAlphaRate(0.0f);

    static u64 const key_tag[] = {MULTI_CHAR('key_nul'), MULTI_CHAR('k_n_1_n'), MULTI_CHAR('k_n_2_n'), MULTI_CHAR('k_n_3_n'), MULTI_CHAR('k_n_4_n')};

    for (int i = 0; i < 5; i++) {
        mpKeyTexture[i] = new CPaneMgr(mpScreen, key_tag[i], 0, NULL);
        JUT_ASSERT(1725, mpKeyTexture[i] != NULL);
        mpKeyTexture[i]->getPanePtr()->setBasePosition(J2DBasePosition_4);
        mpKeyTexture[i]->hide();
    }

    mpKeyParent = new CPaneMgr(mpScreen, MULTI_CHAR('key_n'), 2, NULL);
    JUT_ASSERT(1731, mpKeyParent != NULL);
    mpKeyParent->setAlphaRate(0.0f);

    drawRupee(dComIfGs_getRupee());
    drawKey(dComIfGs_getKeyNum());
    setAlphaRupeeChange(true);
    setAlphaKeyChange(true);
}

void dMeter2Draw_c::initButton() {
    field_0x761 = 1;
    field_0x762 = 1;
#if PLATFORM_WII
    field_0x819_wii = 1;
    field_0x81a_wii = 1;
    field_0x81b_wii = 1;
    field_0x81c_wii = 1;
#endif
    field_0x763 = 1;
    field_0x764 = 1;
    field_0x765 = 1;
    field_0x766 = 1;
    field_0x767 = 1;

    for (int i = 0; i < 3; i++) {
        field_0x768[i] = 1;
    }

    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 2; j++) {
            mpItemBTex[i][j] = (ResTIMG*)heap->alloc(0xC00, 0x20);
            JUT_ASSERT(1772, mpItemBTex[i][j] != NULL);
        }
    }

    for (int i = 0; i < ARRAY_SIZE(mpItemXYTex); i++) {
        field_0x773[i] = dMeter2Info_isDirectUseItem(i);
        field_0x76c[i] = 0;

        for (int j = 0; j < ARRAY_SIZE(mpItemXYTex[0]); j++) {
            for (int k = 0; k < ARRAY_SIZE(mpItemXYTex[0][0]); k++) {
                mpItemXYTex[i][j][k] = (ResTIMG*)heap->alloc(0xC00, 0x20);
                JUT_ASSERT(1782, mpItemXYTex[i][j][k] != NULL);
            }
        }
    }

    mpItemB = new CPaneMgr(mpScreen, MULTI_CHAR('b_itm_p'), 0, NULL);
    JUT_ASSERT(1788, mpItemB != NULL);
    mpItemB->getPanePtr()->setBasePosition(J2DBasePosition_4);
    mpItemB->show();

    field_0x728 = 1.0f;
    field_0x734 = 1.0f;
#if PLATFORM_WII
    g_meter2_info.mMeterItemPanePtr[3] = mpItemB;
#endif
    field_0x76b = 0;
    mButtonBItem = 0;

    dComIfGs_setBButtonItemKey(0xFF);
    field_0x770 = 0xFF;
    field_0x771 = dComIfGs_getBButtonItemKey();

    mpItemBPane = new J2DPicture(
        MULTI_CHAR('b_itm_pp'),
        JGeometry::TBox2<f32>(0.0f, 0.0f, mpItemB->getInitSizeX(), mpItemB->getInitSizeY()),
        static_cast<J2DPicture*>(mpItemB->getPanePtr())->getTexture(0)->getTexInfo(), NULL);
    JUT_ASSERT(1805, mpItemBPane != NULL);
    mpItemBPane->setBasePosition(J2DBasePosition_4);
    mpItemB->getPanePtr()->appendChild(mpItemBPane);

    mpItemXY[0] = new CPaneMgr(mpScreen, MULTI_CHAR('x_itm_p'), 0, NULL);
    JUT_ASSERT(1810, mpItemXY[0] != NULL);
    mpItemXY[0]->getPanePtr()->setBasePosition(J2DBasePosition_4);
    dMeter2Info_setMeterItemPanePtr(0, mpItemXY[0]);

    mpItemXY[1] = new CPaneMgr(mpScreen, MULTI_CHAR('y_itm_p'), 0, NULL);
    JUT_ASSERT(1815, mpItemXY[1] != NULL);
    mpItemXY[1]->getPanePtr()->setBasePosition(J2DBasePosition_4);
    dMeter2Info_setMeterItemPanePtr(1, mpItemXY[1]);

#if PLATFORM_WII
    mpItemXY[2] = new CPaneMgr(mpScreen, MULTI_CHAR('j_itm_p'), 0, NULL);
    mpItemXY[2]->getPanePtr()->setBasePosition(J2DBasePosition_4);
    dMeter2Info_setMeterItemPanePtr(2, mpItemXY[2]);

    mpItemXY[3] = NULL;
#else
    mpItemR = NULL;
    mpBTextA = NULL;
#endif

    mpItemXYPane[0] = new J2DPicture(
        MULTI_CHAR('x_itm_pp'),
        JGeometry::TBox2<f32>(0.0f, 0.0f, mpItemXY[0]->getInitSizeX(), mpItemXY[0]->getInitSizeY()),
        static_cast<J2DPicture*>(mpItemXY[0]->getPanePtr())->getTexture(0)->getTexInfo(), NULL);
    JUT_ASSERT(1835, mpItemXYPane[0] != NULL);
    mpItemXYPane[0]->setBasePosition(J2DBasePosition_4);
    mpItemXY[0]->getPanePtr()->appendChild(mpItemXYPane[0]);

    mpItemXYPane[1] = new J2DPicture(
        MULTI_CHAR('y_itm_pp'),
        JGeometry::TBox2<f32>(0.0f, 0.0f, mpItemXY[1]->getInitSizeX(), mpItemXY[1]->getInitSizeY()),
        static_cast<J2DPicture*>(mpItemXY[1]->getPanePtr())->getTexture(0)->getTexInfo(), NULL);
    JUT_ASSERT(1842, mpItemXYPane[1] != NULL);
    mpItemXYPane[1]->setBasePosition(J2DBasePosition_4);
    mpItemXY[1]->getPanePtr()->appendChild(mpItemXYPane[1]);

    mpItemR = new CPaneMgr(mpScreen, MULTI_CHAR('r_itm_p'), 0, NULL);
    JUT_ASSERT(1847, mpItemR != NULL);
    mpItemR->getPanePtr()->setBasePosition(J2DBasePosition_4);

#if PLATFORM_WII
    mpItemXYPane[2] = new J2DPicture(
        MULTI_CHAR('j_itm_pp'),
        JGeometry::TBox2<f32>(0.0f, 0.0f, mpItemXY[2]->getInitSizeX(), mpItemXY[2]->getInitSizeY()),
        static_cast<J2DPicture*>(mpItemXY[2]->getPanePtr())->getTexture(0)->getTexInfo(), NULL);
    JUT_ASSERT(0, mpItemXY[2] != NULL);
    mpItemXYPane[2]->setBasePosition(J2DBasePosition_4);
    mpItemXY[2]->getPanePtr()->appendChild(mpItemXYPane[2]);
#else
    dMeter2Info_setMeterItemPanePtr(2, mpItemR);

    mpItemXYPane[2] = new J2DPicture(
        MULTI_CHAR('r_itm_pp'),
        JGeometry::TBox2<f32>(0.0f, 0.0f, mpItemR->getInitSizeX(), mpItemR->getInitSizeY()),
        static_cast<J2DPicture*>(mpItemR->getPanePtr())->getTexture(0)->getTexInfo(), NULL);
    JUT_ASSERT(1865, mpItemXYPane[2] != NULL);
    mpItemXYPane[2]->setBasePosition(J2DBasePosition_4);
    mpItemR->getPanePtr()->appendChild(mpItemXYPane[2]);
#endif

    mpLightB = new CPaneMgr(mpScreen, MULTI_CHAR('b_light'), 0, NULL);
    JUT_ASSERT(1871, mpLightB != NULL);
    mpLightB->getPanePtr()->setBasePosition(J2DBasePosition_4);
    field_0x72c = 1.0f;
#if PLATFORM_WII
    mpLightB->show();
#else
    mpLightB->hide();
#endif

    mpLightXY[0] = new CPaneMgr(mpScreen, MULTI_CHAR('x_light'), 0, NULL);
    JUT_ASSERT(1899, mpLightXY[0] != NULL);
    mpLightXY[0]->getPanePtr()->setBasePosition(J2DBasePosition_4);
    mpLightXY[0]->hide();

    mpLightXY[1] = new CPaneMgr(mpScreen, MULTI_CHAR('y_light'), 0, NULL);
    JUT_ASSERT(1904, mpLightXY[1] != NULL);
    mpLightXY[1]->getPanePtr()->setBasePosition(J2DBasePosition_4);
    mpLightXY[1]->hide();

#if PLATFORM_WII
    mpLightXY[2] = new CPaneMgr(mpScreen, MULTI_CHAR('j_light'), 0, NULL);
#else
    mpLightXY[2] = new CPaneMgr(mpScreen, MULTI_CHAR('r_light'), 0, NULL);
#endif
    JUT_ASSERT(1909, mpLightXY[2] != NULL);
    mpLightXY[2]->getPanePtr()->setBasePosition(J2DBasePosition_4);
    mpLightXY[2]->hide();

#if PLATFORM_WII
    mpLightXY[3] = NULL;
    mpScreen->search(MULTI_CHAR('r_light'))->hide();
#endif

    mpBTextA = new CPaneMgr(mpScreen, MULTI_CHAR('b_text_a'), 0, NULL);
    JUT_ASSERT(1915, mpBTextA != NULL);

    mpBTextB = new CPaneMgr(mpScreen, MULTI_CHAR('b_text_b'), 0, NULL);
    JUT_ASSERT(1924, mpBTextB != NULL);

#if PLATFORM_WII
    mpXYTextN[0] = new CPaneMgr(mpWiiScreen, MULTI_CHAR('x_text_n'), 0, NULL);
    JUT_ASSERT(0, mpXYTextN[0] != NULL);

    mpXYTextN[1] = new CPaneMgr(mpWiiScreen, MULTI_CHAR('y_text_n'), 0, NULL);
    JUT_ASSERT(0, mpXYTextN[1] != NULL);

    mpJTextN = new CPaneMgr(mpWiiScreen, MULTI_CHAR('j_text_n'), 0, NULL);
    JUT_ASSERT(0, mpJTextN != NULL);

    mpFATextN = new CPaneMgr(mpWiiScreen, MULTI_CHAR('fa_tex_n'), 0, NULL);
    JUT_ASSERT(0, mpFaTextN != NULL);

    mpWiiScreen->search(MULTI_CHAR('a_text_n'))->hide();

    mpFA2TextN = new CPaneMgr(mpWiiScreen, MULTI_CHAR('fa2textn'), 0, NULL);
    JUT_ASSERT(0, mpFA2TextN != NULL);

    mpWiiScreen->search(MULTI_CHAR('a2_tex_n'))->hide();

    mpFBTextN = new CPaneMgr(mpWiiScreen, MULTI_CHAR('fb_textn'), 0, NULL);
    JUT_ASSERT(0, mpFBTextN != NULL);

    mpWiiScreen->search(MULTI_CHAR('b_text_n'))->hide();

    mpTextXY[2] = new CPaneMgr(mpWiiScreen, MULTI_CHAR('fz_textn'), 0, NULL);
    JUT_ASSERT(0, mpTextXY[2] != NULL);

    mpWiiScreen->search(MULTI_CHAR('z_text_n'))->hide();

    mpTextXY[0] = new CPaneMgr(mpWiiScreen, MULTI_CHAR('fx_textn'), 0, NULL);
    JUT_ASSERT(0, mpTextXY[0] != NULL);

    mpWiiScreen->search(MULTI_CHAR('x_text_n'))->hide();

    mpTextXY[1] = new CPaneMgr(mpWiiScreen, MULTI_CHAR('fy_textn'), 0, NULL);
    JUT_ASSERT(0, mpTextXY[1] != NULL);

    mpWiiScreen->search(MULTI_CHAR('y_text_n'))->hide();
    mpItemT1N = new CPaneMgr(mpScreen, MULTI_CHAR('item_t1n'), 2, NULL);
    JUT_ASSERT(0, mpItemT1N != NULL);
    mpItemT1N->hide();

    mpFJTextN = new CPaneMgr(mpWiiScreen, MULTI_CHAR('fj_textn'), 2, NULL);
    JUT_ASSERT(0, mpFJTextN != NULL);

    mpWiiScreen->search(MULTI_CHAR('j_text_n'))->hide();
#else
    mpBTextXY[0] = new CPaneMgr(mpScreen, MULTI_CHAR('b_text_x'), 0, NULL);
    JUT_ASSERT(1946, mpBTextXY[0] != NULL);

    mpBTextXY[1] = new CPaneMgr(mpScreen, MULTI_CHAR('b_text_y'), 0, NULL);
    JUT_ASSERT(1949, mpBTextXY[1] != NULL);

    mpBTextXY[2] = NULL;

    mpTextA = new CPaneMgr(mpScreen, MULTI_CHAR('a_text_n'), 0, NULL);
    JUT_ASSERT(1965, mpTextA != NULL);

    mpTextB = new CPaneMgr(mpScreen, MULTI_CHAR('b_text_n'), 0, NULL);
    JUT_ASSERT(1989, mpTextB != NULL);

    mpTextXY[2] = new CPaneMgr(mpScreen, MULTI_CHAR('z_text_n'), 0, NULL);
    JUT_ASSERT(2002, mpTextXY[2] != NULL);

    mpTextXY[0] = new CPaneMgr(mpScreen, MULTI_CHAR('x_text_n'), 0, NULL);
    JUT_ASSERT(2015, mpTextXY[0] != NULL);

    mpTextXY[1] = new CPaneMgr(mpScreen, MULTI_CHAR('y_text_n'), 0, NULL);
    JUT_ASSERT(2028, mpTextXY[1] != NULL);
#endif

    mpTextI = new CPaneMgr(mpScreen, MULTI_CHAR('i_text_n'), 2, NULL);
    JUT_ASSERT(2045, mpTextI != NULL);

    mpTextM = new CPaneMgr(mpScreen, MULTI_CHAR('m_text_n'), 2, NULL);
    JUT_ASSERT(2048, mpTextM != NULL);

    static u64 const juji_i_tag[] = {
        MULTI_CHAR('ju_ring4'), MULTI_CHAR('yaji_00'), MULTI_CHAR('yaji_01'),
#if PLATFORM_GCN
        MULTI_CHAR('ju_ring2'), MULTI_CHAR('ju_ring4'),
#endif
    };
    static u64 const juji_m_tag[] = {
        MULTI_CHAR('ju_ring3'), MULTI_CHAR('yaji_02'), MULTI_CHAR('yaji_03'),
#if PLATFORM_GCN
        MULTI_CHAR('ju_ring3'), 0
#endif
    };

    for (int i = 0; i < ARRAY_SIZE(mpJujiI); i++) {
#if PLATFORM_GCN
        if (juji_i_tag[i] != 0)
#endif
        {
            mpJujiI[i] = new CPaneMgr(mpScreen, juji_i_tag[i], 0, NULL);
            JUT_ASSERT(2055, mpJujiI[i] != NULL);
        }
#if PLATFORM_GCN
        else {
            mpJujiI[i] = NULL;
        }
#endif

#if PLATFORM_GCN
        if (juji_m_tag[i] != 0)
#endif
        {
            mpJujiM[i] = new CPaneMgr(mpScreen, juji_m_tag[i], 0, NULL);
            JUT_ASSERT(2058, mpJujiM[i] != NULL);
        }
#if PLATFORM_GCN
        else {
            mpJujiM[i] = NULL;
        }
#endif
    }

    mpTextXY[0]->hide();
    mpTextXY[1]->hide();

    mpButtonParent = new CPaneMgr(mpScreen, MULTI_CHAR('cont_n'), 2, NULL);
#if PLATFORM_WII
    field_0x364_wii = new CPaneMgr(mpWiiScreen, MULTI_CHAR('cont_n'), 2, NULL);
#endif
    JUT_ASSERT(2065, mpButtonParent != NULL);

    mpButtonA = new CPaneMgr(mpScreen, MULTI_CHAR('abtn_n'), 2, NULL);
    JUT_ASSERT(2076, mpButtonA != NULL);

    mpButtonB = new CPaneMgr(mpScreen, MULTI_CHAR('bbtn_n'), 2, NULL);
    JUT_ASSERT(2079, mpButtonB != NULL);

    field_0x730 = 1.0f;

#if PLATFORM_WII
    field_0x41c_wii = new CPaneMgr(mpWiiScreen, MULTI_CHAR('abtn_n'), 2, NULL);
    JUT_ASSERT(0, field_0x41c_wii != NULL);

    field_0x420_wii = new CPaneMgr(mpWiiScreen, MULTI_CHAR('bbtn_n'), 2, NULL);
    JUT_ASSERT(0, field_0x420_wii != NULL);
#endif

    mpButtonMidona = new CPaneMgr(mpScreen, MULTI_CHAR('midona_n'), 2, NULL);
    JUT_ASSERT(2091, mpButtonMidona != NULL);
    mButtonZAlpha = 0.0f;
    field_0x724 = 0.0f;
    field_0x738 = 0.0f;
    field_0x740 = 0;

#if PLATFORM_WII
    ((J2DPicture*)mpScreen->search(MULTI_CHAR('midona')))->setMirror(J2DMirror_X);
#endif

    mpButtonXY[0] = new CPaneMgr(mpScreen, MULTI_CHAR('xbtn_n'), 2, NULL);
    JUT_ASSERT(2102, mpButtonXY[0] != NULL);

    mpButtonXY[1] = new CPaneMgr(mpScreen, MULTI_CHAR('ybtn_n'), 2, NULL);
    JUT_ASSERT(2105, mpButtonXY[1] != NULL);

#if PLATFORM_WII
    mpButtonXY[2] = new CPaneMgr(mpScreen, MULTI_CHAR('jbtn_n'), 2, NULL);
    JUT_ASSERT(0, mpButtonXY[2] != NULL);

    field_0x418_wii = new CPaneMgr(mpWiiScreen, MULTI_CHAR('jbtn_n'), 2, NULL);
    JUT_ASSERT(0, field_0x418_wii != NULL);

    mpUzu = NULL;
#else
    mpButtonXY[2] = new CPaneMgr(mpScreen, MULTI_CHAR('zbtn_n'), 2, NULL);
    JUT_ASSERT(2116, mpButtonXY[2] != NULL);

    mpUzu = new CPaneMgrAlpha(mpScreen, MULTI_CHAR('uzu_n'), 2, NULL);
    JUT_ASSERT(2118, mpUzu != NULL);
#endif

    ResTIMG* timg = (ResTIMG*)dComIfGp_getMain2DArchive()->getResource(
        'TIMG', dMeter2Info_getNumberTextureName(0));
    for (int i = 0; i < ARRAY_SIZE(mpItemNumTex); i++) {
        for (int j = 0; j < ARRAY_SIZE(mpItemNumTex[0]); j++) {
            mpItemNumTex[i][j] = new J2DPicture(timg);
            JUT_ASSERT(2125, mpItemNumTex[i][j] != NULL);
        }
    }

#if PLATFORM_WII
    static const u64 tag_tri[] = {
        MULTI_CHAR('t_r_n'), MULTI_CHAR('t_l_n'), MULTI_CHAR('t_un_n'), MULTI_CHAR('t_up_n')
    };

    for (int i = 0; i < ARRAY_SIZE(field_0x134_wii); i++) {
        field_0x134_wii[i] = new CPaneMgr(mpScreen, tag_tri[i], 2, NULL);
        JUT_ASSERT(0, field_0x134_wii[i] != NULL);
        field_0x798_wii[i] = 0.0f;
    }

    field_0x808_wii = 0;
#endif

#if PLATFORM_WII
    changeTextureItemB(dItemNo_BOW_e);
#else
    mButtonBItem = dItemNo_SWORD_e;
    changeTextureItemB(mButtonBItem);
#endif

#if PLATFORM_WII
    static const u64 move_itm_tag[] = {MULTI_CHAR('moveitm0'), MULTI_CHAR('moveitm1')};

    for (int i = 0; i < ARRAY_SIZE(field_0x524); i++) {
        for (int j = 0; j < ARRAY_SIZE(field_0x524[0]); j++) {
            field_0x524[i][j] = new J2DPicture(
                move_itm_tag[i],
                JGeometry::TBox2<f32>(0.0f, 0.0f, mpItemB->getInitSizeX(), mpItemB->getInitSizeY()),
                static_cast<J2DPicture*>(mpItemB->getPanePtr())->getTexture(0)->getTexInfo(), NULL);
            JUT_ASSERT(0, field_0x524[i][j] != NULL);
            field_0x524[i][j]->setBasePosition(J2DBasePosition_4);
        }
    }
#else
    for (int i = 0; i < ARRAY_SIZE(field_0x524); i++) {
        for (int j = 0; j < ARRAY_SIZE(field_0x524[0]); j++) {
            field_0x524[i][j] = NULL;
        }
    }
#endif

#if PLATFORM_WII
    field_0x773[3] = 0;
    field_0x777 = 0;
#else
    for (int i = 0; i < ARRAY_SIZE(field_0x9c); i++) {
        field_0x9c[i] = NULL;
    }
#endif

    field_0x55c = field_0x560 = 0.0f;
    field_0x564 = field_0x568 = 0.0f;
    field_0x56c = 0.0f;
    field_0x570 = field_0x574 = 0.0f;
    field_0x578 = field_0x57c = 0.0f;
    field_0x580 = 0.0f;
    field_0x754 = 0;

#if PLATFORM_WII
    ResTIMG* timg2 = getNumberTexture(0);
    for (int i = 0; i < 3; i++) {
        field_0x9c[i] = new J2DPicture(timg2);
    }
#endif

    drawButtonXY(0, dComIfGp_getSelectItem(0), dComIfGp_getXStatus(), true, false);
#if PLATFORM_WII
    drawButtonXY(1, dComIfGp_getSelectItem(1), dComIfGp_getYStatus(), true, false);
    drawButtonXY(2, dComIfGp_getSelectItem(2), 0, true, false);
#else
    drawButtonXY(1, dComIfGp_getSelectItem(1), dComIfGp_getYStatus(), true, false);
#endif
    drawButtonA(dComIfGp_getDoStatus(), 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, false, false);
    drawButtonB(dComIfGp_getAStatus(), true, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, false);
    drawButtonR(dComIfGs_getCollectSmell(), dComIfGp_getRStatus(), true, false);
    drawButtonZ(dComIfGp_getZStatus());
    drawButton3D(dComIfGp_get3DStatus());
    drawButtonC(dComIfGp_getCStickStatus(), true);
    drawButtonS(dComIfGp_getSButtonStatus());

    setAlphaButtonChange(true);
    mpButtonParent->setAlphaRate(0.0f);
#if PLATFORM_WII
    field_0x364_wii->setAlphaRate(0.0f);
#endif
}

void dMeter2Draw_c::initButtonCross() {
    mpButtonCrossParent = new CPaneMgr(mpScreen, MULTI_CHAR('juji_n'), 2, NULL);
    JUT_ASSERT(2225, mpButtonCrossParent != NULL);

    static_cast<J2DTextBox*>(mpScreen->search(MULTI_CHAR('cont_ju0')))->setFont(mDoExt_getMesgFont());
    static_cast<J2DTextBox*>(mpScreen->search(MULTI_CHAR('cont_ju1')))->setFont(mDoExt_getMesgFont());
    static_cast<J2DTextBox*>(mpScreen->search(MULTI_CHAR('cont_ju2')))->setFont(mDoExt_getMesgFont());
    static_cast<J2DTextBox*>(mpScreen->search(MULTI_CHAR('cont_ju3')))->setFont(mDoExt_getMesgFont());
    static_cast<J2DTextBox*>(mpScreen->search(MULTI_CHAR('cont_ju4')))->setFont(mDoExt_getMesgFont());

    // Missing crclr instructions on Wii versions - it seems possible this is a difference in
    // behavior of that specific compiler verison as they're generated correctly with both GC/2.7
    // and Wii/1.0
    static_cast<J2DTextBox&>(*mpScreen->search(MULTI_CHAR('cont_ju0'))).setString(0x40, "");
    static_cast<J2DTextBox&>(*mpScreen->search(MULTI_CHAR('cont_ju1'))).setString(0x40, "");
    static_cast<J2DTextBox&>(*mpScreen->search(MULTI_CHAR('cont_ju2'))).setString(0x40, "");
    static_cast<J2DTextBox&>(*mpScreen->search(MULTI_CHAR('cont_ju3'))).setString(0x40, "");
    static_cast<J2DTextBox&>(*mpScreen->search(MULTI_CHAR('cont_ju4'))).setString(0x40, "");

    dMeter2Info_getString(
    0x61, static_cast<J2DTextBox*>(mpScreen->search(MULTI_CHAR('cont_ju0')))->getStringPtr(), NULL);
    dMeter2Info_getString(
        0x61, static_cast<J2DTextBox*>(mpScreen->search(MULTI_CHAR('cont_ju1')))->getStringPtr(), NULL);
    dMeter2Info_getString(
        0x61, static_cast<J2DTextBox*>(mpScreen->search(MULTI_CHAR('cont_ju2')))->getStringPtr(), NULL);
    dMeter2Info_getString(
        0x61, static_cast<J2DTextBox*>(mpScreen->search(MULTI_CHAR('cont_ju3')))->getStringPtr(), NULL);
    dMeter2Info_getString(
        0x61, static_cast<J2DTextBox*>(mpScreen->search(MULTI_CHAR('cont_ju4')))->getStringPtr(), NULL);

    static_cast<J2DTextBox*>(mpScreen->search(MULTI_CHAR('cont_ju5')))->setFont(mDoExt_getMesgFont());
    static_cast<J2DTextBox*>(mpScreen->search(MULTI_CHAR('cont_ju6')))->setFont(mDoExt_getMesgFont());
    static_cast<J2DTextBox*>(mpScreen->search(MULTI_CHAR('cont_ju7')))->setFont(mDoExt_getMesgFont());
    static_cast<J2DTextBox*>(mpScreen->search(MULTI_CHAR('cont_ju8')))->setFont(mDoExt_getMesgFont());
    static_cast<J2DTextBox*>(mpScreen->search(MULTI_CHAR('cont_ju9')))->setFont(mDoExt_getMesgFont());

    static_cast<J2DTextBox*>(mpScreen->search(MULTI_CHAR('cont_ju5')))->setString(0x40, "");
    static_cast<J2DTextBox*>(mpScreen->search(MULTI_CHAR('cont_ju6')))->setString(0x40, "");
    static_cast<J2DTextBox*>(mpScreen->search(MULTI_CHAR('cont_ju7')))->setString(0x40, "");
    static_cast<J2DTextBox*>(mpScreen->search(MULTI_CHAR('cont_ju8')))->setString(0x40, "");
    static_cast<J2DTextBox*>(mpScreen->search(MULTI_CHAR('cont_ju9')))->setString(0x40, "");

    dMeter2Info_getString(
        0x62, static_cast<J2DTextBox*>(mpScreen->search(MULTI_CHAR('cont_ju5')))->getStringPtr(), NULL);
    dMeter2Info_getString(
        0x62, static_cast<J2DTextBox*>(mpScreen->search(MULTI_CHAR('cont_ju6')))->getStringPtr(), NULL);
    dMeter2Info_getString(
        0x62, static_cast<J2DTextBox*>(mpScreen->search(MULTI_CHAR('cont_ju7')))->getStringPtr(), NULL);
    dMeter2Info_getString(
        0x62, static_cast<J2DTextBox*>(mpScreen->search(MULTI_CHAR('cont_ju8')))->getStringPtr(), NULL);
    dMeter2Info_getString(
        0x62, static_cast<J2DTextBox*>(mpScreen->search(MULTI_CHAR('cont_ju9')))->getStringPtr(), NULL);

    mpButtonCrossParent->setAlphaRate(0.0f);
    drawButtonCross(g_drawHIO.mButtonCrossOFFPosX, g_drawHIO.mButtonCrossOFFPosY);
}

#if PLATFORM_WII
void dMeter2Draw_c::initTouchSubMenu() {
    field_0x772 = 0;
    field_0x700 = 0.0f;
    for (int i = 0; i < 5; i++) {
        field_0x7fe_wii[i] = -1;
        field_0x704[i] = g_drawHIO.mTouchAreaUnselectScale[i];
    }
    field_0x71c = 0.0f;
    field_0x3e8_wii[0] = new CPaneMgr(mpScreen, MULTI_CHAR('map_n'), 2, NULL);
    field_0x3e8_wii[1] = new CPaneMgr(mpScreen, MULTI_CHAR('are_m_n'), 2, NULL);
    mpITextN = new CPaneMgr(mpScreen, MULTI_CHAR('j_scal_n'), 2, NULL);
    field_0x36c = new CPaneMgr(mpWiiScreen, MULTI_CHAR('j_scal_n'), 2, NULL);
    mpTextA = NULL;
    mpTextB = NULL;
    field_0x370[0] = new CPaneMgr(mpScreen, MULTI_CHAR('map_t_n'), 0, NULL);
    field_0x370[2] = new CPaneMgr(mpScreen, MULTI_CHAR('item_t_n'), 0, NULL);
    field_0x370[4] = NULL;
    field_0x370[3] = NULL;
    field_0x370[1] = NULL;
    field_0x530_wii[0] = new CPaneMgrAlpha(mpScreen, MULTI_CHAR('map_bp2'), 0, NULL);
    field_0x530_wii[1] = new CPaneMgrAlpha(mpScreen, MULTI_CHAR('a_btn1'), 0, NULL);
    field_0x530_wii[2] = new CPaneMgrAlpha(mpScreen, MULTI_CHAR('juji'), 0, NULL);
    field_0x530_wii[3] = NULL;
    field_0x530_wii[4] = NULL;
    field_0x544_wii[0] = NULL;
    field_0x544_wii[1] = new CPaneMgrAlpha(mpScreen, MULTI_CHAR('arr'), 0, NULL);
    field_0x544_wii[2] = new CPaneMgrAlpha(mpScreen, MULTI_CHAR('b_btn'), 0, NULL);
    field_0x544_wii[3] = NULL;
    field_0x544_wii[4] = NULL;
    static_cast<J2DPicture*>(field_0x544_wii[2]->getPanePtr())->setBlackWhite((u32)g_drawHIO.mTouchAreaSelectBlack[0], (u32)g_drawHIO.mTouchAreaSelectBlack[1]);

    for (int i = 0; i < ARRAY_SIZE(field_0x530_wii); i++) {
        if (field_0x530_wii[i] == NULL) {
            continue;
        }

        JUtility::TColor black;
        JUtility::TColor white;
        black.set(g_drawHIO.mTouchAreaSelectBlack[0]);
        white.set(g_drawHIO.mTouchAreaSelectWhite[0]);

        if (i == 0) {
            black.a = 0;
        }
        static_cast<J2DPicture*>(field_0x530_wii[i]->getPanePtr())
            ->setBlackWhite((JUtility::TColor)black, (JUtility::TColor)white);
        if (field_0x544_wii[i] != NULL) {
            static_cast<J2DPicture*>(field_0x544_wii[i]->getPanePtr())
                ->setBlackWhite((JUtility::TColor)black, (JUtility::TColor)white);
        }
    }

    f32 height = mDoGph_gInf_c::m_heightF;
    f32 minY = mDoGph_gInf_c::m_minYF;
    field_0x700 = (15.0f + (minY + height)) - g_drawHIO.mTouchAreaPosY[0];
    static_cast<J2DTextBox*>(mpScreen->search(MULTI_CHAR('item_ts1')))->setFont(mDoExt_getMesgFont());
    static_cast<J2DTextBox*>(mpScreen->search(MULTI_CHAR('item_t1')))->setFont(mDoExt_getMesgFont());
    static_cast<J2DTextBox*>(mpScreen->search(MULTI_CHAR('item_ts')))->setFont(mDoExt_getMesgFont());
    static_cast<J2DTextBox*>(mpScreen->search(MULTI_CHAR('item_t')))->setFont(mDoExt_getMesgFont());
    static_cast<J2DTextBox*>(mpScreen->search(MULTI_CHAR('map_ts')))->setFont(mDoExt_getMesgFont());
    static_cast<J2DTextBox*>(mpScreen->search(MULTI_CHAR('map_t')))->setFont(mDoExt_getMesgFont());

    static_cast<J2DTextBox*>(mpScreen->search(MULTI_CHAR('item_ts1')))->setString(0x40, "");
    static_cast<J2DTextBox*>(mpScreen->search(MULTI_CHAR('item_t1')))->setString(0x40, "");
    static_cast<J2DTextBox*>(mpScreen->search(MULTI_CHAR('item_ts')))->setString(0x40, "");
    static_cast<J2DTextBox*>(mpScreen->search(MULTI_CHAR('item_t')))->setString(0x40, "");
    static_cast<J2DTextBox*>(mpScreen->search(MULTI_CHAR('map_ts')))->setString(0x40, "");
    static_cast<J2DTextBox*>(mpScreen->search(MULTI_CHAR('map_t')))->setString(0x40, "");

    static const u64 map_num_txt[2] = {MULTI_CHAR('map_ts1'), MULTI_CHAR('map_ts2')};

    for (int i = 0; i < 2; i++) {
        J2DTextBox* temp_r28 = static_cast<J2DTextBox*>(mpScreen->search(map_num_txt[i]));
        temp_r28->setFont(mDoExt_getMesgFont());
        temp_r28->setString(0x40, "");
        dMeter2Info_getStringKanji(0x4E3U, temp_r28->getStringPtr(), NULL);
    }

    for (int i = 0; i < 5; i++) {
        CPaneMgrAlpha* temp_r3_17 = field_0x3e8_wii[i];
        if (temp_r3_17 != NULL) {
            temp_r3_17->setAlphaRate(0.0f);
        }
    }
    field_0x36c->setAlphaRate(0.0f);

    drawTouchSubMenu(0, 0.0f, 0.0f, 0x76EU);
    drawTouchSubMenu(1, 0.0f, 0.0f, 0x76FU);
    drawTouchSubMenu(2, 0.0f, 0.0f, 0x76DU);
    drawTouchSubMenu(3, 0.0f, 0.0f, 0x76FU);
    scaleTouchSubMenu(0, 1.0f);
    scaleTouchSubMenu(1, 1.0f);
    scaleTouchSubMenu(2, 1.0f);

    f32 temp_f1_1 = 1.0f;
    f32 temp_f1_2 = temp_f1_1 * field_0x704[3];
    field_0x718 = temp_f1_2;
    f32 temp_f1_3 = g_drawHIO.mRupeeKeyScale * temp_f1_2;
    mpRupeeKeyParent->scale(temp_f1_3, temp_f1_3);
    scaleTouchSubMenu(4, 1.0f);
}
#endif

void dMeter2Draw_c::playPikariBckAnimation(f32 i_frame) {
    mpPikariParent->getPanePtr()->setAnimation(mPikariBck);
    mPikariBck->setFrame(i_frame);
    mpPikariParent->getPanePtr()->animationTransform();
    mpPikariParent->getPanePtr()->setAnimation((J2DAnmTransformKey*)NULL);
}

void dMeter2Draw_c::setPikariBpkAnimation(J2DAnmColor* i_bpk) {
    mpPikariScreen->search(MULTI_CHAR('pika00'))->setAnimation(i_bpk);
    mpPikariScreen->search(MULTI_CHAR('moya00'))->setAnimation(i_bpk);
    mpPikariScreen->search(MULTI_CHAR('moyabs'))->setAnimation(i_bpk);
}

void dMeter2Draw_c::playPikariBpkAnimation(f32 i_frame) {
    setPikariBpkAnimation(mPikariBpk);
    mPikariBpk->setFrame(i_frame);
    mpPikariScreen->animation();
    setPikariBpkAnimation(NULL);
}

void dMeter2Draw_c::playOxygenBpkAnimation(J2DAnmColor* i_bpk) {
    if (i_bpk == NULL || mpMagicMeter->getAlpha() == 0) {
        mpKanteraScreen->search(MULTI_CHAR('mm_00'))->setAnimation((J2DAnmColor*)NULL);
    } else {
        field_0x558++;
        if (field_0x558 >= i_bpk->getFrameMax()) {
            field_0x558 -= i_bpk->getFrameMax();
        }

        mpKanteraScreen->search(MULTI_CHAR('mm_00'))->setAnimation(i_bpk);
        i_bpk->setFrame(field_0x558);
        mpKanteraScreen->animation();

        mpKanteraScreen->search(MULTI_CHAR('mm_00'))->setAnimation((J2DAnmColor*)NULL);
    }
}

void dMeter2Draw_c::drawPikari(CPaneMgr* i_pane, f32* i_framep, f32 i_scale,
                               JUtility::TColor i_moyaBlack, JUtility::TColor i_moyaWhite,
                               JUtility::TColor i_moyabsBlack, JUtility::TColor i_moyabsWhite,
                               f32 param_7, u8 param_8) {
    Vec pos = i_pane->getGlobalVtxCenter(false, 0);
    drawPikari(pos.x, pos.y, i_framep, i_scale, i_moyaBlack, i_moyaWhite, i_moyabsBlack,
               i_moyabsWhite, param_7, param_8);
}

void dMeter2Draw_c::drawPikari(f32 i_posX, f32 i_posY, f32* i_framep, f32 i_scale,
                               JUtility::TColor i_moyaBlack, JUtility::TColor i_moyaWhite,
                               JUtility::TColor i_moyabsBlack, JUtility::TColor i_moyabsWhite,
                               f32 param_8, u8 param_9) {
#if WIDESCREEN_SUPPORT
    dMeter2Info_getWide2DPosX(&i_posX);
#endif

    f32 var_f31 = 28.0f;

    if (param_9 == 4) {
        var_f31 = 24.0f;
        if (mpPikariScreen->search(MULTI_CHAR('moya00'))->isVisible()) {
            mpPikariScreen->search(MULTI_CHAR('moya00'))->hide();
        }

        if (mpPikariScreen->search(MULTI_CHAR('moyabs'))->isVisible()) {
            mpPikariScreen->search(MULTI_CHAR('moyabs'))->hide();
        }
    } else {
        if (!mpPikariScreen->search(MULTI_CHAR('moya00'))->isVisible()) {
            mpPikariScreen->search(MULTI_CHAR('moya00'))->show();
        }

        if (!mpPikariScreen->search(MULTI_CHAR('moyabs'))->isVisible()) {
            mpPikariScreen->search(MULTI_CHAR('moyabs'))->show();
        }
    }

    if (param_9 != 3 && param_9 != 4 && param_9 != 5 && dMsgObject_isTalkNowCheck()) {
        *i_framep = 0.0f;
    } else {
        *i_framep += param_8;
        if (*i_framep > var_f31) {
            if (param_9 == 1 || param_9 == 2 || param_9 == 3) {
                *i_framep = 18.0f;
            } else {
                *i_framep = 0.0f;
            }
        }

        if (*i_framep == 18.0f && param_9 == 1) {
            mDoAud_seStart(Z2SE_NAVI_BLINK, NULL, 0, 0);
        } else if (*i_framep == 18.0f && param_9 == 2) {
            mDoAud_seStart(Z2SE_SY_ITEM_COMBINE_ICON, NULL, 0, 0);
        }

        playPikariBckAnimation(*i_framep);
        playPikariBpkAnimation(*i_framep);

#if PLATFORM_WII
        mpPikariParent->getPanePtr()->translate(i_posX, i_posY);
#else
        mpPikariParent->getPanePtr()->translate(i_posX, i_posY);
#endif
        mpPikariParent->scale(i_scale * mpPikariParent->getScaleX(),
                              i_scale * mpPikariParent->getScaleY());

        if (mpPikariScreen->search(MULTI_CHAR('moya00'))->isVisible()) {
            static_cast<J2DPicture*>(mpPikariScreen->search(MULTI_CHAR('moya00')))
                ->setBlackWhite(i_moyaBlack, i_moyaWhite);
        }

        if (mpPikariScreen->search(MULTI_CHAR('moyabs'))->isVisible()) {
            static_cast<J2DPicture*>(mpPikariScreen->search(MULTI_CHAR('moyabs')))
                ->setBlackWhite(i_moyabsBlack, i_moyabsWhite);
        }

        if (param_9 != 4) {
            static_cast<J2DPicture*>(mpPikariScreen->search(MULTI_CHAR('pika00')))
                ->setBlackWhite(mPikariBlack, mPikariBlack);
        } else {
            static_cast<J2DPicture*>(mpPikariScreen->search(MULTI_CHAR('pika00')))
                ->setBlackWhite(g_MsgObject_HIO_c.mPikariPikaR1, g_MsgObject_HIO_c.mPikariPikaR0);
        }

        mpPikariScreen->draw(0.0f, 0.0f, dComIfGp_getCurrentGrafPort());
    }
}

void dMeter2Draw_c::drawPikariHakusha(f32 i_posX, f32 i_posY, f32 i_frame, f32 i_scale,
                                      JUtility::TColor i_moyaBlack, JUtility::TColor i_moyaWhite,
                                      JUtility::TColor i_moyabsBlack,
                                      JUtility::TColor i_moyabsWhite) {
#if WIDESCREEN_SUPPORT
    dMeter2Info_getWide2DPosX(&i_posX);
#endif

    playPikariBckAnimation(i_frame);
    playPikariBpkAnimation(i_frame);

    mpPikariParent->getPanePtr()->translate(i_posX, i_posY);
    mpPikariParent->scale(i_scale * mpPikariParent->getScaleX(),
                          i_scale * mpPikariParent->getScaleY());

    static_cast<J2DPicture*>(mpPikariScreen->search(MULTI_CHAR('moya00')))
        ->setBlackWhite(i_moyaBlack, i_moyaWhite);
    static_cast<J2DPicture*>(mpPikariScreen->search(MULTI_CHAR('moyabs')))
        ->setBlackWhite(i_moyabsBlack, i_moyabsWhite);

    mpPikariScreen->draw(0.0f, 0.0f, dComIfGp_getCurrentGrafPort());
}

void dMeter2Draw_c::changeTextureLife(int i_no, bool param_1, u8 i_quarterNum) {
    if (param_1) {
        if (i_quarterNum == 0xFF) {
            mpLifeTexture[i_no][0]->show();
            mpLifeTexture[i_no][1]->show();
        } else {
            mpLifeTexture[i_no][0]->hide();
            mpLifeTexture[i_no][1]->hide();

            static u64 const tag_bigh[] = {MULTI_CHAR('bigh_00'), MULTI_CHAR('bigh_01'), MULTI_CHAR('bigh_02'), MULTI_CHAR('bigh_03')};

            for (int i = 0; i < 4; i++) {
                if (i == i_quarterNum) {
                    mpScreen->search(tag_bigh[i])->show();
                } else {
                    mpScreen->search(tag_bigh[i])->hide();
                }
            }

            static u64 const tag_du[] = {MULTI_CHAR('heart_ln'), MULTI_CHAR('heart_un')};

            mpBigHeart->translate(mpLifeParts[i_no]->getTranslateX() +
                                      (mpScreen->search(tag_du[i_no / 10])->getTranslateX() -
                                       mpScreen->search(tag_du[0])->getTranslateX()),
                                  mpScreen->search(tag_du[i_no / 10])->getTranslateY() +
                                      mpLifeParts[i_no]->getTranslateY());
        }
    } else {
        mpLifeTexture[i_no][0]->hide();
        mpLifeTexture[i_no][1]->hide();
    }

    // unused
    static const char* tex_name[] = {"tt_heart_00.bti", "tt_heart_01.bti", "tt_heart_02.bti",
                                     "tt_heart_03.bti"};
}

void dMeter2Draw_c::drawLife(s16 i_maxLife, s16 i_life, f32 i_posX, f32 i_posY) {
    s16 max_heart_cnt = i_maxLife / 5;
    s16 heart_cnt = i_life / 4;
    s16 heart_quarters = i_life % 4;
    if (i_life == max_heart_cnt * 4) {
        heart_quarters = 0;
    }

    if (heart_quarters == 0) {
        heart_cnt--;
    }

    if (i_life == 0) {
        mpBigHeart->hide();
    } else {
        mpBigHeart->show();
    }

    for (int i = 0; i < 20; i++) {
        if (i < max_heart_cnt) {
            mpLifeParts[i]->show();

            if (i == heart_cnt) {
                changeTextureLife(i, true, heart_quarters);
            } else if (i < heart_cnt) {
                changeTextureLife(i, true, 0xFF);
            } else {
                changeTextureLife(i, false, 0xFF);
            }
        } else {
            mpLifeParts[i]->hide();
            changeTextureLife(i, false, 0xFF);
        }
    }

    mpLifeParent->scale(g_drawHIO.mLifeParentScale, g_drawHIO.mLifeParentScale);

    for (int i = 0; i < 20; i++) {
        mpHeartMark[i]->scale(g_drawHIO.mHeartMarkScale, g_drawHIO.mHeartMarkScale);
    }

    for (int i = 0; i < 20; i++) {
        mpBigHeart->scale(g_drawHIO.mBigHeartScale, g_drawHIO.mBigHeartScale);
    }

    mpLifeParent->paneTrans(i_posX, i_posY);
}

void dMeter2Draw_c::setAlphaLifeChange(bool param_0) {
    bool var_r31 = false;
    bool var_r30 = false;
    bool var_r29 = false;
    bool var_r28 = false;

    if (mLifeParentAlpha != mpLifeParent->getAlphaRate() || param_0) {
        mLifeParentAlpha = mpLifeParent->getAlphaRate();
        var_r31 = true;
    }

    if (mLifeParentHeartAlpha != g_drawHIO.mLifeParentHeartAlpha || param_0) {
        mLifeParentHeartAlpha = g_drawHIO.mLifeParentHeartAlpha;
        var_r30 = true;
    }

    if (mHeartAlpha != g_drawHIO.mHeartAlpha || param_0) {
        mHeartAlpha = g_drawHIO.mHeartAlpha;
        var_r30 = true;
    }

    if (mHeartBaseAlpha != g_drawHIO.mHeartBaseAlpha || param_0) {
        mHeartBaseAlpha = g_drawHIO.mHeartBaseAlpha;
        var_r29 = true;
    }

    if (mBigHeartAlpha != g_drawHIO.mBigHeartAlpha || param_0) {
        mBigHeartAlpha = g_drawHIO.mBigHeartAlpha;
        var_r28 = true;
    }

    if (var_r31 || var_r30 || param_0) {
        for (int i = 0; i < 20; i++) {
            mpHeartMark[i]->setAlphaRate((mHeartAlpha * mLifeParentHeartAlpha) * mLifeParentAlpha);
        }
    }

    if (var_r31 || var_r29 || param_0) {
        for (int i = 0; i < 20; i++) {
            mpHeartBase[i]->setAlphaRate(mHeartBaseAlpha * mLifeParentAlpha);
        }
    }

    if (var_r31 || var_r28 || param_0) {
        mpBigHeart->setAlphaRate(mBigHeartAlpha * mLifeParentAlpha);
    }
}

void dMeter2Draw_c::setAlphaLifeAnimeMin() {
    if (mpLifeParent->getAlphaRate() != 0.0f) {
        mpLifeParent->setAlphaRate(g_drawHIO.mParentAlpha);
        setAlphaAnimeMin(mpLifeParent, 5);
    }
}

void dMeter2Draw_c::setAlphaLifeAnimeMax() {
    if (mpLifeParent->getAlphaRate() != g_drawHIO.mParentAlpha) {
        mpLifeParent->setAlphaRate(g_drawHIO.mParentAlpha);
        setAlphaAnimeMax(mpLifeParent, 5);
    }
}

void dMeter2Draw_c::drawKanteraScreen(u8 i_meterType) {
    J2DGrafContext* graf_ctx = dComIfGp_getCurrentGrafPort();

    mpMagicParent->setAlphaRate(mMeterAlphaRate[i_meterType]);

    if (i_meterType == 0) {
        JUtility::TColor black = mpMagicMeter->getInitBlack();
        black.a = 255;

        mpMagicMeter->setBlackWhite(black, (JUtility::TColor)mpMagicMeter->getInitWhite());
        setAlphaMagicChange(true);
    } else if (i_meterType == 1) {
        mpMagicMeter->setBlackWhite((JUtility::TColor)JUtility::TColor(255, 255, 140, 255),
                                    (JUtility::TColor)JUtility::TColor(230, 170, 0, 255));
        setAlphaKanteraChange(true);
    } else if (i_meterType == 2) {
        f32 oxygen_percent = (f32)dComIfGp_getOxygen() / (f32)dComIfGp_getMaxOxygen();

        if (oxygen_percent <= 0.25f) {
            mpMagicMeter->setBlackWhite((JUtility::TColor)JUtility::TColor(255, 100, 100, 255),
                                        (JUtility::TColor)JUtility::TColor(255, 10, 10, 255));
            playOxygenBpkAnimation(mpOxygenBpk[0]);

            if (mMeterAlphaRate[i_meterType] > 0.0f) {
                Z2GetAudioMgr()->seStartLevel(Z2SE_SWIM_TIMER_BLINK_2, NULL, 0, 0, 1.0f, 1.0f,
                                              -1.0f, -1.0f, 0);
            }
        } else if (oxygen_percent <= 0.5f) {
            mpMagicMeter->setBlackWhite((JUtility::TColor)JUtility::TColor(200, 200, 255, 255),
                                        (JUtility::TColor)JUtility::TColor(80, 180, 255, 255));
            playOxygenBpkAnimation(mpOxygenBpk[1]);

            if (mMeterAlphaRate[i_meterType] > 0.0f) {
                Z2GetAudioMgr()->seStartLevel(Z2SE_SWIM_TIMER_BLINK_1, NULL, 0, 0, 1.0f, 1.0f,
                                              -1.0f, -1.0f, 0);
            }
        } else {
            mpMagicMeter->setBlackWhite((JUtility::TColor)JUtility::TColor(200, 200, 255, 255),
                                        (JUtility::TColor)JUtility::TColor(80, 180, 255, 255));
        }

        setAlphaOxygenChange(true);
    }

    mpMagicMeter->resize(field_0x584[i_meterType], field_0x590[i_meterType]);
    mpMagicFrameR->move(field_0x59c[i_meterType], field_0x5a8[i_meterType]);
    mpMagicBase->resize(field_0x5b4[i_meterType], field_0x5c0[i_meterType]);
    mpMagicParent->scale(field_0x5cc[i_meterType], field_0x5d8[i_meterType]);
    mpMagicParent->paneTrans(field_0x5e4[i_meterType], field_0x5f0[i_meterType]);
    mpKanteraScreen->draw(0.0f, 0.0f, graf_ctx);
}

void dMeter2Draw_c::drawMagic(s16 i_max, s16 i_magic, f32 i_posX, f32 i_posY) {
    f32 temp_f31;
    f32 temp_f30 = mpMagicFrameL->getInitPosX();
    temp_f31 = mpMagicFrameR->getInitPosX() - temp_f30;

    field_0x584[0] = i_magic * mpMagicMeter->getInitSizeX() / 32;
    field_0x590[0] = mpMagicMeter->getInitSizeY();

    field_0x59c[0] = (temp_f31 * (f32)i_max / 32) + mpMagicFrameL->getInitPosX();
    field_0x5a8[0] = mpMagicFrameL->getInitPosY();

    field_0x5b4[0] = (f32)i_max * mpMagicBase->getInitSizeX() / 32;
    field_0x5c0[0] = mpMagicBase->getInitSizeY();

    field_0x5cc[0] = g_drawHIO.mMagicMeterScale;
    field_0x5d8[0] = g_drawHIO.mMagicMeterScale;

    field_0x5e4[0] = i_posX;
    field_0x5f0[0] = i_posY;
}

void dMeter2Draw_c::setAlphaMagicChange(bool i_forceSet) {
    bool meter_parent_alpha_set = false;
    bool meter_alpha_set = false;
    bool meter_frame_alpha_set = false;

    if (field_0x7a4 != mpMagicParent->getAlphaRate() || i_forceSet) {
        field_0x7a4 = mpMagicParent->getAlphaRate();
        meter_parent_alpha_set = true;
    }

    if (mMagicMeterAlpha != g_drawHIO.mMagicMeterAlpha || i_forceSet) {
        mMagicMeterAlpha = g_drawHIO.mMagicMeterAlpha;
        meter_alpha_set = true;
    }

    if (mMagicMeterFrameAlpha != g_drawHIO.mMagicMeterFrameAlpha || i_forceSet) {
        mMagicMeterFrameAlpha = g_drawHIO.mMagicMeterFrameAlpha;
        meter_frame_alpha_set = true;
    }

    if (meter_parent_alpha_set || meter_alpha_set || i_forceSet) {
        mpMagicMeter->setAlphaRate(mMagicMeterAlpha * field_0x7a4);
    }

    if (meter_parent_alpha_set || meter_frame_alpha_set || i_forceSet) {
        mpMagicFrameL->setAlphaRate(mMagicMeterFrameAlpha * field_0x7a4);
        mpMagicFrameR->setAlphaRate(mMagicMeterFrameAlpha * field_0x7a4);
    }
}

// Fake function to fix float literal order
static f32 dummyLiteralOrder() {
    return 5.0f;
}

void dMeter2Draw_c::drawKantera(s32 i_max, s32 i_oil, f32 i_posX, f32 i_posY) {
    f32 var_f6 = mpMagicFrameR->getInitPosX() - mpMagicFrameL->getInitPosX();
    f32 var_f7 = 0.0f;
    f32 var_f4 = 0.0f;

    if (dComIfGs_getMaxOil() != 0) {
        var_f7 = (f32)i_oil / (f32)dComIfGs_getMaxOil();
        var_f4 = (f32)i_max / (f32)dComIfGs_getMaxOil();
    }

    field_0x584[1] = var_f7 * mpMagicMeter->getInitSizeX();
    field_0x590[1] = mpMagicMeter->getInitSizeY();
    field_0x59c[1] = (var_f6 * var_f4) + mpMagicFrameL->getInitPosX();
    field_0x5a8[1] = mpMagicFrameL->getInitPosY();
    field_0x5b4[1] = var_f4 * mpMagicBase->getInitSizeX();
    field_0x5c0[1] = mpMagicBase->getInitSizeY();
    field_0x5cc[1] = g_drawHIO.mLanternMeterScale;
    field_0x5d8[1] = g_drawHIO.mLanternMeterScale;
    field_0x5e4[1] = i_posX;
    field_0x5f0[1] = i_posY;
}

void dMeter2Draw_c::setAlphaKanteraChange(bool i_forceSet) {
    bool meter_parent_alpha_set = false;
    bool meter_alpha_set = false;
    bool meter_frame_alpha_set = false;

    if (field_0x7b0 != mpMagicParent->getAlphaRate() || i_forceSet) {
        field_0x7b0 = mpMagicParent->getAlphaRate();
        meter_parent_alpha_set = true;
    }

    if (mLanternMeterAlpha != g_drawHIO.mLanternMeterAlpha || i_forceSet) {
        mLanternMeterAlpha = g_drawHIO.mLanternMeterAlpha;
        meter_alpha_set = true;
    }

    if (mLanternMeterFrameAlpha != g_drawHIO.mLanternMeterFrameAlpha || i_forceSet) {
        mLanternMeterFrameAlpha = g_drawHIO.mLanternMeterFrameAlpha;
        meter_frame_alpha_set = true;
    }

    if (meter_parent_alpha_set || meter_alpha_set || i_forceSet) {
        mpMagicMeter->setAlphaRate(mLanternMeterAlpha * field_0x7b0);
    }

    if (meter_parent_alpha_set || meter_frame_alpha_set || i_forceSet) {
        mpMagicFrameL->setAlphaRate(mLanternMeterFrameAlpha * field_0x7b0);
        mpMagicFrameR->setAlphaRate(mLanternMeterFrameAlpha * field_0x7b0);
    }
}

void dMeter2Draw_c::setAlphaKanteraAnimeMin() {
    if (field_0x742[1] <= 0) {
        mMeterAlphaRate[1] = 0.0f;
    } else {
        field_0x742[1]--;
        if (field_0x742[1] < 0) {
            field_0x742[1] = 0;
        }

        mMeterAlphaRate[1] = (field_0x742[1] / 5.0f) * g_drawHIO.mParentAlpha;
    }
}

void dMeter2Draw_c::setAlphaKanteraAnimeMax() {
    if (field_0x742[1] >= 5) {
        mMeterAlphaRate[1] = g_drawHIO.mParentAlpha;
    } else {
        field_0x742[1]++;
        if (field_0x742[1] > 5) {
            field_0x742[1] = 5;
        }

        mMeterAlphaRate[1] = (field_0x742[1] / 5.0f) * g_drawHIO.mParentAlpha;
    }
}

void dMeter2Draw_c::drawOxygen(s32 i_max, s32 i_oxygen, f32 i_posX, f32 i_posY) {
    f32 var_f6 = mpMagicFrameR->getInitPosX() - mpMagicFrameL->getInitPosX();
    f32 var_f7 = 0.0f;
    f32 var_f4 = 0.0f;

    if (dComIfGp_getMaxOxygen() > 0) {
        var_f7 = (f32)i_oxygen / (f32)dComIfGp_getMaxOxygen();
        var_f4 = (f32)i_max / (f32)dComIfGp_getMaxOxygen();
    }

    field_0x584[2] = var_f7 * mpMagicMeter->getInitSizeX();
    field_0x590[2] = mpMagicMeter->getInitSizeY();
    field_0x59c[2] = (var_f6 * var_f4) + mpMagicFrameL->getInitPosX();
    field_0x5a8[2] = mpMagicFrameL->getInitPosY();
    field_0x5b4[2] = var_f4 * mpMagicBase->getInitSizeX();
    field_0x5c0[2] = mpMagicBase->getInitSizeY();
    field_0x5cc[2] = g_drawHIO.mOxygenMeterScale;
    field_0x5d8[2] = g_drawHIO.mOxygenMeterScale;
    field_0x5e4[2] = i_posX;
    field_0x5f0[2] = i_posY;
}

void dMeter2Draw_c::setAlphaOxygenChange(bool i_forceSet) {
    bool meter_parent_alpha_set = false;
    bool meter_alpha_set = false;
    bool meter_frame_alpha_set = false;

    if (field_0x7bc != mpMagicParent->getAlphaRate() || i_forceSet) {
        field_0x7bc = mpMagicParent->getAlphaRate();
        meter_parent_alpha_set = true;
    }

    if (mOxygenMeterAlpha != g_drawHIO.mOxygenMeterAlpha || i_forceSet) {
        mOxygenMeterAlpha = g_drawHIO.mOxygenMeterAlpha;
        meter_alpha_set = true;
    }

    if (mOxygenMeterFrameAlpha != g_drawHIO.mOxygenMeterFrameAlpha || i_forceSet) {
        mOxygenMeterFrameAlpha = g_drawHIO.mOxygenMeterFrameAlpha;
        meter_frame_alpha_set = true;
    }

    if (meter_parent_alpha_set || meter_alpha_set || i_forceSet) {
        mpMagicMeter->setAlphaRate(mOxygenMeterAlpha * field_0x7bc);
    }

    if (meter_parent_alpha_set || meter_frame_alpha_set || i_forceSet) {
        mpMagicFrameL->setAlphaRate(mOxygenMeterFrameAlpha * field_0x7bc);
        mpMagicFrameR->setAlphaRate(mOxygenMeterFrameAlpha * field_0x7bc);
    }
}

void dMeter2Draw_c::setAlphaOxygenAnimeMin() {
    if (field_0x742[2] <= 0) {
        mMeterAlphaRate[2] = 0.0f;
    } else {
        field_0x742[2]--;
        if (field_0x742[2] < 0) {
            field_0x742[2] = 0;
        }

        mMeterAlphaRate[2] = (field_0x742[2] / 5.0f) * g_drawHIO.mParentAlpha;
    }
}

void dMeter2Draw_c::setAlphaOxygenAnimeMax() {
    if (field_0x742[2] >= 5) {
        mMeterAlphaRate[2] = g_drawHIO.mParentAlpha;
    } else {
        field_0x742[2]++;
        if (field_0x742[2] > 5) {
            field_0x742[2] = 5;
        }

        mMeterAlphaRate[2] = (field_0x742[2] / 5.0f) * g_drawHIO.mParentAlpha;
    }
}

void dMeter2Draw_c::drawLightDrop(u8 i_num, u8 i_needNum, f32 i_posX, f32 i_posY, f32 i_vesselScale,
                                  f32 param_5, u8 param_6) {
    for (int i = 0; i < 16; i++) {
        if (mpSIParts[i][0] != NULL) {
            mpSIParts[i][0]->scale(g_drawHIO.mLightDrop.mDropScale,
                                   g_drawHIO.mLightDrop.mDropScale);
        } else {
            mpSIParts[i][1]->scale(g_drawHIO.mLightDrop.mDropScale,
                                   g_drawHIO.mLightDrop.mDropScale);
            mpSIParts[i][2]->scale(g_drawHIO.mLightDrop.mDropScale,
                                   g_drawHIO.mLightDrop.mDropScale);
        }

        if (i < i_num) {
            static_cast<J2DPicture*>(mpSIParts[i][1]->getPanePtr())
                ->setBlackWhite(g_drawHIO.mLightDrop.mDropOnColorBlack,
                                g_drawHIO.mLightDrop.mDropOnColorWhite);
            mpSIParts[i][1]->setAlphaRate(mpSIParent[1]->getAlphaRate());
            mpSIParts[i][2]->setAlphaRate(mpSIParent[1]->getAlphaRate());
        } else {
            static_cast<J2DPicture*>(mpSIParts[i][1]->getPanePtr())
                ->setBlackWhite(g_drawHIO.mLightDrop.mDropOffColorBlack,
                                g_drawHIO.mLightDrop.mDropOffColorWhite);
            mpSIParts[i][1]->setAlphaRate(mpSIParent[1]->getAlphaRate() * 0.3f);
            mpSIParts[i][2]->setAlphaRate(mpSIParent[1]->getAlphaRate() * 0.3f);
        }
    }

    if (param_6 == 1) {
        field_0x760 = param_6;
        field_0x756 = -1;

        if (field_0x62c[i_num - 1] == 0.0f) {
            field_0x62c[i_num - 1] = 18.0f;
        }
    }

    if (param_6 == 2) {
        field_0x760 = param_6;
        field_0x756 = 0;

        if (field_0x62c[0] == 0.0f) {
            field_0x62c[0] = 18.0f;
        }
    }

    field_0x6fc = param_5;
    mLightDropVesselScale = i_vesselScale;
    mpLightDropParent->scale(mLightDropVesselScale * field_0x6f8,
                             mLightDropVesselScale * field_0x6f8);
    mpLightDropParent->paneTrans(i_posX, i_posY);
}

void dMeter2Draw_c::setAlphaLightDropChange(bool unused) {}

f32 dMeter2Draw_c::getNowLightDropRateCalc() {
    f32 rate = 0.0f;
    f32 drop_num = dComIfGs_getLightDropNum(dComIfGp_getStartStageDarkArea());
    f32 need_drop_num = dComIfGp_getNeedLightDropNum();

    if (need_drop_num <= 0) {
        rate = 0.0f;
    } else if (drop_num >= need_drop_num) {
        rate = 1.0f;
    } else {
        rate = drop_num / need_drop_num;
    }

    return rate;
}

void dMeter2Draw_c::setAlphaLightDropAnimeMin() {
    if (mpLightDropParent->getAlphaRate() != 0.0f) {
        mpLightDropParent->setAlphaRate(g_drawHIO.mParentAlpha * field_0x6fc);
        setAlphaAnimeMin(mpLightDropParent, 5);

        for (int i = 0; i < 2; i++) {
            mpSIParent[i]->setAlphaRate(g_drawHIO.mLightDrop.mVesselAlpha[i + 2] *
                                        mpLightDropParent->getAlphaRate());
        }

        for (int i = 0; i < 16; i++) {
            if (i < dComIfGs_getLightDropNum(dComIfGp_getStartStageDarkArea())) {
                mpSIParts[i][1]->setAlphaRate(mpSIParent[1]->getAlphaRate());
                mpSIParts[i][2]->setAlphaRate(mpSIParent[1]->getAlphaRate());
            } else {
                mpSIParts[i][1]->setAlphaRate(mpSIParent[1]->getAlphaRate() * 0.3f);
                mpSIParts[i][2]->setAlphaRate(mpSIParent[1]->getAlphaRate() * 0.3f);
            }
        }
    }
}

void dMeter2Draw_c::setAlphaLightDropAnimeMax() {
    f32 temp_f31 = g_drawHIO.mParentAlpha * field_0x6fc;

    if (dMeter2Info_getLightDropGetFlag(dComIfGp_getStartStageDarkArea()) > 1 &&
        dMeter2Info_getLightDropGetFlag(dComIfGp_getStartStageDarkArea()) != 0xFF)
    {
        if (mpLightDropParent->getAlphaTimer() == 0) {
            Z2GetAudioMgr()->seStart(Z2SE_SY_LIGHT_POT_EQUIP, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f,
                                     0);
        }

        if (temp_f31 != mpLightDropParent->getAlphaRate()) {
            mpLightDropParent->setAlphaRate(temp_f31);
            setAlphaAnimeMax(mpLightDropParent, g_drawHIO.mLightDrop.mDropGetScaleAnimFrameNum);

            for (int i = 0; i < 2; i++) {
                mpSIParent[i]->setAlphaRate(g_drawHIO.mLightDrop.mVesselAlpha[i + 2] *
                                            mpLightDropParent->getAlphaRate());
            }
        }

        if (g_drawHIO.mLightDrop.mDropGetScaleAnimFrameNum > 1) {
            field_0x6f8 = 1.0f + (((g_drawHIO.mLightDrop.mDropGetScale - 1.0f) *
                                   ((f32)g_drawHIO.mLightDrop.mDropGetScaleAnimFrameNum -
                                    (f32)mpLightDropParent->getAlphaTimer())) /
                                  ((f32)g_drawHIO.mLightDrop.mDropGetScaleAnimFrameNum - 1.0f));
        } else {
            field_0x6f8 = 1.0f;
        }

        mpLightDropParent->scale(mLightDropVesselScale * field_0x6f8,
                                 mLightDropVesselScale * field_0x6f8);

        if (g_drawHIO.mLightDrop.mDropGetScaleAnimFrameNum == mpLightDropParent->getAlphaTimer()) {
            dMeter2Info_setLightDropGetFlag(dComIfGp_getStartStageDarkArea(), 0xFF);
        }
    } else if (temp_f31 != mpLightDropParent->getAlphaRate()) {
        mpLightDropParent->setAlphaRate(temp_f31);
        setAlphaAnimeMax(mpLightDropParent, 5);

        for (int i = 0; i < 2; i++) {
            mpSIParent[i]->setAlphaRate(g_drawHIO.mLightDrop.mVesselAlpha[i + 2] *
                                        mpLightDropParent->getAlphaRate());
        }
    } else {
        for (int i = 0; i < 2; i++) {
            if (field_0x860[i] != g_drawHIO.mLightDrop.mVesselAlpha[i + 2]) {
                field_0x860[i] = g_drawHIO.mLightDrop.mVesselAlpha[i + 2];
                mpSIParent[i]->setAlphaRate(g_drawHIO.mLightDrop.mVesselAlpha[i + 2] *
                                            mpLightDropParent->getAlphaRate());
            }
        }
    }

    for (int i = 0; i < 16; i++) {
        if (i < dComIfGs_getLightDropNum(dComIfGp_getStartStageDarkArea())) {
            mpSIParts[i][1]->setAlphaRate(mpSIParent[1]->getAlphaRate());
            mpSIParts[i][2]->setAlphaRate(mpSIParent[1]->getAlphaRate());
        } else {
            mpSIParts[i][1]->setAlphaRate(mpSIParent[1]->getAlphaRate() * 0.3f);
            mpSIParts[i][2]->setAlphaRate(mpSIParent[1]->getAlphaRate() * 0.3f);
        }
    }
}

void dMeter2Draw_c::drawRupee(s16 i_rupeeNum) {
    ResTIMG* timg;

    if (dComIfGs_getWalletSize() == WALLET) {
        // empty block
    }

    mpRupeeTexture[3][0]->hide();
    mpRupeeTexture[3][1]->hide();

    // digits are descending order (3, 2, 1, 0)
    int digit = i_rupeeNum / 1000;
    int num = i_rupeeNum % 1000;

    if (i_rupeeNum < 1000) {
        mpRupeeTexture[3][0]->hide();
        mpRupeeTexture[3][1]->hide();
    } else {
        mpRupeeTexture[3][0]->show();
        mpRupeeTexture[3][1]->show();

        timg = getNumberTexture(digit);
        static_cast<J2DPicture*>(mpRupeeTexture[3][0]->getPanePtr())->changeTexture(timg, 0);
        static_cast<J2DPicture*>(mpRupeeTexture[3][1]->getPanePtr())->changeTexture(timg, 0);
    }
    digit = num / 100;
    num %= 100;

    timg = getNumberTexture(digit);
    static_cast<J2DPicture*>(mpRupeeTexture[2][0]->getPanePtr())->changeTexture(timg, 0);
    static_cast<J2DPicture*>(mpRupeeTexture[2][1]->getPanePtr())->changeTexture(timg, 0);

    digit = num / 10;
    num %= 10;

    timg = getNumberTexture(digit);
    static_cast<J2DPicture*>(mpRupeeTexture[1][0]->getPanePtr())->changeTexture(timg, 0);
    static_cast<J2DPicture*>(mpRupeeTexture[1][1]->getPanePtr())->changeTexture(timg, 0);

    timg = getNumberTexture(num);
    static_cast<J2DPicture*>(mpRupeeTexture[0][0]->getPanePtr())->changeTexture(timg, 0);
    static_cast<J2DPicture*>(mpRupeeTexture[0][1]->getPanePtr())->changeTexture(timg, 0);

    mpRupeeKeyParent->scale(g_drawHIO.mRupeeKeyScale * field_0x718,
                            g_drawHIO.mRupeeKeyScale * field_0x718);
    mpRupeeKeyParent->paneTrans(g_drawHIO.mRupeeKeyPosX, g_drawHIO.mRupeeKeyPosY);

    mpRupeeParent[0]->scale(g_drawHIO.mRupeeScale, g_drawHIO.mRupeeScale);
    mpRupeeParent[0]->paneTrans(g_drawHIO.mRupeePosX, g_drawHIO.mRupeePosY);

    mpRupeeParent[1]->scale(g_drawHIO.mRupeeFramePosY, g_drawHIO.mRupeeFramePosY);
    mpRupeeParent[1]->paneTrans(g_drawHIO.mRupeeFrameScale, g_drawHIO.mRupeeFramePosX);

    mpRupeeParent[2]->scale(g_drawHIO.mRupeeFramePosY, g_drawHIO.mRupeeFramePosY);
    mpRupeeParent[2]->paneTrans(g_drawHIO.mRupeeFrameScale, g_drawHIO.mRupeeFramePosX);

    for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 2; j++) {
            mpRupeeTexture[i][j]->scale(g_drawHIO.mRupeeCountScale, g_drawHIO.mRupeeCountScale);
            mpRupeeTexture[i][j]->paneTrans(g_drawHIO.mRupeeCountPosX, g_drawHIO.mRupeeCountPosY);
        }
    }
}

void dMeter2Draw_c::setAlphaRupeeChange(bool param_0) {
    bool set_parent = false;
    bool set_rupeekey = false;
    bool set_rupee = false;
    bool set_rupeeframe = false;
    bool set_rupeecount = false;

    if (field_0x7cc != g_drawHIO.mParentAlpha || param_0) {
        field_0x7cc = g_drawHIO.mParentAlpha;
        set_parent = true;
    }

    if (field_0x7d0 != g_drawHIO.mRupeeKeyAlpha || param_0) {
        field_0x7d0 = g_drawHIO.mRupeeKeyAlpha;
        set_rupeekey = true;
    }

    if (mRupeeAlpha != g_drawHIO.mRupeeAlpha || param_0) {
        mRupeeAlpha = g_drawHIO.mRupeeAlpha;
        set_rupee = true;
    }

    if (mRupeeFrameAlpha != g_drawHIO.mRupeeFrameAlpha || param_0) {
        mRupeeFrameAlpha = g_drawHIO.mRupeeFrameAlpha;
        set_rupeeframe = true;
    }

    if (mRupeeCountAlpha != g_drawHIO.mRupeeCountAlpha || param_0) {
        mRupeeCountAlpha = g_drawHIO.mRupeeCountAlpha;
        set_rupeecount = true;
    }

    if (set_parent || set_rupeekey || param_0) {
        mpRupeeKeyParent->setAlphaRate(field_0x7cc * field_0x7d0);
    }

    if (set_parent || set_rupeekey || set_rupee || param_0) {
        mpRupeeParent[0]->setAlphaRate(field_0x7d0 * (mRupeeAlpha * field_0x7cc));
    }

    if (set_parent || set_rupeekey || set_rupeeframe || param_0) {
        mpRupeeParent[1]->setAlphaRate(field_0x7d0 * (mRupeeFrameAlpha * field_0x7cc));
        mpRupeeParent[2]->setAlphaRate(field_0x7d0 * (mRupeeFrameAlpha * field_0x7cc));
    }

    if (set_parent || set_rupeekey || set_rupeecount || param_0) {
        for (int i = 0; i < 4; i++) {
            for (int j = 0; j < 2; j++) {
                mpRupeeTexture[i][j]->setAlphaRate(
                    field_0x7d0 * (field_0x7cc * (mRupeeCountAlpha * mRupeeAlpha)));
            }
        }
    }
}

void dMeter2Draw_c::setAlphaRupeeAnimeMin() {
    f32 alphas[3];
    alphas[0] = g_drawHIO.mRupeeAlpha * (g_drawHIO.mParentAlpha * g_drawHIO.mRupeeKeyAlpha);
    alphas[1] = g_drawHIO.mRupeeFrameAlpha * (g_drawHIO.mParentAlpha * g_drawHIO.mRupeeKeyAlpha);
    alphas[2] = g_drawHIO.mRupeeFrameAlpha * (g_drawHIO.mParentAlpha * g_drawHIO.mRupeeKeyAlpha);

    for (int i = 0; i < 3; i++) {
        if (mpRupeeParent[i]->getAlphaRate() != 0.0f) {
            mpRupeeParent[i]->setAlphaRate(alphas[i]);
            setAlphaAnimeMin(mpRupeeParent[i], 5);
        }
    }
}

void dMeter2Draw_c::setAlphaRupeeAnimeMax() {
    f32 alphas[3];
    alphas[0] = g_drawHIO.mRupeeAlpha * (g_drawHIO.mParentAlpha * g_drawHIO.mRupeeKeyAlpha);
    alphas[1] = g_drawHIO.mRupeeFrameAlpha * (g_drawHIO.mParentAlpha * g_drawHIO.mRupeeKeyAlpha);
    alphas[2] = g_drawHIO.mRupeeFrameAlpha * (g_drawHIO.mParentAlpha * g_drawHIO.mRupeeKeyAlpha);

    for (int i = 0; i < 3; i++) {
        if (mpRupeeParent[i]->getAlphaRate() != alphas[i]) {
            mpRupeeParent[i]->setAlphaRate(alphas[i]);
            setAlphaAnimeMax(mpRupeeParent[i], 5);
        }
    }
}

void dMeter2Draw_c::drawKey(s16 i_keyNum) {
    s16 keyNum = i_keyNum;
    if (keyNum > 5) {
        keyNum = 5;
    }

    for (int i = 0; i < 5; i++) {
        if (i < keyNum) {
            if (mpKeyTexture[i]->isVisible() == false) {
                mpKeyTexture[i]->show();
            }
        } else {
            if (mpKeyTexture[i]->isVisible() == true) {
                mpKeyTexture[i]->hide();
            }
        }
    }

    mpKeyParent->scale(g_drawHIO.mKeyScale, g_drawHIO.mKeyScale);
    mpKeyParent->paneTrans(g_drawHIO.mKeyPosX, g_drawHIO.mKeyPosY);
}

void dMeter2Draw_c::setAlphaKeyChange(bool param_0) {
    bool set_parent = false;
    bool set_rupeekey = false;
    bool set_key = false;
    bool set_keynum = false;

    if (field_0x7e0 != g_drawHIO.mParentAlpha || param_0) {
        field_0x7e0 = g_drawHIO.mParentAlpha;
        set_parent = true;
    }

    if (field_0x7e4 != g_drawHIO.mRupeeKeyAlpha || param_0) {
        field_0x7e4 = g_drawHIO.mRupeeKeyAlpha;
        set_rupeekey = true;
    }

    if (mKeyAlpha != g_drawHIO.mKeyAlpha || param_0) {
        mKeyAlpha = g_drawHIO.mKeyAlpha;
        set_key = true;
    }

    if (mKeyNumAlpha != g_drawHIO.mKeyNumAlpha || param_0) {
        mKeyNumAlpha = g_drawHIO.mKeyNumAlpha;
        set_keynum = true;
    }

    if (set_parent || set_rupeekey || set_key || param_0) {
        mpKeyParent->setAlphaRate(field_0x7e0 * (mKeyAlpha * field_0x7e4));
    }

    if (set_parent || set_rupeekey || set_keynum || param_0) {
        for (int i = 0; i < 5; i++) {
            mpKeyTexture[i]->setAlphaRate(field_0x7e0 * (field_0x7e4 * (mKeyNumAlpha * mKeyAlpha)));
        }
    }
}

void dMeter2Draw_c::setAlphaKeyAnimeMin() {
    f32 alpha = g_drawHIO.mKeyAlpha * (g_drawHIO.mParentAlpha * g_drawHIO.mRupeeKeyAlpha);

    if (mpKeyParent->getAlphaRate() != 0.0f) {
        mpKeyParent->setAlphaRate(alpha);
        setAlphaAnimeMin(mpKeyParent, 5);
    }
}

void dMeter2Draw_c::setAlphaKeyAnimeMax() {
    f32 alpha = g_drawHIO.mKeyAlpha * (g_drawHIO.mParentAlpha * g_drawHIO.mRupeeKeyAlpha);

    if (mpKeyParent->getAlphaRate() != alpha) {
        mpKeyParent->setAlphaRate(alpha);
        setAlphaAnimeMax(mpKeyParent, 5);
    }
}

void dMeter2Draw_c::drawButtonA(u8 i_action, f32 i_posX, f32 i_posY, f32 i_textPosX, f32 i_textPosY,
                                f32 i_scale, bool param_6, bool param_7) {
    char* mp_string = getActionString(i_action, 1, &field_0x761);
    f32 var_f31 = g_drawHIO.mButtonAScale;
    f32 var_f30 = g_drawHIO.mButtonATextScale;

    if (isBButtonShow(false)) {
        var_f31 = g_drawHIO.mButtonATalkScale[0];
        var_f30 = g_drawHIO.mButtonATalkScale[1];
    } else if (param_7) {
        var_f31 = g_drawHIO.mButtonATalkAScale;
        var_f30 = g_drawHIO.mButtonATextTalkAScale;
    }

    if (dComIfGp_isDoSetFlag(2) || dComIfGp_isDoSetFlag(4)) {
        field_0x761 = 7;
    }

    if (param_6) {
        if (i_action == 0x25) {
            if (field_0x608 == 0.0f) {
                field_0x608 = 18.0f - g_drawHIO.mButtonAPikariAnimSpeed;
            }
            field_0x759 = 1;
        } else {
            if (i_action != 0) {
                field_0x608 = 18.0f - g_drawHIO.mButtonAPikariAnimSpeed;
            }
            field_0x759 = 0;
        }
    }

#if PLATFORM_WII
    if (*mp_string != 0 && ((dComIfGp_getDoStatus() != dComIfGp_getAStatus() &&
                             dComIfGp_getDoStatus() != dComIfGp_getAStatusForce()) ||
                            !isEmphasisA()))
    {
        mpFATextN->show();
        if (!param_7 || !isBButtonShow(false)) {
            mpFATextN->show();
            mpFA2TextN->hide();
        } else {
            mpFATextN->hide();
            mpFA2TextN->show();
        }
    } else {
        mpFATextN->hide();
        mpFA2TextN->hide();
    }
#else
    if (*mp_string != 0 && ((dComIfGp_getDoStatus() != dComIfGp_getAStatus() &&
                             dComIfGp_getDoStatus() != dComIfGp_getAStatusForce()) ||
                            !isEmphasisA()))
    {
        mpTextA->show();
        mpTextA->show();
    } else {
        mpTextA->hide();
    }
#endif

    JUT_ASSERT(4295, std::strlen (mp_string) < (64));

#if PLATFORM_WII
    for (int i = 0; i < ARRAY_SIZE(mpAText); i++) {
        strcpy(static_cast<J2DTextBox*>(mpAText[i]->getPanePtr())->getStringPtr(), mp_string);
        strcpy(static_cast<J2DTextBox*>(field_0x10c_wii[i]->getPanePtr())->getStringPtr(), mp_string);
    }
#elif PLATFORM_SHIELD
    for (int i = 0; i < ARRAY_SIZE(mpAText); i++) {
        strcpy(static_cast<J2DTextBox*>(mpAText[i]->getPanePtr())->getStringPtr(), mp_string);
    }
#else
    if (daPy_getPlayerActorClass()->getSumouMode()) {
        mpTextA->show();
        mp_string = getActionString(0x15, 1, NULL);

        for (int i = 0; i < ARRAY_SIZE(mpAText); i++) {
            strcpy(static_cast<J2DTextBox*>(mpAText[i]->getPanePtr())->getStringPtr(), mp_string);
        }
    } else {
        for (int i = 0; i < ARRAY_SIZE(mpAText); i++) {
            strcpy(static_cast<J2DTextBox*>(mpAText[i]->getPanePtr())->getStringPtr(), mp_string);
        }
    }
#endif

    mpButtonA->scale(var_f31 * i_scale, var_f31 * i_scale);
    mpButtonA->paneTrans(i_posX, i_posY);
#if PLATFORM_WII
    mpFATextN->scale(var_f30 * i_scale, var_f30 * i_scale);
    mpFATextN->paneTrans(i_textPosX, i_textPosY);

    field_0x41c_wii->scale(var_f31 * i_scale, var_f31 * i_scale);
    field_0x41c_wii->paneTrans(i_posX, i_posY);
    mpFA2TextN->scale(var_f30 * i_scale, var_f30 * i_scale);
    mpFA2TextN->paneTrans(g_drawHIO.mButtonATextPosX + i_textPosX,
                       g_drawHIO.mButtonATextPosY + i_textPosY);
#else
    mpTextA->scale(var_f30 * i_scale, var_f30 * i_scale);
    mpTextA->paneTrans(g_drawHIO.mButtonATextPosX + i_textPosX,
                       g_drawHIO.mButtonATextPosY + i_textPosY);
#endif
}

void dMeter2Draw_c::drawButtonB(u8 i_action, bool param_1, f32 i_posX, f32 i_posY, f32 i_textPosX,
                                f32 i_textPosY, f32 i_scale, bool param_7) {
    int var_r31 = 0;
    f32 var_f31 = g_drawHIO.mButtonBScale;
    f32 var_f30 = g_drawHIO.mButtonBFontScale;

    if (isBButtonShow(true)) {
        var_f31 = g_drawHIO.mButtonBTalkScale[0];
        var_f30 = g_drawHIO.mButtonBTalkScale[1];
    }

    field_0x6ec = i_posX;
    field_0x6f0 = i_posY;

    char* mp_string = getActionString(i_action, 1, &field_0x762);

#if PLATFORM_WII
    if (!getCanoeFishing() && !dComIfGp_isPauseFlag() &&
        !g_meter2_info.isSub2DStatus(1) && !isBButtonShow(true)) {
        i_action = 0;
    }
#endif

    if (dComIfGp_isASetFlag(2) || dComIfGp_isASetFlag(4)) {
        field_0x762 = 7;
    }

    if (*mp_string != 0 && i_action != 0 && i_action != 0x2E &&
        ((dComIfGp_getDoStatus() == BUTTON_STATUS_NONE ||
          (dComIfGp_getDoStatus() != dComIfGp_getAStatus() &&
           dComIfGp_getDoStatus() != dComIfGp_getAStatusForce())) ||
         !isEmphasisB()))
    {
#if PLATFORM_WII
        mpFBTextN->show();
#else
        mpTextB->show();
#endif
    } else {
#if PLATFORM_WII
        mpFBTextN->hide();
#else
        mpTextB->hide();
#endif
    }

    if (param_7) {
        if (i_action == 0x10) {
            if (field_0x60c == 0.0f) {
                field_0x60c = 18.0f - g_drawHIO.mButtonBPikariAnimSpeed;
            }
            field_0x75a = 1;
        } else {
            if (i_action != 0 && field_0x60c == 0.0f) {
                field_0x60c = 18.0f - g_drawHIO.mButtonBPikariAnimSpeed;
            }
            field_0x75a = 0;
        }
    }

    JUT_ASSERT(4393, std::strlen (mp_string) < (64));

    for (int i = 0; i < ARRAY_SIZE(mpBText); i++) {
        strcpy(static_cast<J2DTextBox*>(mpBText[i]->getPanePtr())->getStringPtr(), mp_string);
    }

#if PLATFORM_WII
    var_r31 = 0;
    bool var_r26 = false;
    bool var_r30 = true;
    if (i_action == 0x4F || field_0x777 == 0x4F || (getCanoeFishing() && dComIfGp_isPauseFlag())) {
        mpItemB->show();
        mButtonBItem = dItemNo_LURE_ROD_e;
        var_r30 = false;
        changeTextureItemB(dItemNo_LURE_ROD_e);
    } else if (getCanoeFishing() || isBButtonShow(true)) {
        mpItemB->hide();
        var_r30 = false;
    } else {
        if (field_0x771 != 0xFF) {
            field_0x770 = field_0x771;
            field_0x754 = 0;
            var_r26 = true;
        }

        if (field_0x770 != 0xFF && dComIfGp_getSelectItem(field_0x770) != 0xFF &&
            field_0x754 == 0 && var_r26 == true) {
            moveItemInit();
            var_r31 = 1;
        }

        if (param_1 == true && dComIfGp_getSelectItem(3) != 0xFF) {
            mpItemB->show();
            var_r30 = false;

            if (var_r31 == 0) {
                changeTextureItemB(dComIfGp_getSelectItem(3));
            }
        } else {
            mpItemB->hide();
        }
    }

    if (var_r31 == 0) {
        mpItemB->getPanePtr()->rotate(mpItemB->getSizeX() * 0.5f, mpItemB->getSizeY() * 0.5f, ROTATE_Z,
                                      mItemParams[3].rotation);
    }

    field_0x730 = var_f31 * i_scale;
    mpButtonB->scale(field_0x730 * field_0x734, field_0x730 * field_0x734);
    mpButtonB->paneTrans(g_drawHIO.mButtonBPosX + i_posX, g_drawHIO.mButtonBPosY + i_posY);

    //field_0x72c = g_drawHIO.mItemBBaseScale[0] * i_scale;
    field_0x420_wii->scale(var_f31 * i_scale, var_f31 * i_scale);
    field_0x420_wii->paneTrans(g_drawHIO.mButtonBPosX + i_posX, g_drawHIO.mButtonBPosY + i_posY);

    if (var_r31 == 0) {
        field_0x728 = mItemParams[3].scale;
        mpItemB->scale(field_0x728 * field_0x734, field_0x728 * field_0x734);
        mpItemB->paneTrans(mItemParams[3].pos_x + (i_posX + field_0x6dc),
                           mItemParams[3].pos_y + (i_posY +  + field_0x6e0));
    }

    field_0x72c = g_drawHIO.mItemBBaseScale[var_r30] * i_scale;
    mpLightB->scale(field_0x72c * field_0x734, field_0x72c * field_0x734);
    mpLightB->paneTrans(g_drawHIO.mItemBBasePosX[var_r30] + i_posX, g_drawHIO.mItemBBasePosY[var_r30] + i_posY);

    mpFBTextN->scale(var_f30 * i_scale, var_f30 * i_scale);
    mpFBTextN->paneTrans(g_drawHIO.mButtonBFontPosX + i_textPosX,
                       g_drawHIO.mButtonBFontPosY + i_textPosY);
#else
    if (i_action == 0x26 || i_action == 0x2E) {
        mpScreen->search(MULTI_CHAR('item_b_n'))->show();
        var_r31 = 1;

        if (mButtonBItem != dComIfGs_getSelectEquipSword()) {
            mButtonBItem = dComIfGs_getSelectEquipSword();

            switch (dComIfGs_getSelectEquipSword()) {
            case dItemNo_WOOD_STICK_e:
            case dItemNo_SWORD_e:
            case dItemNo_MASTER_SWORD_e:
            case dItemNo_LIGHT_SWORD_e:
                changeTextureItemB(mButtonBItem);
                break;
            default:
                mpScreen->search(MULTI_CHAR('item_b_n'))->hide();
                var_r31 = 0;
            }
        }
#if PLATFORM_SHIELD
    } else if (i_action == 0x4F || field_0x777 == 0x4F) {
#else
    } else if (param_1 == true && i_action == 0x4F) {
#endif
        mpScreen->search(MULTI_CHAR('item_b_n'))->show();
        mButtonBItem = dItemNo_LURE_ROD_e;
        changeTextureItemB(dItemNo_LURE_ROD_e);
        var_r31 = 2;
    } else {
        mpScreen->search(MULTI_CHAR('item_b_n'))->hide();
    }

    mpItemB->getPanePtr()->rotate(mpItemB->getSizeX() * 0.5f, mpItemB->getSizeY() * 0.5f, ROTATE_Z,
                                  g_drawHIO.mButtonBItemRotation[var_r31]);

    field_0x730 = var_f31 * i_scale;
    mpButtonB->scale(field_0x730 * field_0x734, field_0x730 * field_0x734);
    mpButtonB->paneTrans(g_drawHIO.mButtonBPosX + i_posX, g_drawHIO.mButtonBPosY + i_posY);

    field_0x728 = g_drawHIO.mButtonBItemScale[var_r31] * i_scale;
    mpItemB->scale(field_0x728 * field_0x734, field_0x728 * field_0x734);
    mpItemB->paneTrans(field_0x6dc + (g_drawHIO.mButtonBItemPosX[var_r31] + i_posX),
                       field_0x6e0 + (g_drawHIO.mButtonBItemPosY[var_r31] + i_posY));

    field_0x72c = g_drawHIO.mItemBBaseScale[0] * i_scale;
    mpLightB->scale(field_0x72c * field_0x734, field_0x72c * field_0x734);
    mpLightB->paneTrans(g_drawHIO.mItemBBasePosX[0] + i_posX, g_drawHIO.mItemBBasePosY[0] + i_posY);

    mpTextB->scale(var_f30 * i_scale, var_f30 * i_scale);
    mpTextB->paneTrans(g_drawHIO.mButtonBFontPosX + i_textPosX,
                       g_drawHIO.mButtonBFontPosY + i_textPosY);
#endif
}

#if PLATFORM_WII
void dMeter2Draw_c::drawTouchText(u8 param_0, f32 param_1, f32 param_2, f32 param_3, bool param_4) {
    static u64 const t_tag[] = {
        MULTI_CHAR('info_ar0'), MULTI_CHAR('info_ar1'), MULTI_CHAR('info_ar2'),
        MULTI_CHAR('info_ar3'), MULTI_CHAR('info_ar4'), MULTI_CHAR('info_ar5'),
        MULTI_CHAR('info_ar6'), MULTI_CHAR('info_ar7'), MULTI_CHAR('info_ar8'),
        MULTI_CHAR('info_ar9'),
    };

    field_0x790_wii = param_1;
    field_0x794_wii = param_2;

    const char* action_str = getActionString(param_0, 0, NULL);

    if (action_str[0] != '\0') {
        field_0x108_wii->show();
    } else {
        field_0x108_wii->hide();
    }

    if (field_0x108_wii != NULL) {
        for (int i = 0; i < ARRAY_SIZE(t_tag); i++) {
            strcpy(((J2DTextBox*)field_0x104_wii->search(MULTI_CHAR(t_tag[i])))->getStringPtr(), action_str);
        }
    }
}
#endif

void dMeter2Draw_c::drawButtonR(u8 param_0, u8 i_action, bool param_2, bool param_3) {
    UNUSED(param_0);
    UNUSED(i_action);
    UNUSED(param_2);
    UNUSED(param_3);

    mpScreen->search(MULTI_CHAR('item_r_n'))->hide();
#if PLATFORM_WII
    mpTextXY[2]->hide();
#else
    mpTextXY[2]->show();
#endif

    getActionString(i_action, 1, &field_0x768[2]);
    if (dComIfGp_isRSetFlag(2) || dComIfGp_isRSetFlag(4)) {
        field_0x768[2] = 7;
    }
}

void dMeter2Draw_c::drawButtonZ(u8 i_action) {
    char* mp_string = getActionString(i_action, 1, &field_0x764);

    if (dComIfGp_isZSetFlag(2) || dComIfGp_isZSetFlag(4)) {
        field_0x764 = 7;
    }

    bool var_r26 = false;
    if (var_r26) {
        if (i_action == 0x10) {
            if (field_0x620[2] == 0.0f) {
                field_0x620[2] = 18.0f - g_drawHIO.mButtonZPikariAnimSpeed;
            }
            field_0x75c[2] = 1;
        } else {
            if (i_action != 0) {
                field_0x620[2] = 18.0f - g_drawHIO.mButtonZPikariAnimSpeed;
            }
            field_0x75c[2] = 0;
        }
    }

    if (i_action == 0x27) {
        mpTextXY[2]->hide();
        mpButtonMidona->hide();
    } else if (*mp_string != 0 && i_action != 0x2F && i_action != 8) {
        mpTextXY[2]->show();
        mpButtonMidona->hide();
    } else {
        mpTextXY[2]->hide();
        mpButtonMidona->show();
    }

    JUT_ASSERT(4752, std::strlen (mp_string) < (64));

    for (int i = 0; i < 5; i++) {
        strcpy(static_cast<J2DTextBox*>(mpXYText[i][2]->getPanePtr())->getStringPtr(), mp_string);
    }

#if !PLATFORM_WII
    mpButtonXY[2]->scale(g_drawHIO.mButtonZScale, g_drawHIO.mButtonZScale);
    mpButtonXY[2]->paneTrans(g_drawHIO.mButtonZPosX, g_drawHIO.mButtonZPosY);

    mpItemR->scale(g_drawHIO.mButtonZItemScale, g_drawHIO.mButtonZItemScale);
    mpItemR->paneTrans(g_drawHIO.mButtonZItemPosX + field_0x6ac[2],
                       g_drawHIO.mButtonZItemPosY + field_0x6b8[2]);

    mpLightXY[2]->scale(g_drawHIO.mButtonZGCNItemBaseScale, g_drawHIO.mButtonZGCNItemBaseScale);
    mpLightXY[2]->paneTrans(g_drawHIO.mButtonZGCNItemBasePosX, g_drawHIO.mButtonZGCNItemBasePosY);
#endif

    mpTextXY[2]->scale(g_drawHIO.mButtonZFontScale, g_drawHIO.mButtonZFontScale);
    mpTextXY[2]->paneTrans(g_drawHIO.mButtonZFontPosX, g_drawHIO.mButtonZFontPosY);
}

void dMeter2Draw_c::drawButton3D(u8 i_action) {
    getActionString(i_action, 1, &field_0x765);
    if (i_action != 0) {
        field_0x765 = 7;
    }
}

void dMeter2Draw_c::drawButtonC(u8 i_action, bool param_1) {
    const char* action_str = getActionString(i_action, 1, &field_0x766);

    if (i_action != 0 && (dComIfGp_isCStickSetFlag(2) || dComIfGp_isCStickSetFlag(4))) {
        field_0x766 = 7;
    }

#if PLATFORM_WII
    if (!param_1) {
        if (action_str[0] != '\0') {
            mpFJTextN->show();

            if (g_meter2_info.isUseButton(METER2_USEBUTTON_C)) {
                if (i_action != 0) {
                    field_0x620[2] = 18.0f - g_drawHIO.mButtonXYPikariAnimSpeed;
                }

                field_0x75c[2] = 0;
            }
        } else {
            mpFJTextN->hide();
        }
    } else {
        mpFJTextN->hide();
    }

    if (dComIfGp_getCStickDirection() == dMeterButton_c::DIR_DOWN_e) {
        f32 alpha_rate = mpButtonParent->getAlphaRate();

        for (int i = 0; i < ARRAY_SIZE(field_0x120_wii); i++) {
            strcpy(((J2DTextBox*)field_0x120_wii[i]->getPanePtr())->getStringPtr(), action_str);

            u8 alpha = field_0x120_wii[i]->getInitAlpha();
            if (!g_meter2_info.isUseButton(METER2_USEBUTTON_C)) {
                alpha *= (f32)g_drawHIO.field_0x42c / 255.0f;
            }

            field_0x120_wii[i]->setAlpha(alpha * alpha_rate);
        }
    } else {
        for (int i = 0; i < ARRAY_SIZE(field_0x120_wii); i++) {
            strcpy(((J2DTextBox*)field_0x120_wii[i]->getPanePtr())->getStringPtr(), "");
        }
    }
#endif
}

void dMeter2Draw_c::drawButtonS(u8 i_action) {
    getActionString(i_action, 1, &field_0x767);
    if (i_action != 0) {
        field_0x767 = 7;
    }
}

#if PLATFORM_WII
void dMeter2Draw_c::drawButtonNun(u8 i_action) {
    getActionString(i_action, 1, &field_0x819_wii);
    if (i_action != 0) {
        field_0x819_wii = 7;
    }
}

void dMeter2Draw_c::drawButtonRemo(u8 i_action) {
    getActionString(i_action, 1, &field_0x81a_wii);
    if (i_action != 0) {
        field_0x81a_wii = 7;
    }
}

void dMeter2Draw_c::drawButtonNunZ(u8 i_action) {
    getActionString(i_action, 1, &field_0x81b_wii);
    if (i_action != 0) {
        field_0x81b_wii = 7;
    }
}

void dMeter2Draw_c::drawButtonNunC(u8 i_action) {
    getActionString(i_action, 1, &field_0x81c_wii);
    if (i_action != 0) {
        field_0x81c_wii = 7;
    }
}
#endif

void dMeter2Draw_c::drawButtonBin(u8 i_action) {
    int bottle_num = 0;
    for (int i = 0; i < 4; i++) {
        if (dComIfGs_getItem((u8)(SLOT_11 + i), true) != dItemNo_NONE_e) {
            bottle_num++;
        }
    }

    if (bottle_num != 0) {
        getActionString(i_action, 1, &field_0x763);
        if (i_action != 0) {
            field_0x763 = 7;
        }
    }
}

void dMeter2Draw_c::drawButtonXY(int i_no, u8 i_itemNo, u8 i_action, bool param_3, bool param_4) {
    JUT_ASSERT(4987, i_no < SELECT_MAX_e);

#if PLATFORM_WII
    static u64 const tag[] = {MULTI_CHAR('x_itm_p'), MULTI_CHAR('y_itm_p'), MULTI_CHAR('j_itm_p')};
#else
    static u64 const tag[] = {MULTI_CHAR('item_x_n'), MULTI_CHAR('item_y_n')};
#endif

    {
        static u64 const tag[] = {MULTI_CHAR('item_x_n'), MULTI_CHAR('item_y_n'), MULTI_CHAR('item_j_n')};
        UNUSED(tag);
    }

    if (!param_3) {
        mpScreen->search(tag[i_no])->hide();

        int var_r26;
        if (i_no == SELECT_X_e) {
            var_r26 = dComIfGp_isXSetFlag(2) | dComIfGp_isXSetFlag(4);
        } else if (i_no == SELECT_Y_e) {
            var_r26 = dComIfGp_isYSetFlag(2) | dComIfGp_isYSetFlag(4);
        }

        char* mp_string = getActionString(i_action, 1, &field_0x768[i_no]);
        if (var_r26) {
            field_0x768[i_no] = 7;
        }

        if (param_4) {
            if (i_action == 0x10) {
                if (field_0x620[i_no] == 0.0f) {
                    field_0x620[i_no] = 18.0f - g_drawHIO.mButtonXYPikariAnimSpeed;
                }

                field_0x75c[i_no] = 1;
            } else {
                if (i_action != 0) {
                    field_0x620[i_no] = 18.0f - g_drawHIO.mButtonXYPikariAnimSpeed;
                }

                field_0x75c[i_no] = 0;
            }
        }

#if PLATFORM_WII
        if (i_no != SELECT_Z_e)
#endif
        {
            if (*mp_string != 0) {
                mpTextXY[i_no]->show();
            } else {
                mpTextXY[i_no]->hide();
            }
        }

        JUT_ASSERT(5065, std::strlen (mp_string) < (64));

        for (int i = 0; i < 5; i++) {
            strcpy(static_cast<J2DTextBox*>(mpXYText[i][i_no]->getPanePtr())->getStringPtr(),
                   mp_string);
        }

        if (i_no == SELECT_X_e) {
            mpTextXY[i_no]->scale(g_drawHIO.mButtonXYTextScale, g_drawHIO.mButtonXYTextScale);
            mpTextXY[i_no]->paneTrans(g_drawHIO.mButtonXYTextPosX, g_drawHIO.mButtonXYTextPosY);
        } else if (i_no == SELECT_Y_e) {
            mpTextXY[i_no]->scale(g_drawHIO.mButtonXYTextScale, g_drawHIO.mButtonXYTextScale);
            mpTextXY[i_no]->paneTrans(g_drawHIO.mButtonXYTextPosX, g_drawHIO.mButtonXYTextPosY);
        }
#if PLATFORM_WII
        else if (i_no == SELECT_Z_e) {
            mpFJTextN->scale(g_drawHIO.mButtonZTextScale, g_drawHIO.mButtonZTextScale);
            mpFJTextN->paneTrans(g_drawHIO.mButtonZTextPosX, g_drawHIO.mButtonZTextPosY);
        }
#endif
    } else {
        mpScreen->search(tag[i_no])->show();
#if PLATFORM_WII
        if (i_no != SELECT_Z_e)
#endif
        {
            mpTextXY[i_no]->hide();
        }

        int var_r29;
        if (i_itemNo == dItemNo_NONE_e || i_itemNo == 0) {
            mpScreen->search(tag[i_no])->hide();
            var_r29 = 1;
        } else {
            mpScreen->search(tag[i_no])->show();
            changeTextureItemXY(i_no, i_itemNo);
            var_r29 = 0;
        }

        switch (i_no) {
        case SELECT_X_e:
            setItemParamX(i_itemNo);
            break;
        case SELECT_Y_e:
            setItemParamY(i_itemNo);
            break;
        case SELECT_Z_e:
            setItemParamZ(i_itemNo);
            break;
        }

        f32 rotation = mItemParams[i_no].rotation;
        mpItemXY[i_no]->getPanePtr()->rotate(mpItemXY[i_no]->getSizeX() * 0.5f,
                                             mpItemXY[i_no]->getSizeY() * 0.5f, ROTATE_Z,
                                             rotation);

        if (i_no == SELECT_X_e) {
            mpButtonXY[0]->scale(g_drawHIO.mButtonXScale, g_drawHIO.mButtonXScale);
            mpButtonXY[0]->paneTrans(g_drawHIO.mButtonXPosX, g_drawHIO.mButtonXPosY);
            f32 temp_f31 = mItemParams[SELECT_X_e].scale;

            if (field_0x773[0] != dMeter2Info_isDirectUseItem(0)) {
                field_0x773[0] = dMeter2Info_isDirectUseItem(0);

                if (dMeter2Info_isDirectUseItem(0) && field_0x610[0] == 0.0f) {
                    field_0x610[0] = 18.0f - g_drawHIO.field_0x4e0;
                }
            }

            dMeter2Info_isDirectUseItem(0);

            temp_f31 *= g_drawHIO.field_0x54c;
            mpItemXY[0]->scale(temp_f31, temp_f31);
            mpItemXY[0]->paneTrans(mItemParams[SELECT_X_e].pos_x + field_0x6ac[0],
                                   mItemParams[SELECT_X_e].pos_y + field_0x6b8[0]);

            mpLightXY[0]->scale(g_drawHIO.mButtonXItemBaseScale[var_r29],
                                g_drawHIO.mButtonXItemBaseScale[var_r29]);
            mpLightXY[0]->paneTrans(g_drawHIO.mButtonXItemBasePosX[var_r29],
                                    g_drawHIO.mButtonXItemBasePosY[var_r29]);
            mpLightXY[0]->setAlphaRate(mButtonXItemBaseAlpha[var_r29] * field_0x7f0);

            mpTextXY[i_no]->scale(g_drawHIO.mButtonXYTextScale, g_drawHIO.mButtonXYTextScale);
            mpTextXY[i_no]->paneTrans(g_drawHIO.mButtonXYTextPosX, g_drawHIO.mButtonXYTextPosY);
        } else if (i_no == SELECT_Y_e) {
            mpButtonXY[1]->scale(g_drawHIO.mButtonYScale, g_drawHIO.mButtonYScale);
            mpButtonXY[1]->paneTrans(g_drawHIO.mButtonYPosX, g_drawHIO.mButtonYPosY);
            f32 temp_f31 = mItemParams[SELECT_Y_e].scale;

            if (field_0x773[1] != dMeter2Info_isDirectUseItem(1)) {
                field_0x773[1] = dMeter2Info_isDirectUseItem(1);

                if (dMeter2Info_isDirectUseItem(1) && field_0x610[1] == 0.0f) {
                    field_0x610[1] = 18.0f - g_drawHIO.field_0x4e0;
                }
            }

            dMeter2Info_isDirectUseItem(1);

            temp_f31 *= g_drawHIO.field_0x54c;
            mpItemXY[1]->scale(temp_f31, temp_f31);
            mpItemXY[1]->paneTrans(mItemParams[SELECT_Y_e].pos_x + field_0x6ac[1],
                                   mItemParams[SELECT_Y_e].pos_y + field_0x6b8[1]);

            mpLightXY[1]->scale(g_drawHIO.mButtonYItemBaseScale[var_r29],
                                g_drawHIO.mButtonYItemBaseScale[var_r29]);
            mpLightXY[1]->paneTrans(g_drawHIO.mButtonYItemBasePosX[var_r29],
                                    g_drawHIO.mButtonYItemBasePosY[var_r29]);
            mpLightXY[1]->setAlphaRate(mButtonYItemBaseAlpha[var_r29] * field_0x7f0);

            mpTextXY[i_no]->scale(g_drawHIO.mButtonXYTextScale, g_drawHIO.mButtonXYTextScale);
            mpTextXY[i_no]->paneTrans(g_drawHIO.mButtonXYTextPosX, g_drawHIO.mButtonXYTextPosY);
        }
#if PLATFORM_WII
        else if (i_no == SELECT_Z_e) {
            mpButtonXY[2]->scale(g_drawHIO.field_0x164, g_drawHIO.field_0x164);
            mpButtonXY[2]->paneTrans(g_drawHIO.field_0x16c, g_drawHIO.field_0x170);
            field_0x418_wii->scale(g_drawHIO.field_0x164, g_drawHIO.field_0x164);
            field_0x418_wii->paneTrans(g_drawHIO.field_0x16c, g_drawHIO.field_0x170);
            f32 temp_f31 = mItemParams[SELECT_Z_e].scale;

            if (field_0x773[2] != dMeter2Info_isDirectUseItem(2)) {
                field_0x773[2] = dMeter2Info_isDirectUseItem(2);

                if (dMeter2Info_isDirectUseItem(2) && field_0x610[2] == 0.0f) {
                    field_0x610[2] = 18.0f - g_drawHIO.field_0x4e0;
                }
            }

            dMeter2Info_isDirectUseItem(2);

            temp_f31 *= g_drawHIO.field_0x54c;
            mpItemXY[2]->scale(temp_f31, temp_f31);
            mpItemXY[2]->paneTrans(mItemParams[SELECT_Z_e].pos_x + field_0x6ac[2],
                                   mItemParams[SELECT_Z_e].pos_y + field_0x6b8[2]);

            mpLightXY[2]->scale(g_drawHIO.mButtonZWiiItemBaseScale[var_r29],
                                g_drawHIO.mButtonZWiiItemBaseScale[var_r29]);
            mpLightXY[2]->paneTrans(g_drawHIO.mButtonZWiiItemBasePosX[var_r29],
                                    g_drawHIO.mButtonZWiiItemBasePosY[var_r29]);
            mpLightXY[2]->setAlphaRate(mButtonZWiiItemBaseAlpha[var_r29] * field_0x7f0);

            mpItemT1N->scale(g_drawHIO.field_0x304, g_drawHIO.field_0x304);
            mpItemT1N->paneTrans(g_drawHIO.field_0x308, g_drawHIO.field_0x30c);

            mpFJTextN->scale(g_drawHIO.mButtonZTextScale, g_drawHIO.mButtonZTextScale);
            mpFJTextN->paneTrans(g_drawHIO.mButtonZTextPosX, g_drawHIO.mButtonZTextPosY);
        }
#endif
    }
}

f32 dMeter2Draw_c::getButtonCrossParentInitTransY() {
    return mpButtonCrossParent->getInitCenterPosY();
}

void dMeter2Draw_c::drawButtonCross(f32 i_posX, f32 i_posY) {
    mpButtonCrossParent->scale(g_drawHIO.mButtonCrossScale, g_drawHIO.mButtonCrossScale);
    mpTextI->scale(g_drawHIO.mButtonCrossTextScale, g_drawHIO.mButtonCrossTextScale);
    mpTextM->scale(g_drawHIO.mButtonCrossTextScale, g_drawHIO.mButtonCrossTextScale);
    mpButtonCrossParent->paneTrans(i_posX, i_posY);
}

void dMeter2Draw_c::setAlphaButtonCrossAnimeMin() {
    if (mpButtonCrossParent->getAlphaRate() != 0.0f) {
        mpButtonCrossParent->setAlphaRate(g_drawHIO.mParentAlpha);
        setAlphaAnimeMin(mpButtonCrossParent, 5);
    }

    setAlphaButtonCrossItemAnimeMin();
    setAlphaButtonCrossMapAnimeMin();
}

void dMeter2Draw_c::setAlphaButtonCrossAnimeMax() {
    if (g_drawHIO.mParentAlpha != mpButtonCrossParent->getAlphaRate()) {
        mpButtonCrossParent->setAlphaRate(g_drawHIO.mParentAlpha);
        setAlphaAnimeMax(mpButtonCrossParent, 5);
    }

    if (dMeter2Info_isItemOpenCheck()) {
        setAlphaButtonCrossItemAnimeMax();
    } else {
        setAlphaButtonCrossItemAnimeMin();
    }

    if (dMeter2Info_isMapOpenCheck()) {
        setAlphaButtonCrossMapAnimeMax();
    } else {
        setAlphaButtonCrossMapAnimeMin();
    }
}

void dMeter2Draw_c::setAlphaButtonCrossItemAnimeMin() {
    if (mpTextI->getAlphaRate() != 0.0f) {
        mpTextI->setAlphaRate(g_drawHIO.mParentAlpha * g_drawHIO.mButtonCrossITEMAlpha);
        setAlphaAnimeMin(mpTextI, 5);
    }

    for (int i = 0; i < ARRAY_SIZE(mpJujiI); i++) {
#if PLATFORM_GCN
        if (mpJujiI[i] != NULL)
#endif
        {
            if (mpJujiI[i]->getAlphaRate() != 0.0f) {
                mpJujiI[i]->setAlphaRate(g_drawHIO.mParentAlpha);
                setAlphaAnimeMin(mpJujiI[i], 5);
            }
        }
    }
}

void dMeter2Draw_c::setAlphaButtonCrossItemAnimeMax() {
    if (g_drawHIO.mParentAlpha * g_drawHIO.mButtonCrossITEMAlpha != mpTextI->getAlphaRate()) {
        mpTextI->setAlphaRate(g_drawHIO.mParentAlpha * g_drawHIO.mButtonCrossITEMAlpha);
        setAlphaAnimeMax(mpTextI, 5);
    }

    for (int i = 0; i < ARRAY_SIZE(mpJujiI); i++) {
#if PLATFORM_GCN
        if (mpJujiI[i] != NULL)
#endif
        {
            if (mpJujiI[i]->getAlphaRate() != g_drawHIO.mParentAlpha) {
                mpJujiI[i]->setAlphaRate(g_drawHIO.mParentAlpha);
                setAlphaAnimeMax(mpJujiI[i], 5);
            }
        }
    }
}

void dMeter2Draw_c::setAlphaButtonCrossMapAnimeMin() {
    if (mpTextM->getAlphaRate() != 0.0f) {
        mpTextM->setAlphaRate(g_drawHIO.mParentAlpha * g_drawHIO.mButtonCrossMAPAlpha);
        setAlphaAnimeMin(mpTextM, 5);
    }

    for (int i = 0; i < ARRAY_SIZE(mpJujiM); i++) {
#if PLATFORM_GCN
        if (mpJujiM[i] != NULL)
#endif
        {
            if (mpJujiM[i]->getAlphaRate() != 0.0f) {
                mpJujiM[i]->setAlphaRate(g_drawHIO.mParentAlpha);
                setAlphaAnimeMin(mpJujiM[i], 5);
            }
        }
    }
}

void dMeter2Draw_c::setAlphaButtonCrossMapAnimeMax() {
    if (g_drawHIO.mParentAlpha * g_drawHIO.mButtonCrossMAPAlpha != mpTextM->getAlphaRate()) {
        mpTextM->setAlphaRate(g_drawHIO.mParentAlpha * g_drawHIO.mButtonCrossMAPAlpha);
        setAlphaAnimeMax(mpTextM, 5);
    }

    for (int i = 0; i < ARRAY_SIZE(mpJujiM); i++) {
#if PLATFORM_GCN
        if (mpJujiM[i] != NULL)
#endif
        {
            if (mpJujiM[i]->getAlphaRate() != g_drawHIO.mParentAlpha) {
                mpJujiM[i]->setAlphaRate(g_drawHIO.mParentAlpha);
                setAlphaAnimeMax(mpJujiM[i], 5);
            }
        }
    }
}

#if PLATFORM_WII
void dMeter2Draw_c::drawTouchSubMenu(int param_0, f32 param_1, f32 param_2, u16 param_3) {
    if ((u32)(param_0 - 3) <= 1) {
        return;
    }

    if (param_0 == 0) {
        dMeter2Info_getString(param_3, ((J2DTextBox*)mpScreen->search(MULTI_CHAR('map_ts')))->getStringPtr(), NULL);
        dMeter2Info_getString(param_3, ((J2DTextBox*)mpScreen->search(MULTI_CHAR('map_t')))->getStringPtr(), NULL);
    } else if (param_0 == 2) {
        dMeter2Info_getString(param_3, ((J2DTextBox*)mpScreen->search(MULTI_CHAR('item_ts1')))->getStringPtr(), NULL);
        dMeter2Info_getString(param_3, ((J2DTextBox*)mpScreen->search(MULTI_CHAR('item_t1')))->getStringPtr(), NULL);
        dMeter2Info_getString(param_3, ((J2DTextBox*)mpScreen->search(MULTI_CHAR('item_ts')))->getStringPtr(), NULL);
        dMeter2Info_getString(param_3, ((J2DTextBox*)mpScreen->search(MULTI_CHAR('item_t')))->getStringPtr(), NULL);
    }

    if (field_0x3e8_wii[param_0] != NULL) {
        field_0x3e8_wii[param_0]->paneTrans(param_1, param_2);
    }
    if (param_0 == 2) {
        field_0x36c->paneTrans(param_1, param_2);
    }
    if (field_0x370[param_0] != NULL) {
        field_0x370[param_0]->paneTrans(g_drawHIO.mDpadMAPPosX, g_drawHIO.mDpadMAPPosY);
        field_0x370[param_0]->scale(g_drawHIO.mDpadMAPScale, g_drawHIO.mDpadMAPScale);
    }

    l_bloObj->m_is_calc = false;
    l_bloObj->calc();
}

void dMeter2Draw_c::scaleTouchSubMenu(int param_0, f32 param_1) {
    if (param_0 == 3) {
        field_0x718 = param_1 * field_0x704[param_0];
        mpRupeeKeyParent->scale(g_drawHIO.mRupeeKeyScale * field_0x718, g_drawHIO.mRupeeKeyScale * field_0x718);
    } else {
        if (field_0x3e8_wii[param_0] != NULL) {
            field_0x3e8_wii[param_0]->scale(param_1 * field_0x704[param_0], param_1 * field_0x704[param_0]);
            if (param_0 == 2) {
                field_0x36c->scale(param_1 * field_0x704[param_0], param_1 * field_0x704[param_0]);
            }
        }
        if (param_0 == 2) {
            f32 var_f1_1 = param_1 * field_0x704[param_0] / g_drawHIO.mTouchAreaUnselectScale[param_0];
            field_0x734 = var_f1_1;
            mpItemB->scale(field_0x728 * var_f1_1, field_0x728 * var_f1_1);
            mpButtonB->scale(field_0x730 * field_0x734, field_0x730 * field_0x734);
            mpLightB->scale(field_0x72c * field_0x734, field_0x72c * field_0x734);
        }
    }
}

void dMeter2Draw_c::setAlphaTouchSubMenuAnimeMin(int param_0) {
    if (field_0x3e8_wii[param_0] == NULL) {
        return;
    }

    if (field_0x3e8_wii[param_0]->getAlphaRate() != 0.0f) {
        field_0x3e8_wii[param_0]->setAlphaRate(g_drawHIO.mParentAlpha);
        setAlphaAnimeMin(field_0x3e8_wii[param_0], 5);
    }

    if (param_0 == 2) {
        if (field_0x36c->getAlphaRate() != 0.0f) {
            field_0x36c->setAlphaRate(g_drawHIO.mParentAlpha);
            setAlphaAnimeMin(field_0x36c, 5);
        }
    }
}

void dMeter2Draw_c::setAlphaTouchSubMenuAnimeMax(int param_0) {
    if (field_0x3e8_wii[param_0] == NULL) {
        return;
    }

    if (field_0x3e8_wii[param_0]->getAlphaRate() != g_drawHIO.mParentAlpha) {
        field_0x3e8_wii[param_0]->setAlphaRate(g_drawHIO.mParentAlpha);
        setAlphaAnimeMax(field_0x3e8_wii[param_0], 5);
    }

    if (param_0 == 2) {
        if (field_0x36c->getAlphaRate() != g_drawHIO.mParentAlpha) {
            field_0x36c->setAlphaRate(g_drawHIO.mParentAlpha);
            setAlphaAnimeMax(field_0x36c, 5);
        }
    }
}
#endif

void dMeter2Draw_c::setAlphaButtonChange(bool param_0) {
    bool set_parent = false;
    bool set_buttonA = false;
    bool set_buttonB = false;
    bool set_buttonX = false;
    bool set_buttonY = false;
    bool set_buttonZ = false;
    bool set_buttonXItem = false;
    bool set_buttonYItem = false;
    bool set_buttonBase = false;
    bool sp0C = false;
    bool set_buttonZItem = false;
    bool sp0A = false;
    bool sp09 = false;
    bool sp08 = false;

    if (field_0x7f0 != g_drawHIO.mParentAlpha || param_0) {
        field_0x7f0 = g_drawHIO.mParentAlpha;
        set_parent = true;
    }

    if (mMainHUDButtonsAlpha != g_drawHIO.mMainHUDButtonsAlpha || param_0) {
        field_0x7f0 = g_drawHIO.mMainHUDButtonsAlpha;
        set_parent = true;
    }

    if (mButtonAAlpha != g_drawHIO.mButtonAAlpha || param_0) {
        mButtonAAlpha = g_drawHIO.mButtonAAlpha;
        set_buttonA = true;
    }

    if (mButtonBAlpha != g_drawHIO.mButtonBAlpha || param_0) {
        mButtonBAlpha = g_drawHIO.mButtonBAlpha;
        set_buttonB = true;
    }

    if (mButtonXAlpha != g_drawHIO.mButtonXAlpha || param_0) {
        mButtonXAlpha = g_drawHIO.mButtonXAlpha;
        set_buttonX = true;
    }

    if (mButtonYAlpha != g_drawHIO.mButtonYAlpha || param_0) {
        mButtonYAlpha = g_drawHIO.mButtonYAlpha;
        set_buttonY = true;
    }

    if (field_0x80c != g_drawHIO.field_0x168 || param_0) {
        field_0x80c = g_drawHIO.field_0x168;
        sp09 = true;
    }

    if (field_0x810 != g_drawHIO.mButtonZAlpha || param_0) {
        field_0x810 = g_drawHIO.mButtonZAlpha;
#if !PLATFORM_WII
        set_buttonZ = true;
#endif
    }

    int sp44[4];
    for (int i = 0;
#if PLATFORM_WII
        i < 3;
#else
        i < ARRAY_SIZE(mpItemXY);
#endif
        i++) {
#if PLATFORM_WII
        if (mpItemXY[i]->isVisible()) {
#else
        if (mpTextXY[i]->isVisible()) {
#endif
            sp44[i] = 0;
        } else {
            sp44[i] = 1;
        }
    }
#if PLATFORM_WII
    if (mpItemB->isVisible()) {
        sp44[3] = 0;
    } else {
        sp44[3] = 1;
    }
#else
    sp44[2] = 0;
    sp44[3] = 0;
#endif

    if (mItemBBaseAlpha[sp44[3]] != g_drawHIO.mItemBBaseAlpha[sp44[3]] || param_0) {
        mItemBBaseAlpha[sp44[3]] = g_drawHIO.mItemBBaseAlpha[sp44[3]];
        sp08 = true;
    }

    if (mButtonXItemBaseAlpha[sp44[0]] != g_drawHIO.mButtonXItemBaseAlpha[sp44[0]] || param_0) {
        mButtonXItemBaseAlpha[sp44[0]] = g_drawHIO.mButtonXItemBaseAlpha[sp44[0]];
        set_buttonXItem = true;
    }

    if (mButtonYItemBaseAlpha[sp44[1]] != g_drawHIO.mButtonYItemBaseAlpha[sp44[1]] || param_0) {
        mButtonYItemBaseAlpha[sp44[1]] = g_drawHIO.mButtonYItemBaseAlpha[sp44[1]];
        set_buttonYItem = true;
    }

#if PLATFORM_WII
    if (mButtonZWiiItemBaseAlpha[sp44[2]] != g_drawHIO.mButtonZWiiItemBaseAlpha[sp44[2]] || param_0) {
        mButtonZWiiItemBaseAlpha[sp44[2]] = g_drawHIO.mButtonZWiiItemBaseAlpha[sp44[2]];
        set_buttonZItem = true;
    }
#else
    if (mButtonZGCNItemBaseAlpha != g_drawHIO.mButtonZGCNItemBaseAlpha || param_0) {
        mButtonZGCNItemBaseAlpha = g_drawHIO.mButtonZGCNItemBaseAlpha;
        set_buttonZItem = true;
    }
#endif

    if (mButtonBaseAlpha != g_drawHIO.mButtonBaseAlpha || param_0) {
        mButtonBaseAlpha = g_drawHIO.mButtonBaseAlpha;
        set_buttonBase = true;
    }

    if (mButtonDisplayBackAlpha != g_drawHIO.mButtonDisplayBackAlpha || param_0) {
        mButtonDisplayBackAlpha = g_drawHIO.mButtonDisplayBackAlpha;
        sp0C = true;
    }

    if (set_parent || set_buttonA || param_0) {
        mpButtonA->setAlphaRate(mButtonAAlpha * field_0x7f0);
#if PLATFORM_WII
        field_0x41c_wii->setAlphaRate(mButtonAAlpha * field_0x7f0);
#endif
    }

    if (set_parent || set_buttonB || param_0) {
        mpButtonB->setAlphaRate(mButtonBAlpha * field_0x7f0);
#if PLATFORM_WII
        field_0x420_wii->setAlphaRate(mButtonBAlpha * field_0x7f0);
#endif
    }

#if PLATFORM_WII
    if (set_parent || sp08 || param_0) {
        mpLightB->setAlphaRate(field_0x7f0 * mItemBBaseAlpha[sp44[3]]);
    }
#endif

    if (set_parent || set_buttonX || param_0) {
        mpButtonXY[0]->setAlphaRate(mButtonXAlpha * field_0x7f0);
    }

    if (set_parent || set_buttonY || param_0) {
        mpButtonXY[1]->setAlphaRate(mButtonYAlpha * field_0x7f0);
    }

#if PLATFORM_WII
    if (set_parent || sp09 || param_0) {
        mpButtonXY[2]->setAlphaRate(field_0x80c * field_0x7f0);
        field_0x418_wii->setAlphaRate(field_0x80c * field_0x7f0);
    }
#else
    if (set_parent || set_buttonZ || param_0) {
        mpButtonXY[2]->setAlphaRate(field_0x810 * field_0x7f0);
    }
#endif

    if (set_parent || set_buttonXItem || param_0) {
        mpLightXY[0]->setAlphaRate(mButtonXItemBaseAlpha[sp44[0]] * field_0x7f0);
    }

    if (set_parent || set_buttonYItem || param_0) {
        mpLightXY[1]->setAlphaRate(mButtonYItemBaseAlpha[sp44[1]] * field_0x7f0);
    }

#if PLATFORM_WII
    if (set_parent || set_buttonZItem || param_0) {
        mpLightXY[2]->setAlphaRate(field_0x7f0 * mButtonZWiiItemBaseAlpha[sp44[2]]);
    }
#else
    if (set_parent || sp0A || param_0) {
        mpLightXY[2]->setAlphaRate(mButtonZWiiItemBaseAlpha[sp44[2]] * field_0x7f0);
    }
#endif

#if PLATFORM_WII
    if (set_parent || param_0) {
        mpLightXY[2]->setAlphaRate(mButtonZGCNItemBaseAlpha * field_0x7f0);
    }
#else
    if (set_parent || set_buttonZItem || param_0) {
        mpLightXY[2]->setAlphaRate(mButtonZGCNItemBaseAlpha * field_0x7f0);
    }
#endif

    if (mpUzu != NULL && (set_parent || set_buttonBase || param_0)) {
        mpUzu->setAlphaRate(mButtonBaseAlpha * field_0x7f0);
    }

    if (mButtonATextSpacing != g_drawHIO.mButtonATextSpacing || param_0) {
        mButtonATextSpacing = g_drawHIO.mButtonATextSpacing;

        for (int i = 0; i < ARRAY_SIZE(mpAText); i++) {
            static_cast<J2DTextBox*>(mpAText[i]->getPanePtr())->setCharSpace(mButtonATextSpacing);
#if PLATFORM_WII
            static_cast<J2DTextBox*>(field_0x10c_wii[i]->getPanePtr())->setCharSpace(mButtonATextSpacing);
#endif
        }
    }

    if (mButtonATextColor.r != g_drawHIO.mButtonATextColor.r ||
        mButtonATextColor.g != g_drawHIO.mButtonATextColor.g ||
        mButtonATextColor.b != g_drawHIO.mButtonATextColor.b ||
        mButtonATextColor.a != g_drawHIO.mButtonATextColor.a || param_0)
    {
        mButtonATextColor.r = g_drawHIO.mButtonATextColor.r;
        mButtonATextColor.g = g_drawHIO.mButtonATextColor.g;
        mButtonATextColor.b = g_drawHIO.mButtonATextColor.b;
        mButtonATextColor.a = g_drawHIO.mButtonATextColor.a;

        static_cast<J2DTextBox*>(mpAText[4]->getPanePtr())
            ->setFontColor(g_drawHIO.mButtonATextColor, g_drawHIO.mButtonATextColor);

#if PLATFORM_WII
        static_cast<J2DTextBox*>(field_0x10c_wii[4]->getPanePtr())
            ->setFontColor(g_drawHIO.mButtonATextColor, g_drawHIO.mButtonATextColor);
#endif
    }

    if (mButtonBTextColor.r != g_drawHIO.mButtonBFontColor.r ||
        mButtonBTextColor.g != g_drawHIO.mButtonBFontColor.g ||
        mButtonBTextColor.b != g_drawHIO.mButtonBFontColor.b ||
        mButtonBTextColor.a != g_drawHIO.mButtonBFontColor.a || param_0)
    {
        mButtonBTextColor.r = g_drawHIO.mButtonBFontColor.r;
        mButtonBTextColor.g = g_drawHIO.mButtonBFontColor.g;
        mButtonBTextColor.b = g_drawHIO.mButtonBFontColor.b;
        mButtonBTextColor.a = g_drawHIO.mButtonBFontColor.a;

        static_cast<J2DTextBox*>(mpBText[4]->getPanePtr())
            ->setFontColor(g_drawHIO.mButtonBFontColor, g_drawHIO.mButtonBFontColor);
    }

#if !PLATFORM_WII
    if (mButtonZTextColor.r != g_drawHIO.mButtonZFontColor.r ||
        mButtonZTextColor.g != g_drawHIO.mButtonZFontColor.g ||
        mButtonZTextColor.b != g_drawHIO.mButtonZFontColor.b ||
        mButtonZTextColor.a != g_drawHIO.mButtonZFontColor.a || param_0)
    {
        mButtonZTextColor.r = g_drawHIO.mButtonZFontColor.r;
        mButtonZTextColor.g = g_drawHIO.mButtonZFontColor.g;
        mButtonZTextColor.b = g_drawHIO.mButtonZFontColor.b;
        mButtonZTextColor.a = g_drawHIO.mButtonZFontColor.a;

        static_cast<J2DTextBox*>(mpXYText[4][2]->getPanePtr())
            ->setFontColor(g_drawHIO.mButtonZFontColor, g_drawHIO.mButtonZFontColor);
    }
#endif

    if (mButtonXYTextColor.r != g_drawHIO.mButtonXYTextColor.r ||
        mButtonXYTextColor.g != g_drawHIO.mButtonXYTextColor.g ||
        mButtonXYTextColor.b != g_drawHIO.mButtonXYTextColor.b ||
        mButtonXYTextColor.a != g_drawHIO.mButtonXYTextColor.a || param_0)
    {
        mButtonXYTextColor.r = g_drawHIO.mButtonXYTextColor.r;
        mButtonXYTextColor.g = g_drawHIO.mButtonXYTextColor.g;
        mButtonXYTextColor.b = g_drawHIO.mButtonXYTextColor.b;
        mButtonXYTextColor.a = g_drawHIO.mButtonXYTextColor.a;

        static_cast<J2DTextBox*>(mpXYText[4][0]->getPanePtr())
            ->setFontColor(g_drawHIO.mButtonXYTextColor, g_drawHIO.mButtonXYTextColor);

        static_cast<J2DTextBox*>(mpXYText[4][1]->getPanePtr())
            ->setFontColor(g_drawHIO.mButtonXYTextColor, g_drawHIO.mButtonXYTextColor);
    }
}

void dMeter2Draw_c::setAlphaButtonAnimeMin() {
    if (mpButtonParent->getAlphaRate() != 0.0f) {
        mpButtonParent->setAlphaRate(g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha);
        setAlphaAnimeMin(mpButtonParent, 5);

        if (mpUzu != NULL) {
            mpUzu->setAlphaRate(mButtonBaseAlpha * mpButtonParent->getAlphaRate());
        }
    }

#if PLATFORM_WII
    if (field_0x364_wii->getAlphaRate() != 0.0f) {
        field_0x364_wii->setAlphaRate(g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha);
        setAlphaAnimeMin(field_0x364_wii, 5);
    }

    field_0x530_wii[2]->setAlpha(field_0x71c * mpButtonParent->getAlphaRate());
#endif
}

void dMeter2Draw_c::setAlphaButtonAnimeMax() {
    if (g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha != mpButtonParent->getAlphaRate()) {
        mpButtonParent->setAlphaRate(g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha);
        setAlphaAnimeMax(mpButtonParent, 5);

        if (mpUzu != NULL) {
            mpUzu->setAlphaRate(mButtonBaseAlpha * mpButtonParent->getAlphaRate());
        }
    }

    if (mpButtonParent->getAlphaTimer() == 5) {
        if (dMeter2Info_getLightDropGetFlag(dComIfGp_getStartStageDarkArea()) == 1) {
            dMeter2Info_setLightDropGetFlag(dComIfGp_getStartStageDarkArea(), 2);
        }
    }

#if PLATFORM_WII
    if (field_0x364_wii->getAlphaRate() != g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha) {
        field_0x364_wii->setAlphaRate(g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha);
        setAlphaAnimeMax(field_0x364_wii, 5);
    }

    field_0x530_wii[2]->setAlpha(field_0x71c * mpButtonParent->getAlphaRate());
#endif
}

void dMeter2Draw_c::setAlphaButtonAAnimeMin() {
    if (mpButtonA->getAlphaRate() != 0.0f) {
        mpButtonA->setAlphaRate(g_drawHIO.mButtonAAlpha *
                                (g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha));
        setAlphaAnimeMin(mpButtonA, 5);
    }

#if PLATFORM_WII
    if (field_0x41c_wii->getAlphaRate() != 0.0f) {
        field_0x41c_wii->setAlphaRate(g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha * g_drawHIO.mButtonAAlpha);
        setAlphaAnimeMin(field_0x41c_wii, 5);
    }
#endif

    for (int i = 0; i < ARRAY_SIZE(mpAText); i++) {
        if (mpAText[i]->getAlphaRate() != 0.0f) {
            mpAText[i]->setAlphaRate(g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha);
            setAlphaAnimeMin(mpAText[i], 5);
        }

#if PLATFORM_WII
        if (field_0x10c_wii[i]->getAlphaRate() != 0.0f) {
            field_0x10c_wii[i]->setAlphaRate(g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha);
            setAlphaAnimeMin(field_0x10c_wii[i], 5);
        }
#endif
    }
}

void dMeter2Draw_c::setAlphaButtonAAnimeMax() {
    if (g_drawHIO.mButtonAAlpha * (g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha) !=
        mpButtonA->getAlphaRate())
    {
        mpButtonA->setAlphaRate(g_drawHIO.mButtonAAlpha *
                                (g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha));
        setAlphaAnimeMax(mpButtonA, 5);
    }

#if PLATFORM_WII
    if (g_drawHIO.mButtonAAlpha * (g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha) !=
        field_0x41c_wii->getAlphaRate())
    {
        field_0x41c_wii->setAlphaRate(g_drawHIO.mButtonAAlpha *
                                (g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha));
        setAlphaAnimeMax(field_0x41c_wii, 5);
    }
#endif

    for (int i = 0; i < ARRAY_SIZE(mpAText); i++) {
        if (g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha != mpAText[i]->getAlphaRate()) {
            mpAText[i]->setAlphaRate(g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha);
            setAlphaAnimeMax(mpAText[i], 5);
        }

#if PLATFORM_WII
        if (g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha != field_0x10c_wii[i]->getAlphaRate()) {
            field_0x10c_wii[i]->setAlphaRate(g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha);
            setAlphaAnimeMax(field_0x10c_wii[i], 5);
        }
#endif
    }
}

void dMeter2Draw_c::setAlphaButtonBAnimeMin() {
    if (mpButtonB->getAlphaRate() != 0.0f) {
        mpButtonB->setAlphaRate(g_drawHIO.mButtonBAlpha *
                                (g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha));
        setAlphaAnimeMin(mpButtonB, 5);

#if !PLATFORM_WII
        mpLightB->setAlphaRate(g_drawHIO.mButtonBAlpha *
                               (g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha));
        setAlphaAnimeMin(mpLightB, 5);
#endif
    }

#if PLATFORM_WII
    if (field_0x420_wii->getAlphaRate() != 0.0f) {
        field_0x420_wii->setAlphaRate(g_drawHIO.mButtonBAlpha *
                                      (g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha));
        setAlphaAnimeMin(field_0x420_wii, 5);
    }
#endif

    if (mpItemB->getAlphaRate() != 0.0f) {
        mpItemB->setAlphaRate(g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha);
        setAlphaAnimeMin(mpItemB, 5);
    }

    for (int i = 0; i < ARRAY_SIZE(mpBText); i++) {
        if (mpBText[i]->getAlphaRate() != 0.0f) {
            mpBText[i]->setAlphaRate(g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha);
            setAlphaAnimeMin(mpBText[i], 5);
        }
    }
}

void dMeter2Draw_c::setAlphaButtonBAnimeMax() {
    if (mpButtonB->getAlphaRate() !=
        g_drawHIO.mButtonBAlpha * (g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha))
    {
        mpButtonB->setAlphaRate(g_drawHIO.mButtonBAlpha *
                                (g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha));
        setAlphaAnimeMax(mpButtonB, 5);

#if !PLATFORM_WII
        mpLightB->setAlphaRate(g_drawHIO.mButtonBAlpha *
                               (g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha));
        setAlphaAnimeMax(mpLightB, 5);
#endif
    }

#if PLATFORM_WII
    if (field_0x420_wii->getAlphaRate() != g_drawHIO.mButtonBAlpha *
                                           (g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha)) {
        field_0x420_wii->setAlphaRate(g_drawHIO.mButtonBAlpha *
                                      (g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha));
        setAlphaAnimeMax(field_0x420_wii, 5);
    }
#endif

    if (mpItemB->getAlphaRate() != g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha) {
        mpItemB->setAlphaRate(g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha);
        setAlphaAnimeMax(mpItemB, 5);
    }

    for (int i = 0; i < ARRAY_SIZE(mpBText); i++) {
        if (mpBText[i]->getAlphaRate() != g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha) {
            mpBText[i]->setAlphaRate(g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha);
            setAlphaAnimeMax(mpBText[i], 5);
        }
    }
}

#if PLATFORM_WII
void dMeter2Draw_c::setAlphaTriangle(u32 param_0, u32 param_1) {
    f32 var_f31 = 0.0f;
    u8 sp8[4] = {1, 1, 1, 1};

    f32 spC[4];
    for (int i = 0; i < 4; i++) {
        spC[i] = 1.0f;
    }

    int var_r26 = 0;
    if ((param_0 & 0x01000000) != 0) {
        for (int i = 0; i < 24; i++) {
            if (dComIfGs_getLineUpItem(i) != 0xFF) {
                var_r26++;
            }
        }
    }

    if ((param_0 & 0x01000000) != 0) {
        if (param_1 != 0 || var_r26 < 2) {
            spC[0] = 0.0f;
        } else {
            sp8[0] = 0;
        }
    } else if (!dMeter2Info_isUseButton(METER2_USEBUTTON_X)) {
        if (getFishingType() != 0) {
            spC[0] = 0.0f;
        } else {
            spC[0] = 0.0f;
        }
    }

    if ((param_0 & 0x01000000) != 0) {
        if (param_1 != 0 || var_r26 < 2) {
            spC[1] = 0.0f;
        } else {
            sp8[1] = 0;
        }
    } else if (!dMeter2Info_isUseButton(METER2_USEBUTTON_Y)) {
        if (getFishingType() != 0) {
            spC[1] = 0.0f;
        } else {
            spC[1] = 0.0f;
        }
    }

    if ((param_0 & 0x01000000) != 0) {
        if (param_1 != 0 || var_r26 < 2) {
            spC[2] = 0.0f;
        } else {
            sp8[2] = 0;
        }
    } else if (!dMeter2Info_isUseButton(METER2_USEBUTTON_C)) {
        if (getFishingType() != 0) {
            spC[2] = 0.0f;
        } else {
            spC[2] = 0.0f;
        }
    }

    if (getCanoeFishing() != 0 || dComIfGs_isEventBit(0xC10) == 0) {
        spC[3] = 0.0f;
    } else if (!dMeter2Info_isUseButton(METER2_USEBUTTON_Z)) {
        spC[3] = 0.0f;
    }

    if (spC[0] || spC[1] || spC[2] || spC[3]) {
        int temp_r5 = g_drawHIO.field_0x422;
        int temp_r6 = g_drawHIO.field_0x424;
        if (++field_0x808_wii >= temp_r5 + temp_r6) {
            field_0x808_wii = 0;
        }

        if (field_0x808_wii < temp_r5) {
            var_f31 = (f32)field_0x808_wii / (f32)temp_r5;
        } else {
            var_f31 = (f32)((temp_r5 + temp_r6) - field_0x808_wii) / (f32)temp_r6;
        }
    } else if (field_0x808_wii != 0) {
        field_0x808_wii = 0;
    }

    f32 temp_f29 = mpButtonXY[2]->getAlphaRate() * mpITextN->getAlphaRate() *
        mpButtonParent->getAlphaRate();
    for (int i = 0; i < 4; i++) {
        if (sp8[i] == 0) {
            spC[i] = var_f31;
            field_0x798_wii[i] = (f64)var_f31;
        } else {
            if (spC[i] != field_0x798_wii[i]) {
                cLib_addCalc2(&field_0x798_wii[i], spC[i], 0.4f, 0.5f);
                if (std::fabs(field_0x798_wii[i] - spC[i]) < 0.1f) {
                    field_0x798_wii[i] = spC[i];
                }
            }
        }

        field_0x134_wii[i]->setAlphaRate(temp_f29 * field_0x798_wii[i]);
    }
}
#endif

void dMeter2Draw_c::setButtonIconAAlpha(u8 unused0, u32 unused1, bool unused2) {
    if (mpButtonA->isVisible()) {
        u8 alpha = g_drawHIO.mButtonAAlpha *
                   (g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha) *
                   (f32)mpButtonA->getInitAlpha();
        f32 alpha_rate = mpButtonParent->getAlphaRate();

        if (!dMeter2Info_isUseButton(METER2_USEBUTTON_A) && !dComIfGp_isDoSetFlag(4)) {
            alpha = g_drawHIO.mButtonXYBaseDimAlpha;
        }

        mpButtonA->setAlpha(alpha * alpha_rate);

        for (int i = 0; i < ARRAY_SIZE(mpAText); i++) {
            u8 alpha = mpAText[i]->getInitAlpha();
            if (!dMeter2Info_isUseButton(METER2_USEBUTTON_A)) {
                alpha = (f32)alpha * ((f32)g_drawHIO.field_0x42c / 255.0f);
            }

            mpAText[i]->setAlpha(alpha * alpha_rate);
        }
    }
}

void dMeter2Draw_c::setButtonIconBAlpha(u8 unused0, u32 unused1, bool param_2) {
    if (mpItemB->isVisible() || mpLightB->isVisible() || mpButtonB->isVisible()) {
        f32 temp_f30 =
            g_drawHIO.mButtonBAlpha * (g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha);

        f32 var_f2;
        if (mpItemB->isVisible()) {
            var_f2 = mItemBBaseAlpha[0];
        } else {
            var_f2 = mItemBBaseAlpha[1];
        }

        u8 var_r25 = mpItemB->getInitAlpha();
        u8 var_r26 = var_f2 * (temp_f30 * (f32)mpLightB->getInitAlpha());
        u8 var_r27 = temp_f30 * (f32)mpButtonB->getInitAlpha();
        f32 temp_f31 = mpButtonParent->getAlphaRate();

        if (!(dMeter2Info_isUseButton(METER2_USEBUTTON_B) & 1)) {
#if PLATFORM_GCN
            if (!dMeter2Info_isSub2DStatus(1))
#endif
            {
                var_r25 = g_drawHIO.mButtonXYItemDimAlpha;
                var_r26 = g_drawHIO.mButtonXYItemDimAlpha;
                var_r27 = g_drawHIO.mButtonXYBaseDimAlpha;
            }
        }

        if (!param_2) {
            var_r26 = 0;
        }

        mpItemB->setAlpha(var_r25 * temp_f31);
        mpLightB->setAlpha(var_r26 * temp_f31);
        mpButtonB->setAlpha(var_r27 * temp_f31);

#if PLATFORM_WII
        field_0x420_wii->setAlpha(var_r27 * temp_f31);
#elif PLATFORM_GCN
        for (int i = 0; i < ARRAY_SIZE(mpBText); i++) {
            u8 alpha = mpBText[i]->getInitAlpha();
            if (!dMeter2Info_isUseButton(METER2_USEBUTTON_B) && !dMeter2Info_isSub2DStatus(1)) {
                alpha = (f32)alpha * ((f32)g_drawHIO.field_0x42c / 255.0f);
            }

            mpBText[i]->setAlpha(alpha * temp_f31);
        }
#endif
    }
}

void dMeter2Draw_c::setButtonIconMidonaAlpha(u32 param_0) {
    mpButtonMidona->scale(g_drawHIO.mMidnaIconScale, g_drawHIO.mMidnaIconScale);
    mpButtonMidona->paneTrans(g_drawHIO.mMidnaIconPosX, g_drawHIO.mMidnaIconPosY);

    if (mpButtonMidona->isVisible()) {
        f32 temp_f30 =
            g_drawHIO.mMidnaIconAlpha * (g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha);
        f32 var_f29 = (f32)mpButtonMidona->getInitAlpha() / 255.0f;
        f32 temp_f31 = mpButtonParent->getAlphaRate();
        bool var_r31 = 1;

        if (getCanoeFishing() ||
              /*dSv_event_flag_c::M_009 - Cutscene - [cutscene: 6B] Prison escape - Midna rides on back */
            (!dComIfGs_isEventBit(0x0540) && !dMeter2Info_isUseButton(METER2_USEBUTTON_Z)) ||
             /* dSv_event_flag_c::M_067 - Main Event - Midna riding / not riding (ON == riding) */
            !dComIfGs_isEventBit(0x0C10) ||
            /* dSv_event_flag_c::F_0800 - Cutscene - After returning to Ordon Woods, until Midna comes out of the shadows 
                                                     (If 800 is ON, Midna can't be called) */
            dComIfGs_isEventBit(0x6140))
        {
            var_f29 = 0.0f;
#if PLATFORM_WII
        } else if (dComIfGp_isPauseFlag() && (param_0 & 0x1000000) == 0) {
#else
        } else if (dComIfGp_isPauseFlag()) {
#endif
            var_f29 = 0.0f;
        } else if (!dMeter2Info_isUseButton(METER2_USEBUTTON_Z)) {
            var_f29 = g_drawHIO.mButtonXYItemDimAlpha / 255.0f;
        } else if (isEmphasisZ() && !(param_0 & 0x40000000)) {
#if PLATFORM_GCN
            if (temp_f31 > 0.0f)
#endif
            {
                if (field_0x738 == 0.0f) {
                    field_0x738 = 18.0f;
                }

                if (field_0x738 == 18.0f) {
                    mDoAud_seStart(Z2SE_SY_HINT_BUTTON_BLINK, NULL, 0, 0);
                    dMeter2Info_set2DVibration();
                }

                mButtonZAlpha = var_f29;
                var_r31 = false;
            }
        }

        if (var_r31) {
            if (field_0x738 != 0.0f) {
                field_0x738 = 0.0f;
            }

            if (mButtonZAlpha != var_f29) {
                cLib_addCalc2(&mButtonZAlpha, var_f29, 0.4f, 0.5f);

                if (std::fabs(mButtonZAlpha - var_f29) < 0.1f) {
                    mButtonZAlpha = var_f29;
                }
            }
        }

        mpButtonMidona->setAlpha(temp_f30 * (255.0f * mButtonZAlpha * temp_f31));
    } else {
        mButtonZAlpha = 0.0f;
    }

#if !PLATFORM_WII
    f32 var_f27 = g_drawHIO.mButtonZAlpha * (g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha);
    f32 var_f30 = var_f27 * (f32)mpButtonXY[2]->getInitAlpha() / 255.0f;
    f32 var_f26 = mpButtonParent->getAlphaRate();
    if (param_0 & 0x1000000) {
        var_f30 = 0.0f;
    } else if (!dMeter2Info_isUseButton(METER2_USEBUTTON_Z)) {
        var_f30 = (f32)g_drawHIO.mButtonXYBaseDimAlpha / 255.0f;
    }

    if (field_0x724 != var_f30) {
        cLib_addCalc2(&field_0x724, var_f30, 0.4f, 0.5f);

        if (std::fabs(field_0x724 - var_f30) < 0.1f) {
            field_0x724 = var_f30;
        }
    }

    mpButtonXY[2]->setAlpha(255.0f * field_0x724 * var_f26);
#endif
}

void dMeter2Draw_c::setButtonIconAlpha(int i_no, u8 unused0, u32 unused1, bool unused2) {
    JUT_ASSERT(6804, i_no < SELECT_MAX_e);

    if (mpItemXY[i_no]->isVisible() || mpLightXY[i_no]->isVisible() ||
        mpButtonXY[i_no]->isVisible())
    {
        f32 var_f30;
#if !PLATFORM_WII
        var_f30 = 1.0f;
#endif

        int var_r26 = 1;
        if (mpItemXY[i_no]->isVisible()) {
            var_r26 = 0;
        }

        f32 var_f2;
        if (i_no == 0) {
            var_f2 =
                g_drawHIO.mButtonXAlpha * (g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha);
            var_f30 = g_drawHIO.mButtonXItemBaseAlpha[var_r26];
        } else if (i_no == 1) {
            var_f2 =
                g_drawHIO.mButtonYAlpha * (g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha);
            var_f30 = g_drawHIO.mButtonYItemBaseAlpha[var_r26];
        } else {
#if PLATFORM_WII
            var_f2 =
                 g_drawHIO.field_0x168 * (g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha);
            var_f30 = g_drawHIO.mButtonZWiiItemBaseAlpha[var_r26];
#else
            var_f2 =
                g_drawHIO.mButtonZAlpha * (g_drawHIO.mParentAlpha * g_drawHIO.mMainHUDButtonsAlpha);
#endif
        }

        u8 var_r28 = mpItemXY[i_no]->getInitAlpha();
        u8 var_r27 = var_f30 * (var_f2 * (f32)mpLightXY[i_no]->getInitAlpha());
        u8 var_r26_2 = var_f2 * (f32)mpButtonXY[i_no]->getInitAlpha();
        f32 temp_f31 = mpButtonParent->getAlphaRate();

        if (i_no == 0) {
            if (!dMeter2Info_isUseButton(METER2_USEBUTTON_X)) {
                if (getFishingType()) {
                    var_r28 = 0;
                } else {
                    var_r28 = g_drawHIO.mButtonXYItemDimAlpha;
                }

                var_r27 = g_drawHIO.mButtonXYItemDimAlpha;
                var_r26_2 = g_drawHIO.mButtonXYBaseDimAlpha;
            }
        } else if (i_no == 1) {
            if (!dMeter2Info_isUseButton(METER2_USEBUTTON_Y)) {
                if (getFishingType()) {
                    var_r28 = 0;
                } else {
                    var_r28 = g_drawHIO.mButtonXYItemDimAlpha;
                }

                var_r27 = g_drawHIO.mButtonXYItemDimAlpha;
                var_r26_2 = g_drawHIO.mButtonXYBaseDimAlpha;
            }
        }
#if PLATFORM_WII
        else if (i_no == 2) {
            if (!dMeter2Info_isUseButton(METER2_USEBUTTON_C)) {
                if (getFishingType()) {
                    var_r28 = 0;
                } else {
                    var_r28 = g_drawHIO.mButtonXYItemDimAlpha;
                }

                var_r27 = g_drawHIO.mButtonXYItemDimAlpha;
                var_r26_2 = g_drawHIO.mButtonXYBaseDimAlpha;
            }
        }
#endif

        mpItemXY[i_no]->setAlpha((f32)var_r28 * temp_f31);
        mpLightXY[i_no]->setAlpha((f32)var_r27 * temp_f31);
#if PLATFORM_WII
        if (i_no == 2) {
            field_0x530_wii[2]->setAlpha(((f32)var_r26_2 * temp_f31 * field_0x71c) / 255.0f);
        } else {
            mpButtonXY[i_no]->setAlpha((f32)var_r26_2 * temp_f31);
        }
#else
        mpButtonXY[i_no]->setAlpha((f32)var_r26_2 * temp_f31);
#endif

        int var_r26_3 = 1;
        if (i_no == 0) {
            if (!dMeter2Info_isUseButton(METER2_USEBUTTON_X)) {
                var_r26_3 = 0;
            }
        } else if (i_no == 1) {
            if (!dMeter2Info_isUseButton(METER2_USEBUTTON_Y)) {
                var_r26_3 = 0;
            }
        }

        for (int i = 0; i < 5; i++) {
            u8 var_r0 = mpXYText[i][i_no]->getInitAlpha();
            if (!var_r26_3) {
                var_r0 = (f32)var_r0 * (g_drawHIO.field_0x42c / 255.0f);
            }

            mpXYText[i][i_no]->setAlpha((f32)var_r0 * temp_f31);
        }
    }
}

ResTIMG* dMeter2Draw_c::getNumberTexture(int i) {
    ResTIMG* timg = (ResTIMG*)dComIfGp_getMain2DArchive()->getResource('TIMG',
                                                              dMeter2Info_getNumberTextureName(i));
    return timg;
}

char* dMeter2Draw_c::getActionString(u8 i_action, u8 i_type, u8* param_2) {
    static char i_text_buf[32];

    static u32 i_action_num[] = {
        0,    1001, 1002, 1003, 1004, 1005, 1006, 1007, 1387, 1009, 1010, 1011, 1012, 1013, 1014,
        1015, 1033, 1016, 1017, 1018, 1019, 1020, 1045, 1022, 1026, 1027, 1028, 1029, 1030, 1024,
        1031, 1025, 1023, 1045, 1036, 1032, 93,   0,    0,    0,    1035, 1034, 1037, 1038, 1039,
        1040, 1041, 998,  1042, 1043, 1044, 1046, 1047, 1048, 1049, 1050, 1051, 1052, 1053, 1054,
        1055, 1056, 1057, 1058, 1059, 1070, 1060, 1061, 1062, 1063, 1064, 1067, 1065, 1066, 1211,
        1069, 1021, 1072, 1073, 0,    1074, 1075, 1076, 1077, 1078, 1079, 1080, 1081, 1082, 1083,
        1084, 1085, 1086, 1087, 1088, 1089, 1090, 1092, 1093, 1094, 1095, 1096, 1904, 1097, 1098,
        1099, 1100, 1150, 1149, 1148, 1377, 1147, 1145, 1146, 1161, 1162, 1163, 1164, 1165, 1166,
        1144, 982,  983,  1143, 1160, 1319, 1314, 1399, 1008,
    };

    strcpy(i_text_buf, "");

    if (param_2 != NULL) {
        *param_2 = 1;
    }

    if (i_action == 0x81) {
        if (g_drawHIO.mButtonATextActionID != 0) {
            JMSMesgEntry_c mesg_entry;

            if (i_type == 1) {
                dMeter2Info_getStringKana(g_drawHIO.mButtonATextActionID, i_text_buf, &mesg_entry);
            } else {
                dMeter2Info_getStringKanji(g_drawHIO.mButtonATextActionID, i_text_buf, &mesg_entry);
            }

            if (param_2 != NULL) {
                *param_2 = mesg_entry.output_type;

                if (g_drawHIO.mButtonATextActionID == 0x3E6) {
                    *param_2 = 7;
                }
            }
        }
    } else if (i_action < 0x82 && i_action_num[i_action] != 0) {
        JMSMesgEntry_c mesg_entry;

        if (i_type == 1) {
            dMeter2Info_getStringKana(i_action_num[i_action], i_text_buf, &mesg_entry);
        } else {
            dMeter2Info_getStringKanji(i_action_num[i_action], i_text_buf, &mesg_entry);
        }

        if (param_2 != NULL) {
            *param_2 = mesg_entry.output_type;

            if (i_action_num[i_action] == 0x3E6) {
                *param_2 = 7;
            }
        }
    }

    return i_text_buf;
}

void dMeter2Draw_c::changeTextureItemB(u8 i_itemNo) {
    int var_r31 = 0;
    if (i_itemNo == dItemNo_LURE_ROD_e) {
#if !PLATFORM_WII
        var_r31 = 2;
#endif
    } else if (i_itemNo == dItemNo_SWORD_e || i_itemNo == dItemNo_MASTER_SWORD_e || i_itemNo == dItemNo_WOOD_STICK_e ||
               i_itemNo == dItemNo_LIGHT_SWORD_e)
    {
        var_r31 = 1;
    }

    if (field_0x76b == 0) {
        field_0x76b = 1;
    } else {
        field_0x76b = 0;
    }

    setItemParamB(i_itemNo);
    int var_r28 = dMeter2Info_readItemTexture(i_itemNo, mpItemBTex[field_0x76b][0],
                                    (J2DPicture*)mpItemB->getPanePtr(), mpItemBTex[field_0x76b][1],
                                    mpItemBPane, NULL, NULL, NULL, NULL, -1);
    if (var_r28 <= 1)
    {
        mpItemBPane->hide();
    } else {
        mpItemBPane->show();
    }

    f32 var_f4;
    if (g_drawHIO.mItemScaleAdjustON == true) {
        var_f4 = g_drawHIO.mItemScalePercent / 100.0f;
    } else {
        var_f4 = dItem_data::getTexScale(i_itemNo) / 100.0f;
    }

#if PLATFORM_WII
    field_0x6e4 = var_f4 * ((mpItemBTex[field_0x76b][0]->width * mpItemXY[2]->getInitSizeX()) / 48.0f);
    field_0x6e8 = var_f4 * ((mpItemBTex[field_0x76b][0]->height * mpItemXY[2]->getInitSizeX()) / 48.0f);
    field_0x6dc = (mpItemB->getInitSizeX() - field_0x6e4) * 0.5f;
    field_0x6e0 = (mpItemB->getInitSizeY() - field_0x6e8) * 0.5f;
#else
    field_0x6e4 = var_f4 * ((mpItemBTex[field_0x76b][0]->width * mpItemB->getInitSizeX()) / 48.0f);
    field_0x6e8 = var_f4 * ((mpItemBTex[field_0x76b][0]->height * mpItemB->getInitSizeY()) / 48.0f);
    field_0x6dc = (mpItemB->getInitSizeX() - field_0x6e4) * 0.5f;
    field_0x6e0 = (mpItemB->getInitSizeY() - field_0x6e8) * 0.5f;
#endif
    mpItemB->resize(field_0x6e4, field_0x6e8);
    mpItemB->paneTrans(field_0x6dc + (g_drawHIO.mButtonBItemPosX[var_r31] + field_0x6ec),
                       field_0x6e0 + (g_drawHIO.mButtonBItemPosY[var_r31] + field_0x6f0));

    mpItemBPane->resize(field_0x6e4, field_0x6e8);
}

void dMeter2Draw_c::changeTextureItemXY(int i_no, u8 i_itemNo) {
    JUT_ASSERT(7268, i_no < SELECT_MAX_e);

    if (i_itemNo == dItemNo_LIGHT_ARROW_e) {
        i_itemNo = dItemNo_BOW_e;
    }

    if (field_0x76c[i_no] == 0) {
        field_0x76c[i_no] = 1;
    } else {
        field_0x76c[i_no] = 0;
    }

    int var_r28 =
        dMeter2Info_readItemTexture(i_itemNo, mpItemXYTex[i_no][field_0x76c[i_no]][0],
                                    (J2DPicture*)mpItemXY[i_no]->getPanePtr(),
                                    mpItemXYTex[i_no][field_0x76c[i_no]][1], mpItemXYPane[i_no],
                                    NULL, NULL, NULL, NULL, -1);
    if (var_r28 <= 1) {
        mpItemXYPane[i_no]->hide();
    } else {
        mpItemXYPane[i_no]->show();
    }

    f32 var_f4;
    if (g_drawHIO.mItemScaleAdjustON == true) {
        var_f4 = g_drawHIO.mItemScalePercent / 100.0f;
    } else {
        var_f4 = dItem_data::getTexScale(i_itemNo) / 100.0f;
    }

    field_0x6c4[i_no] =
        var_f4 *
        ((mpItemXYTex[i_no][field_0x76c[i_no]][0]->width * mpItemXY[i_no]->getInitSizeX()) / 48.0f);
    field_0x6d0[i_no] =
        var_f4 *
        ((mpItemXYTex[i_no][field_0x76c[i_no]][0]->height * mpItemXY[i_no]->getInitSizeY()) /
         48.0f);
    field_0x6ac[i_no] = (mpItemXY[i_no]->getInitSizeX() - field_0x6c4[i_no]) * 0.5f;
    field_0x6b8[i_no] = (mpItemXY[i_no]->getInitSizeY() - field_0x6d0[i_no]) * 0.5f;
    mpItemXY[i_no]->resize(field_0x6c4[i_no], field_0x6d0[i_no]);

    if (i_no == SELECT_X_e) {
        mpItemXY[i_no]->paneTrans(mItemParams[SELECT_X_e].pos_x + field_0x6ac[i_no],
                                  mItemParams[SELECT_X_e].pos_y + field_0x6b8[i_no]);
    } else {
        mpItemXY[i_no]->paneTrans(mItemParams[SELECT_Y_e].pos_x + field_0x6ac[i_no],
                                  mItemParams[SELECT_Y_e].pos_y + field_0x6b8[i_no]);
    }

    mpItemXYPane[i_no]->resize(field_0x6c4[i_no], field_0x6d0[i_no]);
}

void dMeter2Draw_c::setAlphaAnimeMin(CPaneMgrAlpha* i_pane, s16 i_min) {
    f32 alpha_rate = i_pane->getAlphaRate();
    s16 alpha_timer = i_pane->getAlphaTimer();
    if (alpha_timer > i_min) {
        alpha_timer = i_min;
    }

    if (alpha_timer <= 0) {
        if (i_pane->getAlphaRate() != 0.0f) {
            i_pane->setAlphaRate(0.0f);
        }
        (void)0;
    } else {
        alpha_timer--;
        if (alpha_timer < 0) {
            alpha_timer = 0;
        }

        i_pane->alphaAnimeStart(alpha_timer);
        i_pane->setAlphaRate(alpha_rate * ((f32)alpha_timer / (f32)i_min));
    }
}

void dMeter2Draw_c::setAlphaAnimeMax(CPaneMgrAlpha* i_pane, s16 i_max) {
    f32 alpha_rate = i_pane->getAlphaRate();
    s16 alpha_timer = i_pane->getAlphaTimer();

    if (alpha_timer >= i_max) {
        if (i_pane->getAlphaRate() != alpha_rate) {
            i_pane->setAlphaRate(alpha_rate);
        }
        (void)0;
    } else {
        alpha_timer++;
        if (alpha_timer > i_max) {
            alpha_timer = i_max;
        }

        i_pane->alphaAnimeStart(alpha_timer);
        i_pane->setAlphaRate(alpha_rate * ((f32)alpha_timer / (f32)i_max));
    }
}

void dMeter2Draw_c::setItemNum(u8 i_button, u8 i_num, u8 i_max) {
    JUT_ASSERT(7434, i_button < SELECT_MAX_e);

    if (i_num > i_max) {
        i_num = i_max;
    }

    JUtility::TColor black;
    JUtility::TColor white;

    if (i_num == i_max) {
        black.set(30, 30, 30, 0);
        white.set(255, 200, 50, 255);
    } else if (i_num == 0) {
        black.set(30, 30, 30, 0);
        white.set(180, 180, 180, 255);
    } else {
        black.set(0, 0, 0, 0);
        white.set(255, 255, 255, 255);
    }

    for (int i = 0; i < ARRAY_SIZE(mpItemNumTex[i_button]); i++) {
        mpItemNumTex[i_button][i]->setBlackWhite(black, white);
    }

    if (i_num < 100) {
        ResTIMG* timg = (ResTIMG*)dComIfGp_getMain2DArchive()->getResource(
            'TIMG', dMeter2Info_getNumberTextureName(i_num / 10));
        mpItemNumTex[i_button][0]->changeTexture(timg, 0);

        timg = (ResTIMG*)dComIfGp_getMain2DArchive()->getResource(
            'TIMG', dMeter2Info_getNumberTextureName(i_num % 10));
        mpItemNumTex[i_button][1]->changeTexture(timg, 0);

        mpItemNumTex[i_button][2]->hide();
    } else {
        ResTIMG* timg = (ResTIMG*)dComIfGp_getMain2DArchive()->getResource(
            'TIMG', dMeter2Info_getNumberTextureName(i_num / 100));
        mpItemNumTex[i_button][0]->changeTexture(timg, 0);

        i_num = i_num % 100;
        timg = (ResTIMG*)dComIfGp_getMain2DArchive()->getResource(
            'TIMG', dMeter2Info_getNumberTextureName(i_num / 10));

        mpItemNumTex[i_button][1]->changeTexture(timg, 0);

        timg = (ResTIMG*)dComIfGp_getMain2DArchive()->getResource(
            'TIMG', dMeter2Info_getNumberTextureName(i_num % 10));
        mpItemNumTex[i_button][2]->changeTexture(timg, 0);

        mpItemNumTex[i_button][2]->show();
    }
}

void dMeter2Draw_c::drawItemNum(u8 i_button, f32 i_alpha) {
    JUT_ASSERT(7496, i_button < SELECT_MAX_e);
    f32 alpha = i_alpha; // unused

    if (i_alpha == 1.0f) {
#if PLATFORM_WII
        if (i_button == SELECT_C_e) {
            if (mpItemB->isVisible() && !getCanoeFishing()) {
                i_alpha = mpItemB->getAlphaRate();
            } else {
                i_alpha = 0.0f;
            }
        } else {
            if (mpItemXY[i_button]->isVisible()) {
                i_alpha = mpItemXY[i_button]->getAlphaRate();
            } else {
                i_alpha = 0.0f;
            }
        }
#else
        i_alpha = mpItemXY[i_button]->getAlphaRate();
#endif
    }

    for (int i = 0; i < 3; i++) {
        mpItemNumTex[i_button][i]->setAlpha(i_alpha * 255.0f);
    }
}
void dMeter2Draw_c::drawKanteraMeter(u8 i_button, f32 i_alphaRate) {
    JUT_ASSERT(7573, i_button < SELECT_MAX_e);

#if PLATFORM_WII
    CPaneMgr* pane;
    if (i_button == SELECT_C_e) {
        pane = mpItemB;
    } else {
        pane = mpItemXY[i_button];
    }

    f32 sp10[4] = {0.0f};
    f32 sp8[4] = {0.0f};

    if (mDoGph_gInf_c::mWide == TRUE) {
        sp10[0] = -81.0f;
        sp10[1] = -63.0f;
        sp10[2] = -71.0f;
        sp10[3] = -76.0f;
        sp8[0] = 1.0f;
    }

    if (i_alphaRate == 1.0f) {
        if (PLATFORM_WII && i_button == SELECT_C_e) {
            if (mpItemB->isVisible() && !getCanoeFishing()) {
                i_alphaRate = mpItemB->getAlphaRate();
            } else {
                i_alphaRate = 0.0f;
            }
        } else {
            if (mpItemXY[i_button]->isVisible()) {
                i_alphaRate = mpItemXY[i_button]->getAlphaRate();
            } else {
                i_alphaRate = 0.0f;
            }
        }
    }
#else
    CPaneMgr* pane = mpItemXY[i_button];
    f32 sp10[2] = {0.0f};
    f32 sp8[2] = {0.0f};

    if (i_alphaRate == 1.0f) {
        i_alphaRate = mpItemXY[i_button]->getAlphaRate();
    }
#endif

    Vec vtx0 = pane->getPanePtr()->getGlbVtx(0);
    Vec vtx3 = pane->getPanePtr()->getGlbVtx(3);

    mpKanteraMeter[i_button]->setPos(((vtx0.x + vtx3.x) * 0.5f) + 9.0f + sp10[i_button],
                                     vtx3.y + sp8[i_button]);
#if PLATFORM_WII
    mpKanteraMeter[i_button]->
        setScale(mpITextN->getPanePtr()->mScaleX / field_0x704[2] * 0.6f,
                 mpITextN->getPanePtr()->mScaleX / field_0x704[2] * 0.6f);
#else
    f32 var_f31 = 1.0f;
    mpKanteraMeter[i_button]->setScale(0.6f * var_f31, 0.6f * var_f31);
#endif
    mpKanteraMeter[i_button]->setNowGauge(dComIfGs_getMaxOil(), dComIfGs_getOil());
    mpKanteraMeter[i_button]->setAlphaRate(i_alphaRate);
}

bool dMeter2Draw_c::isButtonVisible() {
    if (mpButtonParent->getAlphaRate() != 0.0f) {
        return true;
    } else {
        return false;
    }
}

#if PLATFORM_WII
void dMeter2Draw_c::setTouchAreaAnime(bool param_0) {
    f32 var_f26;
    f32 var_f27;

    s32 temp_r19 = field_0x772 - 1;
    GXColor sp1C;
    GXColor sp18;
    for (int i = 0; i < 5; i++) {
        if (i == temp_r19 && param_0 != 0) {
            if (field_0x7fe_wii[i] == -1) {
                Z2AudioMgr::getInterface()->seStart(Z2SE_POINT_ON_ICON, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
                dMeter2Info_set2DVibration();
            }

            if (field_0x530_wii[i] != NULL) {
                if (field_0x7fe_wii[i] == -1) {
                    Z2AudioMgr::getInterface()->seStart(Z2SE_POINT_ON_ICON, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
                    dMeter2Info_set2DVibration();
                }

                if (++field_0x7fe_wii[i] >= g_drawHIO.mTouchAreaSelectFrameNum) {
                    field_0x7fe_wii[i] = 0;
                }

                JUtility::TColor sp44;
                JUtility::TColor sp40;
                f32 var_f0;
                if (field_0x7fe_wii[i] < g_drawHIO.mTouchAreaSelectFrameNum / 2) {
                    var_f0 = field_0x7fe_wii[i] / (g_drawHIO.mTouchAreaSelectFrameNum / 2.0f);
                } else {
                    var_f0 = (g_drawHIO.mTouchAreaSelectFrameNum - field_0x7fe_wii[i]) / (g_drawHIO.mTouchAreaSelectFrameNum / 2.0f);
                }

                sp44.r = g_drawHIO.mTouchAreaSelectBlack[0].r + (var_f0 * (g_drawHIO.mTouchAreaSelectBlack[1].r - g_drawHIO.mTouchAreaSelectBlack[0].r));
                sp44.g = g_drawHIO.mTouchAreaSelectBlack[0].g + (var_f0 * (g_drawHIO.mTouchAreaSelectBlack[1].g - g_drawHIO.mTouchAreaSelectBlack[0].g));
                sp44.b = g_drawHIO.mTouchAreaSelectBlack[0].b + (var_f0 * (g_drawHIO.mTouchAreaSelectBlack[1].b - g_drawHIO.mTouchAreaSelectBlack[0].b));
                sp44.a = g_drawHIO.mTouchAreaSelectBlack[0].a + (var_f0 * (g_drawHIO.mTouchAreaSelectBlack[1].a - g_drawHIO.mTouchAreaSelectBlack[0].a));
                sp40.r = g_drawHIO.mTouchAreaSelectWhite[0].r + (var_f0 * (g_drawHIO.mTouchAreaSelectWhite[1].r - g_drawHIO.mTouchAreaSelectWhite[0].r));
                sp40.g = g_drawHIO.mTouchAreaSelectWhite[0].g + (var_f0 * (g_drawHIO.mTouchAreaSelectWhite[1].g - g_drawHIO.mTouchAreaSelectWhite[0].g));
                sp40.b = g_drawHIO.mTouchAreaSelectWhite[0].b + (var_f0 * (g_drawHIO.mTouchAreaSelectWhite[1].b - g_drawHIO.mTouchAreaSelectWhite[0].b));
                sp40.a = g_drawHIO.mTouchAreaSelectWhite[0].a + (var_f0 * (g_drawHIO.mTouchAreaSelectWhite[1].a - g_drawHIO.mTouchAreaSelectWhite[0].a));
                if (i == 0) {
                    sp44.a = 0;
                }
                static_cast<J2DPicture*>(field_0x530_wii[i]->getPanePtr())->setBlackWhite(sp44, sp40);
                if (field_0x544_wii[i] != NULL) {
                    static_cast<J2DPicture*>(field_0x544_wii[i]->getPanePtr())->setBlackWhite(sp44, sp40);
                }
            }

            var_f26 = g_drawHIO.mTouchAreaSelectScale[i];
            var_f27 = 255.0f;

            if (field_0x530_wii[i] == NULL) {
                field_0x7fe_wii[i] = 1;
            }
        } else {
            field_0x7fe_wii[i] = -1;
            if (field_0x530_wii[i] != NULL) {
                JUtility::TColor sp3C;
                JUtility::TColor sp38;
                sp3C.set(g_drawHIO.mTouchAreaSelectBlack[2]);
                sp38.set(g_drawHIO.mTouchAreaSelectWhite[2]);
                if (i == 0) {
                    sp3C.a = 0;
                }

                static_cast<J2DPicture*>(field_0x530_wii[i]->getPanePtr())->setBlackWhite(sp3C, sp38);
                if (field_0x544_wii[i] != NULL) {
                    static_cast<J2DPicture*>(field_0x544_wii[i]->getPanePtr())->setBlackWhite(sp3C, sp38);
                }
            }

            var_f27 = 0.0f;
            var_f26 = g_drawHIO.mTouchAreaUnselectScale[i];
        }

        if (var_f26 != field_0x704[i]) {
            cLib_addCalc2(&field_0x704[i], var_f26, 0.4f, 0.5f);
            if (std::fabs(field_0x704[i] - var_f26) < 0.1f) {
                field_0x704[i] = var_f26;
            }
        }

        if (i == 2 && var_f27 != field_0x71c) {
            field_0x71c = var_f27;
        }
    }
}
#endif

void dMeter2Draw_c::setItemParamX(u8 i_itemNo) {
    if (g_drawHIO.mButtonDebug[0]) {
        mItemParams[SELECT_X_e].pos_x = g_drawHIO.mButtonXItemPosX;
        mItemParams[SELECT_X_e].pos_y = g_drawHIO.mButtonXItemPosY;
        mItemParams[SELECT_X_e].scale = g_drawHIO.mButtonXItemScale;
        mItemParams[SELECT_X_e].rotation = g_drawHIO.mButtonItemRotation[0];
        mItemParams[SELECT_X_e].num_pos_x = g_drawHIO.mXItemNumPosX;
        mItemParams[SELECT_X_e].num_pos_y = g_drawHIO.mXItemNumPosY;
        mItemParams[SELECT_X_e].num_scale = g_drawHIO.mXItemNumScale;
    } else {
        switch (i_itemNo) {
        case dItemNo_BOOMERANG_e:
#if PLATFORM_WII
            mItemParams[SELECT_X_e].pos_x = 6.6f;
            mItemParams[SELECT_X_e].pos_y = -16.0f;
            mItemParams[SELECT_X_e].scale = 2.2f;
            mItemParams[SELECT_X_e].rotation = 17.0f;
            mItemParams[SELECT_X_e].num_pos_x = -9.2f;
            mItemParams[SELECT_X_e].num_pos_y = -6.6f;
            mItemParams[SELECT_X_e].num_scale = 0.75f;
#else
            mItemParams[SELECT_X_e].pos_x = 4.0f;
            mItemParams[SELECT_X_e].pos_y = -11.0f;
            mItemParams[SELECT_X_e].scale = 1.7f;
            mItemParams[SELECT_X_e].rotation = 17.0f;
            mItemParams[SELECT_X_e].num_pos_x = -4.0f;
            mItemParams[SELECT_X_e].num_pos_y = -9.2f;
            mItemParams[SELECT_X_e].num_scale = 0.95f;
#endif
            break;
        case dItemNo_BOW_e:
#if PLATFORM_WII
            mItemParams[SELECT_X_e].pos_x = 6.6f;
            mItemParams[SELECT_X_e].pos_y = -16.0f;
            mItemParams[SELECT_X_e].scale = 2.2f;
            mItemParams[SELECT_X_e].rotation = 0.0f;
            mItemParams[SELECT_X_e].num_pos_x = -9.2f;
            mItemParams[SELECT_X_e].num_pos_y = -9.2f;
            mItemParams[SELECT_X_e].num_scale = 0.75f;
#else
            mItemParams[SELECT_X_e].pos_x = 9.2f;
            mItemParams[SELECT_X_e].pos_y = -14.0f;
            mItemParams[SELECT_X_e].scale = 2.0f;
            mItemParams[SELECT_X_e].rotation = 0.0f;
            mItemParams[SELECT_X_e].num_pos_x = -4.0f;
            mItemParams[SELECT_X_e].num_pos_y = -9.2f;
            mItemParams[SELECT_X_e].num_scale = 0.95f;
#endif
            break;
        case dItemNo_HVY_BOOTS_e:
#if PLATFORM_WII
            mItemParams[SELECT_X_e].pos_x = -1.3f;
            mItemParams[SELECT_X_e].pos_y = -11.0f;
            mItemParams[SELECT_X_e].scale = 2.2f;
            mItemParams[SELECT_X_e].rotation = 0.0f;
            mItemParams[SELECT_X_e].num_pos_x = -9.2f;
            mItemParams[SELECT_X_e].num_pos_y = -6.6f;
            mItemParams[SELECT_X_e].num_scale = 0.75f;
#else
            mItemParams[SELECT_X_e].pos_x = 4.0f;
            mItemParams[SELECT_X_e].pos_y = -14.0f;
            mItemParams[SELECT_X_e].scale = 1.7f;
            mItemParams[SELECT_X_e].rotation = 0.0f;
            mItemParams[SELECT_X_e].num_pos_x = -4.0f;
            mItemParams[SELECT_X_e].num_pos_y = -9.2f;
            mItemParams[SELECT_X_e].num_scale = 0.95f;
#endif
            break;
        case dItemNo_HOOKSHOT_e:
#if PLATFORM_WII
            mItemParams[SELECT_X_e].pos_x = 17.0f;
            mItemParams[SELECT_X_e].pos_y = -16.0f;
            mItemParams[SELECT_X_e].scale = 1.7f;
            mItemParams[SELECT_X_e].rotation = 0.0f;
            mItemParams[SELECT_X_e].num_pos_x = -14.0f;
            mItemParams[SELECT_X_e].num_pos_y = -9.0f;
            mItemParams[SELECT_X_e].num_scale = 0.80f;
#else
            mItemParams[SELECT_X_e].pos_x = 17.0f;
            mItemParams[SELECT_X_e].pos_y = -14.0f;
            mItemParams[SELECT_X_e].scale = 1.5f;
            mItemParams[SELECT_X_e].rotation = 350.0f;
            mItemParams[SELECT_X_e].num_pos_x = -4.0f;
            mItemParams[SELECT_X_e].num_pos_y = -9.2f;
            mItemParams[SELECT_X_e].num_scale = 0.95f;
#endif
            break;
        case dItemNo_KANTERA_e:
            mItemParams[SELECT_X_e].pos_x = -2.0f;
            mItemParams[SELECT_X_e].pos_y = -15.0f;
            mItemParams[SELECT_X_e].scale = g_drawHIO.mButtonXItemScale;
            mItemParams[SELECT_X_e].rotation = g_drawHIO.mButtonItemRotation[0];
            mItemParams[SELECT_X_e].num_pos_x = g_drawHIO.mXItemNumPosX;
            mItemParams[SELECT_X_e].num_pos_y = g_drawHIO.mXItemNumPosY;
            mItemParams[SELECT_X_e].num_scale = g_drawHIO.mXItemNumScale;
            break;
        default:
            if (isBottleItem(i_itemNo)) {
#if PLATFORM_WII
                mItemParams[SELECT_X_e].pos_x = -1.3f;
                mItemParams[SELECT_X_e].pos_y = -16.0f;
#else
                mItemParams[SELECT_X_e].pos_x = -1.3f;
                mItemParams[SELECT_X_e].pos_y = -16.0f;
#endif
                mItemParams[SELECT_X_e].scale = 1.888889f;
                mItemParams[SELECT_X_e].rotation = g_drawHIO.mButtonItemRotation[0];
                mItemParams[SELECT_X_e].num_pos_x = g_drawHIO.mXItemNumPosX;
                mItemParams[SELECT_X_e].num_pos_y = g_drawHIO.mXItemNumPosY;
                mItemParams[SELECT_X_e].num_scale = g_drawHIO.mXItemNumScale;
            } else {
                mItemParams[SELECT_X_e].pos_x = g_drawHIO.mButtonXItemPosX;
                mItemParams[SELECT_X_e].pos_y = g_drawHIO.mButtonXItemPosY;
                mItemParams[SELECT_X_e].scale = g_drawHIO.mButtonXItemScale;
                mItemParams[SELECT_X_e].rotation = g_drawHIO.mButtonItemRotation[0];
                mItemParams[SELECT_X_e].num_pos_x = g_drawHIO.mXItemNumPosX;
                mItemParams[SELECT_X_e].num_pos_y = g_drawHIO.mXItemNumPosY;
                mItemParams[SELECT_X_e].num_scale = g_drawHIO.mXItemNumScale;
            }
            break;
        }
    }
}

void dMeter2Draw_c::setItemParamY(u8 i_itemNo) {
    if (g_drawHIO.mButtonDebug[1]) {
        mItemParams[SELECT_Y_e].pos_x = g_drawHIO.mButtonYItemPosX;
        mItemParams[SELECT_Y_e].pos_y = g_drawHIO.mButtonYItemPosY;
        mItemParams[SELECT_Y_e].scale = g_drawHIO.mButtonYItemScale;
        mItemParams[SELECT_Y_e].rotation = g_drawHIO.mButtonItemRotation[1];
        mItemParams[SELECT_Y_e].num_pos_x = g_drawHIO.mYItemNumPosX;
        mItemParams[SELECT_Y_e].num_pos_y = g_drawHIO.mYItemNumPosY;
        mItemParams[SELECT_Y_e].num_scale = g_drawHIO.mYItemNumScale;
    } else {
        switch (i_itemNo) {
        case dItemNo_BOOMERANG_e:
#if PLATFORM_WII
            mItemParams[SELECT_Y_e].pos_x = -1.3f;
            mItemParams[SELECT_Y_e].pos_y = -16.0f;
            mItemParams[SELECT_Y_e].scale = 2.2f;
            mItemParams[SELECT_Y_e].rotation = 17.0f;
            mItemParams[SELECT_Y_e].num_pos_x = -9.2f;
            mItemParams[SELECT_Y_e].num_pos_y = -6.6f;
            mItemParams[SELECT_Y_e].num_scale = 0.75f;
#else
            mItemParams[SELECT_Y_e].pos_x = 14.0f;
            mItemParams[SELECT_Y_e].pos_y = 1.3f;
            mItemParams[SELECT_Y_e].scale = 1.7f;
            mItemParams[SELECT_Y_e].rotation = 17.0f;
            mItemParams[SELECT_Y_e].num_pos_x = -9.2f;
            mItemParams[SELECT_Y_e].num_pos_y = -9.2f;
            mItemParams[SELECT_Y_e].num_scale = 0.95f;
#endif
            break;
        case dItemNo_BOW_e:
#if PLATFORM_WII
            mItemParams[SELECT_Y_e].pos_x = -4.0f;
            mItemParams[SELECT_Y_e].pos_y = -16.0f;
            mItemParams[SELECT_Y_e].scale = 2.2f;
            mItemParams[SELECT_Y_e].rotation = 0.0f;
            mItemParams[SELECT_Y_e].num_pos_x = -9.2f;
            mItemParams[SELECT_Y_e].num_pos_y = -6.6f;
            mItemParams[SELECT_Y_e].num_scale = 0.75f;
#else
            mItemParams[SELECT_Y_e].pos_x = -1.3f;
            mItemParams[SELECT_Y_e].pos_y = -6.6f;
            mItemParams[SELECT_Y_e].scale = 2.0f;
            mItemParams[SELECT_Y_e].rotation = 0.0f;
            mItemParams[SELECT_Y_e].num_pos_x = -9.2f;
            mItemParams[SELECT_Y_e].num_pos_y = -9.2f;
            mItemParams[SELECT_Y_e].num_scale = 0.95f;
#endif
            break;
        case dItemNo_HVY_BOOTS_e:
#if PLATFORM_WII
            mItemParams[SELECT_Y_e].pos_x = -11.0f;
            mItemParams[SELECT_Y_e].pos_y = -11.0f;
            mItemParams[SELECT_Y_e].scale = 2.2f;
            mItemParams[SELECT_Y_e].rotation = 0.0f;
            mItemParams[SELECT_Y_e].num_pos_x = -9.2f;
            mItemParams[SELECT_Y_e].num_pos_y = -6.6f;
            mItemParams[SELECT_Y_e].num_scale = 0.75f;
#else
            mItemParams[SELECT_Y_e].pos_x = 1.3f;
            mItemParams[SELECT_Y_e].pos_y = 1.3f;
            mItemParams[SELECT_Y_e].scale = 1.7f;
            mItemParams[SELECT_Y_e].rotation = 0.0f;
            mItemParams[SELECT_Y_e].num_pos_x = -9.2f;
            mItemParams[SELECT_Y_e].num_pos_y = -9.2f;
            mItemParams[SELECT_Y_e].num_scale = 0.95f;
#endif
            break;
        case dItemNo_HOOKSHOT_e:
#if PLATFORM_WII
            mItemParams[SELECT_Y_e].pos_x = 4.0f;
            mItemParams[SELECT_Y_e].pos_y = -16.0f;
            mItemParams[SELECT_Y_e].scale = 1.7f;
            mItemParams[SELECT_Y_e].rotation = 0.0f;
            mItemParams[SELECT_Y_e].num_pos_x = -14.0f;
            mItemParams[SELECT_Y_e].num_pos_y = -9.0f;
            mItemParams[SELECT_Y_e].num_scale = 0.80f;
#else
            mItemParams[SELECT_Y_e].pos_x = 6.6f;
            mItemParams[SELECT_Y_e].pos_y = -4.0f;
            mItemParams[SELECT_Y_e].scale = 1.5f;
            mItemParams[SELECT_Y_e].rotation = 350.0f;
            mItemParams[SELECT_Y_e].num_pos_x = -9.2f;
            mItemParams[SELECT_Y_e].num_pos_y = -9.2f;
            mItemParams[SELECT_Y_e].num_scale = 0.95f;
#endif
            break;
        case dItemNo_KANTERA_e:
            mItemParams[SELECT_Y_e].pos_x = -1.8f;
            mItemParams[SELECT_Y_e].pos_y = g_drawHIO.mButtonYItemPosY;
            mItemParams[SELECT_Y_e].scale = g_drawHIO.mButtonYItemScale;
            mItemParams[SELECT_Y_e].rotation = g_drawHIO.mButtonItemRotation[1];
            mItemParams[SELECT_Y_e].num_pos_x = g_drawHIO.mYItemNumPosX;
            mItemParams[SELECT_Y_e].num_pos_y = g_drawHIO.mYItemNumPosY;
            mItemParams[SELECT_Y_e].num_scale = g_drawHIO.mYItemNumScale;
            break;
        default:
            if (isBottleItem(i_itemNo)) {
                mItemParams[SELECT_Y_e].pos_x = 0.3f;
                mItemParams[SELECT_Y_e].pos_y = -16.0f;
                mItemParams[SELECT_Y_e].scale = 1.888889f;
                mItemParams[SELECT_Y_e].rotation = g_drawHIO.mButtonItemRotation[1];
                mItemParams[SELECT_Y_e].num_pos_x = g_drawHIO.mYItemNumPosX;
                mItemParams[SELECT_Y_e].num_pos_y = g_drawHIO.mYItemNumPosY;
                mItemParams[SELECT_Y_e].num_scale = g_drawHIO.mYItemNumScale;
            } else {
                mItemParams[SELECT_Y_e].pos_x = g_drawHIO.mButtonYItemPosX;
                mItemParams[SELECT_Y_e].pos_y = g_drawHIO.mButtonYItemPosY;
                mItemParams[SELECT_Y_e].scale = g_drawHIO.mButtonYItemScale;
                mItemParams[SELECT_Y_e].rotation = g_drawHIO.mButtonItemRotation[1];
                mItemParams[SELECT_Y_e].num_pos_x = g_drawHIO.mYItemNumPosX;
                mItemParams[SELECT_Y_e].num_pos_y = g_drawHIO.mYItemNumPosY;
                mItemParams[SELECT_Y_e].num_scale = g_drawHIO.mYItemNumScale;
            }
            break;
        }
    }
}

void dMeter2Draw_c::setItemParamZ(u8 i_itemNo) {
    if (g_drawHIO.mButtonDebug[2]) {
        mItemParams[SELECT_Z_e].pos_x = g_drawHIO.field_0x1cc;
        mItemParams[SELECT_Z_e].pos_y = g_drawHIO.field_0x1d0;
        mItemParams[SELECT_Z_e].scale = g_drawHIO.field_0x1d4;
        mItemParams[SELECT_Z_e].rotation = g_drawHIO.mButtonItemRotation[2];
        mItemParams[SELECT_Z_e].num_pos_x = g_drawHIO.field_0x1f8;
        mItemParams[SELECT_Z_e].num_pos_y = g_drawHIO.field_0x208;
        mItemParams[SELECT_Z_e].num_scale = g_drawHIO.field_0x218;
    } else {
        switch (i_itemNo) {
        case dItemNo_BOOMERANG_e:
            mItemParams[SELECT_Z_e].pos_x = 4.0f;
            mItemParams[SELECT_Z_e].pos_y = 1.3f;
            mItemParams[SELECT_Z_e].scale = 2.2f;
            mItemParams[SELECT_Z_e].rotation = 17.0f;
            mItemParams[SELECT_Z_e].num_pos_x = 14.0f;
            mItemParams[SELECT_Z_e].num_pos_y = -30.0f;
            mItemParams[SELECT_Z_e].num_scale = 0.75f;
            break;
        case dItemNo_BOW_e:
            mItemParams[SELECT_Z_e].pos_x = -1.3f;
            mItemParams[SELECT_Z_e].pos_y = 1.3f;
            mItemParams[SELECT_Z_e].scale = 2.2f;
            mItemParams[SELECT_Z_e].rotation = 0.0f;
            mItemParams[SELECT_Z_e].num_pos_x = 14.0f;
            mItemParams[SELECT_Z_e].num_pos_y = -30.0f;
            mItemParams[SELECT_Z_e].num_scale = 0.75f;
            break;
        case dItemNo_HVY_BOOTS_e:
            mItemParams[SELECT_Z_e].pos_x = -6.6f;
            mItemParams[SELECT_Z_e].pos_y = 9.2f;
            mItemParams[SELECT_Z_e].scale = 2.2f;
            mItemParams[SELECT_Z_e].rotation = 0.0f;
            mItemParams[SELECT_Z_e].num_pos_x = 14.0f;
            mItemParams[SELECT_Z_e].num_pos_y = -30.0f;
            mItemParams[SELECT_Z_e].num_scale = 0.8f;
            break;
        case dItemNo_HOOKSHOT_e:
            mItemParams[SELECT_Z_e].pos_x = -4.0f;
            mItemParams[SELECT_Z_e].pos_y = 1.3f;
            mItemParams[SELECT_Z_e].scale = 1.7f;
            mItemParams[SELECT_Z_e].rotation = 0.0f;
            mItemParams[SELECT_Z_e].num_pos_x = 1.4f;
            mItemParams[SELECT_Z_e].num_pos_y = -30.0f;
            mItemParams[SELECT_Z_e].num_scale = 0.8f;
            break;
        case dItemNo_KANTERA_e:
            mItemParams[SELECT_Z_e].pos_x = -6.6f;
            mItemParams[SELECT_Z_e].pos_y = 6.6f;
            mItemParams[SELECT_Z_e].scale = g_drawHIO.field_0x1d4;
            mItemParams[SELECT_Z_e].rotation = g_drawHIO.mButtonItemRotation[2];
            mItemParams[SELECT_Z_e].num_pos_x = g_drawHIO.field_0x1f8;
            mItemParams[SELECT_Z_e].num_pos_y = g_drawHIO.field_0x208;
            mItemParams[SELECT_Z_e].num_scale = g_drawHIO.field_0x218;
            break;
        default:
            if (isBottleItem(i_itemNo)) {
                mItemParams[SELECT_Z_e].pos_x = -3.5f;
                mItemParams[SELECT_Z_e].pos_y = 17.0f;
                mItemParams[SELECT_Z_e].scale = 1.888889f;
                mItemParams[SELECT_Z_e].rotation = g_drawHIO.mButtonItemRotation[2];
                mItemParams[SELECT_Z_e].num_pos_x = g_drawHIO.field_0x1f8;
                mItemParams[SELECT_Z_e].num_pos_y = g_drawHIO.field_0x208;
                mItemParams[SELECT_Z_e].num_scale = g_drawHIO.field_0x218;
            } else {
                mItemParams[SELECT_Z_e].pos_x = g_drawHIO.field_0x1cc;
                mItemParams[SELECT_Z_e].pos_y = g_drawHIO.field_0x1d0;
                mItemParams[SELECT_Z_e].scale = g_drawHIO.field_0x1d4;
                mItemParams[SELECT_Z_e].rotation = g_drawHIO.mButtonItemRotation[2];
                mItemParams[SELECT_Z_e].num_pos_x = g_drawHIO.field_0x1f8;
                mItemParams[SELECT_Z_e].num_pos_y = g_drawHIO.field_0x208;
                mItemParams[SELECT_Z_e].num_scale = g_drawHIO.field_0x218;
            }
            break;
        }
    }
}

void dMeter2Draw_c::setItemParamB(u8 i_itemNo) {
    if (g_drawHIO.mButtonDebug[3]) {
        mItemParams[3].pos_x = g_drawHIO.mButtonBItemPosX[0];
        mItemParams[3].pos_y = g_drawHIO.mButtonBItemPosY[0];
        mItemParams[3].scale = g_drawHIO.mButtonBItemScale[0];
        mItemParams[3].rotation = g_drawHIO.mButtonBItemRotation[0];
        mItemParams[3].num_pos_x = g_drawHIO.mItemBNumPosX;
        mItemParams[3].num_pos_y = g_drawHIO.mItemBNumPosY;
        mItemParams[3].num_scale = g_drawHIO.mItemBNumScale;
    } else {
        if (isBottleItem(i_itemNo)) {
            mItemParams[3].pos_x = 17.3f;
            mItemParams[3].pos_y = -46.8f;
            mItemParams[3].scale = 1.7f;
            mItemParams[3].rotation = 0.0f;
            mItemParams[3].num_pos_x = 14.0f;
            mItemParams[3].num_pos_y = -30.0f;
            mItemParams[3].num_scale = 0.75f;
        } else {
            switch (i_itemNo) {
            case dItemNo_LURE_ROD_e:
            case dItemNo_BEE_ROD_e:
            case dItemNo_JEWEL_ROD_e:
            case dItemNo_JEWEL_BEE_ROD_e:
            case dItemNo_JEWEL_WORM_ROD_e:
            case dItemNo_HORSE_FLUTE_e:
            case dItemNo_FISHING_ROD_1_e:
                mItemParams[3].pos_x = 17.3f;
                mItemParams[3].pos_y = -46.8f;
                mItemParams[3].scale = 1.7f;
                mItemParams[3].rotation = 0.0f;
                mItemParams[3].num_pos_x = 14.0f;
                mItemParams[3].num_pos_y = -30.0f;
                mItemParams[3].num_scale = 0.75f;
                break;
            case dItemNo_BOOMERANG_e:
                mItemParams[3].pos_x = 26.0f;
                mItemParams[3].pos_y = -54.7f;
                mItemParams[3].scale = 2.2f;
                mItemParams[3].rotation = 17.0f;
                mItemParams[3].num_pos_x = 14.0f;
                mItemParams[3].num_pos_y = -30.0f;
                mItemParams[3].num_scale = 0.75f;
                break;
            case dItemNo_BOW_e:
                mItemParams[3].pos_x = 20.7f;
                mItemParams[3].pos_y = -55.7f;
                mItemParams[3].scale = 2.2f;
                mItemParams[3].rotation = 0.0f;
                mItemParams[3].num_pos_x = 14.0f;
                mItemParams[3].num_pos_y = -30.0f;
                mItemParams[3].num_scale = 0.75f;
                break;
            case dItemNo_HVY_BOOTS_e:
                mItemParams[3].pos_x = 15.4f;
                mItemParams[3].pos_y = -47.8f;
                mItemParams[3].scale = 2.2f;
                mItemParams[3].rotation = 0.0f;
                mItemParams[3].num_pos_x = 14.0f;
                mItemParams[3].num_pos_y = -30.0f;
                mItemParams[3].num_scale = 0.8f;
                break;
            case dItemNo_SPINNER_e:
            case dItemNo_HAWK_EYE_e:
                mItemParams[3].pos_x = 23.3f;
                mItemParams[3].pos_y = -47.8f;
                mItemParams[3].scale = 1.7f;
                mItemParams[3].rotation = 0.0f;
                mItemParams[3].num_pos_x = 1.4f;
                mItemParams[3].num_pos_y = -30.0f;
                mItemParams[3].num_scale = 0.8f;
                break;
            case dItemNo_COPY_ROD_e:
            case dItemNo_W_HOOKSHOT_e:
            case dItemNo_IRONBALL_e:
                mItemParams[3].pos_x = 29.3f;
                mItemParams[3].pos_y = -47.8f;
                mItemParams[3].scale = 1.7f;
                mItemParams[3].rotation = 0.0f;
                mItemParams[3].num_pos_x = 1.4f;
                mItemParams[3].num_pos_y = -30.0f;
                mItemParams[3].num_scale = 0.8f;
                break;
            case dItemNo_PACHINKO_e:
            case dItemNo_BOMB_BAG_LV1_e:
            case dItemNo_NORMAL_BOMB_e:
            case dItemNo_WATER_BOMB_e:
            case dItemNo_POKE_BOMB_e:
            case dItemNo_RAFRELS_MEMO_e:
            case dItemNo_TKS_LETTER_e:
                mItemParams[3].pos_x = 20.3f;
                mItemParams[3].pos_y = -47.8f;
                mItemParams[3].scale = 1.7f;
                mItemParams[3].rotation = 0.0f;
                mItemParams[3].num_pos_x = 12.0f;
                mItemParams[3].num_pos_y = -22.0f;
                mItemParams[3].num_scale = 0.8f;
                break;
            case dItemNo_HOOKSHOT_e:
                mItemParams[3].pos_x = 21.0f;
                mItemParams[3].pos_y = -46.7f;
                mItemParams[3].scale = 1.7f;
                mItemParams[3].rotation = 0.0f;
                mItemParams[3].num_pos_x = 1.4f;
                mItemParams[3].num_pos_y = -30.0f;
                mItemParams[3].num_scale = 0.8f;
                break;
            case dItemNo_KANTERA_e:
                mItemParams[3].pos_x = 19.0f;
                mItemParams[3].pos_y = -45.0f;
                mItemParams[3].scale = g_drawHIO.mButtonBItemScale[0];
                mItemParams[3].rotation = g_drawHIO.mButtonBItemRotation[0];
                mItemParams[3].num_pos_x = g_drawHIO.mItemBNumPosX;
                mItemParams[3].num_pos_y = g_drawHIO.mItemBNumPosY;
                mItemParams[3].num_scale = g_drawHIO.mItemBNumScale;
                break;
            default:
                mItemParams[3].pos_x = g_drawHIO.mButtonBItemPosX[0];
                mItemParams[3].pos_y = g_drawHIO.mButtonBItemPosY[0];
                mItemParams[3].scale = g_drawHIO.mButtonBItemScale[0];
                mItemParams[3].rotation = g_drawHIO.mButtonBItemRotation[0];
                mItemParams[3].num_pos_x = g_drawHIO.mItemBNumPosX;
                mItemParams[3].num_pos_y = g_drawHIO.mItemBNumPosY;
                mItemParams[3].num_scale = g_drawHIO.mItemBNumScale;
                break;
            }
        }
    }
}

// existence inferred from debug string
void dMeter2Draw_c::changeTextureItemB2(u8 param_0) {
    OS_REPORT("chageTextureItemB2 =============> %d, %d\n");
}

u8 dMeter2Draw_c::getFishingType() {
    if (dMeter2Info_isGameStatus(1) && getCanoeFishing()) {
        return TRUE;
    } else {
        return FALSE;
    }
}

u8 dMeter2Draw_c::getCanoeFishing() {
    if (!strcmp(dComIfGp_getStartStageName(), "F_SP127") &&
        daPy_getPlayerActorClass()->checkCanoeRide())
    {
        return TRUE;
    } else {
        return FALSE;
    }
}

bool dMeter2Draw_c::getCameraSubject() {
    if (dCam_getBody()->Mode() == 4) {
        return true;
    } else {
        return false;
    }
}

bool dMeter2Draw_c::getItemSubject() {
    if (dCam_getBody()->Mode() != 4 && (dCam_getBody()->Mode() == 7 || dCam_getBody()->Mode() == 8))
    {
        return true;
    }

    return false;
}

bool dMeter2Draw_c::getPlayerSubject() {
    if (dComIfGp_checkPlayerStatus0(0, 0x8000000)) {
        return true;
    } else {
        return false;
    }
}

bool dMeter2Draw_c::isBButtonShow(bool param_0) {
    if (dMsgObject_getMsgObjectClass() == NULL) {
        return false;
    }

    if (dMeter2Info_isShopTalkFlag() || dMsgObject_getMsgObjectClass()->isHowlMessage() ||
        daPy_getPlayerActorClass()->checkHawkWait() ||
#if !PLATFORM_WII
        dMeter2Info_getItemExplainWindowStatus() ||
#endif
        (daPy_getPlayerActorClass()->checkGrassWhistle() && param_0) ||
        (!dComIfGp_event_checkHind(4) && dComIfGp_event_runCheck()))
    {
        return true;
    }

    return false;
}

s16 dMeter2Draw_c::getButtonTimer() {
    return mpButtonParent->getAlphaTimer();
}

#if PLATFORM_WII
void dMeter2Draw_c::moveItemInit() {
    u8 temp_r6 = field_0x770;
    if (temp_r6 != 0xFF) {
        field_0x754 = 1;

        if (field_0x773[3] == 0) {
            field_0x773[3] = 1;
        } else {
            field_0x773[3] = 0;
        }

        J2DPicture* var_r26 = static_cast<J2DPicture*>(mpItemXY[temp_r6]->getPanePtr());
        J2DPicture* temp_r28_1 = field_0x524[0][field_0x773[3]];
        J2DPicture::TCornerColor sp68;
        temp_r28_1->changeTexture(mpItemXYTex[temp_r6][field_0x76c[temp_r6]][0], 0);
        temp_r28_1->setBlackWhite(var_r26->getBlack(), var_r26->getWhite());
        var_r26->getCornerColor(sp68);
        temp_r28_1->setCornerColor(sp68);

        J2DPicture* temp_r28_2 = mpItemXYPane[temp_r6];
        if (temp_r28_2->isVisible()) {
            J2DPicture* var_r31 = field_0x524[1][field_0x773[3]];
            var_r31->changeTexture(mpItemXYTex[temp_r6][field_0x76c[temp_r6]][1], 0);
            var_r31->setBlackWhite(temp_r28_2->getBlack(), temp_r28_2->getWhite());
            temp_r28_2->getCornerColor(sp68);
            var_r31->setCornerColor(sp68);
            field_0x524[1][field_0x773[3]]->show();
        } else {
            field_0x524[1][field_0x773[3]]->hide();
        }

        Vec sp54 = mpItemXY[temp_r6]->getGlobalVtxCenter(mpItemXY[temp_r6]->getPanePtr(), false, 0);
        field_0x55c = sp54.x;
        field_0x560 = sp54.y;
        field_0x564 = mpItemXY[temp_r6]->getSizeX() * mpItemXY[temp_r6]->getPanePtr()->getScaleX();
        field_0x568 = mpItemXY[temp_r6]->getSizeY() * mpItemXY[temp_r6]->getPanePtr()->getScaleY();
        field_0x56c = mpItemXY[temp_r6]->getPanePtr()->getRotateZ();

        Vec sp542 = mpItemB->getGlobalVtxCenter(mpItemB->getPanePtr(), false, 0);
        field_0x570 = sp542.x;
        field_0x574 = sp542.y;
        field_0x578 = mpItemB->getSizeX() * mpItemB->getPanePtr()->getScaleX();
        field_0x57c = mpItemB->getSizeY() * mpItemB->getPanePtr()->getScaleY();
        field_0x580 = mpItemB->getPanePtr()->getRotateZ();

        u8 temp_r28_3 = dComIfGs_getSelectItemIndex(3);
        u8 temp_r30_2 = dComIfGs_getMixItemIndex(3);
        dComIfGs_setMixItemIndex(3, dComIfGs_getMixItemIndex(field_0x770));
        dComIfGs_setSelectItemIndex(3, dComIfGs_getSelectItemIndex(field_0x770));
        dComIfGs_setMixItemIndex(field_0x770, temp_r30_2);
        dComIfGs_setSelectItemIndex(field_0x770, temp_r28_3);
        for (int i = 0; i < 3; i++) {
            if (field_0x9c[i] != NULL) {
                field_0x9c[i]->setAlpha(0);
            }
        }
    }
}

void dMeter2Draw_c::moveItemMove() {
    //TODO
}

//void dMeter2Draw_c::moveItemDraw() {
//    //TODO
//}
#endif
