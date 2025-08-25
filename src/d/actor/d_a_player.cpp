/**
 * d_a_player.cpp
 * Base Player Actor functionality
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_player.h"
#include "JSystem/J3DGraphLoader/J3DAnmLoader.h"
#include "JSystem/JKernel/JKRSolidHeap.h"
#include "SSystem/SComponent/c_math.h"
#include "d/actor/d_a_alink.h"
#include "m_Do/m_Do_lib.h"
#include "d/actor/d_a_boomerang.h"
#include "d/actor/d_a_midna.h"
#include "d/actor/d_a_spinner.h"

bool daPy_frameCtrl_c::checkAnmEnd() {
    if (getEndFlg() != 0 && getNowSetFlg() == 0) {
        return true;
    }

    if (getRate() == 0.0f) {
        onEndFlg();
        onNowSetFlg();
    }

    return false;
}

void daPy_frameCtrl_c::updateFrame() {
    update();
    offNowSetFlg();
}

/* 8015E544-8015E5B0 158E84 006C+00 0/0 1/1 6/6 .text setFrameCtrl__16daPy_frameCtrl_cFUcssff */
void daPy_frameCtrl_c::setFrameCtrl(u8 i_attribute, s16 i_start, s16 i_end, f32 i_rate,
                                    f32 i_frame) {
    setAttribute(i_attribute);
    setEnd(i_end);
    setRate(i_rate);
    setStart(i_start);
    setFrame(i_frame);

    if (i_rate >= 0.0f) {
        setLoop(i_start);
    } else {
        setLoop(i_end);
    }

    offEndFlg();
}

/* 8015E5B0-8015E654 158EF0 00A4+00 0/0 1/1 18/18 .text initOffset__20daPy_boomerangMove_cFPC4cXyz
 */
void daPy_boomerangMove_c::initOffset(cXyz const* i_offset) {
    daBoomerang_c* boomerang_p = daPy_py_c::getThrowBoomerangActor();

    if (boomerang_p != NULL) {
        bgCheckAfterOffset(i_offset);
        boomerang_p->onWindCatch();
    } else {
        field_0x4 = cM_rndF(70.0f) + 30.0f;
        field_0x8 = cM_rndF(50.0f) + 50.0f;
        field_0x2 = cM_rndF(65536.0f);
    }

    field_0x0 = 0;
}

/* 80451018-8045101C 000518 0004+00 2/2 33/32 103/103 .sbss            m_midnaActor__9daPy_py_c */
daMidna_c* daPy_py_c::m_midnaActor;

/* 8045101C 0002+00 data_8045101C m_dropAngleY__20daPy_boomerangMove_c */
s16 daPy_boomerangMove_c::m_dropAngleY;

/* 8045101E 0002+00 data_8045101E m_eventKeepFlg__20daPy_boomerangMove_c */
s16 daPy_boomerangMove_c::m_eventKeepFlg;

/* 8015E654-8015E87C 158F94 0228+00 0/0 1/1 17/17 .text
 * posMove__20daPy_boomerangMove_cFP4cXyzPsP10fopAc_ac_cs       */
int daPy_boomerangMove_c::posMove(cXyz* param_0, s16* param_1, fopAc_ac_c* param_2, s16 param_3) {
    daBoomerang_c* boomerang_p = daPy_py_c::getThrowBoomerangActor();

    field_0x2 -= param_3;
    *param_1 -= param_3;

    if (field_0x8 > 300.0f) {
        field_0x8 = 300.0f;
    }

    if (field_0x4 < -700.0f) {
        field_0x4 = -700.0f;
    } else if (field_0x4 > 50.0f) {
        field_0x4 = 50.0f;
    }

    if (boomerang_p != NULL) {
        if (boomerang_p->checkForceDelete()) {
            return 0;
        }

        if (dComIfGp_event_runCheck()) {
            field_0x0 = 1;
        } else if (m_eventKeepFlg != 0 && field_0x0 == 0) {
            return 0;
        }

        param_0->set(boomerang_p->current.pos.x + field_0x8 * cM_ssin(field_0x2),
                     boomerang_p->current.pos.y + field_0x4,
                     boomerang_p->current.pos.z + field_0x8 * cM_scos(field_0x2));
        boomerang_p->onWindCatch();
        return 1;
    }

    daAlink_c* player_p = daAlink_getAlinkActorClass();
    if ((param_2 == NULL || !player_p->checkBoomerangCarry(param_2)) &&
        (m_eventKeepFlg == 0 || field_0x0 != 0))
    {
        s16 tmp = (m_dropAngleY + player_p->shape_angle.y) + cM_rndF(2048.0f);

        param_0->x = player_p->current.pos.x + field_0x8 * cM_ssin(tmp);
        param_0->z = player_p->current.pos.z + field_0x8 * cM_scos(tmp);
        m_dropAngleY += 0x2000;
    }

    return 0;
}

