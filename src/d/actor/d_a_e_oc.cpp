/**
 * @file d_a_e_oc.cpp
 * 
*/

#include "d/actor/d_a_e_oc.h"
#include "dol2asm.h"
#include "d/d_camera.h"
#include "Z2AudioLib/Z2Instances.h"
#include "d/d_com_inf_game.h"
#include "SSystem/SComponent/c_math.h"
#include "d/actor/d_a_alink.h"
#include "d/actor/d_a_obj_rotBridge.h"
#include "d/d_cc_uty.h"
UNK_REL_DATA;
#include "f_op/f_op_actor_enemy.h"


//
// Declarations:
//

static f32 dummyFunc_0() {
    cXyz my_vec(100.0f, 0.0f, 1.0f);
    cXyz o_vec(0.0f, 0.0f, 0.0f);
    return my_vec.absXZ(o_vec);
}

static f32 dummyFunc_1() {
    f32 val = 0.01f;
    return val;
}

/* 80735B54-80735B7C 00002C 0028+00 0/1 0/0 0/0 .rodata          oc_attackb_trans__6E_OC_n */
#pragma push
#pragma force_active on
SECTION_RODATA u8 const E_OC_n::oc_attackb_trans[40] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x41, 0x74, 0xCC, 0xCD, 0x42, 0x19, 0x99, 0x9A, 0x42, 0x7D, 0x33, 0x33,
    0x42, 0xAC, 0x66, 0x66, 0x42, 0xCE, 0x99, 0x9A, 0x42, 0xE0, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80735B54, &E_OC_n::oc_attackb_trans);
#pragma pop

/* 80735B7C-80735BA4 000054 0028+00 0/1 0/0 0/0 .rodata          oc_attackc_trans__6E_OC_n */
#pragma push
#pragma force_active on
SECTION_RODATA u8 const E_OC_n::oc_attackc_trans[40] = {
    0x00, 0x00, 0x00, 0x00, 0x41, 0xFA, 0x66, 0x66, 0x42, 0x91, 0x66, 0x66, 0x42, 0xB7,
    0x00, 0x00, 0x42, 0xB7, 0x00, 0x00, 0x42, 0xB7, 0x00, 0x00, 0x42, 0xB7, 0x00, 0x00,
    0x42, 0xB7, 0x00, 0x00, 0x42, 0xB7, 0x00, 0x00, 0x42, 0xB7, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80735B7C, &E_OC_n::oc_attackc_trans);
#pragma pop

