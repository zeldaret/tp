#include "d/d_menu_window.h"
#include "JSystem/JKernel/JKRExpHeap.h"
#include "d/actor/d_a_player.h"
#include "d/d_lib.h"
#include "d/d_menu_collect.h"
#include "d/d_menu_dmap.h"
#include "d/d_menu_fishing.h"
#include "d/d_menu_fmap.h"
#include "d/d_menu_insect.h"
#include "d/d_menu_letter.h"
#include "d/d_menu_option.h"
#include "d/d_menu_ring.h"
#include "d/d_menu_save.h"
#include "d/d_menu_skill.h"
#include "d/d_menu_window_HIO.h"
#include "d/d_meter2_info.h"
#include "d/d_meter2.h"
#include "d/d_meter_HIO.h"
#include "d/d_meter_map.h"
#include "d/d_msg_object.h"
#include "f_op/f_op_msg_mng.h"
#include "f_op/f_op_overlap_mng.h"
#include "m_Do/m_Do_controller_pad.h"

class dDlst_MENU_CAPTURE_c : public dDlst_base_c {
public:
    virtual void draw() {
        if (getDrawFlag() == 1) {
            setDrawFlag();
            dComIfGp_onPauseFlag();
            GXSetTexCopySrc(0, 0, 608, 448);
            GXSetTexCopyDst(304, 224, (GXTexFmt)mDoGph_gInf_c::getFrameBufferTimg()->format, GX_ENABLE);
            GXCopyTex(mDoGph_gInf_c::getFrameBufferTex(), GX_FALSE);
            GXPixModeSync();
        } else {
            GXTexObj tex;
            GXInitTexObj(&tex, mDoGph_gInf_c::getFrameBufferTex(), 304, 224, 
                        (GXTexFmt)mDoGph_gInf_c::getFrameBufferTimg()->format, GX_CLAMP, GX_CLAMP, GX_FALSE);
            GXInitTexObjLOD(&tex, GX_LINEAR, GX_LINEAR, 0.0f, 0.0f, 0.0f, GX_FALSE, GX_FALSE, GX_ANISO_1);
            GXLoadTexObj(&tex, GX_TEXMAP0);
            GXSetNumChans(0);
            GXSetNumTexGens(1);
            GXSetTexCoordGen2(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, 60, GX_FALSE, 125);
            GXSetNumTevStages(1);
            GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR_NULL);
            GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_TEXC);
            GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
            const GXColor color = {0, 0, 0, mAlpha};
            GXSetTevColor(GX_TEVREG0, color);
            GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_A0);
            GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
            GXSetZCompLoc(GX_TRUE);
            GXSetZMode(GX_FALSE, GX_ALWAYS, GX_FALSE);
            GXSetBlendMode(GX_BM_BLEND, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_OR);
            GXSetAlphaCompare(GX_ALWAYS, 0, GX_AOP_OR, GX_ALWAYS, 0);
            GXSetFog(GX_FOG_NONE, 0.0f, 0.0f, 0.0f, 0.0f, g_clearColor);
            GXSetFogRangeAdj(GX_FALSE, 0, NULL);
            GXSetCullMode(GX_CULL_NONE);
            GXSetDither(GX_TRUE);
            GXLoadPosMtxImm(g_mDoMtx_identity, GX_PNMTX0);
            GXSetCurrentMtx(0);
            GXClearVtxDesc();
            GXSetVtxDesc(GX_VA_POS, GX_DIRECT);
            GXSetVtxDesc(GX_VA_TEX0, GX_DIRECT);
            GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_CLR_RGBA, GX_RGBA4, 0);
            GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_TEX0, GX_CLR_RGBA, GX_RGB8, 0);

            GXBegin(GX_QUADS, GX_VTXFMT0, 4);
            GXPosition3s16(mDoGph_gInf_c::getMinX(), mDoGph_gInf_c::getMinY(), 0);
            GXTexCoord2s8(0, 0);

            GXPosition3s16(mDoGph_gInf_c::getMaxX(), mDoGph_gInf_c::getMinY(), 0);
            GXTexCoord2s8(1, 0);

            GXPosition3s16(mDoGph_gInf_c::getMaxX(), mDoGph_gInf_c::getMaxY(), 0);
            GXTexCoord2s8(1, 1);

            GXPosition3s16(mDoGph_gInf_c::getMinX(), mDoGph_gInf_c::getMaxY(), 0);
            GXTexCoord2s8(0, 1);
            GXEnd();
        }
    }

    virtual ~dDlst_MENU_CAPTURE_c() {}

    dDlst_MENU_CAPTURE_c() {
        mFlag = 0;
        mAlpha = 255;
        mTopFlag = 0;
    }

    void setCaptureFlag() { mFlag = 1; }
    bool checkDraw() { return mFlag; }
    u8 getAlpha() { return mAlpha; }
    u8 getTopFlag() { return mTopFlag; }
    u8 getDrawFlag() { return mFlag; }
    void setDrawFlag() { mFlag = 3; }

private:
    /* 0x4 */ u8 mFlag;
    /* 0x5 */ u8 mAlpha;
    /* 0x6 */ u8 mTopFlag;
};

BOOL dMw_UP_TRIGGER() {
    return mDoCPd_c::getTrigUp(PAD_1) != 0;
}

BOOL dMw_DOWN_TRIGGER() {
    return mDoCPd_c::getTrigDown(PAD_1) != 0;
}

BOOL dMw_LEFT_TRIGGER() {
    if (mDoCPd_c::getTrigLeft(PAD_1) && !dMw_UP_TRIGGER()) {
        return true;
    } else {
        return false;
    }
}

BOOL dMw_RIGHT_TRIGGER() {
    if (mDoCPd_c::getTrigRight(PAD_1) && !dMw_UP_TRIGGER()) {
        return true;
    } else {
        return false;
    }
}

BOOL dMw_A_TRIGGER() {
    return mDoCPd_c::getTrigA(PAD_1) != 0;
}

BOOL dMw_B_TRIGGER() {
    return mDoCPd_c::getTrigB(PAD_1) != 0;
}

BOOL dMw_Z_TRIGGER() {
    return mDoCPd_c::getTrigZ(PAD_1) != 0;
}

BOOL dMw_START_TRIGGER() {
    return mDoCPd_c::getTrigStart(PAD_1) != 0;
}

void dMw_onPauseWindow() {
    dMw_c* menu_window = dMeter2Info_getMenuWindowClass();
    if (menu_window != NULL) {
        menu_window->onPauseWindow();
    }
}

void dMw_offPauseWindow() {
    dMw_c* menu_window = dMeter2Info_getMenuWindowClass();
    if (menu_window != NULL) {
        menu_window->offPauseWindow();
    }
}

void dMw_onMenuRing() {
    dMw_c* menu_window = dMeter2Info_getMenuWindowClass();
    if (menu_window != NULL) {
        menu_window->onShowFlag();
    }
}

void dMw_offMenuRing() {
    dMw_c* menu_window = dMeter2Info_getMenuWindowClass();
    if (menu_window != NULL) {
        menu_window->offShowFlag();
    }
}

static BOOL dMw_isMenuRing() {
    dMw_c* menu_window = dMeter2Info_getMenuWindowClass();
    if (menu_window != NULL) {
        return menu_window->isShowFlag();
    }

    return false;
}

/* 803BE8F8-803BE904 01BA18 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803BEAA8-803BEC4C 01BBC8 01A4+00 1/2 0/0 0/0 .data            init_proc */
typedef void (dMw_c::*initFunc)(u8);
initFunc init_proc[] = {
    &dMw_c::key_wait_init,
    &dMw_c::ring_open_init,
    &dMw_c::ring_move_init,
    &dMw_c::ring_close_init,
    &dMw_c::collect_open_init,
    &dMw_c::collect_move_init,
    &dMw_c::collect_close_init,
    &dMw_c::fmap_open_init,
    &dMw_c::fmap_move_init,
    &dMw_c::fmap_close_init,
    &dMw_c::dmap_open_init,
    &dMw_c::dmap_move_init,
    &dMw_c::dmap_close_init,
    &dMw_c::collect_save_open_init,
    &dMw_c::collect_save_move_init,
    &dMw_c::collect_save_close_init,
    &dMw_c::collect_option_open_init,
    &dMw_c::collect_option_move_init,
    &dMw_c::collect_option_close_init,
    &dMw_c::collect_letter_open_init,
    &dMw_c::collect_letter_move_init,
    &dMw_c::collect_letter_close_init,
    &dMw_c::collect_fishing_open_init,
    &dMw_c::collect_fishing_move_init,
    &dMw_c::collect_fishing_close_init,
    &dMw_c::collect_skill_open_init,
    &dMw_c::collect_skill_move_init,
    &dMw_c::collect_skill_close_init,
    &dMw_c::collect_insect_open_init,
    &dMw_c::collect_insect_move_init,
    &dMw_c::collect_insect_close_init,
    &dMw_c::insect_open_init,
    &dMw_c::insect_open2_init,
    &dMw_c::insect_move_init,
    &dMw_c::insect_close_init,
};