/* 8015E87C-8015EA0C 1591BC 0190+00 1/1 1/1 17/17 .text
 * bgCheckAfterOffset__20daPy_boomerangMove_cFPC4cXyz           */
void daPy_boomerangMove_c::bgCheckAfterOffset(cXyz const* i_offset) {
    daBoomerang_c* boomerang_p = daPy_py_c::getThrowBoomerangActor();
    if (boomerang_p != NULL) {
        field_0x4 = i_offset->y - boomerang_p->current.pos.y;
        field_0x8 = boomerang_p->current.pos.absXZ(*i_offset);
        field_0x2 = cM_atan2s(i_offset->x - boomerang_p->current.pos.x,
                              i_offset->z - boomerang_p->current.pos.z);
    }
}

/* 8015EA0C-8015EA20 15934C 0014+00 0/0 3/3 0/0 .text            setParamData__9daPy_py_cFiiii */
u32 daPy_py_c::setParamData(int param_0, int param_1, int param_2, int param_3) {
    return param_3 | (param_0 & 0x3F | (param_1 & 0x1F) << 0xC | param_2 << 0x18);
}

/* 8015EA20-8015EA48 159360 0028+00 0/0 10/10 3/3 .text            checkFishingRodItem__9daPy_py_cFi
 */
BOOL daPy_py_c::checkFishingRodItem(int i_itemNo) {
    return i_itemNo == fpcNm_ITEM_FISHING_ROD_1 || (i_itemNo >= fpcNm_ITEM_BEE_ROD && i_itemNo <= fpcNm_ITEM_JEWEL_WORM_ROD);
}

/* 8015EA48-8015EA88 159388 0040+00 0/0 3/3 0/0 .text            checkBombItem__9daPy_py_cFi */
BOOL daPy_py_c::checkBombItem(int i_itemNo) {
    return i_itemNo == fpcNm_ITEM_NORMAL_BOMB || i_itemNo == fpcNm_ITEM_WATER_BOMB || i_itemNo == fpcNm_ITEM_POKE_BOMB;
}

/* 8015EA88-8015EAD8 1593C8 0050+00 0/0 5/5 0/0 .text            checkBottleItem__9daPy_py_cFi */
BOOL daPy_py_c::checkBottleItem(int i_itemNo) {
    return (i_itemNo >= fpcNm_ITEM_EMPTY_BOTTLE && i_itemNo <= fpcNm_ITEM_FAIRY) || i_itemNo == fpcNm_ITEM_BEE_CHILD ||
           i_itemNo == fpcNm_ITEM_WORM || i_itemNo == fpcNm_ITEM_FAIRY_DROP || i_itemNo == fpcNm_ITEM_CHUCHU_BLACK ||
           (i_itemNo >= fpcNm_ITEM_CHUCHU_RARE && i_itemNo <= fpcNm_ITEM_LV3_SOUP);
}

/* 8015EAD8-8015EB40 159418 0068+00 0/0 3/3 0/0 .text            checkDrinkBottleItem__9daPy_py_cFi
 */
