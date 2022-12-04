/* 8010E48C-8010E52C 108DCC 00A0+00 1/1 0/0 0/0 .text            bottleModelCallBack__9daAlink_cFv
 */
int daAlink_c::bottleModelCallBack() {
    if (mHookshotMode != 0) {
        mDoMtx_stack_c::copy(mpLinkModel->i_getAnmMtx(field_0x30c2));
        mDoMtx_stack_c::transM(lit_14616, lit_6041, lit_16570);
        mDoMtx_stack_c::XYZrotM(cM_deg2s(102.0f), cM_deg2s(-0.5f), cM_deg2s(-122.0f));
        mDoMtx_copy(mDoMtx_stack_c::get(), mHeldItemModel->i_getAnmMtx(1));
    }

    return 1;
}

/* 8010E52C-8010E568 108E6C 003C+00 1/1 0/0 0/0 .text daAlink_bottleModelCallBack__FP8J3DJointi */
static int daAlink_bottleModelCallBack(J3DJoint* i_joint, int param_1) {
    daAlink_c* link = (daAlink_c*)j3dSys.getModel()->getUserArea();

    if (param_1 == 0) {
        link->bottleModelCallBack();
    }

    return 1;
}

/* 8010E568-8010E584 108EA8 001C+00 1/0 0/0 0/0 .text getBottleOpenAppearItem__9daAlink_cCFv */
s32 daAlink_c::getBottleOpenAppearItem() const {
    if (mProcID == PROC_BOTTLE_OPEN) {
        return mEquipItem;
    }

    return -1;
}

/* 8010E584-8010E5D8 108EC4 0054+00 2/2 0/0 0/0 .text checkOilBottleItemNotGet__9daAlink_cFUs */
BOOL daAlink_c::checkOilBottleItemNotGet(u16 i_itemNo) {
    return mProcID != PROC_BOTTLE_GET && mProcID != PROC_BOTTLE_SWING && checkOilBottleItem(i_itemNo);
}

/* 8010E5D8-8010EAC4 108F18 04EC+00 7/7 0/0 0/0 .text            setBottleModel__9daAlink_cFUs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setBottleModel(u16 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setBottleModel__9daAlink_cFUs.s"
}
#pragma pop

/* 8010EAC4-8010F45C 109404 0998+00 3/3 0/0 0/0 .text            commonBottleDrink__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::commonBottleDrink(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/commonBottleDrink__9daAlink_cFi.s"
}
#pragma pop

/* 8010F45C-8010F54C 109D9C 00F0+00 2/2 0/0 0/0 .text            makeFairy__9daAlink_cFP4cXyzUl */
fopAc_ac_c* daAlink_c::makeFairy(cXyz* i_pos, u32 i_params) {
    cXyz fairy_pos;

    if (i_checkModeFlg(0x40000)) {
        fairy_pos = *i_pos;

        if (i_checkWolf()) {
            fairy_pos.y -= lit_8247;
        } else {
            fairy_pos.y -= lit_6896;
        }

        i_pos = &fairy_pos;
    }

    fopAc_ac_c* fairy_actor = (fopAc_ac_c*)fopAcM_fastCreate(PROC_Obj_Yousei,
                                                i_params, i_pos, fopAcM_GetRoomNo(this),
                                                &shape_angle, NULL, -1, NULL, NULL);

    field_0x285c.setData(fairy_actor);
    i_onResetFlg0(RFLG0_UNK_400);

    if (checkEventRun() && field_0x285c.getActor() != NULL) {
        fopAcM_OnStatus(field_0x285c.getActor(), 0x800);
    }

    return field_0x285c.getActor();
}

/* 8010F54C-8010F698 109E8C 014C+00 2/2 0/0 0/0 .text            procBottleDrinkInit__9daAlink_cFUs
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procBottleDrinkInit(u16 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procBottleDrinkInit__9daAlink_cFUs.s"
}
#pragma pop

/* 8010F698-8010F6F4 109FD8 005C+00 1/0 0/0 0/0 .text            procBottleDrink__9daAlink_cFv */
int daAlink_c::procBottleDrink() {
    if (field_0x300e != 0) {
        dComIfGp_evmng_cutEnd(field_0x3184);
    } else {
        field_0x300e = commonBottleDrink(0);
    }

    return 1;
}

/* 8010F6F4-8010F8E4 10A034 01F0+00 1/1 0/0 0/0 .text            procBottleOpenInit__9daAlink_cFUs
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procBottleOpenInit(u16 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procBottleOpenInit__9daAlink_cFUs.s"
}
#pragma pop

/* 8010F8E4-8010FC38 10A224 0354+00 1/0 0/0 0/0 .text            procBottleOpen__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procBottleOpen() {
    nofralloc
#include "asm/d/a/d_a_alink/procBottleOpen__9daAlink_cFv.s"
}
#pragma pop

/* 8010FC38-8010FF58 10A578 0320+00 4/4 0/0 0/0 .text
 * procBottleSwingInit__9daAlink_cFP10fopAc_ac_ci               */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procBottleSwingInit(fopAc_ac_c* param_0, int param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/procBottleSwingInit__9daAlink_cFP10fopAc_ac_ci.s"
}
#pragma pop

/* 8010FF58-801102D0 10A898 0378+00 1/0 0/0 0/0 .text            procBottleSwing__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procBottleSwing() {
    nofralloc
#include "asm/d/a/d_a_alink/procBottleSwing__9daAlink_cFv.s"
}
#pragma pop

/* 801102D0-80110518 10AC10 0248+00 2/2 0/0 0/0 .text            procBottleGetInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procBottleGetInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procBottleGetInit__9daAlink_cFi.s"
}
#pragma pop

/* 80110518-80110648 10AE58 0130+00 1/0 0/0 0/0 .text            procBottleGet__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procBottleGet() {
    nofralloc
#include "asm/d/a/d_a_alink/procBottleGet__9daAlink_cFv.s"
}
#pragma pop

/* 80110648-80110654 10AF88 000C+00 0/0 1/0 0/0 .text            Insect_Release__9dInsect_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dInsect_c::Insect_Release() {
    nofralloc
#include "asm/d/a/d_a_alink/Insect_Release__9dInsect_cFv.s"
}
#pragma pop