/* 803BEDF0-803BEF94 01BF10 01A4+00 1/2 0/0 0/0 .data            move_proc */
typedef void (dMw_c::*procFunc)();
procFunc move_proc[] = {
    &dMw_c::key_wait_proc,
    &dMw_c::ring_open_proc,
    &dMw_c::ring_move_proc,
    &dMw_c::ring_close_proc,
    &dMw_c::collect_open_proc,
    &dMw_c::collect_move_proc,
    &dMw_c::collect_close_proc,
    &dMw_c::fmap_open_proc,
    &dMw_c::fmap_move_proc,
    &dMw_c::fmap_close_proc,
    &dMw_c::dmap_open_proc,
    &dMw_c::dmap_move_proc,
    &dMw_c::dmap_close_proc,
    &dMw_c::collect_save_open_proc,
    &dMw_c::collect_save_move_proc,
    &dMw_c::collect_save_close_proc,
    &dMw_c::collect_option_open_proc,
    &dMw_c::collect_option_move_proc,
    &dMw_c::collect_option_close_proc,
    &dMw_c::collect_letter_open_proc,
    &dMw_c::collect_letter_move_proc,
    &dMw_c::collect_letter_close_proc,
    &dMw_c::collect_fishing_open_proc,
    &dMw_c::collect_fishing_move_proc,
    &dMw_c::collect_fishing_close_proc,
    &dMw_c::collect_skill_open_proc,
    &dMw_c::collect_skill_move_proc,
    &dMw_c::collect_skill_close_proc,
    &dMw_c::collect_insect_open_proc,
    &dMw_c::collect_insect_move_proc,
    &dMw_c::collect_insect_close_proc,
    &dMw_c::insect_open_proc,
    &dMw_c::insect_open2_proc,
    &dMw_c::insect_move_proc,
    &dMw_c::insect_close_proc,
};

/* 801FA13C-801FA220 1F4A7C 00E4+00 2/0 0/0 0/0 .text            key_wait_init__5dMw_cFUc */
void dMw_c::key_wait_init(u8 i_proc) {
    dMeter2Info_setWindowStatus(0);
    dMw_capture_delete();

    switch (i_proc) {
    case COLLECT_CLOSE:
        dMw_fade_in();
        dMw_collect_delete(true);
        break;
    case DMAP_CLOSE:
        dMw_dmap_delete(true);
        break;
    case FMAP_CLOSE:
        dMw_fmap_delete(true);
        break;
    case RING_CLOSE:
        dMw_ring_delete();
        break;
    case SAVE_CLOSE:
        dMw_fade_in();
        dMw_save_delete();
        break;
    case INSECT_AGITHA_CLOSE:
        dMw_fade_in();
        dMw_insect_delete();
        break;
    }
    mpHeap->freeAll();
    dComIfGp_offHeapLockFlag(0);
}

void dMw_c::ring_open_init(u8) {
    dMeter2Info_setWindowStatus(2);
}

void dMw_c::ring_move_init(u8) {}

void dMw_c::ring_close_init(u8) {}

static f32 dummy() {
    return 0.0f;
}