BOOL daPy_py_c::checkDrinkBottleItem(int i_itemNo) {
    return (i_itemNo >= fpcNm_ITEM_RED_BOTTLE && i_itemNo <= fpcNm_ITEM_HALF_MILK_BOTTLE) || i_itemNo == fpcNm_ITEM_RED_BOTTLE_2 ||
           i_itemNo == fpcNm_ITEM_UGLY_SOUP || i_itemNo == fpcNm_ITEM_HOT_SPRING || i_itemNo == fpcNm_ITEM_BEE_CHILD ||
           i_itemNo == fpcNm_ITEM_CHUCHU_BLACK || i_itemNo == fpcNm_ITEM_FAIRY_DROP ||
           (i_itemNo >= fpcNm_ITEM_CHUCHU_RARE && i_itemNo != fpcNm_ITEM_CHUCHU_YELLOW && i_itemNo <= fpcNm_ITEM_LV3_SOUP);
}

/* 8015EB40-8015EB68 159480 0028+00 0/0 4/4 0/0 .text            checkOilBottleItem__9daPy_py_cFi */
BOOL daPy_py_c::checkOilBottleItem(int i_itemNo) {
    return i_itemNo == fpcNm_ITEM_CHUCHU_YELLOW || i_itemNo == fpcNm_ITEM_OIL_BOTTLE_2 || i_itemNo == fpcNm_ITEM_OIL_BOTTLE;
}

/* 8015EB68-8015EB90 1594A8 0028+00 0/0 2/2 0/0 .text            checkOpenBottleItem__9daPy_py_cFi
 */
BOOL daPy_py_c::checkOpenBottleItem(int i_itemNo) {
    return i_itemNo == fpcNm_ITEM_WATER_BOTTLE || i_itemNo == fpcNm_ITEM_WORM || i_itemNo == fpcNm_ITEM_FAIRY;
}

/* 8015EB90-8015EBB8 1594D0 0028+00 0/0 11/11 0/0 .text            checkBowItem__9daPy_py_cFi */
BOOL daPy_py_c::checkBowItem(int i_itemNo) {
    return i_itemNo == fpcNm_ITEM_BOW || i_itemNo == fpcNm_ITEM_BOMB_ARROW || i_itemNo == fpcNm_ITEM_HAWK_ARROW;
}

/* 8015EBB8-8015EBD8 1594F8 0020+00 0/0 23/23 0/0 .text            checkHookshotItem__9daPy_py_cFi
 */
BOOL daPy_py_c::checkHookshotItem(int i_itemNo) {
    return i_itemNo == fpcNm_ITEM_HOOKSHOT || i_itemNo == fpcNm_ITEM_W_HOOKSHOT;
}

/* 8015EBD8-8015EC28 159518 0050+00 0/0 3/3 0/0 .text            checkTradeItem__9daPy_py_cFi */
BOOL daPy_py_c::checkTradeItem(int i_itemNo) {
    return (i_itemNo >= fpcNm_ITEM_LETTER && i_itemNo <= fpcNm_ITEM_IRIAS_PENDANT) || i_itemNo == fpcNm_ITEM_ANCIENT_DOCUMENT ||
           i_itemNo == fpcNm_ITEM_AIR_LETTER || i_itemNo == fpcNm_ITEM_ANCIENT_DOCUMENT2 || i_itemNo == fpcNm_ITEM_RAFRELS_MEMO ||
           i_itemNo == fpcNm_ITEM_TKS_LETTER || i_itemNo == fpcNm_ITEM_ASHS_SCRIBBLING;
}

/* 8015EC28-8015EC48 159568 0020+00 0/0 2/2 0/0 .text            checkDungeonWarpItem__9daPy_py_cFi
 */
BOOL daPy_py_c::checkDungeonWarpItem(int i_itemNo) {
    return i_itemNo == fpcNm_ITEM_DUNGEON_EXIT || i_itemNo == fpcNm_ITEM_DUNGEON_BACK;
}

/* 8015EC48-8015ECB8 159588 0070+00 0/0 10/10 3/3 .text            setActor__16daPy_actorKeep_cFv */
void daPy_actorKeep_c::setActor() {
    if (mID != -1) {
        mActor = fopAcM_SearchByID(mID);

        if (mActor == NULL) {
            mID = -1;
        }
    } else {
        mActor = NULL;
    }
}