/* 80735D64-80735DA4 000038 0040+00 1/1 0/0 0/0 .data            cc_sph_src__6E_OC_n */
dCcD_SrcSph E_OC_n::cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xD8FBFDFF, 0x3}, 0x75}}, // mObj
        {0x9, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {0x0, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 80735DA4-80735DE4 000078 0040+00 1/1 0/0 0/0 .data            at_sph_src__6E_OC_n */
dCcD_SrcSph E_OC_n::at_sph_src = {
    {
        {0x0, {{0x1000, 0x1, 0xD}, {0x0, 0x0}, 0x0}}, // mObj
        {0x9, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {0x0, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 8072C5CC-8072C630 0000EC 0064+00 1/1 0/0 0/0 .text            __ct__12daE_OC_HIO_cFv */
daE_OC_HIO_c::daE_OC_HIO_c() {
    field_0x04 = -1;
    field_0x05 = 0;
    field_0x1c = 1.5f;
    field_0x08 = 1200.0f;
    field_0x0c = 5000.0f;
    field_0x10 = 400.0f;
    field_0x14 = 1200.0f;
    field_0x18 = 2000.0f;
    field_0x20 = 1400.0f;
    field_0x24 = 70.0f;
}

/* 8072C630-8072C6E8 000150 00B8+00 1/1 0/0 0/0 .text ctrlJoint__8daE_OC_cFP8J3DJointP8J3DModel */
int daE_OC_c::ctrlJoint(J3DJoint* i_joint, J3DModel* param_1) {
    int jnt_no = i_joint->getJntNo();
    MtxP anmMtx = param_1->getAnmMtx(jnt_no);
    mDoMtx_stack_c::copy(anmMtx);
    if (jnt_no == 0x11) {
        mDoMtx_stack_c::YrotM(field_0x6d2);
    } else if (jnt_no == 0xc) {
        mDoMtx_stack_c::YrotM(field_0x6d0);
    }
    param_1->setAnmMtx(jnt_no, mDoMtx_stack_c::get());
    mDoMtx_copy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
    return 1;
}

/* 8072C6E8-8072C734 000208 004C+00 1/1 0/0 0/0 .text JointCallBack__8daE_OC_cFP8J3DJointi */
int daE_OC_c::JointCallBack(J3DJoint* i_joint, int param_1) {
    if ((s32)i_joint == NULL) {
        daE_OC_c* bokoblin_ptr = (daE_OC_c*) j3dSys.getModel()->getUserArea();
        if (bokoblin_ptr) {
            bokoblin_ptr->ctrlJoint((J3DJoint *) this, j3dSys.getModel());
        }
    }
    return 1;
}

/* 8072C734-8072C918 000254 01E4+00 1/1 0/0 0/0 .text            draw__8daE_OC_cFv */
int daE_OC_c::draw() {
    J3DModel* model = mpMorf->getModel();
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &tevStr);
    if (field_0x6eb != 0)
        return 1;
    if (field_0x6e8 != 0) {
        J3DModelData* model_data = model->getModelData();
        for (u16 idx = 0; idx < model_data->getMaterialNum(); ++idx) {
            J3DMaterial* material = model_data->getMaterialNodePointer(idx);
            material->getTevColor(0)->r = field_0x6e4;
            material->getTevColor(0)->g = field_0x6e4;
            material->getTevColor(0)->b = field_0x6e4;
        }
    }
    mpMorf->entryDL();
    cXyz my_vec;
    my_vec.set(current.pos.x, 100.0f + current.pos.y, current.pos.z);
    _GXTexObj* tex_obj = dDlst_shadowControl_c::getSimpleTex();
    mShadowKey = dComIfGd_setShadow(mShadowKey, 1, model, &my_vec, 1000.0f, 0.0f,
                                    current.pos.y, mAcch.GetGroundH(), mAcch.m_gnd,
                                    &tevStr, 0, 1.0f, tex_obj);
    if (mpModel) {
        g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
        mDoExt_modelUpdateDL(mpModel);
        dComIfGd_addRealShadow(mShadowKey, mpModel);
    }
    return 1;
}

/* 8072C918-8072C938 000438 0020+00 1/0 0/0 0/0 .text            daE_OC_Draw__FP8daE_OC_c */
static void daE_OC_Draw(daE_OC_c* i_this) {
    i_this->draw();
}

UNK_BSS(1109);
UNK_BSS(1107);
UNK_BSS(1105);
UNK_BSS(1104);
UNK_BSS(1099);
UNK_BSS(1097);
UNK_BSS(1095);
UNK_BSS(1094);
UNK_BSS(1057);
UNK_BSS(1055);
UNK_BSS(1053);
UNK_BSS(1052);
UNK_BSS(1014);
UNK_BSS(1012);
UNK_BSS(1010);
UNK_BSS(1009);

/* 80736040-80736044 000048 0004+00 0/2 0/0 0/0 .bss             m_battle_oc__6E_OC_n */
daE_OC_c* E_OC_n::m_battle_oc;

/* 80736044-80736048 00004C 0004+00 0/2 0/0 0/0 .bss             m_damage_oc__6E_OC_n */
daE_OC_c* E_OC_n::m_damage_oc;

/* 80736048-8073604C 000050 0004+00 0/2 0/0 0/0 .bss             m_death_oc__6E_OC_n */
daE_OC_c* E_OC_n::m_death_oc;

/* 8073604C-80736050 000054 0004+00 0/2 0/0 0/0 .bss             m_talk_oc__6E_OC_n */
daE_OC_c* E_OC_n::m_talk_oc;

/* 80736050-80736054 000058 0004+00 2/2 0/0 0/0 .bss             None */
static u8 lbl_216_bss_58;

/* 80736060-80736088 000068 0028+00 6/7 0/0 0/0 .bss             l_HIO */
static daE_OC_HIO_c l_HIO;

/* 8072C938-8072CBD4 000458 029C+00 1/1 0/0 0/0 .text            s_other_oc__FPvPv */
static void* s_other_oc(void* arg_lhs, void* arg_rhs) {
    if (arg_lhs != arg_rhs && fopAcM_IsActor(arg_lhs)) {
        fopAc_ac_c* actor_rhs = static_cast<fopAc_ac_c*>(arg_rhs);
        daE_OC_c* actor_lhs = static_cast<daE_OC_c*>(arg_lhs);
        if (fpcM_IsCreating(fopAcM_GetID(actor_lhs)) == 0 && fopAcM_GetName(actor_lhs) == 0x1fe) {
            if (actor_lhs->isBattleOn() && fopAcM_searchActorDistance(actor_lhs, actor_rhs) < l_HIO.field_0x14) {
                f32 abs_val = actor_lhs->current.pos.absXZ(actor_rhs->home.pos);
                if (abs_val < ((daE_OC_c*) arg_rhs)->getMoveRange()) {
                    if (fopAcM_searchPlayerDistance(actor_lhs) < actor_lhs->getPlayerRange()) {
                        E_OC_n::m_battle_oc = actor_lhs;
                    }
                }
            }
            int action_mode = actor_lhs->getActionMode();
            switch (action_mode) {
                case 6:
                    if (fopAcM_searchActorDistance(actor_lhs, actor_rhs) < l_HIO.field_0x18) {
                        E_OC_n::m_damage_oc = actor_lhs;
                    }
                    break;
                case 9:
                    if (fopAcM_searchActorDistance(actor_lhs, actor_rhs) < l_HIO.field_0x18) {
                        E_OC_n::m_death_oc = actor_lhs;
                    }
                    break;
                case 0:
                case 1:
                    f32 dist = fopAcM_searchActorDistance(actor_lhs, actor_rhs);
                    if (dist < 400.0f && dist > 200.0f) {
                        E_OC_n::m_talk_oc = actor_lhs;
                    }
                    break;
                default:
                    break;
            }
        }
    }
    return NULL;
}

/* 8072CBD4-8072CC10 0006F4 003C+00 1/1 0/0 0/0 .text getVisionAngle__8daE_OC_cFP10fopAc_ac_c */
int daE_OC_c::getVisionAngle(fopAc_ac_c* i_this) {
    s16 act_angle = fopAcM_searchActorAngleY(this, i_this);
    return (s16)cLib_distanceAngleS(shape_angle.y, act_angle);
}

/* 8072CC10-8072CDA8 000730 0198+00 1/1 0/0 0/0 .text            searchOtherOc__8daE_OC_cFv */
void daE_OC_c::searchOtherOc() {
    if (field_0x6e3 == 0) {
        field_0x6dd = 0;
        E_OC_n::m_battle_oc = NULL;
        E_OC_n::m_damage_oc = NULL;
        E_OC_n::m_death_oc = NULL;
        E_OC_n::m_talk_oc = NULL;
        fpcM_Search(s_other_oc, this);
        mpBattle = E_OC_n::m_battle_oc;
        if (field_0x6c6 == 0 && (mActionMode == 0 || mActionMode == 1)) {
            mpTalk = E_OC_n::m_talk_oc;
            if (mpTalk && mpTalk->getTalkOc() == this) {
                s16 sh_val = 0x2000;
                if (isHomeWait() && mpTalk->isHomeWait()) {
                    sh_val = 0x4800;
                }
                if ((s16)getVisionAngle(mpTalk) <= sh_val && (s16)mpTalk->getVisionAngle(this) <= sh_val) {
                    setActionMode(2, 0);
                    mpTalk->setActionMode(2, 0);
                }
            }
        }
        if (mpDamage == NULL || mpDamage != E_OC_n::m_damage_oc) {
            mpDamage = E_OC_n::m_damage_oc;
            if (mpDamage) {
                field_0x6dd = 1;
            }
        }
        if (E_OC_n::m_death_oc && E_OC_n::m_death_oc->checkBeforeDeath() & 0xff) {
            field_0x6dd = 2;
            field_0x67c = E_OC_n::m_death_oc->current.pos;
        }
    }
}

/* 8072CDA8-8072CE00 0008C8 0058+00 5/5 0/0 0/0 .text            setWatchMode__8daE_OC_cFv */
int daE_OC_c::setWatchMode() {
    if (field_0x6dd != 0) {
        if (field_0x6dd == 1)
            setActionMode(7, 0);
        else
            setActionMode(7, 2);
        return 1;
    }
    return 0;
}

/* 8072CE00-8072CF00 000920 0100+00 1/1 0/0 0/0 .text            searchPlayer__8daE_OC_cFv */
int daE_OC_c::searchPlayer() {
    if (fopAcM_searchPlayerDistance(this) < mPlayerRange) {
        s16 diff = shape_angle.y - fopAcM_searchPlayerAngleY(this);
        if (fopAcM_searchPlayerDistance(this) < l_HIO.field_0x10) {
            if (daPy_getPlayerActorClass()->speedF > 12.0f)
                return 1;
            if (abs(diff) < 0x5000) {
                if (fopAcM_otherBgCheck(this,dComIfGp_getPlayer(0)) == 0)
                    return 1;
            }
        } else {
            if (abs(diff) < 0x4000) {
                if (fopAcM_otherBgCheck(this,dComIfGp_getPlayer(0)) == 0)
                    return 1;
            }
        }
    }
    return 0;
}

/* 8072CF00-8072CF90 000A20 0090+00 1/1 0/0 0/0 .text            s_obj_sub__FPvPv */
static void* s_obj_sub(void* arg_lhs, void* arg_rhs) {
    if (fopAcM_IsActor(arg_lhs)) {
        if (fpcM_IsCreating(fopAcM_GetID(arg_lhs)) == 0 && fopAcM_GetName(arg_lhs) == 0x36) {
            fopAc_ac_c* actor_lhs = static_cast<fopAc_ac_c*>(arg_lhs);
            fopAc_ac_c* actor_rhs = static_cast<fopAc_ac_c*>(arg_rhs);
            if (fopAcM_GetRoomNo(actor_lhs) == fopAcM_GetRoomNo(actor_rhs))
                return arg_lhs;
        }
    }
    return NULL;
}

/* 8072CF90-8072D100 000AB0 0170+00 6/6 0/0 0/0 .text            searchPlayer2__8daE_OC_cFv */
int daE_OC_c::searchPlayer2() {
    field_0x6e2 = 0;
    if (field_0x6b4 == 2) {
        mpBridge = (daRotBridge_c *) fpcM_Search(s_obj_sub, this);
        if (mpBridge && mpBridge->getPlayerRide()) {
            if (mpBridge->getBridgeAngle()) {
                if (field_0x6e1 != 0xff) {
                    if (dComIfGs_isSwitch(field_0x6e1, fopAcM_GetRoomNo(this)) == 0) {
                        dComIfGs_onSwitch(field_0x6e1, fopAcM_GetRoomNo(this));
                    }
                }
                field_0x6e2 = 1;
                return 1;
            }
            return 0;
        }
    }
    if (searchPlayer() & 0xff) {
        if (field_0x6b4 == 2 && field_0x6e1 != 0xff) {
            if (dComIfGs_isSwitch(field_0x6e1, fopAcM_GetRoomNo(this)) == 0) {
                dComIfGs_onSwitch(field_0x6e1, fopAcM_GetRoomNo(this));
                field_0x6e2 = 1;
            }
        }
        return 1;
    }
    if (mpBattle) {
        if (mpBattle->getActionMode() != 3)
            return 1;
        if (mpBattle->searchPlayer() & 0xff)
            return 1;
    }
    return 0;
}

/* 8072D100-8072D1DC 000C20 00DC+00 2/2 0/0 0/0 .text            searchPlayerShakeHead__8daE_OC_cFv
 */
int daE_OC_c::searchPlayerShakeHead() {
    if (field_0x6e3 != 0)
        return 0;
    if (field_0x6b4 == 2 && mpBridge && mpBridge->getPlayerRide())
        return 0;
    if (fopAcM_searchPlayerDistance(this) < mPlayerRange) {
        s16 diff = getHeadAngle() - fopAcM_searchPlayerAngleY(this);
        if (abs(diff) < 0x2000) {
            if (fopAcM_otherBgCheck(this, dComIfGp_getPlayer(0)) == 0)
                return 1;
        }
    }
    return 0;
}

/* 8072D1DC-8072D2E8 000CFC 010C+00 3/3 0/0 0/0 .text            searchSound__8daE_OC_cFv */
int daE_OC_c::searchSound() {
    if (field_0x6b4 == 2 && mpBridge && mpBridge->getPlayerRide())
        return 0;
    if (daPy_getPlayerActorClass()->getCutType() != 0 && fopAcM_searchPlayerDistance(this) < mPlayerRange) {
        field_0x67c = dComIfGp_getPlayer(0)->current.pos;
        setActionMode(8, 0);
        return 1;
    }
    if (fopAcM_otoCheck(this, 1000.0f)) {
        field_0x67c = dKy_Sound_get()->position;
        setActionMode(8, 0);
        return 1;
    }
    return 0;
}

/* 8072D2E8-8072D364 000E08 007C+00 1/1 0/0 0/0 .text            s_demo_oc__FPvPv */
static void* s_demo_oc(void* arg_lhs, void* arg_rhs) {
    if (fopAcM_IsActor(arg_lhs)) {
        if (fpcM_IsCreating(fopAcM_GetID(arg_lhs)) == 0 && fopAcM_GetName(arg_lhs) == 0x1fe
            && (fopAcM_GetParam(arg_lhs) & 0xff) == 4) {
            return arg_lhs;
        }
    }
    return NULL;
}

/* 8072D364-8072D5F8 000E84 0294+00 1/1 0/0 0/0 .text            checkBeforeBg__8daE_OC_cFv */
int daE_OC_c::checkBeforeBg() {
    dBgS_LinChk link_chk;
    cM3dGPla plane;
    cXyz my_vec_0;
    cXyz my_vec_1;
    cXyz my_vec_2;
    my_vec_0 = current.pos;
    my_vec_0.y += 100.0f;
    my_vec_1 = my_vec_0;
    my_vec_1.x += cM_ssin(shape_angle.y) * 300.0f;
    my_vec_1.z += cM_scos(shape_angle.y) * 300.0f;
    link_chk.Set(&my_vec_0, &my_vec_1, this);
    if (dComIfG_Bgsp().LineCross(&link_chk)) {
        dComIfG_Bgsp().GetTriPla(link_chk, &plane);
        if (my_vec_0.abs(link_chk.i_GetCross()) < 100.0f) {
            return 1;
        }
        if ( (s16) (cM_atan2s(plane.mNormal.x, plane.mNormal.z) - shape_angle.y) > 0)
            return 2;
        else
            return 3;
    }
    return 0;
}

/* 8072D640-8072D87C 001160 023C+00 1/2 0/0 0/0 .text            checkBeforeBgFind__8daE_OC_cFv */
int daE_OC_c::checkBeforeBgFind() {
    dBgS_LinChk link_chk;
    cXyz my_vec_0;
    cXyz my_vec_1;
    cXyz my_vec_2;
    s16 pl_ang = fopAcM_searchPlayerAngleY(this);
    my_vec_0 = current.pos;
    my_vec_0.y += 100.0f;
    my_vec_1 = daPy_getPlayerActorClass()->current.pos;
    my_vec_1.y += 100.0f;
    link_chk.Set(&my_vec_0, &my_vec_1, NULL);
    if (dComIfG_Bgsp().LineCross(&link_chk) == 0) {
        return 0;
    }
    my_vec_2 = my_vec_1;
    my_vec_1.x += cM_ssin(pl_ang + 0x4000) * 300.0f;
    my_vec_1.z += cM_scos(pl_ang + 0x4000) * 300.0f;
    link_chk.Set(&my_vec_0, &my_vec_1, NULL);
    if (dComIfG_Bgsp().LineCross(&link_chk) == 0) {
        field_0x6da = cLib_targetAngleY(&my_vec_0, &my_vec_1);
        return 1;
    }
    my_vec_2.x += cM_ssin(pl_ang - 0x4000) * 300.0f;
    my_vec_2.z += cM_scos(pl_ang - 0x4000) * 300.0f;
    link_chk.Set(&my_vec_0, &my_vec_2, NULL);
    if (dComIfG_Bgsp().LineCross(&link_chk) == 0) {
        field_0x6da = cLib_targetAngleY(&my_vec_0, &my_vec_2);
        return 1;
    } else {
        field_0x6da = cLib_targetAngleY(&my_vec_0, &my_vec_1);
        return 1;
    }
}

/* 8072D87C-8072D994 00139C 0118+00 2/2 0/0 0/0 .text            checkBeforeFloorBg__8daE_OC_cFf */
int daE_OC_c::checkBeforeFloorBg(f32 arg) {
    cXyz my_vec_0;
    dBgS_ObjGndChk_Spl gnd_chk_spl;
    dBgS_GndChk gnd_chk;
    cXyz my_vec_1(0.0f, 100.0f, arg);
    cLib_offsetPos(&my_vec_0, &current.pos, shape_angle.y, &my_vec_1);
    gnd_chk_spl.SetPos(&my_vec_0);
    f32 val_0 = dComIfG_Bgsp().GroundCross(&gnd_chk_spl);
    if (val_0 != -1e+09f) {
        gnd_chk.SetPos(&my_vec_0);
        if (val_0 >= dComIfG_Bgsp().GroundCross(&gnd_chk))
            return 1;
    }
    return 0;
}

/* 8072D994-8072DB10 0014B4 017C+00 1/1 0/0 0/0 .text            checkDamageBg__8daE_OC_cFv */
void daE_OC_c::checkDamageBg() {
    cXyz my_vec(current.pos);
    my_vec.y += 50.0f;
    cXyz o_vec;
    mDoMtx_stack_c::transS(my_vec);
    mDoMtx_stack_c::ZXYrotM(field_0x688);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::YrotM(field_0x6d8);
    mDoMtx_stack_c::transM(0.0f, 0.0f, -200.0f);
    mDoMtx_stack_c::multVecZero(&o_vec);
    dBgS_LinChk link_chk;
    link_chk.Set(&my_vec, &o_vec, this);
    if (dComIfG_Bgsp().LineCross(&link_chk)) {
        if (field_0x6be == 0) {
            cM3dGPla plane;
            dComIfG_Bgsp().GetTriPla(link_chk, &plane);
            s16 val = cM_atan2s(plane.mNormal.x, plane.mNormal.z);
            if ((s16)(val - (s16)(shape_angle.y + 0x8000)) > 0) {
                field_0x6be = 0x400;
            } else {
                field_0x6be = -0x400;
            }
        }
        shape_angle.y += field_0x6be;
    }
}

/* 8072DB10-8072DCBC 001630 01AC+00 1/1 0/0 0/0 .text            setGroundAngle__8daE_OC_cFv */
void daE_OC_c::setGroundAngle() {
    cXyz my_vec_0;
    cXyz my_vec_1;
    cXyz my_vec_2;
    cXyz my_vec_3;
    dBgS_GndChk gnd_chk;
    my_vec_2 = current.pos;
    my_vec_2.y = mAcch.GetGroundH();
    my_vec_0.x = my_vec_2.x;
    my_vec_0.y = my_vec_2.y + 50.0f;
    my_vec_0.z = my_vec_2.z + 80.0f;
    gnd_chk.SetPos(&my_vec_0);
    my_vec_0.y = dComIfG_Bgsp().GroundCross(&gnd_chk);
    if (my_vec_0.y != -1e+09f && (f32)fabs(my_vec_0.y - my_vec_2.y) < 50.0f) {
        my_vec_3 = my_vec_0 - my_vec_2;
        field_0x688.x = -cM_atan2s(my_vec_3.y, my_vec_3.z);
    }
    my_vec_1.x = my_vec_2.x + 50.0f;
    my_vec_1.y = my_vec_2.y + 50.0f;
    my_vec_1.z = my_vec_2.z;
    gnd_chk.SetPos(&my_vec_1);
    my_vec_1.y = dComIfG_Bgsp().GroundCross(&gnd_chk);
    if (my_vec_1.y != -1e+09f && (f32)fabs(my_vec_1.y - my_vec_2.y) < 50.0f) {
        my_vec_3 = my_vec_1 - my_vec_2;
        field_0x688.z = cM_atan2s(my_vec_3.y, my_vec_3.x);
    }
}

/* 8072DCBC-8072DD18 0017DC 005C+00 21/21 0/0 0/0 .text            setActionMode__8daE_OC_cFii */
void daE_OC_c::setActionMode(int arg_1, int arg_2) {
    mOldActionMode = mActionMode;
    mActionMode = arg_1;
    field_0x6b0 = arg_2;
    field_0x6c2 = 0;
    field_0x6c0 = 0;
    mSphs_cc[0].OnCoSetBit();
    mSphs_cc[0].OnTgSetBit();
    mSphs_cc[1].OnCoSetBit();
    mSphs_cc[1].OnTgSetBit();
    offHeadLockFlg();
}

/* 8072DD18-8072DD8C 001838 0074+00 2/1 0/0 0/0 .text            getCutType__8daE_OC_cFv */
int daE_OC_c::getCutType() {
    if (daPy_getPlayerActorClass()->getCutCount() >= 4)
        return 5;
    {
        switch (daPy_getPlayerActorClass()->getCutType()) {
            case daPy_py_c::CUT_TYPE_TURN_RIGHT:
            case daPy_py_c::CUT_TYPE_LARGE_TURN_RIGHT:
            case daPy_py_c::CUT_TYPE_HEAD_JUMP:
                return 6;
            case daPy_py_c::CUT_TYPE_LARGE_TURN_LEFT:
            case daPy_py_c::CUT_TYPE_TURN_LEFT:
                return 7;
            case daPy_py_c::CUT_TYPE_MORTAL_DRAW_A:
            case daPy_py_c::CUT_TYPE_TWIRL:
            case daPy_py_c::CUT_TYPE_MORTAL_DRAW_B:
            case daPy_py_c::CUT_TYPE_JUMP:
                return 5;
            case daPy_py_c::CUT_TYPE_NM_STAB:
            case daPy_py_c::CUT_TYPE_NM_RIGHT:
            case daPy_py_c::CUT_TYPE_FINISH_STAB:
            case daPy_py_c::CUT_TYPE_DASH_UNK_26:
            case daPy_py_c::CUT_TYPE_NM_VERTICAL:
                return 0;
            case daPy_py_c::CUT_TYPE_COMBO_STAB:
            case daPy_py_c::CUT_TYPE_HORSE_UNK_22:
            case daPy_py_c::CUT_TYPE_HORSE_UNK_23:
            case daPy_py_c::CUT_TYPE_DASH_UNK_25:
            case daPy_py_c::CUT_TYPE_NM_LEFT:
                return 1;
            default:
                return 2;
        }
    }
}

/* 8072DD8C-8072DDF4 0018AC 0068+00 4/4 0/0 0/0 .text            offTgSph__8daE_OC_cFv */
void daE_OC_c::offTgSph() {
    mSphs_cc[0].OffTgSetBit();
    mSphs_cc[0].ClrTgHit();
    mSphs_cc[1].OffTgSetBit();
    mSphs_cc[1].ClrTgHit();
}

/* 8072DDF4-8072E274 001914 0480+00 1/1 0/0 0/0 .text            damage_check__8daE_OC_cFv */
void daE_OC_c::damage_check() {
    if (checkCutDownHitFlg()) {
        offCutDownHitFlg();
        health = 0;
        setActionMode(9,1);
        offTgSph();
        return;
    }
    if (field_0x6cc)
        return;
    mStts.Move();
    cXyz my_vec_0;
    int had_hit = 0;
    if (mSphs_cc[0].ChkTgHit()) {
        mpTgHitObj = mSphs_cc[0].GetTgHitObj();
        had_hit = 1;
        my_vec_0 = *mSphs_cc[0].GetTgHitPosP();
    }
    if (mSphs_cc[1].ChkTgHit()) {
        mpTgHitObj = mSphs_cc[1].GetTgHitObj();
        had_hit = 1;
        my_vec_0 = *mSphs_cc[1].GetTgHitPosP();
    }
    if (had_hit == 0)
        return;
    if (mpTgHitObj->ChkAtType(0xd8000000))
        field_0x6cc = 0x14;
    else
        field_0x6cc = 10;
    if (field_0xe58 <= 1)
        field_0x6cc = 10;
    u8 my_val = 2;
    if (mpTgHitObj->ChkAtType(AT_TYPE_MASTER_SWORD | AT_TYPE_NORMAL_SWORD)) {
        my_val = getCutType();
        if (daPy_py_c::checkWoodSwordEquip())
            my_val = 2;
        if (my_val <= 2) {
            if (field_0x6d6) {
                field_0x6dc ^= 1;
                my_val = field_0x6dc;
            } else {
                field_0x6dc = my_val;
            }
            field_0x6d6 = 0x1e;
        }
        if (daPy_getPlayerActorClass()->getCutType() == 5)
            health = 0;
    } else if (mpTgHitObj->ChkAtType(AT_TYPE_SHIELD_ATTACK)) {
        my_val = 3;
    } else if (mpTgHitObj->ChkAtType(AT_TYPE_ARROW)) {
        if (cM_rnd() < 0.5f) {
            my_val = 0;
        } else {
            my_val = 1;
        }
    } else if (mpTgHitObj->ChkAtType(AT_TYPE_BOMB)) {
        my_val = 5;
        health = 0;
    } else if (mpTgHitObj->ChkAtType(AT_TYPE_IRON_BALL)) {
        my_val = 5;
        if (dComIfGp_checkPlayerStatus0(0,0x400)) {
            health += 0x8c;
        } else {
            health += 0x50;
        }
    } else if (mpTgHitObj->ChkAtType(AT_TYPE_BOOMERANG)) {
        my_val = 4;
    } else if (mpTgHitObj->ChkAtType(AT_TYPE_40)) {
        health += 10;
    }
     else if (mpTgHitObj->ChkAtType(AT_TYPE_SLINGSHOT)) {
        if (field_0x6a4 == "E_OC") {
            health -= 5;
            if (health < 0) {
                health = 0;
                mSound.startCollisionSE(0x40007,0x20);
                dComIfGp_setHitMark(3, this, &my_vec_0, NULL, NULL, 0);
                setActionMode(6,0);
                offTgSph();
                field_0xe4a = fopAcM_searchPlayerAngleY(this);
                return;
            }
        } else {
            mSound.startCollisionSE(0x40018,0x2d);
            if (mActionMode != 0 && mActionMode != 1 && mActionMode != 2) {
                return;
            }
            setActionMode(3, 1);
            return;
        }
    }
    cc_at_check(this, (dCcU_AtInfo*) &mpTgHitObj);
    if ( ((dCcD_GObjInf*)mpTgHitObj)->GetAtSpl() == 1 && (((dCcD_GObjInf*)mpTgHitObj)->ChkAtType(2) == 0
        || daPy_py_c::checkWoodSwordEquip() == 0) && my_val < 5) {
        my_val = 5;
    }
    if (health <= 1) {
        attention_info.flags = 0;
        if (my_val < 5)
            my_val = 5;
    }
    if (daPy_getPlayerActorClass()->getCutType() == 0xa) {
        if (daPy_getPlayerActorClass()->checkCutJumpCancelTurn()) {
            setActionMode(5, my_val);
            field_0x6cc = 3;
            return;
        }
    }
    if (my_val >= 5) {
        setActionMode(6, my_val - 5);
        offTgSph();
    } else {
        setActionMode(5, my_val);
    }
}

/* 8072E274-8072E31C 001D94 00A8+00 17/17 0/0 0/0 .text            setBck__8daE_OC_cFiUcff */
void daE_OC_c::setBck(int param_0, u8 param_1, f32 param_2, f32 param_3) {
    J3DAnmTransform* anm = (J3DAnmTransform *) dComIfG_getObjectRes("E_ocb", param_0);
    mpMorf->setAnm(anm, param_1, param_2, param_3, 0.0f, -1.0f);
}

/* 8072E31C-8072E37C 001E3C 0060+00 11/11 0/0 0/0 .text            checkBck__8daE_OC_cFi */
bool daE_OC_c::checkBck(int param_0) {
    return mpMorf->getAnm() == dComIfG_getObjectRes("E_ocb", param_0);
}

/* 8072E37C-8072E42C 001E9C 00B0+00 3/3 0/0 0/0 .text            setSpitEffect__8daE_OC_cFv */
void daE_OC_c::setSpitEffect() {
    MtxP my_mtx_p = mpMorf->getModel()->getAnmMtx(0x11);
    cXyz my_vec(my_mtx_p[0][3], my_mtx_p[1][3], my_mtx_p[2][3]);
    mParticleKey = dComIfGp_particle_set(mParticleKey, 0x837b, &my_vec, &tevStr, &shape_angle, NULL,
                                         0xff, NULL, 0xffffffff, NULL, NULL, NULL);
}

/* 8072E42C-8072E498 001F4C 006C+00 1/1 0/0 0/0 .text            getHeadAngle__8daE_OC_cFv */
s16 daE_OC_c::getHeadAngle() {
    cXyz my_vec_0;
    cXyz my_vec_1;
    MtxP my_mtx_p = mpMorf->getModel()->getAnmMtx(0x11);
    my_vec_0.set(my_mtx_p[0][3], my_mtx_p[1][3], my_mtx_p[2][3]);
    my_mtx_p = mpMorf->getModel()->getAnmMtx(0x13);
    my_vec_1.set(my_mtx_p[0][3], my_mtx_p[1][3], my_mtx_p[2][3]);
    return (s16)cLib_targetAngleY(&my_vec_0, &my_vec_1);
}

/* 8072E498-8072E528 001FB8 0090+00 1/1 0/0 0/0 .text            setStabPos__8daE_OC_cFv */
void daE_OC_c::setStabPos() {
    cXyz my_vec_0;
    cXyz my_vec_1;
    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(0x1));
    my_vec_1.set(-10.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::multVec(&my_vec_1, &my_vec_0);
    setDownPos(&my_vec_0);
}

/* 8072E528-8072E5A4 002048 007C+00 1/1 0/0 0/0 .text            setWaitSound__8daE_OC_cFv */
void daE_OC_c::setWaitSound() {
    if (checkBck(0x1b) && mpMorf->checkFrame(0.0f)) {
        mSound.startCreatureVoice(0x70180, 0xffffffff);
    }
}

/* 8072E5A4-8072E670 0020C4 00CC+00 1/1 0/0 0/0 .text            setWalkSound__8daE_OC_cFv */
void daE_OC_c::setWalkSound() {
    // NONMATCHING
    if (checkBck(0x1d)) {
        if (mpMorf->checkFrame(14.0f)) {
            mSound.startCreatureSound(0x70178, 0, 0xffffffff);
        } else if (mpMorf->checkFrame(30.0f)) {
            mSound.startCreatureSound(0x70179, 0, 0xffffffff);
        }
    }
}

/* ############################################################################################## */
/* 80735BF4-80735BF8 0000CC 0004+00 0/2 0/0 0/0 .rodata          @5016 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5016 = 9.0f;
COMPILER_STRIP_GATE(0x80735BF4, &lit_5016);
#pragma pop

/* 8072E670-8072E788 002190 0118+00 1/1 0/0 0/0 .text            setWalkStSound__8daE_OC_cFv */
void daE_OC_c::setWalkStSound() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735BF8-80735BFC 0000D0 0004+00 0/1 0/0 0/0 .rodata          @5047 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5047 = 8.5f;
COMPILER_STRIP_GATE(0x80735BF8, &lit_5047);
#pragma pop

/* 8072E788-8072E910 0022A8 0188+00 1/1 0/0 0/0 .text            setDashSound__8daE_OC_cFv */
void daE_OC_c::setDashSound() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735BFC-80735C00 0000D4 0004+00 0/1 0/0 0/0 .rodata          @5075 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5075 = 6.5f;
COMPILER_STRIP_GATE(0x80735BFC, &lit_5075);
#pragma pop

/* 80735C00-80735C04 0000D8 0004+00 0/6 0/0 0/0 .rodata          @5076 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5076 = 20.0f;
COMPILER_STRIP_GATE(0x80735C00, &lit_5076);
#pragma pop

/* 80735C04-80735C08 0000DC 0004+00 0/1 0/0 0/0 .rodata          @5077 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5077 = 13.0f;
COMPILER_STRIP_GATE(0x80735C04, &lit_5077);
#pragma pop

/* 80735C08-80735C0C 0000E0 0004+00 0/2 0/0 0/0 .rodata          @5078 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5078 = 28.5f;
COMPILER_STRIP_GATE(0x80735C08, &lit_5078);
#pragma pop

/* 8072E910-8072EA58 002430 0148+00 1/1 0/0 0/0 .text            setWaitStSound__8daE_OC_cFv */
void daE_OC_c::setWaitStSound() {
    // NONMATCHING
}

/* 8072EA58-8072EAA4 002578 004C+00 1/1 0/0 0/0 .text            setFootNoteSound__8daE_OC_cFv */
void daE_OC_c::setFootNoteSound() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735C0C-80735C10 0000E4 0004+00 0/13 0/0 0/0 .rodata          @5214 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5214 = 5.0f;
COMPILER_STRIP_GATE(0x80735C0C, &lit_5214);
#pragma pop

/* 80735C10-80735C14 0000E8 0004+00 0/2 0/0 0/0 .rodata          @5215 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5215 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80735C10, &lit_5215);
#pragma pop

/* 80735C14-80735C18 0000EC 0004+00 0/6 0/0 0/0 .rodata          @5216 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5216 = 10.0f;
COMPILER_STRIP_GATE(0x80735C14, &lit_5216);
#pragma pop

/* 8072EAA4-8072F1A8 0025C4 0704+00 1/1 0/0 0/0 .text            executeWait__8daE_OC_cFv */
void daE_OC_c::executeWait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735C18-80735C1C 0000F0 0004+00 0/1 0/0 0/0 .rodata          @5299 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5299 = 150.0f;
COMPILER_STRIP_GATE(0x80735C18, &lit_5299);
#pragma pop

/* 80735C1C-80735C20 0000F4 0004+00 0/6 0/0 0/0 .rodata          @5300 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5300 = 500.0f;
COMPILER_STRIP_GATE(0x80735C1C, &lit_5300);
#pragma pop

/* 80735C20-80735C24 0000F8 0004+00 0/1 0/0 0/0 .rodata          @5301 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5301 = 32768.0f;
COMPILER_STRIP_GATE(0x80735C20, &lit_5301);
#pragma pop

/* 80735C24-80735C28 0000FC 0004+00 0/1 0/0 0/0 .rodata          @5302 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5302 = 4.0f;
COMPILER_STRIP_GATE(0x80735C24, &lit_5302);
#pragma pop

/* 8072F1A8-8072F5E0 002CC8 0438+00 1/1 0/0 0/0 .text            executeWalk__8daE_OC_cFv */
void daE_OC_c::executeWalk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735C28-80735C2C 000100 0004+00 0/2 0/0 0/0 .rodata          @5352 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5352 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80735C28, &lit_5352);
#pragma pop

/* 80735C2C-80735C30 000104 0004+00 0/1 0/0 0/0 .rodata          @5353 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5353 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80735C2C, &lit_5353);
#pragma pop

/* 8072F5E0-8072F914 003100 0334+00 1/1 0/0 0/0 .text            executeTalk__8daE_OC_cFv */
void daE_OC_c::executeTalk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735C30-80735C34 000108 0004+00 0/1 0/0 0/0 .rodata          @5553 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5553 = 13.0f / 10.0f;
COMPILER_STRIP_GATE(0x80735C30, &lit_5553);
#pragma pop

/* 80735C34-80735C38 00010C 0004+00 0/2 0/0 0/0 .rodata          @5554 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5554 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x80735C34, &lit_5554);
#pragma pop

/* 80735C38-80735C3C 000110 0004+00 0/1 0/0 0/0 .rodata          @5555 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5555 = -3.0f;
COMPILER_STRIP_GATE(0x80735C38, &lit_5555);
#pragma pop

/* 80735C3C-80735C40 000114 0004+00 0/3 0/0 0/0 .rodata          @5556 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5556 = -15.0f;
COMPILER_STRIP_GATE(0x80735C3C, &lit_5556);
#pragma pop

/* 80735D0C-80735D0C 0001E4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80735D17 = "D_MN05";
#pragma pop

/* 8072F914-807302E8 003434 09D4+00 1/1 0/0 0/0 .text            executeFind__8daE_OC_cFv */
void daE_OC_c::executeFind() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735C40-80735C44 000118 0004+00 0/3 0/0 0/0 .rodata          @5645 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5645 = 45.0f;
COMPILER_STRIP_GATE(0x80735C40, &lit_5645);
#pragma pop

/* 807302E8-807305C0 003E08 02D8+00 1/1 0/0 0/0 .text            setWeaponGroundAngle__8daE_OC_cFv
 */
void daE_OC_c::setWeaponGroundAngle() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735C44-80735C48 00011C 0004+00 0/1 0/0 0/0 .rodata          @5849 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5849 = 12.5f;
COMPILER_STRIP_GATE(0x80735C44, &lit_5849);
#pragma pop

/* 80735C48-80735C4C 000120 0004+00 0/1 0/0 0/0 .rodata          @5850 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5850 = 19.0f;
COMPILER_STRIP_GATE(0x80735C48, &lit_5850);
#pragma pop

/* 80735C4C-80735C50 000124 0004+00 0/1 0/0 0/0 .rodata          @5851 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5851 = 7.0f;
COMPILER_STRIP_GATE(0x80735C4C, &lit_5851);
#pragma pop

/* 80735C50-80735C54 000128 0004+00 0/1 0/0 0/0 .rodata          @5852 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5852 = 11.5f;
COMPILER_STRIP_GATE(0x80735C50, &lit_5852);
#pragma pop

/* 80735C54-80735C58 00012C 0004+00 0/1 0/0 0/0 .rodata          @5853 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5853 = 22.0f;
COMPILER_STRIP_GATE(0x80735C54, &lit_5853);
#pragma pop

/* 807305C0-80730DC0 0040E0 0800+00 1/1 0/0 0/0 .text            executeAttack__8daE_OC_cFv */
void daE_OC_c::executeAttack() {
    // NONMATCHING
}

extern "C" void executeDamage__8daE_OC_cFv();
/* 80735E80-80735E9C -00001 001C+00 1/1 0/0 0/0 .data            @5924 */
SECTION_DATA static void* lit_5924[7] = {
    (void*)(((char*)executeDamage__8daE_OC_cFv) + 0x54),
    (void*)(((char*)executeDamage__8daE_OC_cFv) + 0xA0),
    (void*)(((char*)executeDamage__8daE_OC_cFv) + 0xEC),
    (void*)(((char*)executeDamage__8daE_OC_cFv) + 0x138),
    (void*)(((char*)executeDamage__8daE_OC_cFv) + 0x1CC),
    (void*)(((char*)executeDamage__8daE_OC_cFv) + 0x21C),
    (void*)(((char*)executeDamage__8daE_OC_cFv) + 0x2E8),
};

/* 80735E9C-80735EA4 000170 0008+00 1/1 0/0 0/0 .data            w_eff_id$6206 */
SECTION_DATA static u8 w_eff_id[8] = {
    0x01, 0xB8, 0x01, 0xB9, 0x01, 0xBA, 0x01, 0xBB,
};

/* 80730DC0-80731124 0048E0 0364+00 2/1 0/0 0/0 .text            executeDamage__8daE_OC_cFv */
void daE_OC_c::executeDamage() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735C58-80735C5C 000130 0004+00 0/1 0/0 0/0 .rodata          @5921 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5921 = -20.0f;
COMPILER_STRIP_GATE(0x80735C58, &lit_5921);
#pragma pop

/* 80735C5C-80735C60 000134 0004+00 0/1 0/0 0/0 .rodata          @5922 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5922 = 3.0f;
COMPILER_STRIP_GATE(0x80735C5C, &lit_5922);
#pragma pop

/* 80735C60-80735C64 000138 0004+00 0/4 0/0 0/0 .rodata          @5923 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5923 = 2.0f;
COMPILER_STRIP_GATE(0x80735C60, &lit_5923);
#pragma pop

/* 80735C64-80735C68 00013C 0004+00 0/1 0/0 0/0 .rodata          @6039 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6039 = 40.0f;
COMPILER_STRIP_GATE(0x80735C64, &lit_6039);
#pragma pop

/* 80735C68-80735C6C 000140 0004+00 0/2 0/0 0/0 .rodata          @6040 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6040 = 15.0f;
COMPILER_STRIP_GATE(0x80735C68, &lit_6040);
#pragma pop

/* 80731124-807316F8 004C44 05D4+00 1/1 0/0 0/0 .text            executeBigDamage__8daE_OC_cFv */
void daE_OC_c::executeBigDamage() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735C6C-80735C70 000144 0004+00 0/1 0/0 0/0 .rodata          @6089 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6089 = 35.0f;
COMPILER_STRIP_GATE(0x80735C6C, &lit_6089);
#pragma pop

/* 807316F8-807319E4 005218 02EC+00 1/1 0/0 0/0 .text            executeWatch__8daE_OC_cFv */
void daE_OC_c::executeWatch() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735C70-80735C74 000148 0004+00 0/2 0/0 0/0 .rodata          @6147 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6147 = 60.0f;
COMPILER_STRIP_GATE(0x80735C70, &lit_6147);
#pragma pop

/* 807319E4-80731D18 005504 0334+00 1/1 0/0 0/0 .text            executeSoundWatch__8daE_OC_cFv */
void daE_OC_c::executeSoundWatch() {
    // NONMATCHING
}

/* 80731D18-80731D4C 005838 0034+00 1/1 0/0 0/0 .text            checkBeforeDeath__8daE_OC_cFv */
int daE_OC_c::checkBeforeDeath() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735C74-80735C78 00014C 0004+00 0/1 0/0 0/0 .rodata          @6198 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6198 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80735C74, &lit_6198);
#pragma pop

/* 80731D4C-80731F5C 00586C 0210+00 1/1 0/0 0/0 .text            executeDeath__8daE_OC_cFv */
void daE_OC_c::executeDeath() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80736088-80736098 000090 000C+04 0/1 0/0 0/0 .bss             @6203 */
#pragma push
#pragma force_active on
static u8 lit_6203[12 + 4 /* padding */];
#pragma pop

/* 80736098-807360A4 0000A0 000C+00 0/1 0/0 0/0 .bss             sc$6202 */
#pragma push
#pragma force_active on
static u8 sc[12];
#pragma pop

/* 80731F5C-80732074 005A7C 0118+00 1/1 0/0 0/0 .text            setWaterEffect__8daE_OC_cFv */
void daE_OC_c::setWaterEffect() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735C78-80735C7C 000150 0004+00 0/3 0/0 0/0 .rodata          @6299 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6299 = 140.0f;
COMPILER_STRIP_GATE(0x80735C78, &lit_6299);
#pragma pop

/* 80735C7C-80735C80 000154 0004+00 0/1 0/0 0/0 .rodata          @6300 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6300 = 24.0f;
COMPILER_STRIP_GATE(0x80735C7C, &lit_6300);
#pragma pop

/* 80735C80-80735C84 000158 0004+00 0/1 0/0 0/0 .rodata          @6301 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6301 = 37.0f;
COMPILER_STRIP_GATE(0x80735C80, &lit_6301);
#pragma pop

/* 80735C84-80735C88 00015C 0004+00 0/1 0/0 0/0 .rodata          @6302 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6302 = 49.0f;
COMPILER_STRIP_GATE(0x80735C84, &lit_6302);
#pragma pop

/* 80732074-807323A4 005B94 0330+00 1/1 0/0 0/0 .text            executeWaterDeath__8daE_OC_cFv */
void daE_OC_c::executeWaterDeath() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735C88-80735C8C 000160 0004+00 0/2 0/0 0/0 .rodata          @6488 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6488 = -4264.0f;
COMPILER_STRIP_GATE(0x80735C88, &lit_6488);
#pragma pop

/* 80735C8C-80735C90 000164 0004+00 0/2 0/0 0/0 .rodata          @6489 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6489 = 302.0f;
COMPILER_STRIP_GATE(0x80735C8C, &lit_6489);
#pragma pop

/* 80735C90-80735C94 000168 0004+00 0/2 0/0 0/0 .rodata          @6490 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6490 = -2330.0f;
COMPILER_STRIP_GATE(0x80735C90, &lit_6490);
#pragma pop

/* 80735C94-80735C98 00016C 0004+00 0/1 0/0 0/0 .rodata          @6491 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6491 = 16200.0f;
COMPILER_STRIP_GATE(0x80735C94, &lit_6491);
#pragma pop

/* 80735C98-80735C9C 000170 0004+00 0/1 0/0 0/0 .rodata          @6492 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6492 = 2850.0f;
COMPILER_STRIP_GATE(0x80735C98, &lit_6492);
#pragma pop

/* 80735C9C-80735CA0 000174 0004+00 0/1 0/0 0/0 .rodata          @6493 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6493 = 7000.0f;
COMPILER_STRIP_GATE(0x80735C9C, &lit_6493);
#pragma pop

/* 80735CA0-80735CA4 000178 0004+00 0/1 0/0 0/0 .rodata          @6494 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6494 = 16300.0f;
COMPILER_STRIP_GATE(0x80735CA0, &lit_6494);
#pragma pop

/* 80735CA4-80735CA8 00017C 0004+00 0/1 0/0 0/0 .rodata          @6495 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6495 = 3700.0f;
COMPILER_STRIP_GATE(0x80735CA4, &lit_6495);
#pragma pop

/* 80735CA8-80735CAC 000180 0004+00 0/1 0/0 0/0 .rodata          @6496 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6496 = 8400.0f;
COMPILER_STRIP_GATE(0x80735CA8, &lit_6496);
#pragma pop

/* 80735CAC-80735CB0 000184 0004+00 0/1 0/0 0/0 .rodata          @6497 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6497 = 16325.0f;
COMPILER_STRIP_GATE(0x80735CAC, &lit_6497);
#pragma pop

/* 80735CB0-80735CB4 000188 0004+00 0/1 0/0 0/0 .rodata          @6498 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6498 = 2858.0f;
COMPILER_STRIP_GATE(0x80735CB0, &lit_6498);
#pragma pop

/* 80735CB4-80735CB8 00018C 0004+00 0/1 0/0 0/0 .rodata          @6499 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6499 = 6597.0f;
COMPILER_STRIP_GATE(0x80735CB4, &lit_6499);
#pragma pop

/* 80735CB8-80735CBC 000190 0004+00 0/2 0/0 0/0 .rodata          @6500 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6500 = 55.0f;
COMPILER_STRIP_GATE(0x80735CB8, &lit_6500);
#pragma pop

extern "C" void executeDemoMaster__8daE_OC_cFv();
/* 80735EA4-80735EC8 -00001 0024+00 1/1 0/0 0/0 .data            @6513 */
SECTION_DATA static void* lit_6513[9] = {
    (void*)(((char*)executeDemoMaster__8daE_OC_cFv) + 0xA8),
    (void*)(((char*)executeDemoMaster__8daE_OC_cFv) + 0x164),
    (void*)(((char*)executeDemoMaster__8daE_OC_cFv) + 0x1B8),
    (void*)(((char*)executeDemoMaster__8daE_OC_cFv) + 0x6CC),
    (void*)(((char*)executeDemoMaster__8daE_OC_cFv) + 0x1FC),
    (void*)(((char*)executeDemoMaster__8daE_OC_cFv) + 0x1FC),
    (void*)(((char*)executeDemoMaster__8daE_OC_cFv) + 0x3CC),
    (void*)(((char*)executeDemoMaster__8daE_OC_cFv) + 0x500),
    (void*)(((char*)executeDemoMaster__8daE_OC_cFv) + 0x5A4),
};

/* 807323A4-80732B04 005EC4 0760+00 2/1 0/0 0/0 .text            executeDemoMaster__8daE_OC_cFv */
void daE_OC_c::executeDemoMaster() {
    // NONMATCHING
}

extern "C" void executeDemoChild__8daE_OC_cFv();
/* 80735EC8-80735EEC -00001 0024+00 1/1 0/0 0/0 .data            @6593 */
SECTION_DATA static void* lit_6593[9] = {
    (void*)(((char*)executeDemoChild__8daE_OC_cFv) + 0x7C),
    (void*)(((char*)executeDemoChild__8daE_OC_cFv) + 0xB4),
    (void*)(((char*)executeDemoChild__8daE_OC_cFv) + 0x348),
    (void*)(((char*)executeDemoChild__8daE_OC_cFv) + 0x348),
    (void*)(((char*)executeDemoChild__8daE_OC_cFv) + 0x348),
    (void*)(((char*)executeDemoChild__8daE_OC_cFv) + 0x10C),
    (void*)(((char*)executeDemoChild__8daE_OC_cFv) + 0x198),
    (void*)(((char*)executeDemoChild__8daE_OC_cFv) + 0x24C),
    (void*)(((char*)executeDemoChild__8daE_OC_cFv) + 0x2C8),
};

/* 80732B04-80732E64 006624 0360+00 2/1 0/0 0/0 .text            executeDemoChild__8daE_OC_cFv */
void daE_OC_c::executeDemoChild() {
    // NONMATCHING
}

/* 80732E64-8073301C 006984 01B8+00 1/1 0/0 0/0 .text            checkFall__8daE_OC_cFv */
void daE_OC_c::checkFall() {
    // NONMATCHING
}

/* 8073301C-807331CC 006B3C 01B0+00 1/1 0/0 0/0 .text            executeFallDead__8daE_OC_cFv */
void daE_OC_c::executeFallDead() {
    // NONMATCHING
}

/* 807331CC-8073332C 006CEC 0160+00 1/1 0/0 0/0 .text            executeFall__8daE_OC_cFv */
void daE_OC_c::executeFall() {
    // NONMATCHING
}

/* 8073332C-807335B4 006E4C 0288+00 1/1 0/0 0/0 .text            executeFindStay__8daE_OC_cFv */
void daE_OC_c::executeFindStay() {
    // NONMATCHING
}

/* 807335B4-80733E48 0070D4 0894+00 1/1 0/0 0/0 .text            executeMoveOut__8daE_OC_cFv */
void daE_OC_c::executeMoveOut() {
    // NONMATCHING
}

/* 80733E48-80733F20 007968 00D8+00 1/1 0/0 0/0 .text            checkWaterSurface__8daE_OC_cFv */
void daE_OC_c::checkWaterSurface() {
    // NONMATCHING
}

extern "C" void action__8daE_OC_cFv();
/* 80735EEC-80735F30 -00001 0044+00 1/1 0/0 0/0 .data            @7106 */
SECTION_DATA static void* lit_7106[17] = {
    (void*)(((char*)action__8daE_OC_cFv) + 0x4A0), (void*)(((char*)action__8daE_OC_cFv) + 0x4AC),
    (void*)(((char*)action__8daE_OC_cFv) + 0x4B8), (void*)(((char*)action__8daE_OC_cFv) + 0x4C4),
    (void*)(((char*)action__8daE_OC_cFv) + 0x4D8), (void*)(((char*)action__8daE_OC_cFv) + 0x4EC),
    (void*)(((char*)action__8daE_OC_cFv) + 0x4F8), (void*)(((char*)action__8daE_OC_cFv) + 0x504),
    (void*)(((char*)action__8daE_OC_cFv) + 0x510), (void*)(((char*)action__8daE_OC_cFv) + 0x51C),
    (void*)(((char*)action__8daE_OC_cFv) + 0x528), (void*)(((char*)action__8daE_OC_cFv) + 0x534),
    (void*)(((char*)action__8daE_OC_cFv) + 0x548), (void*)(((char*)action__8daE_OC_cFv) + 0x55C),
    (void*)(((char*)action__8daE_OC_cFv) + 0x568), (void*)(((char*)action__8daE_OC_cFv) + 0x574),
    (void*)(((char*)action__8daE_OC_cFv) + 0x588),
};

/* 80733F20-807345D8 007A40 06B8+00 2/1 0/0 0/0 .text            action__8daE_OC_cFv */
void daE_OC_c::action() {
    // NONMATCHING
}

/* 807345D8-80734698 0080F8 00C0+00 1/1 0/0 0/0 .text            mtx_set__8daE_OC_cFv */
void daE_OC_c::mtx_set() {
    // NONMATCHING
}

/* 80734698-807348DC 0081B8 0244+00 1/1 0/0 0/0 .text            cc_set__8daE_OC_cFv */
void daE_OC_c::cc_set() {
    // NONMATCHING
}

/* 807348DC-80734B44 0083FC 0268+00 1/1 0/0 0/0 .text            execute__8daE_OC_cFv */
void daE_OC_c::execute() {
    // NONMATCHING
}

/* 80734B44-80734B64 008664 0020+00 2/1 0/0 0/0 .text            daE_OC_Execute__FP8daE_OC_c */
static void daE_OC_Execute(daE_OC_c* param_0) {
    // NONMATCHING
}

/* 80734B64-80734B6C 008684 0008+00 1/0 0/0 0/0 .text            daE_OC_IsDelete__FP8daE_OC_c */
static bool daE_OC_IsDelete(daE_OC_c* param_0) {
    return true;
}

/* 80734B6C-80734BF0 00868C 0084+00 1/1 0/0 0/0 .text            _delete__8daE_OC_cFv */
void daE_OC_c::_delete() {
    // NONMATCHING
}

/* 80734BF0-80734C10 008710 0020+00 1/0 0/0 0/0 .text            daE_OC_Delete__FP8daE_OC_c */
static void daE_OC_Delete(daE_OC_c* param_0) {
    // NONMATCHING
}

/* 80734C10-80734D88 008730 0178+00 1/1 0/0 0/0 .text            CreateHeap__8daE_OC_cFv */
void daE_OC_c::CreateHeap() {
    // NONMATCHING
}

/* 80734D88-80734DA8 0088A8 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
    return 0;
}

static f32 dummy_lit_6501_func() {
    return 16450.0f;
}
static f32 dummy_lit_6502_func() {
    return 3050.0f;
}
static f32 dummy_lit_6503_func() {
    return 8250.0f;
}
static f32 dummy_lit_6504_func() {
    return 16310.0f;
}
static f32 dummy_lit_6505_func() {
    return 2970.0f;
}
static f32 dummy_lit_6506_func() {
    return 7500.0f;
}
static f32 dummy_lit_6507_func() {
    return 16449.0f;
}
static f32 dummy_lit_6508_func() {
    return 3300.0f;
}
static f32 dummy_lit_6509_func() {
    return 7879.0f;
}
static f32 dummy_lit_6510_func() {
    return 2950.0f;
}
static f32 dummy_lit_6511_func() {
    return 47.0f;
}
static f32 dummy_lit_6512_func() {
    return 34.0f;
}
static f64 dummy_lit_6515_func() {
    // The following number is 2^52.
    return 4503599627370496.0;
}
static f32 dummy_lit_6590_func() {
    return 16249.0f;
}
static f32 dummy_lit_6591_func() {
    return 4000.0f;
}
static f32 dummy_lit_6592_func() {
    return 8036.0f;
}

/* 80734DA8-807352AC 0088C8 0504+00 1/1 0/0 0/0 .text            create__8daE_OC_cFv */
int daE_OC_c::create() {
    // NONMATCHING
    fopAcM_SetupActor(this, daE_OC_c);
    field_0x6b4 = fopAcM_GetParam(this) & 0xff;
    if (field_0x6b4 == 0xff) {
        field_0x6b4 = 0;
    }
    if ((fopAcM_GetParam(this) >> 8 & 0xff) == 0x1) {
        mPlayerRange = l_HIO.field_0x0c;
    } else {
        mPlayerRange = l_HIO.field_0x08;
    }
    field_0x6e0 = fopAcM_GetParam(this) >> 0x10;
    if (field_0x6e0 != 0xff && dComIfGs_isSwitch(field_0x6e0, fopAcM_GetRoomNo(this))) {
        return cPhs_ERROR_e;
    }
    field_0x6e1 = fopAcM_GetParam(this) >> 0x18;
    u8 u_var = current.angle.x;
    if (u_var == 0xff) {
        u_var = 0;
    }
    mMoveRange = 100.0f * u_var;
    u_var = current.angle.x >> 8 & 0xff;
    if (u_var == 0xff || u_var == 0) {
        field_0x6a4 = "E_OC";
    } else {
        field_0x6a4 = "E_OC2";
    }
    int phase = dComIfG_resLoad(&mPhaseReqs[0], field_0x6a4);
    if (phase == cPhs_COMPLEATE_e) {
        phase = dComIfG_resLoad(&mPhaseReqs[1], "E_ocb");
        if (phase == cPhs_COMPLEATE_e) {
            if (!fopAcM_entrySolidHeap(this, useHeapInit, 0x2e40)) {
                return cPhs_ERROR_e;
            }
            if (lbl_216_bss_58 == 0) {
                field_0xe84 = 1;
                lbl_216_bss_58 = 1;
                l_HIO.field_0x04 = -1;
            }
            attention_info.flags = 4;
            fopAcM_SetMtx(this, mpMorf->getModel()->getBaseTRMtx());
            fopAcM_SetMin(this, -200.0f, -200.0f, -200.0f);
            fopAcM_SetMax(this, 200.0f, 200.0f, 200.0f);
            mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1,
                      &mAcchCir, fopAcM_GetSpeed_p(this), NULL, NULL);
            if (0 == strcmp("D_MN05", dComIfGp_getStartStageName())
                && dComIfGp_getStartStageRoomNo() == 0xc) {
                mAcchCir.SetWallH(95.0f);
            } else {
                mAcchCir.SetWallH(70.0f);
            }
            mAcchCir.SetWallR(100.0f);
            if (field_0x6a4 == "E_OC") {
                health = 0x28;
                field_0x560 = 0x28;
            } else {
                health = 0xdc;
                field_0x560 = 0xdc;
            }
            mStts.Init(100.0f, 0, this);
            mSphs_cc[0].Set(E_OC_n::cc_sph_src);
            mSphs_cc[0].SetStts(&mStts);
            mSphs_cc[1].Set(E_OC_n::cc_sph_src);
            mSphs_cc[1].SetStts(&mStts);
            mSphs_at[0].Set(E_OC_n::at_sph_src);
            mSphs_at[0].SetStts(&mStts);
            mSphs_at[1].Set(E_OC_n::at_sph_src);
            mSphs_at[1].SetStts(&mStts);
            if (field_0x6a4 == "E_OC") {
                mSphs_at[0].SetAtAtp(1);
                mSphs_at[1].SetAtAtp(1);
                fopAcM_OnStatus(this,0x10000);
            } else {
                mSphs_at[0].SetAtAtp(2);
                mSphs_at[1].SetAtAtp(2);
            }
            mSound.init(&current.pos, &eyePos, 3, 1);
            mSound.setEnemyName("E_oc");
            mpSound = &mSound;
            field_0xe5a = 1;
            shape_angle.x = 0;
            current.angle.x = 0;
            gravity = -5.0f;
            switch (field_0x6b4) {
                case 2:
                    break;
                case 3:
                    field_0x6eb = 1;
                    setActionMode(0xb, 0);
                    break;
                case 4:
                    field_0x6eb = 1;
                    setActionMode(0xc, 0);
                    break;
                default:
                    fopAcM_OffStatus(this, 0x4000);
                    break;
            }
            daE_OC_Execute(this);
        }
    }
    return phase;
}

/* 807355C8-807355E8 0090E8 0020+00 1/0 0/0 0/0 .text            daE_OC_Create__FP8daE_OC_c */
static void daE_OC_Create(daE_OC_c* i_this) {
    i_this->create();
}

/* 80735F30-80735F50 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_OC_Method */
static actor_method_class l_daE_OC_Method = {
    (process_method_func)daE_OC_Create,
    (process_method_func)daE_OC_Delete,
    (process_method_func)daE_OC_Execute,
    (process_method_func)daE_OC_IsDelete,
    (process_method_func)daE_OC_Draw,
};

/* 80735F50-80735F80 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_OC */
extern actor_process_profile_definition g_profile_E_OC = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_OC,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daE_OC_c),       // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  201,                    // mPriority
  &l_daE_OC_Method,       // sub_method
  0x00044100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

AUDIO_INSTANCES;

/* 80735D0C-80735D0C 0001E4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