/* 801FA244-801FA2D0 1F4B84 008C+00 1/0 0/0 0/0 .text            collect_open_init__5dMw_cFUc */
void dMw_c::collect_open_init(u8) {
    field_0x144 = 3;
    dMeter2Info_setWindowStatus(3);
    Z2GetAudioMgr()->seStart(Z2SE_SY_MENU_IN, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
    dMw_fade_out();
    dMw_capture_create();
    field_0x153 = 0;
}

/* 801FA2D0-801FA46C 1F4C10 019C+00 2/0 0/0 0/0 .text            collect_move_init__5dMw_cFUc */
void dMw_c::collect_move_init(u8 i_proc) {
    switch (i_proc) {
    case COLLECT_OPEN:
        dMw_fade_in();
        dComIfGp_setHeapLockFlag(1);
        dMw_collect_create();
        break;
    case SAVE_CLOSE:
        dMw_fade_in();
        dMw_save_delete();
        field_0x144 = 3;
        dMeter2Info_setWindowStatus(3);
        dMw_collect_create();
        break;
    case OPTIONS_CLOSE:
        dMw_fade_in();
        dMw_option_delete();
        field_0x144 = 3;
        dMeter2Info_setWindowStatus(3);
        dMw_collect_create();
        break;
    case LETTER_CLOSE:
        dMw_fade_in();
        dMw_letter_delete();
        field_0x144 = 3;
        dMeter2Info_setWindowStatus(3);
        dMw_collect_create();
        break;
    case FISHING_CLOSE:
        dMw_fade_in();
        dMw_fishing_delete();
        field_0x144 = 3;
        dMeter2Info_setWindowStatus(3);
        dMw_collect_create();
        break;
    case SKILL_CLOSE:
        dMw_fade_in();
        dMw_skill_delete();
        field_0x144 = 3;
        dMeter2Info_setWindowStatus(3);
        dMw_collect_create();
        break;
    case INSECT_CLOSE:
        dMw_fade_in();
        dMw_insect_delete();
        field_0x144 = 3;
        dMeter2Info_setWindowStatus(3);
        dMw_collect_create();
        break;
    }
}

/* 801FA46C-801FA538 1F4DAC 00CC+00 1/0 0/0 0/0 .text            collect_close_init__5dMw_cFUc */
void dMw_c::collect_close_init(u8) {
    if (mpMenuCollect->getSubWindowOpenCheck() != 1 && mpMenuCollect->getSubWindowOpenCheck() != 2)
    {
        if (mpMenuCollect->getSubWindowOpenCheck() == 3 ||
            mpMenuCollect->getSubWindowOpenCheck() == 4 ||
            mpMenuCollect->getSubWindowOpenCheck() == 5 ||
            mpMenuCollect->getSubWindowOpenCheck() == 6)
        {
            Z2GetAudioMgr()->seStart(Z2SE_SY_MENU_SUB_IN, NULL, 0, 0, 1.0f, 1.0f, -1.0f,
                                            -1.0f, 0);
        } else {
            Z2GetAudioMgr()->seStart(Z2SE_SY_MENU_OUT, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f,
                                            0);
            dMeter2Info_set2DVibrationM();
        }
    }

    dMw_fade_out();
}

/* 801FA538-801FA55C 1F4E78 0024+00 1/0 0/0 0/0 .text            fmap_open_init__5dMw_cFUc */
void dMw_c::fmap_open_init(u8) {
    dMeter2Info_setWindowStatus(4);
    field_0x153 = 0;
}

/* 801FA55C-801FA560 1F4E9C 0004+00 1/0 0/0 0/0 .text            fmap_move_init__5dMw_cFUc */
void dMw_c::fmap_move_init(u8) {}

/* 801FA560-801FA564 1F4EA0 0004+00 1/0 0/0 0/0 .text            fmap_close_init__5dMw_cFUc */
void dMw_c::fmap_close_init(u8) {}

/* 801FA564-801FA588 1F4EA4 0024+00 1/0 0/0 0/0 .text            dmap_open_init__5dMw_cFUc */
void dMw_c::dmap_open_init(u8) {
    dMeter2Info_setWindowStatus(5);
    field_0x153 = 0;
}

/* 801FA588-801FA58C 1F4EC8 0004+00 1/0 0/0 0/0 .text            dmap_move_init__5dMw_cFUc */
void dMw_c::dmap_move_init(u8) {}

/* 801FA58C-801FA590 1F4ECC 0004+00 1/0 0/0 0/0 .text            dmap_close_init__5dMw_cFUc */
void dMw_c::dmap_close_init(u8) {}

/* 801FA590-801FA5E4 1F4ED0 0054+00 1/0 0/0 0/0 .text            collect_save_open_init__5dMw_cFUc
 */
void dMw_c::collect_save_open_init(u8) {
    field_0x144 = 10;
    dMeter2Info_setWindowStatus(10);
    dMw_collect_delete(true);
    dMw_save_create();
}

/* 801FA5E4-801FA5E8 1F4F24 0004+00 1/0 0/0 0/0 .text            collect_save_move_init__5dMw_cFUc
 */
void dMw_c::collect_save_move_init(u8) {}

/* 801FA5E8-801FA608 1F4F28 0020+00 1/0 0/0 0/0 .text            collect_save_close_init__5dMw_cFUc
 */
void dMw_c::collect_save_close_init(u8) {
    dMw_fade_out();
}

/* 801FA608-801FA65C 1F4F48 0054+00 1/0 0/0 0/0 .text            collect_option_open_init__5dMw_cFUc
 */
void dMw_c::collect_option_open_init(u8) {
    field_0x144 = 10;
    dMeter2Info_setWindowStatus(10);
    dMw_collect_delete(true);
    dMw_option_create();
}

/* 801FA65C-801FA660 1F4F9C 0004+00 1/0 0/0 0/0 .text            collect_option_move_init__5dMw_cFUc
 */
void dMw_c::collect_option_move_init(u8) {}

/* 801FA660-801FA680 1F4FA0 0020+00 1/0 0/0 0/0 .text collect_option_close_init__5dMw_cFUc */
void dMw_c::collect_option_close_init(u8) {
    dMw_fade_out();
}

/* 801FA680-801FA6DC 1F4FC0 005C+00 1/0 0/0 0/0 .text            collect_letter_open_init__5dMw_cFUc
 */
void dMw_c::collect_letter_open_init(u8) {
    field_0x144 = 10;
    dMeter2Info_setWindowStatus(10);
    field_0x152 = 0;
    dMw_collect_delete(true);
    dMw_letter_create();
}

/* 801FA6DC-801FA6E0 1F501C 0004+00 1/0 0/0 0/0 .text            collect_letter_move_init__5dMw_cFUc
 */
void dMw_c::collect_letter_move_init(u8) {}

/* 801FA6E0-801FA738 1F5020 0058+00 1/0 0/0 0/0 .text collect_letter_close_init__5dMw_cFUc */
void dMw_c::collect_letter_close_init(u8) {
    Z2GetAudioMgr()->seStart(Z2SE_SY_MENU_SUB_OUT, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
    dMeter2Info_set2DVibration();
    dMw_fade_out();
}

/* 801FA738-801FA794 1F5078 005C+00 1/0 0/0 0/0 .text collect_fishing_open_init__5dMw_cFUc */
void dMw_c::collect_fishing_open_init(u8) {
    field_0x144 = 10;
    dMeter2Info_setWindowStatus(10);
    field_0x152 = 0;
    dMw_collect_delete(true);
    dMw_fishing_create();
}

/* 801FA794-801FA798 1F50D4 0004+00 1/0 0/0 0/0 .text collect_fishing_move_init__5dMw_cFUc */
void dMw_c::collect_fishing_move_init(u8) {}

/* 801FA798-801FA7F0 1F50D8 0058+00 1/0 0/0 0/0 .text collect_fishing_close_init__5dMw_cFUc */
void dMw_c::collect_fishing_close_init(u8) {
    Z2GetAudioMgr()->seStart(Z2SE_SY_MENU_SUB_OUT, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
    dMeter2Info_set2DVibration();
    dMw_fade_out();
}

/* 801FA7F0-801FA84C 1F5130 005C+00 1/0 0/0 0/0 .text            collect_skill_open_init__5dMw_cFUc
 */
void dMw_c::collect_skill_open_init(u8) {
    field_0x144 = 10;
    dMeter2Info_setWindowStatus(10);
    field_0x152 = 0;
    dMw_collect_delete(true);
    dMw_skill_create();
}

/* 801FA84C-801FA850 1F518C 0004+00 1/0 0/0 0/0 .text            collect_skill_move_init__5dMw_cFUc
 */
void dMw_c::collect_skill_move_init(u8) {}

/* 801FA850-801FA8A8 1F5190 0058+00 1/0 0/0 0/0 .text            collect_skill_close_init__5dMw_cFUc
 */
void dMw_c::collect_skill_close_init(u8) {
    Z2GetAudioMgr()->seStart(Z2SE_SY_MENU_SUB_OUT, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
    dMeter2Info_set2DVibration();
    dMw_fade_out();
}

/* 801FA8A8-801FA908 1F51E8 0060+00 1/0 0/0 0/0 .text            collect_insect_open_init__5dMw_cFUc
 */
void dMw_c::collect_insect_open_init(u8) {
    field_0x144 = 10;
    dMeter2Info_setWindowStatus(10);
    field_0x152 = 0;
    dMw_collect_delete(true);
    dMw_insect_create(0);
}

/* 801FA908-801FA90C 1F5248 0004+00 1/0 0/0 0/0 .text            collect_insect_move_init__5dMw_cFUc
 */
void dMw_c::collect_insect_move_init(u8) {}

/* 801FA90C-801FA964 1F524C 0058+00 1/0 0/0 0/0 .text collect_insect_close_init__5dMw_cFUc */
void dMw_c::collect_insect_close_init(u8) {
    Z2GetAudioMgr()->seStart(Z2SE_SY_MENU_SUB_OUT, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
    dMeter2Info_set2DVibration();
    dMw_fade_out();
}

/* 801FA964-801FA9E8 1F52A4 0084+00 1/0 0/0 0/0 .text            insect_open_init__5dMw_cFUc */
void dMw_c::insect_open_init(u8) {
    field_0x144 = 10;
    dMeter2Info_setWindowStatus(10);
    Z2GetAudioMgr()->seStart(Z2SE_SY_MENU_SUB_IN, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
    dMw_fade_out();
    dMw_capture_create();
}

/* 801FA9E8-801FA9EC 1F5328 0004+00 1/0 0/0 0/0 .text            insect_open2_init__5dMw_cFUc */
void dMw_c::insect_open2_init(u8) {}

/* 801FA9EC-801FA9F0 1F532C 0004+00 1/0 0/0 0/0 .text            insect_move_init__5dMw_cFUc */
void dMw_c::insect_move_init(u8) {}

/* 801FA9F0-801FAA48 1F5330 0058+00 1/0 0/0 0/0 .text            insect_close_init__5dMw_cFUc */
void dMw_c::insect_close_init(u8) {
    Z2GetAudioMgr()->seStart(Z2SE_SY_MENU_SUB_OUT, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
    dMeter2Info_set2DVibration();
    dMw_fade_out();
}

/* 801FAA48-801FAFDC 1F5388 0594+00 1/0 0/0 0/0 .text            key_wait_proc__5dMw_cFv */
void dMw_c::key_wait_proc() {
    if (field_0x14B != 0) {
        switch (field_0x14B) {
        case 1:
            dMw_ring_create(2);
            break;
        case 2:
            dMw_ring_create(0);
            break;
        case 3:
            dMw_ring_create(3);
            break;
        case 4:
            dMw_ring_create(1);
            break;
        default:
            dMw_ring_create(0xFF);
            break;
        }

        mMenuProc = RING_OPEN;
        field_0x14B = 0;
    }

    if (mDoGph_gInf_c::getFader()->getStatus() == 1 &&
        (dComIfGp_isHeapLockFlag() == 0 || dComIfGp_isHeapLockFlag() == 5) &&
        dComIfGp_getMesgStatus() == 0 &&
        dCam_getBody()->Mode() != 7 &&
        dCam_getBody()->Mode() != 8 &&
        !dComIfGp_checkCameraAttentionStatus(0, 8) &&
        !dComIfGp_isPauseFlag() &&
        isPauseWindow() &&
        isPauseReady() &&
        !fopOvlpM_IsDoingReq() &&
        !mDoGph_gInf_c::isFade() &&
        !daPy_getPlayerActorClass()->checkBottleSwingMode() &&
        ((!mDoCPd_c::getTrigA(PAD_1) && !mDoCPd_c::getTrigB(PAD_1)) || dMeter2Info_getMapStatus() == 4) &&
        !isEventCheck() &&
        dComIfGp_getMesgStatus() == 0)
    {
        BOOL var_r29;
        if (field_0x14A != 0) {
            var_r29 = 0;
        }

        if (dMeter2Info_getPauseStatus() == 8) {
            dMsgObject_setKillMessageFlag();

            if (dComIfGp_isHeapLockFlag() == 5) {
                dMeter2Info_getMeterClass()->emphasisButtonDelete();
            }

            dComIfGp_setHeapLockFlag(1);
            mMenuProc = INSECT_AGITHA_OPEN1;
            dMeter2Info_resetPauseStatus();
        } else if ((dMw_START_TRIGGER() && !dMw_A_TRIGGER()) &&
                   (dMeter2Info_getMapStatus() == 0 || dMeter2Info_getMapStatus() == 1) &&
                   dMeter2Info_isWindowAccept(3) &&
                   !dComIfGp_isEnableNextStage())
        {
            dMsgObject_setKillMessageFlag();

            if (dComIfGp_isHeapLockFlag() == 5) {
                dMeter2Info_getMeterClass()->emphasisButtonDelete();
            }

            dComIfGp_setHeapLockFlag(1);
            mMenuProc = COLLECT_OPEN;
        } else if (dMeter2Info_getMapStatus() == 2 ||
                   dMeter2Info_getMapStatus() == 3 ||
                   dMeter2Info_getMapStatus() == 4 ||
                   dMeter2Info_getMapStatus() == 5 ||
                   dMeter2Info_getMapStatus() == 7 ||
                   dMeter2Info_getMapStatus() == 8 ||
                   dMeter2Info_getMapStatus() == 9 ||
                   dMeter2Info_getMapStatus() == 6 ||
                   g_fmapHIO.field_0x2f9)
        {
            dMsgObject_setKillMessageFlag();

            if (dComIfGp_isHeapLockFlag() == 5) {
                dMeter2Info_getMeterClass()->emphasisButtonDelete();
            }

            if (dStage_stagInfo_GetUpButton(dComIfGp_getStage()->getStagInfo()) == 0 ||
                dStage_stagInfo_GetUpButton(dComIfGp_getStage()->getStagInfo()) == 5 ||
                dStage_stagInfo_GetUpButton(dComIfGp_getStage()->getStagInfo()) == 3 ||
                dStage_stagInfo_GetUpButton(dComIfGp_getStage()->getStagInfo()) == 4 ||
                dStage_stagInfo_GetUpButton(dComIfGp_getStage()->getStagInfo()) == 6 ||
                dMeter2Info_getMapStatus() == 3 ||
                dMeter2Info_getMapStatus() == 4 ||
                dMeter2Info_getMapStatus() == 5 ||
                dMeter2Info_getMapStatus() == 7 ||
                dMeter2Info_getMapStatus() == 8 ||
                dMeter2Info_getMapStatus() == 9)
            {
                dComIfGp_setHeapLockFlag(2);
                mMenuProc = FMAP_OPEN;
                dMw_fmap_create();
            } else if (dStage_stagInfo_GetUpButton(dComIfGp_getStage()->getStagInfo()) == 1 || dMeter2Info_getMapStatus() == 6) {
                dComIfGp_setHeapLockFlag(3);
                mMenuProc = DMAP_OPEN;
                dMw_dmap_create();
            }
        } else if ((((dMw_UP_TRIGGER() || dMw_DOWN_TRIGGER()) && !dMw_LEFT_TRIGGER() && !dMw_RIGHT_TRIGGER()) || dMeter2Info_isMenuInForce(2) || dMeter2Info_isTouchKeyCheck(2)) &&
                   dMeter2Info_isWindowAccept(2) &&
                   (dMeter2Info_getMapStatus() == 0 || dMeter2Info_getMapStatus() == 1) &&
                   dMeter2Info_isItemOpenCheck() &&
                   !dComIfGp_isEnableNextStage())
        {
            dMsgObject_setKillMessageFlag();

            if (dComIfGp_isHeapLockFlag() == 5) {
                dMeter2Info_getMeterClass()->emphasisButtonDelete();
            }

            if (dMw_DOWN_TRIGGER()) {
                field_0x14B = 1;
                dMw_ring_create(2);
            } else {
                field_0x14B = 2;
                dMw_ring_create(0);
            }

            mMenuProc = RING_OPEN;
            field_0x14B = 0;
            dComIfGp_setHeapLockFlag(1);
        }
    }
}

/* 801FAFDC-801FB01C 1F591C 0040+00 1/0 0/0 0/0 .text            ring_open_proc__5dMw_cFv */
void dMw_c::ring_open_proc() {
    if (mpMenuRing->isOpen()) {
        mMenuProc = RING_MOVE;
    }
}

/* 801FB01C-801FB064 1F595C 0048+00 1/0 0/0 0/0 .text            ring_move_proc__5dMw_cFv */
void dMw_c::ring_move_proc() {
    mpMenuRing->_move();
    if (mpMenuRing->isMoveEnd()) {
        mMenuProc = RING_CLOSE;
    }
}

/* 801FB064-801FB0B8 1F59A4 0054+00 1/0 0/0 0/0 .text            ring_close_proc__5dMw_cFv */
void dMw_c::ring_close_proc() {
    if (mpMenuRing->isClose()) {
        dMeter2Info_offMenuInForce(2);
        mMenuProc = NO_MENU;
    }
}

/* 801FB0B8-801FB110 1F59F8 0058+00 1/0 0/0 0/0 .text            collect_open_proc__5dMw_cFv */
void dMw_c::collect_open_proc() {
    if (field_0x153 == 0) {
        field_0x153 = 1;
        dMeter2Info_set2DVibrationM();
    }

    if (mDoGph_gInf_c::getFader()->getStatus() == JUTFader::UNKSTATUS_0) {
        mMenuProc = COLLECT_MOVE;
    }
}

/* 801FB110-801FB1A0 1F5A50 0090+00 1/0 0/0 0/0 .text            collect_move_proc__5dMw_cFv */
void dMw_c::collect_move_proc() {
    if (mpMenuCollect->getSubWindowOpenCheck()) {
        mMenuProc = COLLECT_CLOSE;
    } else if ((dMw_isPush_S_Button() && !mpMenuCollect->isKeyCheck()) || mpMenuCollect->isOutCheck()) {
        mMenuProc = COLLECT_CLOSE;
    } else {
        mpMenuCollect->_move();
    }
}

/* 801FB1A0-801FB240 1F5AE0 00A0+00 1/0 0/0 0/0 .text            collect_close_proc__5dMw_cFv */
void dMw_c::collect_close_proc() {
    if (mDoGph_gInf_c::getFader()->getStatus() == 0) {
        if (mpMenuCollect->getSubWindowOpenCheck() == 1) {
            mMenuProc = SAVE_OPEN;
        } else if (mpMenuCollect->getSubWindowOpenCheck() == 2) {
            mMenuProc = OPTIONS_OPEN;
        } else if (mpMenuCollect->getSubWindowOpenCheck() == 3) {
            mMenuProc = LETTER_OPEN;
        } else if (mpMenuCollect->getSubWindowOpenCheck() == 4) {
            mMenuProc = FISHING_OPEN;
        } else if (mpMenuCollect->getSubWindowOpenCheck() == 5) {
            mMenuProc = SKILL_OPEN;
        } else if (mpMenuCollect->getSubWindowOpenCheck() == 6) {
            mMenuProc = INSECT_OPEN;
        } else {
            mMenuProc = NO_MENU;
        }
    }
}

/* 801FB240-801FB298 1F5B80 0058+00 1/0 0/0 0/0 .text            fmap_open_proc__5dMw_cFv */
void dMw_c::fmap_open_proc() {
    if (field_0x153 == 0) {
        field_0x153 = 1;
        dMeter2Info_set2DVibrationM();
    }

    if (mpMenuFmap->isOpen()) {
        mMenuProc = FMAP_MOVE;
    }
}

/* 801FB298-801FB36C 1F5BD8 00D4+00 1/0 0/0 0/0 .text            fmap_move_proc__5dMw_cFv */
void dMw_c::fmap_move_proc() {
    mpMenuFmap->_move();

    if (mDoGph_gInf_c::getFader()->getStatus() == 1) {
        mMenuProc = mpMenuFmap->getNextStatus(&field_0x14B);

        if (g_fmapHIO.field_0x2f9 != 0) {
            mMenuProc = FMAP_CLOSE;
            Z2GetAudioMgr()->seStart(Z2SE_SY_MAP_CLOSE_L, NULL, 0, 0, 1.0f, 1.0f, -1.0f,
                                            -1.0f, 0);
        }

        if (dMeter2Info_getMeterMapClass() != NULL) {
            if (dMeter2Info_getMapStatus() == 1) {
                dMeter2Info_getMeterMapClass()->setDispPosInsideFlg_SE_On();
            } else if (dMeter2Info_getMapStatus() == 0) {
                dMeter2Info_getMeterMapClass()->setDispPosOutsideFlg_SE_On();
            }
        }
    }
}

/* 801FB36C-801FB3AC 1F5CAC 0040+00 1/0 0/0 0/0 .text            fmap_close_proc__5dMw_cFv */
void dMw_c::fmap_close_proc() {
    if (mpMenuFmap->isClose()) {
        mMenuProc = NO_MENU;
    }
}

/* 801FB3AC-801FB404 1F5CEC 0058+00 1/0 0/0 0/0 .text            dmap_open_proc__5dMw_cFv */
void dMw_c::dmap_open_proc() {
    if (field_0x153 == 0) {
        field_0x153 = 1;
        dMeter2Info_set2DVibrationM();
    }

    if (mpMenuDmap->isOpen()) {
        mMenuProc = DMAP_MOVE;
    }
}

/* 801FB404-801FB5DC 1F5D44 01D8+00 1/0 0/0 0/0 .text            dmap_move_proc__5dMw_cFv */
void dMw_c::dmap_move_proc() {
    u8 nextStatus = mpMenuDmap->getNextStatus();
    if (nextStatus == 1) {
        if (dMeterMap_c::isEnableDispMapAndMapDispSizeTypeNo()) {
            dMeter2Info_setMapStatus(1);
            dMeter2Info_getMeterMapClass()->setDispPosInsideFlg_SE_On();
        } else {
            dMeter2Info_setMapStatus(0);
            dMeter2Info_getMeterMapClass()->setDispPosOutsideFlg_SE_On();
        }
        dMeter2Info_setMapKeyDirection(0x200);
        mMenuProc = DMAP_CLOSE;
        mpMenuDmap->setInOutDir(3);
        Z2GetAudioMgr()->seStart(Z2SE_SY_MAP_CLOSE_L, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f,
                                        0);
    } else if (nextStatus == 2) {
        dMeter2Info_setMapStatus(0);
        dMeter2Info_setMapKeyDirection(0x400);
        mMenuProc = DMAP_CLOSE;
        dMeter2Info_getMeterMapClass()->setDispPosOutsideFlg_SE_On();
        mpMenuDmap->setInOutDir(1);
        Z2GetAudioMgr()->seStart(Z2SE_SY_MAP_CLOSE_L, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f,
                                        0);
    } else if (nextStatus == 3) {
        if (dMeterMap_c::isEnableDispMapAndMapDispSizeTypeNo()) {
            dMeter2Info_setMapStatus(1);
        } else {
            dMeter2Info_setMapStatus(0);
        }

        mMenuProc = DMAP_CLOSE;
        mpMenuDmap->setInOutDir(2);
        Z2GetAudioMgr()->seStart(Z2SE_SY_MAP_CLOSE_L, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f,
                                        0);
    } else {
        mpMenuDmap->_move();
    }
}

/* 801FB5DC-801FB61C 1F5F1C 0040+00 1/0 0/0 0/0 .text            dmap_close_proc__5dMw_cFv */
void dMw_c::dmap_close_proc() {
    if (mpMenuDmap->isClose()) {
        mMenuProc = NO_MENU;
    }
}

/* 801FB61C-801FB67C 1F5F5C 0060+00 1/0 0/0 0/0 .text            collect_save_open_proc__5dMw_cFv */
void dMw_c::collect_save_open_proc() {
    if (mpMenuSave->getSaveStatus() == 1 && mpMenuSave->_open()) {
        dMw_fade_in();
    }

    if (mpMenuSave->getSaveStatus() == 2) {
        mMenuProc = SAVE_MOVE;
    }
}

/* 801FB67C-801FB6D8 1F5FBC 005C+00 1/0 0/0 0/0 .text            collect_save_move_proc__5dMw_cFv */
void dMw_c::collect_save_move_proc() {
    if (mpMenuSave->getSaveStatus() == 2) {
        mpMenuSave->_move();
    }

    if (mpMenuSave->getSaveStatus() == 3 || mpMenuSave->getSaveStatus() == 4) {
        mMenuProc = SAVE_CLOSE;
    }
}

/* 801FB6D8-801FB73C 1F6018 0064+00 1/0 0/0 0/0 .text            collect_save_close_proc__5dMw_cFv
 */
void dMw_c::collect_save_close_proc() {
    if (mDoGph_gInf_c::getFader()->getStatus() == 0) {
        mpMenuSave->_move();

        if (mpMenuSave->getSaveStatus() == 3) {
            mMenuProc = COLLECT_MOVE;
        } else {
            mMenuProc = NO_MENU;
        }
    }
}

/* 801FB73C-801FB7AC 1F607C 0070+00 1/0 0/0 0/0 .text            collect_option_open_proc__5dMw_cFv
 */
void dMw_c::collect_option_open_proc() {
    if (mpMenuOption->getQuitStatus() == 1 && mpMenuOption->_open()) {
        dMw_fade_in();
    }

    if (mpMenuOption->getQuitStatus() == 2 && mDoGph_gInf_c::getFader()->getStatus() == 1) {
        mMenuProc = OPTIONS_MOVE;
    }
}

/* 801FB7AC-801FB800 1F60EC 0054+00 1/0 0/0 0/0 .text            collect_option_move_proc__5dMw_cFv
 */
void dMw_c::collect_option_move_proc() {
    if (mpMenuOption->getQuitStatus() == 2) {
        mpMenuOption->_move();
    }

    if (mpMenuOption->getQuitStatus() == 3) {
        mMenuProc = OPTIONS_CLOSE;
    }
}

/* 801FB800-801FB81C 1F6140 001C+00 1/0 0/0 0/0 .text            collect_option_close_proc__5dMw_cFv
 */
void dMw_c::collect_option_close_proc() {
    if (mDoGph_gInf_c::getFader()->getStatus() == 0) {
        mMenuProc = COLLECT_MOVE;
    }
}

/* 801FB81C-801FB8AC 1F615C 0090+00 1/0 0/0 0/0 .text            collect_letter_open_proc__5dMw_cFv
 */
void dMw_c::collect_letter_open_proc() {
    if (mpMenuLetter->getStatus() == 1) {
        mpMenuLetter->_open();

        if (field_0x152 == 0 && mpMenuLetter->isSync()) {
            dMw_fade_in();
            field_0x152 = 1;
        }
    }

    if (mpMenuLetter->getStatus() == 2 && field_0x152 == 1) {
        mMenuProc = LETTER_MOVE;
        field_0x152 = 0;
    }
}

/* 801FB8AC-801FB900 1F61EC 0054+00 1/0 0/0 0/0 .text            collect_letter_move_proc__5dMw_cFv
 */
void dMw_c::collect_letter_move_proc() {
    if (mpMenuLetter->getStatus() == 2) {
        mpMenuLetter->_move();
    }

    if (mpMenuLetter->getStatus() == 3) {
        mMenuProc = LETTER_CLOSE;
    }
}

/* 801FB900-801FB91C 1F6240 001C+00 1/0 0/0 0/0 .text            collect_letter_close_proc__5dMw_cFv
 */
void dMw_c::collect_letter_close_proc() {
    if (mDoGph_gInf_c::getFader()->getStatus() == JUTFader::UNKSTATUS_0) {
        mMenuProc = COLLECT_MOVE;
    }
}

/* 801FB91C-801FB9AC 1F625C 0090+00 1/0 0/0 0/0 .text            collect_fishing_open_proc__5dMw_cFv
 */
void dMw_c::collect_fishing_open_proc() {
    if (mpMenuFishing->getStatus() == dMenu_Fishing_c::READY_OPEN) {
        mpMenuFishing->_open();

        if (field_0x152 == 0 && mpMenuFishing->isSync()) {
            dMw_fade_in();
            field_0x152 = 1;
        }
    }

    if (mpMenuFishing->getStatus() == dMenu_Fishing_c::READY_MOVE && field_0x152 == 1) {
        mMenuProc = FISHING_MOVE;
        field_0x152 = 0;
    }
}

/* 801FB9AC-801FBA00 1F62EC 0054+00 1/0 0/0 0/0 .text            collect_fishing_move_proc__5dMw_cFv
 */
void dMw_c::collect_fishing_move_proc() {
    if (mpMenuFishing->getStatus() == dMenu_Fishing_c::READY_MOVE) {
        mpMenuFishing->_move();
    }

    if (mpMenuFishing->getStatus() == dMenu_Fishing_c::READY_CLOSE) {
        mMenuProc = FISHING_CLOSE;
    }
}

/* 801FBA00-801FBA1C 1F6340 001C+00 1/0 0/0 0/0 .text collect_fishing_close_proc__5dMw_cFv */
void dMw_c::collect_fishing_close_proc() {
    if (mDoGph_gInf_c::getFader()->getStatus() == JUTFader::UNKSTATUS_0) {
        mMenuProc = COLLECT_MOVE;
    }
}

/* 801FBA1C-801FBAAC 1F635C 0090+00 1/0 0/0 0/0 .text            collect_skill_open_proc__5dMw_cFv
 */
void dMw_c::collect_skill_open_proc() {
    if (mpMenuSkill->getStatus() == 1) {
        mpMenuSkill->_open();
        if (field_0x152 == 0 && mpMenuSkill->isSync()) {
            dMw_fade_in();
            field_0x152 = 1;
        }
    }

    if (mpMenuSkill->getStatus() == 2 && field_0x152 == 1) {
        mMenuProc = SKILL_MOVE;
        field_0x152 = 0;
    }
}

/* 801FBAAC-801FBB00 1F63EC 0054+00 1/0 0/0 0/0 .text            collect_skill_move_proc__5dMw_cFv
 */
void dMw_c::collect_skill_move_proc() {
    if (mpMenuSkill->getStatus() == 2) {
        mpMenuSkill->_move();
    }

    if (mpMenuSkill->getStatus() == 3) {
        mMenuProc = SKILL_CLOSE;
    }
}

/* 801FBB00-801FBB1C 1F6440 001C+00 1/0 0/0 0/0 .text            collect_skill_close_proc__5dMw_cFv
 */
void dMw_c::collect_skill_close_proc() {
    if (mDoGph_gInf_c::getFader()->getStatus() == JUTFader::UNKSTATUS_0) {
        mMenuProc = COLLECT_MOVE;
    }
}

/* 801FBB1C-801FBBAC 1F645C 0090+00 1/0 0/0 0/0 .text            collect_insect_open_proc__5dMw_cFv
 */
void dMw_c::collect_insect_open_proc() {
    if (mpMenuInsect->getStatus() == 1) {
        mpMenuInsect->_open();
        if (field_0x152 == 0 && mpMenuInsect->isSync()) {
            dMw_fade_in();
            field_0x152 = 1;
        }
    }

    if (mpMenuInsect->getStatus() == 2 && field_0x152 == 1) {
        mMenuProc = INSECT_MOVE;
        field_0x152 = 0;
    }
}

/* 801FBBAC-801FBC00 1F64EC 0054+00 1/0 0/0 0/0 .text            collect_insect_move_proc__5dMw_cFv
 */
void dMw_c::collect_insect_move_proc() {
    if (mpMenuInsect->getStatus() == 2) {
        mpMenuInsect->_move();
    }

    if (mpMenuInsect->getStatus() == 3) {
        mMenuProc = INSECT_CLOSE;
    }
}

/* 801FBC00-801FBC1C 1F6540 001C+00 1/0 0/0 0/0 .text            collect_insect_close_proc__5dMw_cFv
 */
void dMw_c::collect_insect_close_proc() {
    if (mDoGph_gInf_c::getFader()->getStatus() == JUTFader::UNKSTATUS_0) {
        mMenuProc = COLLECT_MOVE;
    }
}

/* 801FBC1C-801FBC78 1F655C 005C+00 1/0 0/0 0/0 .text            insect_open_proc__5dMw_cFv */
void dMw_c::insect_open_proc() {
    if (mDoGph_gInf_c::getFader()->getStatus() == JUTFader::UNKSTATUS_0) {
        field_0x152 = 0;
        dComIfGp_setHeapLockFlag(1);
        dMw_insect_create(1);
        mMenuProc = INSECT_AGITHA_OPEN2;
    }
}

/* 801FBC78-801FBD08 1F65B8 0090+00 1/0 0/0 0/0 .text            insect_open2_proc__5dMw_cFv */
void dMw_c::insect_open2_proc() {
    if (mpMenuInsect->getStatus() == 1) {
        mpMenuInsect->_open();
        if (field_0x152 == 0 && mpMenuInsect->isSync()) {
            dMw_fade_in();
            field_0x152 = 1;
        }
    }

    if (mpMenuInsect->getStatus() == 2 && field_0x152 == 1) {
        mMenuProc = INSECT_AGITHA_MOVE;
        field_0x152 = 0;
    }
}

/* 801FBD08-801FBD64 1F6648 005C+00 1/0 0/0 0/0 .text            insect_move_proc__5dMw_cFv */
void dMw_c::insect_move_proc() {
    if (mpMenuInsect != NULL) {
        if (mpMenuInsect->getStatus() == 2) {
            mpMenuInsect->_move();
        }

        if (mpMenuInsect->getStatus() == 3) {
            mMenuProc = INSECT_AGITHA_CLOSE;
        }
    }
}

/* 801FBD64-801FBD80 1F66A4 001C+00 1/0 0/0 0/0 .text            insect_close_proc__5dMw_cFv */
void dMw_c::insect_close_proc() {
    if (mDoGph_gInf_c::getFader()->getStatus() == JUTFader::UNKSTATUS_0) {
        mMenuProc = NO_MENU;
    }
}

/* 801FBD80-801FBE14 1F66C0 0094+00 2/2 0/0 0/0 .text            dMw_capture_create__5dMw_cFv */
void dMw_c::dMw_capture_create() {
    if (!dComIfGp_isPauseFlag() && mpCapture == NULL) {
        mpCapture = new dDlst_MENU_CAPTURE_c();
        JUT_ASSERT(1996, mpCapture != 0);
        mpCapture->setCaptureFlag();
    }
}

/* 801FBE14-801FBE94 1F6754 0080+00 2/2 0/0 0/0 .text            dMw_capture_delete__5dMw_cFv */
void dMw_c::dMw_capture_delete() {
    if (dComIfGp_isPauseFlag()) {
        if (mpCapture != NULL) {
            delete mpCapture;
            mpCapture = NULL;
        }
        dComIfGp_offPauseFlag();
        field_0x151 = 2;
    }
}

/* 801FBE94-801FBF60 1F67D4 00CC+00 1/1 0/0 0/0 .text            dMw_ring_create__5dMw_cFUc */
void dMw_c::dMw_ring_create(u8 i_origin) {
    markMemSize();
    dComIfGp_setHeapLockFlag(1);

    mpMenuRing = new dMenu_Ring_c(mpHeap, mpStick, mpCStick, i_origin);
    JUT_ASSERT(2038, mpMenuRing != 0);
    mpMenuRing->_create();

    if (mpCapture == NULL) {
        mpCapture = new dDlst_MENU_CAPTURE_c();
        JUT_ASSERT(2043, mpCapture != 0);
    }

    mpCapture->setCaptureFlag();
}

/* 801FBF60-801FBFF8 1F68A0 0098+00 2/2 0/0 0/0 .text            dMw_ring_delete__5dMw_cFv */
bool dMw_c::dMw_ring_delete() {
    if (mpMenuRing != NULL) {
        mpMenuRing->_delete();
        delete mpMenuRing;
        mpMenuRing = NULL;
    }

    if (mpCapture != NULL) {
        delete mpCapture;
        mpCapture = NULL;
    }

    checkMemSize();
    return true;
}

/* 801FBFF8-801FC090 1F6938 0098+00 1/1 0/0 0/0 .text            dMw_collect_create__5dMw_cFv */
void dMw_c::dMw_collect_create() {
    markMemSize();

    mpMenuCollect = new dMenu_Collect_c(mpHeap, mpStick, mpCStick);
    JUT_ASSERT(2093, mpMenuCollect != 0);
    mpMenuCollect->_create();

    if (mDoCPd_c::getHoldLockL(PAD_1)) {
        dMw_onButtonBit(1);
    } else if (mDoCPd_c::getHoldLockR(PAD_1)) {
        dMw_onButtonBit(2);
    }
}

/* 801FC090-801FC0FC 1F69D0 006C+00 8/8 0/0 0/0 .text            dMw_collect_delete__5dMw_cFb */
bool dMw_c::dMw_collect_delete(bool) {
    if (mpMenuCollect != NULL) {
        mpMenuCollect->_delete();
        delete mpMenuCollect;
        mpMenuCollect = NULL;
    }
    checkMemSize();
    return true;
}

/* 801FC0FC-801FC264 1F6A3C 0168+00 1/1 0/0 0/0 .text            dMw_fmap_create__5dMw_cFv */
void dMw_c::dMw_fmap_create() {
    markMemSize();
    dComIfGp_setHeapLockFlag(2);

    u8 tmp = 0;
    if (dMeter2Info_getMapKeyDirection() == 0x400 || dMeter2Info_getMapStatus() == 3 ||
        dMeter2Info_getMapStatus() == 4 || dMeter2Info_getMapStatus() == 5 ||
        dMeter2Info_getMapStatus() == 7 || dMeter2Info_getMapStatus() == 8 ||
        dMeter2Info_getMapStatus() == 9 || dMeter2Info_getMapStatus() == 6)
    {
        tmp = 1;
    } else if (dMeter2Info_getMapKeyDirection() == 0x200) {
        tmp = 3;
    } else if (dMeter2Info_getMapKeyDirection() == 0x100) {
        tmp = 2;
    } else if (dMeter2Info_getMapKeyDirection() == 0x80) {
        tmp = 3;
    }

    mpMenuFmap = new dMenu_Fmap_c(mpHeap, mpStick, mpCStick, mFmapProcess, mFmapRegionCursor,
                                  mFmapStageCursor, mFmapStageTransX, mFmapStageTransZ, tmp);
    JUT_ASSERT(2194, mpMenuFmap != 0);

    if (mpCapture == NULL) {
        mpCapture = new dDlst_MENU_CAPTURE_c();
        JUT_ASSERT(2200, mpCapture != 0);
    }

    mpCapture->setCaptureFlag();
    dMeter2Info_resetWarpStatus();
}

/* 801FC264-801FC350 1F6BA4 00EC+00 2/2 0/0 0/0 .text            dMw_fmap_delete__5dMw_cFb */
bool dMw_c::dMw_fmap_delete(bool param_0) {
    if (mpMenuFmap != NULL) {
        if (!mpMenuFmap->isSync()) {
            return false;
        }

        mFmapProcess = mpMenuFmap->getProcess();
        mFmapRegionCursor = mpMenuFmap->getRegionCursor();
        mFmapStageCursor = mpMenuFmap->getStageCursor();
        mFmapStageTransX = mpMenuFmap->getStageTransX();
        mFmapStageTransZ = mpMenuFmap->getStageTransZ();

        mpMenuFmap->_delete();
        delete mpMenuFmap;
        mpMenuFmap = NULL;
    }

    if (mpCapture != NULL) {
        delete mpCapture;
        mpCapture = NULL;
    }

    checkMemSize();
    return true;
}

/* 801FC350-801FC46C 1F6C90 011C+00 1/1 0/0 0/0 .text            dMw_dmap_create__5dMw_cFv */
void dMw_c::dMw_dmap_create() {
    markMemSize();
    dComIfGp_setHeapLockFlag(3);

    if (mpCapture == NULL) {
        mpCapture = new dDlst_MENU_CAPTURE_c();
        JUT_ASSERT(2294, mpCapture != 0);
    }

    mpCapture->setCaptureFlag();

    u8 tmp = 0;
    if (dMeter2Info_getMapKeyDirection() == 0x200) {
        tmp = 3;
    } else if (dMeter2Info_getMapKeyDirection() == 0x400) {
        tmp = 1;
    } else if (dMeter2Info_getMapKeyDirection() == 0x100) {
        tmp = 2;
    } else if (dMeter2Info_getMapKeyDirection() == 0x80) {
        tmp = 0;
    }

    mpMenuDmap = new dMenu_Dmap_c(mpHeap, mpStick, mpCStick, field_0x14C, tmp);
    JUT_ASSERT(2314, mpMenuDmap != 0);

    dMeter2Info_resetWarpStatus();
}

/* 801FC46C-801FC520 1F6DAC 00B4+00 2/2 0/0 0/0 .text            dMw_dmap_delete__5dMw_cFb */
bool dMw_c::dMw_dmap_delete(bool param_0) {
    if (mpMenuDmap != NULL) {
        if (!mpMenuDmap->isSync()) {
            return false;
        }

        field_0x14C = mpMenuDmap->getZoomState();

        delete mpMenuDmap;
        mpMenuDmap = NULL;
    }

    if (mpCapture != NULL) {
        delete mpCapture;
        mpCapture = NULL;
    }

    checkMemSize();
    return true;
}

/* 801FC520-801FC5D0 1F6E60 00B0+00 1/1 0/0 0/0 .text            dMw_save_create__5dMw_cFv */
void dMw_c::dMw_save_create() {
    markMemSize();

    mpMenuSave = new dMenu_save_c();
    JUT_ASSERT(2365, mpMenuSave != 0);

    mpMenuSave->setUseType(1);
    mpMenuSave->_create();
    mpMenuSave->initialize();

    if (mpCapture == NULL) {
        mpCapture = new dDlst_MENU_CAPTURE_c();
        JUT_ASSERT(2373, mpCapture != 0);
    }
}

/* 801FC5D0-801FC668 1F6F10 0098+00 3/3 0/0 0/0 .text            dMw_save_delete__5dMw_cFv */
bool dMw_c::dMw_save_delete() {
    if (mpMenuSave != NULL) {
        mpMenuSave->_delete();
        delete mpMenuSave;
        mpMenuSave = NULL;
    }

    if (mpCapture != NULL) {
        delete mpCapture;
        mpCapture = NULL;
    }

    checkMemSize();
    return true;
}

/* 801FC668-801FC70C 1F6FA8 00A4+00 1/1 0/0 0/0 .text            dMw_option_create__5dMw_cFv */
void dMw_c::dMw_option_create() {
    markMemSize();

    mpMenuOption = new dMenu_Option_c(dComIfGp_getCollectResArchive(), mpStick);
    JUT_ASSERT(2415, mpMenuOption != 0);

    if (mpCapture == NULL) {
        mpCapture = new dDlst_MENU_CAPTURE_c();
        JUT_ASSERT(2420, mpCapture != 0);
    }
}

/* 801FC70C-801FC7BC 1F704C 00B0+00 2/2 0/0 0/0 .text            dMw_option_delete__5dMw_cFv */
bool dMw_c::dMw_option_delete() {
    if (mpMenuOption != NULL) {
        if (!mpMenuOption->isSync()) {
            return false;
        }
        mpMenuOption->_delete();
        delete mpMenuOption;
        mpMenuOption = NULL;
    }

    if (mpCapture != NULL) {
        delete mpCapture;
        mpCapture = NULL;
    }

    checkMemSize();
    return true;
}

/* 801FC7BC-801FC85C 1F70FC 00A0+00 1/1 0/0 0/0 .text            dMw_letter_create__5dMw_cFv */
void dMw_c::dMw_letter_create() {
    markMemSize();

    mpMenuLetter = new dMenu_Letter_c(mpHeap, mpStick, mpCStick);
    JUT_ASSERT(2463, mpMenuLetter != 0);

    if (mpCapture == NULL) {
        mpCapture = new dDlst_MENU_CAPTURE_c();
        JUT_ASSERT(2467, mpCapture != 0);
    }
}

/* 801FC85C-801FC904 1F719C 00A8+00 2/2 0/0 0/0 .text            dMw_letter_delete__5dMw_cFv */
bool dMw_c::dMw_letter_delete() {
    if (mpMenuLetter != NULL) {
        if (!mpMenuLetter->isSync()) {
            return false;
        }
        delete mpMenuLetter;
        mpMenuLetter = NULL;
    }

    if (mpCapture != NULL) {
        delete mpCapture;
        mpCapture = NULL;
    }

    checkMemSize();
    return true;
}

/* 801FC904-801FC9A4 1F7244 00A0+00 1/1 0/0 0/0 .text            dMw_fishing_create__5dMw_cFv */
void dMw_c::dMw_fishing_create() {
    markMemSize();

    mpMenuFishing = new dMenu_Fishing_c(mpHeap, mpStick, mpCStick);
    JUT_ASSERT(2509, mpMenuFishing != 0);

    if (mpCapture == NULL) {
        mpCapture = new dDlst_MENU_CAPTURE_c();
        JUT_ASSERT(2513, mpCapture != 0);
    }
}

/* 801FC9A4-801FCA4C 1F72E4 00A8+00 2/2 0/0 0/0 .text            dMw_fishing_delete__5dMw_cFv */
bool dMw_c::dMw_fishing_delete() {
    if (mpMenuFishing != NULL) {
        if (!mpMenuFishing->isSync()) {
            return false;
        }
        delete mpMenuFishing;
        mpMenuFishing = NULL;
    }

    if (mpCapture != NULL) {
        delete mpCapture;
        mpCapture = NULL;
    }

    checkMemSize();
    return true;
}

/* 801FCA4C-801FCAEC 1F738C 00A0+00 1/1 0/0 0/0 .text            dMw_skill_create__5dMw_cFv */
void dMw_c::dMw_skill_create() {
    markMemSize();

    mpMenuSkill = new dMenu_Skill_c(mpHeap, mpStick, mpCStick);
    JUT_ASSERT(2555, mpMenuSkill != 0);

    if (mpCapture == NULL) {
        mpCapture = new dDlst_MENU_CAPTURE_c();
        JUT_ASSERT(2559, mpCapture != 0);
    }
}

/* 801FCAEC-801FCB94 1F742C 00A8+00 2/2 0/0 0/0 .text            dMw_skill_delete__5dMw_cFv */
bool dMw_c::dMw_skill_delete() {
    if (mpMenuSkill != NULL) {
        if (!mpMenuSkill->isSync()) {
            return false;
        }
        delete mpMenuSkill;
        mpMenuSkill = NULL;
    }

    if (mpCapture != NULL) {
        delete mpCapture;
        mpCapture = NULL;
    }

    checkMemSize();
    return true;
}

/* 801FCB94-801FCC44 1F74D4 00B0+00 2/2 0/0 0/0 .text            dMw_insect_create__5dMw_cFUc */
void dMw_c::dMw_insect_create(u8 param_0) {
    markMemSize();

    mpMenuInsect = new dMenu_Insect_c(mpHeap, mpStick, mpCStick, param_0);
    JUT_ASSERT(2601, mpMenuInsect != 0);

    if (mpCapture == NULL) {
        mpCapture = new dDlst_MENU_CAPTURE_c();
        JUT_ASSERT(2605, mpCapture != 0);
    }
}

/* 801FCC44-801FCCEC 1F7584 00A8+00 3/3 0/0 0/0 .text            dMw_insect_delete__5dMw_cFv */
bool dMw_c::dMw_insect_delete() {
    if (mpMenuInsect != NULL) {
        if (!mpMenuInsect->isSync()) {
            return false;
        }
        delete mpMenuInsect;
        mpMenuInsect = NULL;
    }

    if (mpCapture != NULL) {
        delete mpCapture;
        mpCapture = NULL;
    }

    checkMemSize();
    return true;
}

/* 801FCCEC-801FCCFC 1F762C 0010+00 1/1 0/0 0/0 .text            dMw_onButtonBit__5dMw_cFUc */
void dMw_c::dMw_onButtonBit(u8 i_bit) {
    mButtonBits |= i_bit;
}

/* 801FCCFC-801FCD0C 1F763C 0010+00 1/1 0/0 0/0 .text            dMw_offButtonBit__5dMw_cFUc */
void dMw_c::dMw_offButtonBit(u8 i_bit) {
    mButtonBits &= ~i_bit;
}

/* 801FCD0C-801FCD24 1F764C 0018+00 1/1 0/0 0/0 .text            dMw_isButtonBit__5dMw_cFUc */
BOOL dMw_c::dMw_isButtonBit(u8 i_bit) {
    return (mButtonBits & i_bit) ? TRUE : FALSE;
}

/* 801FCD24-801FCDD8 1F7664 00B4+00 1/1 0/0 0/0 .text            dMw_isPush_S_Button__5dMw_cFv */
BOOL dMw_c::dMw_isPush_S_Button() {
    if (isFadeNowCheck()) {
        if (daPy_getLinkPlayerActorClass()->getClothesChangeWaitTimer() == 0 &&
            daPy_getLinkPlayerActorClass()->getShieldChangeWaitTimer() == 0 &&
            daPy_getLinkPlayerActorClass()->getSwordChangeWaitTimer() == 0)
        {
            if (dMw_START_TRIGGER() || dMw_B_TRIGGER()) {
                return true;
            }
        }
    }

    return false;
}

/* 801FCDD8-801FCE08 1F7718 0030+00 1/1 0/0 0/0 .text            isPauseReady__5dMw_cFv */
bool dMw_c::isPauseReady() {
    if (dComIfGp_getEvent().checkCompulsory() || dComIfGs_getLife() == 0) {
        return false;
    }

    return true;
}

/* 801FCE08-801FCE78 1F7748 0070+00 10/10 3/3 0/0 .text            dMw_fade_out__5dMw_cFv */
void dMw_c::dMw_fade_out() {
    mDoGph_gInf_c::startFadeOut(13);
    mDoGph_gInf_c::setFadeColor(static_cast<JUtility::TColor&>(g_blackColor));
}

/* 801FCE78-801FCEE8 1F77B8 0070+00 9/9 4/4 0/0 .text            dMw_fade_in__5dMw_cFv */
void dMw_c::dMw_fade_in() {
    mDoGph_gInf_c::startFadeIn(13);
    mDoGph_gInf_c::setFadeColor(static_cast<JUtility::TColor&>(g_blackColor));
}

/* 801FCEE8-801FCF84 1F7828 009C+00 1/1 0/0 0/0 .text            checkCStickTrigger__5dMw_cFv */
int dMw_c::checkCStickTrigger() {
    field_0x14A = 0;
    if (field_0x149 == 0) {
        if (mpCStick->getValueStick() > 0.8f) {
            field_0x149 = 1;
            field_0x14A = 1;
            return 1;
        }
    } else {
        if (mpCStick->getValueStick() < 0.15f) {
            field_0x149 = 0;
        }
    }
    return 0;
}

/* 801FCF84-801FD094 1F78C4 0110+00 1/1 0/0 0/0 .text            isEventCheck__5dMw_cFv */
bool dMw_c::isEventCheck() {
    if (field_0x151 != 0) {
        return true;
    }

    if (dMeter2Info_getMapStatus() == 4 && field_0x148 > 0) {
        field_0x148 = 0;
    }

    if (dComIfGp_event_runCheck()) {
        if (!dMsgObject_isTalkNowCheck() &&
            (dMeter2Info_getMapStatus() == 4 || dMeter2Info_getMapStatus() == 5 ||
                dMeter2Info_getMapStatus() == 7 || dMeter2Info_getMapStatus() == 8 ||
                dMeter2Info_getMapStatus() == 9 || dMeter2Info_getMapStatus() == 6 ||
                dMeter2Info_getMapStatus() == 3 || dMeter2Info_isMenuInForce(2) ||
                dMeter2Info_getPauseStatus() == 8))
        {
            return false;
        }
        return true;
    }

    return field_0x148 > 0;
}

/* 801FD094-801FD0D4 1F79D4 0040+00 10/10 0/0 0/0 .text            markMemSize__5dMw_cFv */
void dMw_c::markMemSize() {
    if (mMemSize == 0) {
        mMemSize = mpHeap->getTotalFreeSize();
        OS_REPORT("memory marking ===> %d\n", mMemSize);
    }
}

/* 801FD0D4-801FD140 1F7A14 006C+00 10/10 0/0 0/0 .text            checkMemSize__5dMw_cFv */
void dMw_c::checkMemSize() {
    if (mMemSize > 0) {
        s32 now_size = mpHeap->getTotalFreeSize();
        s32 diff = now_size - mMemSize;
        if (diff < 0) {
            diff *= -1;
        }

        OS_REPORT("memory check ===> diff ==> %d, start ==> %d, now ==> %d\n", diff, mMemSize, now_size);

        if (diff > 0x20) {
            OSReport_Error("memory free error!!\n");
        }
        mMemSize = 0;
    }
}

/* 801FD140-801FD2D8 1F7A80 0198+00 1/1 0/0 0/0 .text            _create__5dMw_cFv */
int dMw_c::_create() {
    mpHeap = dComIfGp_getExpHeap2D();

    mpStick = new STControl(5, 2, 1, 1, 0.9f, 0.5f, 0, 0x800);
    JUT_ASSERT(2967, mpStick != 0);
    mpStick->setFirstWaitTime(8);

    mpCStick = new CSTControl(5, 2, 3, 2, 0.9f, 0.5f, 0, 0x2000);
    JUT_ASSERT(2976, mpCStick != 0);
    mpCStick->setWaitParm(5, 2, 3, 2, 0.9f, 0.5f, 0, 0x2000);

    mButtonBits = 0;
    mMenuProc = NO_MENU;
    mShowFlag = 1;
    field_0x148 = 0;
    field_0x14C = 0;
    field_0x14D = 0;
    mFmapProcess = 0;
    mFmapRegionCursor = 0;
    mFmapStageCursor = 0;
    field_0x151 = 0;
    field_0x152 = 0;
    mFmapStageTransX = 0.0f;
    mFmapStageTransZ = 0.0f;
    field_0x153 = 0;
    onPauseWindow();
    field_0x149 = 0;
    field_0x14A = 0;
    field_0x14B = 0;

    mpCapture = NULL;
    mpMenuRing = NULL;
    mpMenuCollect = NULL;
    mpMenuDmap = NULL;
    mpMenuFmap = NULL;
    mpMenuSave = NULL;
    mpMenuOption = NULL;
    mpMenuLetter = NULL;
    mpMenuFishing = NULL;
    mpMenuSkill = NULL;
    mpMenuInsect = NULL;
    mMemSize = 0;
    field_0x144 = 3;

    dMeter2Info_setWindowStatus(0);
    return cPhs_COMPLEATE_e;
}

/* 801FD2D8-801FD450 1F7C18 0178+00 1/1 0/0 0/0 .text            _execute__5dMw_cFv */
int dMw_c::_execute() {
    if (field_0x151 != 0) {
        field_0x151--;
    }

    JKRHeap* prev_heap = mDoExt_setCurrentHeap(mpHeap);
    u8 prev_proc = mMenuProc;
    mpStick->checkTrigger();

    if (dMw_isMenuRing()) {
        mpCStick->checkTrigger();
        checkCStickTrigger();
    }

    if (dComIfGp_event_runCheck()) {
        field_0x148 = 5;
    } else if (field_0x148 > 0) {
        field_0x148--;
    } else {
        field_0x148 = 0;
    }

    (this->*move_proc[mMenuProc])();
    if (mMenuProc != prev_proc) {
        (this->*init_proc[mMenuProc])(prev_proc);
    }

    if (!mDoCPd_c::getHoldLockL(PAD_1) && dMw_isButtonBit(1)) {
        dMw_offButtonBit(1);
    }

    if (!mDoCPd_c::getHoldLockR(PAD_1) && dMw_isButtonBit(2)) {
        dMw_offButtonBit(2);
    }

    mDoExt_setCurrentHeap(prev_heap);
    return 1;
}

/* 801FD450-801FD67C 1F7D90 022C+00 1/1 0/0 0/0 .text            _draw__5dMw_cFv */
int dMw_c::_draw() {
    if (mpCapture != NULL && mpCapture->checkDraw() && mpCapture->getAlpha() != 0) {
        if (mpCapture->getTopFlag() != 0) {
            dComIfGd_set2DOpaTop(mpCapture);
        } else {
            dComIfGd_set2DOpa(mpCapture);
        }
    }

    if (dComIfGp_isPauseFlag() == true) {
        if (dMeter2Info_getWindowStatus() == 3) {
            if (mpMenuCollect != NULL) {
                mpMenuCollect->draw();
            }
        } else if (dMeter2Info_getWindowStatus() == 4) {
            if (mpMenuFmap != NULL) {
                mpMenuFmap->_draw();
            }
        } else if (dMeter2Info_getWindowStatus() == 5) {
            if (mpMenuDmap != NULL) {
                mpMenuDmap->_draw();
            }
        } else if (dMeter2Info_getWindowStatus() == 10) {
            if (mpMenuSave != NULL) {
                mpMenuSave->_draw2();
            }

            if (mpMenuOption != NULL) {
                dComIfGd_set2DOpa(mpMenuOption);
            }

            if (mpMenuLetter != NULL) {
                dComIfGd_set2DOpa(mpMenuLetter);
            }

            if (mpMenuFishing != NULL) {
                dComIfGd_set2DOpa(mpMenuFishing);
            }

            if (mpMenuSkill != NULL) {
                dComIfGd_set2DOpa(mpMenuSkill);
            }

            if (mpMenuInsect != NULL) {
                dComIfGd_set2DOpa(mpMenuInsect);
            }
        } else if (dMeter2Info_getWindowStatus() == 2 && mpMenuRing != NULL) {
            mpMenuRing->drawFlag0();
            dComIfGd_set2DOpa(mpMenuRing);
            dComIfGd_set2DOpa(mpMenuRing);
        }
    }
    return 1;
}

/* 801FD67C-801FD840 1F7FBC 01C4+00 1/1 0/0 0/0 .text            _delete__5dMw_cFv */
int dMw_c::_delete() {
    JKRHeap* heap = mDoExt_getCurrentHeap();

    delete mpStick;
    mpStick = NULL;

    delete mpCStick;
    mpCStick = NULL;

    mDoExt_setCurrentHeap(mpHeap);

    if (!dMw_collect_delete(false)) {
        mDoExt_setCurrentHeap(heap);
        return 0;
    } else if (!dMw_dmap_delete(false)) {
        mDoExt_setCurrentHeap(heap);
        return 0;
    } else if (!dMw_fmap_delete(false)) {
        mDoExt_setCurrentHeap(heap);
        return 0;
    } else if (!dMw_save_delete()) {
        mDoExt_setCurrentHeap(heap);
        return 0;
    } else if (!dMw_option_delete()) {
        mDoExt_setCurrentHeap(heap);
        return 0;
    } else if (!dMw_letter_delete()) {
        mDoExt_setCurrentHeap(heap);
        return 0;
    } else if (!dMw_fishing_delete()) {
        mDoExt_setCurrentHeap(heap);
        return 0;
    } else if (!dMw_skill_delete()) {
        mDoExt_setCurrentHeap(heap);
        return 0;
    } else if (!dMw_insect_delete()) {
        mDoExt_setCurrentHeap(heap);
        return 0;
    } else if (!dMw_ring_delete()) {
        mDoExt_setCurrentHeap(heap);
        return 0;
    } else {
        dMw_capture_delete();
        mDoExt_setCurrentHeap(heap);
        mDoExt_removeMesgFont();
        return 1;
    }
}

/* 801FD840-801FD860 1F8180 0020+00 1/0 0/0 0/0 .text            dMw_Draw__FP5dMw_c */
static int dMw_Draw(dMw_c* i_this) {
    return i_this->_draw();
}

/* 801FD860-801FD880 1F81A0 0020+00 1/0 0/0 0/0 .text            dMw_Execute__FP5dMw_c */
static int dMw_Execute(dMw_c* i_this) {
    return i_this->_execute();
}

/* 801FD880-801FD888 1F81C0 0008+00 1/0 0/0 0/0 .text            dMw_IsDelete__FP5dMw_c */
static int dMw_IsDelete(dMw_c* i_this) {
    return 1;
}

/* 801FD888-801FD8C0 1F81C8 0038+00 1/0 0/0 0/0 .text            dMw_Delete__FP5dMw_c */
static int dMw_Delete(dMw_c* i_this) {
    int rt = i_this->_delete();
    if (rt != 0) {
        dMeter2Info_setMenuWindowClass(NULL);
    }

    return rt;
}

/* 801FD8C0-801FD928 1F8200 0068+00 1/0 0/0 0/0 .text            dMw_Create__FP9msg_class */
static int dMw_Create(msg_class* i_this) {
    dMeter2Info_setMenuWindowClass((dMw_c*)i_this);
    g_mwHIO.field_0x4 = -1;
    g_mwDHIO.field_0x4 = -1;
    dComIfGp_offHeapLockFlag(0);
    fopMsgM_setStageLayer(i_this);
    return ((dMw_c*)i_this)->_create();
}

/* 803BF080-803BF094 -00001 0014+00 1/0 0/0 0/0 .data            l_dMw_Method */
static leafdraw_method_class l_dMw_Method = {
    (process_method_func)dMw_Create, 
    (process_method_func)dMw_Delete,
    (process_method_func)dMw_Execute,
    (process_method_func)dMw_IsDelete,
    (process_method_func)dMw_Draw,
};

/* 803BF094-803BF0D4 -00001 0028+18 0/0 0/0 1/0 .data            g_profile_MENUWINDOW */
extern msg_process_profile_definition g_profile_MENUWINDOW = {
    fpcLy_CURRENT_e,
    12,
    fpcPi_CURRENT_e,
    PROC_MENUWINDOW,
    &g_fpcLf_Method.base,
    sizeof(dMw_c),
    0,
    0,
    &g_fopMsg_Method,
    0x02FF,
    &l_dMw_Method,
};