/* 8015ECB8-8015ECFC 1595F8 0044+00 0/0 59/59 4/4 .text setData__16daPy_actorKeep_cFP10fopAc_ac_c
 */
void daPy_actorKeep_c::setData(fopAc_ac_c* i_actor) {
    if (i_actor != NULL) {
        mActor = i_actor;
        mID = fopAcM_GetID(i_actor);
    } else {
        clearData();
    }
}

void daPy_actorKeep_c::clearData() {
    mID = 0xffffffff;
    mActor = NULL;
}

daPy_anmHeap_c::daPy_anmHeap_c(u32 i_bufferSize) {
    initData();
    mBufferSize = i_bufferSize;
}

daPy_anmHeap_c::~daPy_anmHeap_c() {
    if (mAnimeHeap != NULL) {
        mDoExt_destroySolidHeap(mAnimeHeap);
    }
}

void daPy_anmHeap_c::initData() {
    resetIdx();
    resetPriIdx();
    resetArcNo();
}

/* 8015EDC4-8015EE00 159704 003C+00 0/0 1/1 1/1 .text            mallocBuffer__14daPy_anmHeap_cFv */
void* daPy_anmHeap_c::mallocBuffer() {
    mBuffer = new (0x20) u8[mBufferSize];
    return mBuffer;
}

/* 8015EE00-8015EF84 159740 0184+00 0/0 1/1 1/1 .text
 * createHeap__14daPy_anmHeap_cFQ214daPy_anmHeap_c16daAlinkHEAP_TYPE */
void daPy_anmHeap_c::createHeap(daPy_anmHeap_c::daAlinkHEAP_TYPE i_heapType) {
    u32 size;

    if (i_heapType == 4) {
        size = mBufferSize;
    } else if (i_heapType == 3) {
        size = 0x50;
    } else if (i_heapType == 0) {
        size = 0x40;
    } else if (i_heapType == 1) {
        size = 0x40;
    } else {
        size = 0xA0;
    }

    JKRHeap* tmp;
    mAnimeHeap = mDoExt_createSolidHeapFromGameToCurrent(&tmp, size, 0x20);

    if (i_heapType == 4) {
        char* tmpWork = new char[size];
    } else if (i_heapType == 3) {
        mDoExt_transAnmBas* tmpTransBas = new mDoExt_transAnmBas(NULL);
    } else if (i_heapType == 0) {
        J3DAnmTransformKey* tmpTrans = new J3DAnmTransformKey();
    } else if (i_heapType == 1) {
        J3DAnmTexPattern* tmpTp = new J3DAnmTexPattern();
    } else {
        J3DAnmTextureSRTKey* tmpTk = new J3DAnmTextureSRTKey();
    }

    mDoExt_setCurrentHeap(tmp);
    mDoExt_adjustSolidHeap(mAnimeHeap);
}

/* 8015EF84-8015F068 1598C4 00E4+00 3/3 0/0 0/0 .text            loadData__14daPy_anmHeap_cFUs */
void* daPy_anmHeap_c::loadData(u16 i_resId) {
    static const char twglArcName[] = "TWGate_Lk";
    static const char twgwArcName[] = "TWGate_Wf";
    static const char sumouArcName[] = "alSumou";
    static const char ocArcName[] = "B_oh";
    static const char drArcName[] = "B_DR";
    static const char msDemoArcName[] = "Lv6Gate";
    static const char lastGanonArcName[] = "B_gnd";
    static const char pigGanonArcName[] = "B_mgn";

    static const char* arcName[] = {
        sumouArcName, ocArcName,     twglArcName,      twgwArcName,
        drArcName,    msDemoArcName, lastGanonArcName, pigGanonArcName,
    };

    if (mArcNo == 0xFFFF) {
        dComIfGp_getAnmArchive()->readIdxResource(mBuffer, mBufferSize, i_resId);
        JKRHeap* heap = setAnimeHeap();
        void* data = J3DAnmLoaderDataBase::load(mBuffer, J3DLOADER_UNK_FLAG0);
        mDoExt_setCurrentHeap(heap);
        return data;
    }

    if (mArcNo == 0) {
        return dComIfG_getObjectIDRes(dStage_roomControl_c::getDemoArcName(), i_resId);
    }

    return dComIfG_getObjectRes(arcName[mArcNo - 1], i_resId);
}

