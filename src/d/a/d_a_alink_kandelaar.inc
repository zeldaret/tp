/**
 * d_a_alink_kandelaar.inc
 * Player Lantern action handling
 */

/* 80110654-80110668 10AF94 0014+00 1/1 0/0 0/0 .text daAlink_searchTagKandelaar__FP10fopAc_ac_cPv
 */
static fopAc_ac_c* daAlink_searchTagKandelaar(fopAc_ac_c* i_actor, void* param_1) {
    if (fopAcM_GetName(i_actor) == PROC_TAG_LANTERN) {
        return i_actor;
    }

    return NULL;
}

/* 80110668-801106E8 10AFA8 0080+00 1/1 0/0 0/0 .text daAlink_searchTagKtOnFire__FP10fopAc_ac_cPv
 */
static fopAc_ac_c* daAlink_searchTagKtOnFire(fopAc_ac_c* i_actor, void* param_1) {
    daAlink_c* link = daAlink_getAlinkActorClass();

    if (fopAcM_GetName(i_actor) == PROC_Tag_KtOnFire &&
        i_actor->current.pos.abs2(link->current.pos) < lit_26816 &&
        fopAcM_seenActorAngleY(link, i_actor) < 0x3000) {
        return i_actor;
    }

    return NULL;
}

/* 801106E8-8011078C 10B028 00A4+00 1/0 0/0 0/0 .text            setKandelaarMtx__9daAlink_cFPA4_fii
 */
void daAlink_c::setKandelaarMtx(Mtx i_mtx, int param_1, int param_2) {
    if (field_0x06fc != NULL) {
        if (i_checkNoResetFlg2(FLG2_UNK_1)) {
            deleteEquipItem(0, 1);
        }

        i_onEndResetFlg1(ERFLG1_UNK_4);

        field_0x06fc->i_setBaseTRMtx(i_mtx);
        if (param_1 == 0) {
            i_onEndResetFlg1(ERFLG1_UNK_8);
        }

        if (param_2 != 0) {
            i_onEndResetFlg1(ERFLG1_UNK_10);
        }
    }
}

/* 8011078C-801107BC 10B0CC 0030+00 2/2 0/0 0/0 .text checkWaterInKandelaarOffset__9daAlink_cFf */
BOOL daAlink_c::checkWaterInKandelaarOffset(f32 param_0) {
    f32 tmp_65 = lit_17593;  // tmp can be removed with literals
    f32 base_y_pos;
    if (i_checkModeFlg(0x40)) {
        base_y_pos = mRightFootPos.y;
    } else {
        base_y_pos = current.pos.y;
    }

    return param_0 > tmp_65 + base_y_pos;
}

/* 801107BC-80110840 10B0FC 0084+00 2/2 0/0 0/0 .text            checkWaterInKandelaar__9daAlink_cFf
 */
void daAlink_c::checkWaterInKandelaar(f32 param_0) {
    if (i_checkNoResetFlg2(FLG2_UNK_1) && checkWaterInKandelaarOffset(param_0)) {
        if (mEquipItem == KANTERA) {
            deleteEquipItem(1, 1);
        } else {
            offKandelaarModel();
            seStartOnlyReverb(Z2SE_AL_ITEM_TAKEOUT);
        }
    }
}

/* 80110840-8011087C 10B180 003C+00 13/13 0/0 0/0 .text            offKandelaarModel__9daAlink_cFv
 */
void daAlink_c::offKandelaarModel() {
    i_offNoResetFlg2(0x10000001);
    mZ2Link.setKanteraState(0);
}

/* 8011087C-801108B4 10B1BC 0038+00 1/0 0/0 0/0 .text            checkUseKandelaar__9daAlink_cFi */
bool daAlink_c::checkUseKandelaar(int param_0) {
    return (param_0 == 0 && i_checkNoResetFlg2(FLG2_UNK_1)) ||
           (param_0 != 0 && mEquipItem == KANTERA);
}

/* 801108B4-801108EC 10B1F4 0038+00 1/0 0/0 0/0 .text            checkKandelaarSwing__9daAlink_cCFi
 */
bool daAlink_c::checkKandelaarSwing(int param_0) const {
    if ((checkKandelaarSwingAnime() || mProcID == PROC_KANDELAAR_SWING) && (dComIfGs_getOil() != 0 || param_0 == 0)) {
        return true;
    }

    return false;
}

/* 801108EC-80110BEC 10B22C 0300+00 1/1 0/0 0/0 .text kandelaarModelCallBack__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::kandelaarModelCallBack() {
    nofralloc
#include "asm/d/a/d_a_alink/kandelaarModelCallBack__9daAlink_cFv.s"
}
#pragma pop

/* 80110BEC-80110C28 10B52C 003C+00 1/1 0/0 0/0 .text daAlink_kandelaarModelCallBack__FP8J3DJointi
 */