/* 8015F068-8015F0D0 1599A8 0068+00 0/0 9/9 5/5 .text            loadDataIdx__14daPy_anmHeap_cFUs */
void* daPy_anmHeap_c::loadDataIdx(u16 i_resID) {
    void* data;

    if (i_resID == mIdx && mArcNo == 0xFFFF) {
        data = NULL;
    } else {
        mIdx = i_resID;
        mArcNo = 0xFFFF;
        if (mPriIdx == 0xFFFF) {
            data = loadData(i_resID);
        } else {
            data = NULL;
        }
    }

    return data;
}

/* 8015F0D0-8015F118 159A10 0048+00 0/0 3/3 0/0 .text            loadDataPriIdx__14daPy_anmHeap_cFUs
 */
void* daPy_anmHeap_c::loadDataPriIdx(u16 i_resID) {
    void* data;

    if (i_resID == mPriIdx || mArcNo != 0xFFFF) {
        data = NULL;
    } else {
        mPriIdx = i_resID;
        data = loadData(i_resID);
    }

    return data;
}

/* 8015F118-8015F168 159A58 0050+00 0/0 5/5 5/5 .text loadDataDemoRID__14daPy_anmHeap_cFUsUs */
void* daPy_anmHeap_c::loadDataDemoRID(u16 i_resID, u16 i_arcNo) {
    void* data;

    if (i_resID == mIdx && i_arcNo == mArcNo) {
        data = NULL;
    } else {
        mIdx = i_resID;
        mArcNo = i_arcNo;
        data = loadData(i_resID);
    }

    return data;
}

/* 8015F168-8015F1A0 159AA8 0038+00 1/1 4/4 0/0 .text            setAnimeHeap__14daPy_anmHeap_cFv */
JKRHeap* daPy_anmHeap_c::setAnimeHeap() {
    mAnimeHeap->freeAll();
    return mDoExt_setCurrentHeap(mAnimeHeap);
}

/* ############################################################################################## */
/* 803BA0C0-803BA14C 0171E0 0089+03 1/1 0/0 0/0 .data            l_sightDL */
static u8 l_sightDL[] = {
    0x10, 0x00, 0x00, 0x10, 0x40, 0xFF, 0xFF, 0x42, 0x80, 0x08, 0x30, 0x3C, 0xF3, 0xCF, 0x00, 0x10,
    0x00, 0x00, 0x10, 0x18, 0x3C, 0xF3, 0xCF, 0x00, 0x61, 0x28, 0x38, 0x03, 0xC0, 0x61, 0xC0, 0x08,
    0x42, 0x8F, 0x61, 0xC1, 0x08, 0xE6, 0x70, 0x61, 0x43, 0x00, 0x00, 0x01, 0x61, 0x40, 0x00, 0x00,
    0x06, 0x61, 0x41, 0x00, 0x04, 0xAD, 0x61, 0xF3, 0x64, 0x00, 0x00, 0x10, 0x00, 0x00, 0x10, 0x3F,
    0x00, 0x00, 0x00, 0x01, 0x10, 0x00, 0x00, 0x10, 0x09, 0x00, 0x00, 0x00, 0x00, 0x61, 0x00, 0x00,
    0x00, 0x01, 0x98, 0x00, 0x04, 0x01, 0x01, 0x00, 0x01, 0x01, 0xFF, 0x01, 0x00, 0x00, 0x01, 0x01,
    0xFF, 0x00, 0x01, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8015F1A0-8015F2FC 159AE0 015C+00 1/0 1/1 0/0 .text            draw__18daPy_sightPacket_cFv */
void daPy_sightPacket_c::draw() {
    GXTexObj texObj;

    j3dSys.reinitGX();
    GXSetNumIndStages(0);
    GXClearVtxDesc();
    GXSetVtxDesc(GX_VA_POS, GX_DIRECT);
    GXSetVtxDesc(GX_VA_TEX0, GX_DIRECT);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_CLR_RGBA, GX_RGB8, 0);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_TEX0, GX_CLR_RGBA, GX_RGB565, 0);

    GXColor reg0 = {255, 128, 0, 255};
    GXColor reg1 = {50, 20, 0, 255};

    GXSetTevColor(GX_TEVREG0, reg0);
    GXSetTevColor(GX_TEVREG1, reg1);
    u8 tmp2 = mpImg->mipmapCount;
    tmp2 = tmp2 > 1;
    GXInitTexObj(&texObj, mpData, mpImg->width, mpImg->height, (GXTexFmt)mpImg->format,
                 (GXTexWrapMode)mpImg->wrapS, (GXTexWrapMode)mpImg->wrapT, (GXBool)(tmp2));
    GXInitTexObjLOD(&texObj, GX_LINEAR, GX_LINEAR, 0.0, 0.0, 0.0, GX_FALSE, GX_FALSE, GX_ANISO_1);
    GXLoadTexObj(&texObj, GX_TEXMAP0);
    GXLoadPosMtxImm(field_0x14, GX_PNMTX0);
    GXSetCurrentMtx(0);
    GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR_NULL);
    GXCallDisplayList(l_sightDL, 0x80);
    J3DShape::resetVcdVatCache();
}

/* 8015F2FC-8015F384 159C3C 0088+00 0/0 1/1 0/0 .text            setSight__18daPy_sightPacket_cFv */
void daPy_sightPacket_c::setSight() {
    Vec proj;

    mDoLib_project(&mPos, &proj);
    mDoMtx_stack_c::transS(proj.x, proj.y, proj.z);
    mDoMtx_stack_c::scaleM(32.0f, 32.0f, 32.0f);
    mDoMtx_copy(mDoMtx_stack_c::get(), field_0x14);
    dComIfGd_set2DXlu(this);
}

/* 8015F384-8015F398 159CC4 0014+00 0/0 1/1 0/0 .text
 * setSightImage__18daPy_sightPacket_cFP7ResTIMG                */
void daPy_sightPacket_c::setSightImage(ResTIMG* i_img) {
    mpImg = i_img;
    mpData = (u8*)i_img + i_img->imageOffset;
}

/* 8015F398-8015F3C4 159CD8 002C+00 0/0 8/8 10/10 .text checkMasterSwordEquip__9daPy_py_cFv */
BOOL daPy_py_c::checkMasterSwordEquip() {
    u32 equipSword = dComIfGs_getSelectEquipSword();
    bool isMasterSword = false;

    if (equipSword == fpcNm_ITEM_MASTER_SWORD || equipSword == fpcNm_ITEM_LIGHT_SWORD) {
        isMasterSword = true;
    }

    return isMasterSword;
}

/* 8015F3C4-8015F3FC 159D04 0038+00 0/0 4/4 0/0 .text            checkWoodShieldEquip__9daPy_py_cFv
 */
BOOL daPy_py_c::checkWoodShieldEquip() {
    u16 equipShield = dComIfGs_getSelectEquipShield();

    return equipShield == fpcNm_ITEM_WOOD_SHIELD || equipShield == fpcNm_ITEM_SHIELD;
}

/* 8015F3FC-8015F424 159D3C 0028+00 0/0 4/4 3/3 .text            getAttentionOffsetY__9daPy_py_cFv
 */
f32 daPy_py_c::getAttentionOffsetY() {
    if (checkNowWolf()) {
        return -12.5f;
    }

    return 57.5f;
}

/* 8015F424-8015F438 159D64 0014+00 0/0 17/17 33/33 .text            checkNowWolfEyeUp__9daPy_py_cFv
 */
int daPy_py_c::checkNowWolfEyeUp() {
    return daAlink_getAlinkActorClass()->checkWolfEyeUp();
}

/* 8015F438-8015F478 159D78 0040+00 0/0 0/0 1/1 .text            forceRestartRoom__9daPy_py_cFiUli
 */