static int daAlink_kandelaarModelCallBack(J3DJoint* param_0, int param_1) {
    daAlink_c* link = (daAlink_c*)j3dSys.getModel()->getUserArea();

    if (param_1 == 0) {
        link->kandelaarModelCallBack();
    }

    return 1;
}

/* 80110C28-80110C6C 10B568 0044+00 1/0 0/0 0/0 .text            getKandelaarFlamePos__9daAlink_cFv
 */
cXyz* daAlink_c::getKandelaarFlamePos() {
    if ((!i_checkNoResetFlg2((daPy_FLG2)0x20001) && !i_checkEndResetFlg1(ERFLG1_UNK_4)) || i_checkWolf() || !i_checkNoResetFlg1(FLG1_UNK_80)) {
        return NULL;
    }

    return &mKandelaarFlamePos;
}

/* 80110C6C-80110C94 10B5AC 0028+00 3/3 0/0 0/0 .text checkKandelaarEquipAnime__9daAlink_cCFv */
BOOL daAlink_c::checkKandelaarEquipAnime() const {
    return checkUpperAnime(0x264) || checkUpperAnime(0x268);
}

/* 80110C94-80110E80 10B5D4 01EC+00 1/1 0/0 0/0 .text            preKandelaarDraw__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::preKandelaarDraw() {
    nofralloc
#include "asm/d/a/d_a_alink/preKandelaarDraw__9daAlink_cFv.s"
}
#pragma pop

/* 80110E80-80110E84 10B7C0 0004+00 0/0 3/0 0/0 .text
 * setTevColor__11J3DTevBlockFUlPC13J3DGXColorS10               */
void J3DTevBlock::setTevColor(u32 param_0, J3DGXColorS10 const* param_1) {}

/* 80110E84-80110F88 10B7C4 0104+00 4/4 0/0 0/0 .text            setKandelaarModel__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setKandelaarModel() {
    nofralloc
#include "asm/d/a/d_a_alink/setKandelaarModel__9daAlink_cFv.s"
}
#pragma pop

/* 80110F88-80110FE0 10B8C8 0058+00 3/3 0/0 0/0 .text            resetOilBottleModel__9daAlink_cFv
 */
void daAlink_c::resetOilBottleModel() {
    deleteEquipItem(0, 1);

    if (field_0x300e.x != 0) {
        setKandelaarModel();
        mEquipItem = KANTERA;
    }

    returnKeepItemData();
}

/* 80110FE0-801110B8 10B920 00D8+00 3/3 0/0 0/0 .text commonKandelaarPourInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::commonKandelaarPourInit() {
    nofralloc
#include "asm/d/a/d_a_alink/commonKandelaarPourInit__9daAlink_cFv.s"
}
#pragma pop

/* 801110B8-8011130C 10B9F8 0254+00 3/3 0/0 0/0 .text            commonKandelaarPour__9daAlink_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::commonKandelaarPour(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/commonKandelaarPour__9daAlink_cFi.s"
}
#pragma pop

/* 8011130C-80111440 10BC4C 0134+00 1/1 0/0 0/0 .text            initKandelaarSwing__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::initKandelaarSwing() {
    nofralloc
#include "asm/d/a/d_a_alink/initKandelaarSwing__9daAlink_cFv.s"
}
#pragma pop

/* 80111440-801115CC 10BD80 018C+00 2/1 0/0 0/0 .text procKandelaarSwingInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procKandelaarSwingInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procKandelaarSwingInit__9daAlink_cFv.s"
}
#pragma pop

/* 801115CC-8011167C 10BF0C 00B0+00 1/0 0/0 0/0 .text            procKandelaarSwing__9daAlink_cFv */
int daAlink_c::procKandelaarSwing() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    if (frameCtrl->checkAnmEnd()) {
        if (mDemo.getDemoMode() == 0x27) {
            dComIfGp_evmng_cutEnd(field_0x3184);
        } else {
            checkNextAction(0);
        }
    } else if (frameCtrl->getFrame() > field_0x3478 && mDemo.getDemoMode() != 0x27) {
        onModeFlg(4);
        checkNextAction(1);
    }

    return 1;
}

/* 8011167C-80111724 10BFBC 00A8+00 1/1 0/0 0/0 .text            procKandelaarPourInit__9daAlink_cFv
 */
int daAlink_c::procKandelaarPourInit() {
    if (!dComIfGp_event_compulsory(this, 0, 0xFBFF)) {
        return 0;
    }

    mDemo.i_setSpecialDemoType();
    commonProcInit(PROC_KANDELAAR_POUR);
    current.angle.y = shape_angle.y;
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    field_0x2f98 = 4;
    setSingleAnimeParam(ANM_OIL_BOTTLE_POUR_START, &daAlinkHIO_kandelaar_c0::m.mBeginUnkAnm);
    commonKandelaarPourInit();
    return 1;
}

/* 80111724-8011174C 10C064 0028+00 1/0 0/0 0/0 .text            procKandelaarPour__9daAlink_cFv */
int daAlink_c::procKandelaarPour() {
    commonKandelaarPour(0);
    return 1;
}