void daAlink_c::startRestartRoomFromOut(int param_0, u32 param_1, int param_2) {
    startRestartRoom(param_1, param_2, param_0, dComIfGp_event_runCheck());
}

void daPy_py_c::forceRestartRoom(int param_0, u32 param_1, int param_2) {
    daAlink_getAlinkActorClass()->startRestartRoomFromOut(param_0, param_1, param_2);
}

/* 8015F478-8015F4B8 159DB8 0040+00 0/0 0/0 3/3 .text
 * setFmChainPos__9daPy_py_cFP10fopAc_ac_cP4cXyzi               */
BOOL daPy_py_c::setFmChainPos(fopAc_ac_c* param_0, cXyz* param_1, int param_2) {
    return daAlink_getAlinkActorClass()->setFmChainPosFromOut(param_0, param_1, param_2);
}

/* 8015F4B8-8015F4F0 159DF8 0038+00 0/0 0/0 1/1 .text            cancelFmChainGrab__9daPy_py_cFv */
void daPy_py_c::cancelFmChainGrab() {
    daAlink_getAlinkActorClass()->cancelFmChainGrabFromOut();
}

/* 8015F4F0-8015F520 159E30 0030+00 0/0 0/0 17/17 .text            setLookPos__9daPy_py_cFP4cXyz */
void daPy_py_c::setLookPos(cXyz* i_pos) {
    daAlink_getAlinkActorClass()->setLookPosFromOut(i_pos);
}

/* 8015F520-8015F55C 159E60 003C+00 0/0 0/0 4/4 .text            setPlayerSe__9daPy_py_cFUl */
void daPy_py_c::setPlayerSe(u32 i_sfxID) {
    daAlink_getAlinkActorClass()->seStartOnlyReverb(i_sfxID);
}

/* 8015F55C-8015F60C 159E9C 00B0+00 1/1 0/0 2/2 .text
 * linkGrabSubjectNoDraw__9daPy_py_cFP10fopAc_ac_c              */
bool daPy_py_c::linkGrabSubjectNoDraw(fopAc_ac_c* i_actor) {
    return (fopAcM_checkCarryNow(i_actor) &&
            daPy_getPlayerActorClass()->getGrabActorID() == fopAcM_GetID(i_actor)) &&
           dComIfGp_checkCameraAttentionStatus(dComIfGp_getPlayerCameraID(0), 2);
}

/* 8015F60C-8015F660 159F4C 0054+00 0/0 0/0 2/2 .text
 * wolfGrabSubjectNoDraw__9daPy_py_cFP10fopAc_ac_c              */
bool daPy_py_c::wolfGrabSubjectNoDraw(fopAc_ac_c* i_actor) {
    return checkNowWolf() && linkGrabSubjectNoDraw(i_actor);
}

/* 8015F660-8015F698 159FA0 0038+00 2/2 1/1 1/1 .text            checkRoomRestartStart__9daPy_py_cFv
 */
bool daPy_py_c::checkRoomRestartStart() {
    u8 mode = getLastSceneMode();
    if (mode == 4 || mode == 8 || mode == 5) {
        return true;
    }

    return false;
}

/* 8015F698-8015F730 159FD8 0098+00 0/0 2/2 1/1 .text checkCarryStartLightBallA__9daPy_py_cFv */
u32 daPy_py_c::checkCarryStartLightBallA() {
    if (checkRoomRestartStart() || !dComIfGp_getStage() ||
        !dComIfGp_getStage()->getStagInfo() ||
        dStage_stagInfo_GetSaveTbl(dComIfGp_getStage()->getStagInfo()) != 0x17)
    {
        return FALSE;
    }

    return dComIfGs_getLastSceneMode() & 0x100000;
}

/* 8015F730-8015F7C8 15A070 0098+00 0/0 2/2 1/1 .text checkCarryStartLightBallB__9daPy_py_cFv */
u32 daPy_py_c::checkCarryStartLightBallB() {
    if (checkRoomRestartStart() || !dComIfGp_getStage() ||
        !dComIfGp_getStage()->getStagInfo() ||
        dStage_stagInfo_GetSaveTbl(dComIfGp_getStage()->getStagInfo()) != 0x17)
    {
        return FALSE;
    }

    return dComIfGs_getLastSceneMode() & 0x80000;
}

f32 daPy_py_c::getSpinnerRideSpeed() const {
    f32 rideSpeed;

    if (checkSpinnerRide()) {
        rideSpeed = speedF;
    } else {
        rideSpeed = 0.0f;
    }

    return rideSpeed;
}

/* 8015F814-8015F89C 15A154 0088+00 0/0 0/0 1/1 .text checkSpinnerReflectEffect__9daPy_py_cFv */
bool daPy_py_c::checkSpinnerReflectEffect() {
    daSpinner_c* spinner_p = getSpinnerActor();

    if (spinner_p != NULL && spinner_p->reflectAccept()) {
        return true;
    }

    return false;
}

/* 8015F89C-8015F8C8 15A1DC 002C+00 0/0 0/0 7/7 .text            checkBoomerangCharge__9daPy_py_cFv
 */
bool daPy_py_c::checkBoomerangCharge() {
    return daAlink_getAlinkActorClass()->checkBoomerangChargeEnd();
}

/* 8015F8C8-8015F8D0 15A208 0008+00 0/0 0/0 1/1 .text checkBoomerangChargeTime__9daPy_py_cFv */
u8 daPy_py_c::checkBoomerangChargeTime() {
    return 0;
}

/* 8015F8D0-8015F8E4 15A210 0014+00 3/3 1/1 5/5 .text getThrowBoomerangActor__9daPy_py_cFv */
daBoomerang_c* daPy_py_c::getThrowBoomerangActor() {
    return static_cast<daBoomerang_c*>(
        daAlink_getAlinkActorClass()->getThrowBoomerangAcKeep()->getActor());
}

/* 8015F8E4-8015F914 15A224 0030+00 0/0 0/0 2/2 .text
 * cancelBoomerangLockActor__9daPy_py_cFP10fopAc_ac_c           */
void daPy_py_c::cancelBoomerangLockActor(fopAc_ac_c* i_actor) {
    daAlink_getAlinkActorClass()->cancelBoomerangLock(i_actor);
}

/* 8015F914-8015F954 15A254 0040+00 0/0 0/0 2/2 .text            setPlayerDamage__9daPy_py_cFii */
void daPy_py_c::setPlayerDamage(int i_dmgAmount, int i_setDmgTimer) {
    daAlink_getAlinkActorClass()->setDamagePoint(i_dmgAmount, FALSE, i_setDmgTimer, 0);
}

/* 8015F954-8015F968 15A294 0014+00 0/0 3/3 0/0 .text            setMidnaMotionNum__9daPy_py_cFi */
void daPy_py_c::setMidnaMotionNum(int i_motionNum) {
    if (m_midnaActor != NULL) {
        m_midnaActor->setMotionNum(i_motionNum);
    }
}

/* 8015F968-8015F97C 15A2A8 0014+00 0/0 3/3 0/0 .text            setMidnaFaceNum__9daPy_py_cFi */
void daPy_py_c::setMidnaFaceNum(int i_faceNum) {
    if (m_midnaActor != NULL) {
        m_midnaActor->setFaceNum(i_faceNum);
    }
}

/* 8015F97C-8015FA2C 15A2BC 00B0+00 0/0 7/7 2/2 .text            daPy_addCalcShort__FPsssss */
int daPy_addCalcShort(s16* i_value, s16 i_target, s16 i_scale, s16 i_maxStep, s16 i_minStep) {
    int delta = i_target - *i_value;

    if (*i_value != i_target) {
        int step = delta / i_scale;
        if (step > i_minStep || step < -i_minStep) {
            *i_value += cLib_minMaxLimit<int>(step, -i_maxStep, i_maxStep);
        } else if (delta >= 0) {
            *i_value += i_minStep;
            if (i_target - *i_value <= 0) {
                *i_value = i_target;
            }
        } else {
            *i_value -= i_minStep;
            if (i_target - *i_value >= 0) {
                *i_value = i_target;
            }
        }
    }
    return i_target - *i_value;
}
