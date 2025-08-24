/**
 * @file d_a_e_oc.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_e_oc.h"
#include "d/d_camera.h"
#include "Z2AudioLib/Z2Instances.h"
#include "d/d_com_inf_game.h"
#include "SSystem/SComponent/c_math.h"
#include "d/actor/d_a_obj_rotBridge.h"
#include "d/d_cc_uty.h"
#include "f_op/f_op_actor_enemy.h"

class daE_OC_HIO_c {
public:
    /* 8072C5CC */ daE_OC_HIO_c();
    /* 80735630 */ virtual ~daE_OC_HIO_c() {}

    /* 0x04 */ s8 field_0x04;
    /* 0x05 */ u8 field_0x05;
    /* 0x08 */ f32 field_0x08;
    /* 0x0c */ f32 field_0x0c;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1c */ f32 field_0x1c;
    /* 0x20 */ f32 field_0x20;
    /* 0x24 */ f32 field_0x24;
};

//
// Declarations:
//

/* 80735B54-80735B7C 00002C 0028+00 0/1 0/0 0/0 .rodata          oc_attackb_trans__6E_OC_n */
f32 const E_OC_n::oc_attackb_trans[10] = {
    0.0f, 0.0f, 0.0f, 0.0f, 15.3f, 
    38.4f, 63.3f, 86.2f, 103.3f, 112.0f
};

/* 80735B7C-80735BA4 000054 0028+00 0/1 0/0 0/0 .rodata          oc_attackc_trans__6E_OC_n */
f32 const E_OC_n::oc_attackc_trans[10] = {
    0.0f, 31.3f, 72.7f, 91.5f, 91.5f,
    91.5f, 91.5f, 91.5f, 91.5f, 91.5f
};

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
    if (param_1 == 0) {
        daE_OC_c* bokoblin_ptr = (daE_OC_c*) j3dSys.getModel()->getUserArea();
        if (bokoblin_ptr) {
            bokoblin_ptr->ctrlJoint(i_joint, j3dSys.getModel());
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
                case 1: {
                    f32 dist = fopAcM_searchActorDistance(actor_lhs, actor_rhs);
                    if (dist < 400.0f && dist > 200.0f) {
                        E_OC_n::m_talk_oc = actor_lhs;
                    }
                    break;
                }
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
    if (daPy_getPlayerActorClass()->getCutType() != daPy_py_c::CUT_TYPE_NONE && fopAcM_searchPlayerDistance(this) < mPlayerRange) {
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
        if (my_vec_0.abs(link_chk.GetCross()) < 100.0f) {
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
void daE_OC_c::setActionMode(int arg_1, int new_state) {
    mOldActionMode = mActionMode;
    mActionMode = arg_1;
    mOcState = new_state;
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
        if (mName == "E_OC") {
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
void daE_OC_c::setBck(int i_index, u8 i_attr, f32 i_morf, f32 i_rate) {
    J3DAnmTransform* anm = (J3DAnmTransform *) dComIfG_getObjectRes("E_ocb", i_index);
    mpMorf->setAnm(anm, i_attr, i_morf, i_rate, 0.0f, -1.0f);
}

/* 8072E31C-8072E37C 001E3C 0060+00 11/11 0/0 0/0 .text            checkBck__8daE_OC_cFi */
bool daE_OC_c::checkBck(int i_index) {
    return mpMorf->getAnm() == dComIfG_getObjectRes("E_ocb", i_index);
}

/* 8072E37C-8072E42C 001E9C 00B0+00 3/3 0/0 0/0 .text            setSpitEffect__8daE_OC_cFv */
void daE_OC_c::setSpitEffect() {
    MtxP my_mtx_p = mpMorf->getModel()->getAnmMtx(0x11);
    cXyz my_vec(my_mtx_p[0][3], my_mtx_p[1][3], my_mtx_p[2][3]);
    mParticleKey = dComIfGp_particle_set(mParticleKey, 0x837b, &my_vec, &tevStr, &shape_angle, NULL,
                                         0xff, NULL, -1, NULL, NULL, NULL);
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
        mSound.startCreatureVoice(Z2SE_EN_OC_V_WAIT, -1);
    }
}

/* 8072E5A4-8072E670 0020C4 00CC+00 1/1 0/0 0/0 .text            setWalkSound__8daE_OC_cFv */
void daE_OC_c::setWalkSound() {
    if (checkBck(0x1d)) {
        if (mpMorf->checkFrame(14.0f)) {
            mSound.startCreatureSound(Z2SE_EN_OC_FOOTNOTE_L, 0, -1);
        } else if (mpMorf->checkFrame(30.0f)) {
            mSound.startCreatureSound(Z2SE_EN_OC_FOOTNOTE_R, 0, -1);
        }
    }
}

/* 8072E670-8072E788 002190 0118+00 1/1 0/0 0/0 .text            setWalkStSound__8daE_OC_cFv */
void daE_OC_c::setWalkStSound() {
    if (checkBck(0x1e)) {
        if (mpMorf->checkFrame(0.0f)) {
            mSound.startCreatureVoice(Z2SE_EN_OC_V_WALK_ST, -1);
        } else if (mpMorf->checkFrame(1.0f)) {
            mSound.startCreatureSound(Z2SE_EN_OC_FOOTNOTE_L, 0, -1);
        } else if (mpMorf->checkFrame(9.0f)) {
            mSound.startCreatureSound(Z2SE_EN_OC_FOOTNOTE_R, 0, -1);
        }
    }
}

/* 8072E788-8072E910 0022A8 0188+00 1/1 0/0 0/0 .text            setDashSound__8daE_OC_cFv */
void daE_OC_c::setDashSound() {
    if (checkBck(0xb)) {
        if (mpMorf->checkFrame(0.0f)) {
            mSound.startCreatureVoice(Z2SE_EN_OC_V_DASH, -1);
        } else if (mpMorf->checkFrame(1.0f)) {
            mSound.startCreatureSound(Z2SE_EN_OC_FOOTNOTE_L, 0, -1);
        } else if (mpMorf->checkFrame(8.5f)) {
            mSound.startCreatureSound(Z2SE_EN_OC_FOOTNOTE_R, 0, -1);
        }
        if (mName == "E_OC") {
            mSound.startCreatureSoundLevel(Z2SE_EN_OC_CLUB_DAGGLE, 0, -1);
        } else {
            mSound.startCreatureSoundLevel(Z2SE_EN_OC_NATA_DAGGLE, 0, -1);
        }
    }
}

/* 8072E910-8072EA58 002430 0148+00 1/1 0/0 0/0 .text            setWaitStSound__8daE_OC_cFv */
void daE_OC_c::setWaitStSound() {
    if (checkBck(0x1c)) {
        if (mpMorf->checkFrame(0.0f)) {
            mSound.startCreatureVoice(Z2SE_EN_OC_V_WAIT_ST, -1);
        } else if (mpMorf->checkFrame(6.5f) || mpMorf->checkFrame(20.0f)) {
            mSound.startCreatureSound(Z2SE_EN_OC_FOOTNOTE_L, 0, -1);
        } else if (mpMorf->checkFrame(13.0f) || mpMorf->checkFrame(28.5f)) {
            mSound.startCreatureSound(Z2SE_EN_OC_FOOTNOTE_R, 0, -1);
        }
    }
}

/* 8072EA58-8072EAA4 002578 004C+00 1/1 0/0 0/0 .text            setFootNoteSound__8daE_OC_cFv */
void daE_OC_c::setFootNoteSound() {
    setWaitSound();
    setWalkSound();
    setWalkStSound();
    setDashSound();
    setWaitStSound();
}

/* 8072EAA4-8072F1A8 0025C4 0704+00 1/1 0/0 0/0 .text            executeWait__8daE_OC_cFv */
void daE_OC_c::executeWait() {
    mPrevShapeAngle = shape_angle.y;
    field_0x6de = 0;
    if (field_0x6e3 == 0) {
        if (setWatchMode() & 0xff)
            return;
        if (searchSound() & 0xff)
            return;
        if (searchPlayer2() & 0xff) {
            setActionMode(3, 1);
            return;
        }
    }
    if (field_0x6b4 == 1 && home.pos.abs(current.pos) < 100.0f
        && (s16)cLib_distanceAngleS(shape_angle.y, home.angle.y) < 0x100) {
        mIsHomeWait = 1;
    }
    switch (mOcState) {
        case 0:
            if (field_0x6b4 == 0) {
                setBck(0x1b, 2, 5.0f, 1.0f);
                mSound.startCreatureVoice(Z2SE_EN_OC_V_WAIT, -1);
            } else {
                setBck(0x18, 2, 5.0f, 1.0f);
                mSound.startCreatureVoice(Z2SE_EN_OC_V_STAND_WAIT, -1);
            }
            speedF = 0.0f;
            field_0x6bc = shape_angle.y;
            if (field_0x6b4 == 0) {
                if (cM_rnd() < 0.1f) {
                    field_0x6c0 = cM_rndF(20.0f) + 10.0f;
                    mOcState = 1;
                } else {
                    field_0x6c0 = cM_rndF(30.0f) + 50.0f;
                    mOcState = 3;
                }
            } else if (home.pos.abs(current.pos) > 100.0f) {
                field_0x6c0 = cM_rndF(30.0f) + 50.0f;
                mOcState = 3;
            } else {
                field_0x6c0 = cM_rndF(20.0f) + 10.0f;
                mOcState = 1;
            }
            break;
        case 1:
            cLib_addCalcAngleS(&shape_angle.y, field_0x6bc, 4, 0x800, 0x100);
            if (field_0x6c0 == 0) {
                setBck(0x16, 0, 5.0f, 1.0f);
                mSound.startCreatureVoice(Z2SE_EN_OC_V_SEARCH, -1);
                mOcState = 2;
            }
            break;
        case 2:
            if (searchPlayerShakeHead() & 0xff) {
                setActionMode(3, 1);
            } else {
                if (mpMorf->isStop()) {
                    setBck(0x1b, 2, 5.0f, 1.0f);
                    mSound.startCreatureVoice(Z2SE_EN_OC_V_WAIT, -1);
                    if (field_0x6b4 == 0) {
                        field_0x6c0 = cM_rndF(10.0f) + 10.0f;
                        mOcState = 3;
                    } else if (home.pos.abs(current.pos) > 100.0f) {
                        field_0x6c0 = cM_rndF(10.0f) + 10.0f;
                        mOcState = 3;
                    } else {
                        field_0x6c0 = cM_rndFX(30.0f) + 300.0f;
                        mOcState = 1;
                        field_0x6bc = home.angle.y;
                    }
                }
            }
            break;
        case 3:
            if (field_0x6c0 == 0) {
                setActionMode(1, 0);
            }
            break;
        default:
            break;
    }
}

/* 8072F1A8-8072F5E0 002CC8 0438+00 1/1 0/0 0/0 .text            executeWalk__8daE_OC_cFv */
void daE_OC_c::executeWalk() {
    mPrevShapeAngle = shape_angle.y;
    field_0x6de = 0;
    if (field_0x6e3 == 0) {
        if (setWatchMode() & 0xff)
            return;
        if (searchSound() & 0xff)
            return;
        if (searchPlayer2() & 0xff) {
            setActionMode(3, 1);
            return;
        }
    }
    switch (mOcState) {
        case 0:
            setBck(0x1d, 2, 5.0f, 1.0f);
            field_0x6c0 = cM_rndFX(50.0f) + 150.0f;
            mOcState = 1;
            if (field_0x6b4 == 0) {
                if (home.pos.abs(current.pos) >= 500.0f) {
                    field_0x6bc = cLib_targetAngleY(&current.pos, &home.pos);
                } else {
                    field_0x6bc = cM_rndFX(32768.0f);
                }
            } else {
                field_0x6bc = cLib_targetAngleY(&current.pos, &home.pos);
            }
            field_0x6be = 0;
            break;
        case 1:
            if ((field_0x6c0 & 0x7) == 0) {
                switch (checkBeforeBg()) {
                    case 1:
                        field_0x6c0 = 0;
                        field_0x6be = 0;
                        break;
                    case 2:
                        if (field_0x6be == 0) {
                            field_0x6be = 0x1000;
                        }
                        break;
                    case 3:
                        if (field_0x6be == 0) {
                            field_0x6be = -0x1000;
                        }
                        break;
                    default:
                        break;
                }
                field_0x6bc += field_0x6be;
            }
            if (field_0x6c0 == 0) {
                setActionMode(0, 0);
            } else if (field_0x6b4 == 1 && home.pos.abs(current.pos) < 100.0f) {
                setActionMode(0, 0);
            } else {
                cLib_chaseF(&speedF, 4.0f, 1.0f);
                cLib_addCalcAngleS(&shape_angle.y, field_0x6bc, 4, 0x800, 0x100);
                current.angle.y = shape_angle.y;
            }
            break;
        default:
            break;
    }
}

/* 8072F5E0-8072F914 003100 0334+00 1/1 0/0 0/0 .text            executeTalk__8daE_OC_cFv */
void daE_OC_c::executeTalk() {
    field_0x6de = 0;
    if (setWatchMode() & 0xff)
        return;
    if (searchSound() & 0xff)
        return;
    if (searchPlayer2() & 0xff) {
        setActionMode(3, 1);
        return;
    }
    switch (mOcState) {
        case 0:
            speedF = 0.0f;
            field_0x6c6 = cM_rndFX(10.0f) + 300.0f;
            field_0x6c0 = cM_rndF(30.0f);
            mOcState = 1;
            // fallthrough intentional.
        case 1: {
            if (field_0x6c0) {
                mPrevShapeAngle = shape_angle.y;
                return;
            }
            f32 rand_val = cM_rndF(1.0f);
            if (rand_val < 0.2f) {
                setBck(0x1a, 0, 5.0f, 1.0f);
                mOcState = 3;
                mSound.startCreatureVoice(Z2SE_EN_OC_V_TALK_B, -1);
            } else if (rand_val < 0.6f) {
                setBck(0x19, 2, 5.0f, 1.0f);
                mSound.startCreatureVoice(Z2SE_EN_OC_V_TALK, -1);
                mOcState = 2;
                field_0x6c0 = cM_rndF(30.0f) + 30.0f;
            } else {
                setBck(0x18, 2, 5.0f, 1.0f);
                mSound.startCreatureVoice(Z2SE_EN_OC_V_STAND_WAIT, -1);
                mOcState = 2;
                field_0x6c0 = cM_rndF(30.0f) + 30.0f;
            }
            break;
        }
        case 2:
            if (field_0x6c0 == 0) {
                mOcState = 1;
            }
            break;
        case 3:
            if (mpMorf->isStop()) {
                mOcState = 1;
            }
            break;
        case 4:
            mPrevShapeAngle = field_0x6bc;
            if (field_0x6c0) {
                return;
            }
            setActionMode(0, 0);
            field_0x6c6 = 300;
            return;
        default:
            break;
    }
    if (mpTalk == NULL || field_0x6c6 == 0) {
        mPrevShapeAngle = field_0x6bc;
        mOcState = 4;
        field_0x6c0 = cM_rndF(30.0f);
    } else {
        s16 act_angle = fopAcM_searchActorAngleY(this, mpTalk);
        mPrevShapeAngle = act_angle;
        field_0x6bc = act_angle;
        field_0x6df = 1;
    }
}

/* 8072F914-807302E8 003434 09D4+00 1/1 0/0 0/0 .text            executeFind__8daE_OC_cFv */
void daE_OC_c::executeFind() {
    s16 pl_ang = fopAcM_searchPlayerAngleY(this);
    f32 pl_dist = fopAcM_searchPlayerDistance(this);
    if (mOcState < 3 || (setWatchMode() & 0xff) == 0) {
        if (field_0x6b4 == 2 && dComIfGp_event_runCheck() == 0) {
            fopAcM_OffStatus(this,0x4000);
            field_0x6b4 = 0;
        }
        mPrevShapeAngle = pl_ang;
        switch (mOcState) {
            case 0:
            case 1:
            case 2:
                field_0x6de = 0;
                if (mOcState == 0) {
                    field_0x6c0 = 0;
                    field_0x6c2 = field_0x6c0 + 0x14;
                    if (checkBck(0x1c) == 0) {
                        setBck(0x1c, 2, 5.0f, 1.0f);
                        mSound.startCreatureVoice(Z2SE_EN_OC_V_WAIT_ST, -1);
                    }
                    field_0x6de = 1;
                } else if (mOcState == 1) {
                    if (field_0x6e2) {
                        field_0x6c0 = l_HIO.field_0x24;
                    } else {
                        field_0x6c0 = cM_rndF(10.0f) + 20.0f;
                    }
                    field_0x6e2 = 0;
                    field_0x6ca = 0x96;
                    setBck(0xd, 0, 5.0f, 1.0f);
                    mSound.startCreatureVoice(Z2SE_EN_OC_V_FIND, -1);
                } else {
                    field_0x6c0 = cM_rndF(5.0f) + 5.0f;
                    setBck(0xd, 0, 5.0f, 1.0f);
                    mSound.startCreatureVoice(Z2SE_EN_OC_V_FIND, -1);
                }
                mOcState = 3;
                speedF = 0.0f;
            case 3:
                if (field_0x6c0 == 0) {
                    if (field_0x6de || pl_dist < 400.0f) {
                        setBck(0x1e, 2, 5.0f, 1.3f);
                        field_0x6de = 1;
                        mSound.startCreatureVoice(Z2SE_EN_OC_V_WALK_ST, -1);
                    } else {
                        setBck(0xb, 2, 5.0f, 1.2f);
                        mSound.startCreatureVoice(Z2SE_EN_OC_V_DASH, -1);
                    }
                    mOcState = 4;
                    field_0x6c0 = 0x1e;
                }
                break;
            case 4:
                if (checkBeforeFloorBg(200.0f) & 0xff) {
                    if (field_0x6e3)
                        setActionMode(0x10, 0);
                    else
                        setActionMode(0xf, 0);
                } else {
                    mBattleOn = 1;
                    if ((s16)cLib_distanceAngleS(shape_angle.y, pl_ang) >= 0x400)
                        cLib_addCalcAngleS(&shape_angle.y, pl_ang, 4, 0x800, 0x100);
                    current.angle.y = shape_angle.y;
                    if (field_0x6ce) {
                        current.angle.y = field_0x6da;
                    } else {
                        if (checkBeforeBgFind() & 0xff) {
                            field_0x6ce = 0x14;
                        }
                    }
                    dEvt_control_c& evt_ctrl = dComIfGp_getEvent();
                    u8& my_status = evt_ctrl.mEventStatus;
                    if (my_status == 0) {
                        if (field_0x6c2 == 0) {
                            if (pl_dist < 300.0f)
                                cLib_chaseF(&speedF, -3.0f, 1.0f);
                            else
                                cLib_chaseF(&speedF, 20.0f, 1.0f);
                            if (pl_dist < 400.0f && pl_dist > 200.0f) {
                                if (abs(shape_angle.y - fopAcM_searchPlayerAngleY(this)) >= 0x1000)
                                    return;
                                if (my_status == 0) {
                                    setActionMode(4, 0);
                                }
                                return;
                            }
                        } else {
                            if (pl_dist < 400.0f && pl_dist > 200.0f) {
                                cLib_chaseF(&speedF, 0.0f, 1.0f);
                            } else {
                                if (pl_dist < 300.0f)
                                    cLib_chaseF(&speedF, -3.0f, 1.0f);
                                else
                                    cLib_chaseF(&speedF, 20.0f, 1.0f);
                            }
                            if (speedF < 0.0f) {
                                if (checkBck(0x1c) == 0 || mpMorf->getPlaySpeed() != 1.0f) {
                                    setBck(0x1c, 2, 5.0f, 1.0f);
                                    mSound.startCreatureVoice(Z2SE_EN_OC_V_WAIT_ST, -1);
                                }
                            } else if (!speedF && (s16)cLib_distanceAngleS(shape_angle.y, pl_ang) < 0x1000) {
                                if (checkBck(0x1c) == 0) {
                                    setBck(0x1c, 2, 5.0f, 1.0f);
                                    mSound.startCreatureVoice(Z2SE_EN_OC_V_WAIT_ST, -1);
                                }
                            } else {
                                if (checkBck(0x1e) == 0 || mpMorf->getPlaySpeed() != 1.3f) {
                                    setBck(0x1e, 2, 5.0f, 1.3f);
                                    mSound.startCreatureVoice(Z2SE_EN_OC_V_WALK_ST, -1);
                                }
                            }
                        }
                    } else {
                        field_0x6c2 = 0x14;
                        if (mAcch.ChkWallHit()) {
                            field_0x6c4 = 5;
                        }
                        if (pl_dist < 400.0f && field_0x6c4 == 0) {
                            cLib_chaseF(&speedF, -15.0f, 1.0f);
                        } else {
                            cLib_chaseF(&speedF, 0.0f, 1.0f);
                        }
                        if (speedF < 0.0f) {
                            if (checkBck(0x1e) == 0 || mpMorf->getPlaySpeed() != -1.0f) {
                                setBck(0x1e, 2, 5.0f, -1.0f);
                                mSound.startCreatureVoice(Z2SE_EN_OC_V_WALK_ST, -1);
                            }
                        } else if (!speedF && (s16)cLib_distanceAngleS(shape_angle.y, pl_ang) < 0x1000) {
                            if (checkBck(0x1c) == 0) {
                                setBck(0x1c, 2, 5.0f, 1.0f);
                                mSound.startCreatureVoice(Z2SE_EN_OC_V_WAIT_ST, -1);
                            }
                        } else {
                            if (checkBck(0x1e) == 0 || mpMorf->getPlaySpeed() != 1.3f) {
                                setBck(0x1e, 2, 5.0f, 1.3f);
                                mSound.startCreatureVoice(Z2SE_EN_OC_V_WALK_ST, -1);
                            }
                        }
                        if (0 == strcmp("D_MN05", dComIfGp_getStartStageName())
                            && dComIfGp_getStartStageRoomNo() == 0x16) {
                            fopAc_ac_c* actors[2];
                            fopAcM_SearchByName(0x60, actors);
                            if (actors[0]) {
                                cXyz& ref = actors[0]->current.pos;
                                field_0x67c = ref;
                                field_0x67c.y += 100.0f;
                                mPrevShapeAngle = cLib_targetAngleY(&current.pos, &field_0x67c);
                            }
                        }
                    }
                    if (field_0x6c0 == 0) {
                        if ((searchPlayer2() & 0xff) == 0) {
                            setActionMode(0, 0);
                        } else if (field_0x6e3) {
                            setActionMode(0x10, 0);
                        }
                    }
                }
                break;
            case 5:
                setBck(0x16, 0, 5.0f, 1.0f);
                mSound.startCreatureVoice(Z2SE_EN_OC_V_SEARCH, -1);
                mOcState = 6;
                field_0x6de = 0;
                // fallthrough intentional.
            case 6:
                mBattleOn = 1;
                mPrevShapeAngle = shape_angle.y;
                if (mpMorf->isStop()) {
                    mOcState = 0;
                }
                if (pl_dist < 500.0f) {
                    mOcState = 0;
                }
                if (mpMorf->getFrame() >= 20.0f && searchPlayerShakeHead() & 0xff) {
                    mOcState = 0;
                }
                break;
            default:
                break;
        }
    }
}

/* 807302E8-807305C0 003E08 02D8+00 1/1 0/0 0/0 .text            setWeaponGroundAngle__8daE_OC_cFv
 */
void daE_OC_c::setWeaponGroundAngle() {
    s16 my_val = 0;
    if (checkBck(5) && mpMorf->getFrame() >= 30.0f && mpMorf->getFrame() <= 45.0f) {
        dBgS_GndChk gnd_chk;
        cXyz my_vec_0;
        cXyz my_vec_1;
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(0xc));
        mDoMtx_stack_c::multVecZero(&my_vec_0);
        my_vec_0.y += 100.0f;
        mDoMtx_stack_c::transM(0.0f,0.0f,100.0f);
        mDoMtx_stack_c::multVecZero(&my_vec_1);
        my_vec_1.y += 100.0f;
        gnd_chk.SetPos(&my_vec_0);
        my_vec_0.y = dComIfG_Bgsp().GroundCross(&gnd_chk);
        if (my_vec_0.y != -1e+09f) {
            gnd_chk.SetPos(&my_vec_1);
            my_vec_1.y = dComIfG_Bgsp().GroundCross(&gnd_chk);
            if (my_vec_1.y != -1e+09f) {
                f32 my_float = my_vec_0.absXZ(my_vec_1);
                my_val = (s16) -cM_atan2s(my_vec_1.y - my_vec_0.y, my_float);
                if (my_val < -0x2000) {
                    my_val = -0x2000;
                }
                if (my_val > 0x2000) {
                    my_val = 0x2000;
                }
            }
        }
    }
    cLib_addCalcAngleS(&field_0x6d0, my_val, 4, 0x1000, 0x100);
}

/* 807305C0-80730DC0 0040E0 0800+00 1/1 0/0 0/0 .text            executeAttack__8daE_OC_cFv */
void daE_OC_c::executeAttack() {
    f32 my_float = 0.0f;
    int frame_ctrl = (mpMorf->getFrame() - 9.0f);
    if (frame_ctrl >= 0) {
        if (frame_ctrl >= 9) {
            frame_ctrl = 9;
        }
        if (checkBck(5)) {
            my_float = E_OC_n::oc_attackb_trans[frame_ctrl];
        } else {
            my_float = E_OC_n::oc_attackc_trans[frame_ctrl];
        }
    }
    mBattleOn = 1;
    mPrevShapeAngle = shape_angle.y;
    switch (mOcState) {
        case 0:
            if (cLib_chaseF(&speedF, 0.0f, 1.0f)) {
                if (cM_rndF(1.0f) < 0.5f) {
                    setBck(5, 0, 5.0f, 1.0f);
                    mSound.startCreatureVoice(Z2SE_EN_OC_V_ATTACK_B, -1);
                    mOcState = 1;
                } else {
                    setBck(6, 0, 5.0f, 1.0f);
                    mSound.startCreatureVoice(Z2SE_EN_OC_V_ATTACK_C, -1);
                    mOcState = 2;
                }
                field_0x6a0 = 0.0f;
            }
            break;
        case 2: {
            MtxP my_mtx_p = mpMorf->getModel()->getAnmMtx(0);
            cXyz my_vec_0(my_mtx_p[0][3], my_mtx_p[1][3], my_mtx_p[2][3]);
            mParticleKey = dComIfGp_particle_set(mParticleKey, 0x8379, &my_vec_0, &tevStr,
                                                 &shape_angle, NULL, 0xff, NULL, -1,
                                                 NULL, NULL, NULL);
            field_0xe6c = dComIfGp_particle_set(field_0xe6c, 0x837a, &my_vec_0, &tevStr,
                                                 &shape_angle, NULL, 0xff, NULL, -1,
                                                 NULL, NULL, NULL);
        }
        case 1: {
            if (mOcState == 1) {
                if (mpMorf->checkFrame(10.0f)) {
                    mSound.startCreatureVoice(Z2SE_EN_OC_V_ATTACK_B2, -1);
                } else if (mpMorf->checkFrame(12.5f)) {
                    mSound.startCreatureSound(Z2SE_EN_OC_ATTACK_B, 0, -1);
                } else if (mpMorf->checkFrame(19.0f)) {
                    if (mName == "E_OC") {
                        mSound.startCreatureSound(Z2SE_EN_OC_CLUB_HIT, 0, -1);
                    } else {
                        mSound.startCreatureSound(Z2SE_EN_OC_NATA_HIT, 0, -1);
                    }
                }
            } else {
                if (mpMorf->checkFrame(7.0f)) {
                    mSound.startCreatureVoice(Z2SE_EN_OC_V_ATTACK_C2, -1);
                } else if (mpMorf->checkFrame(11.5f)) {
                    mSound.startCreatureSound(Z2SE_EN_OC_ATTACK_C, 0, -1);
                }
            }
            if (mpMorf->getFrame() >= 14.0f && mpMorf->getFrame() <= 22.0f) {
                mSphs_at[0].OnAtSetBit();
                mSphs_at[1].OnAtSetBit();
            }
            if (mpMorf->getFrame() >= 22.0f) {
                mPrevShapeAngle = fopAcM_searchPlayerAngleY(this);
            }
            u8 my_bool = 0;
            if (mSphs_at[0].ChkAtHit()) {
                fopAc_ac_c* hit_actor = dCc_GetAc(mSphs_at[0].GetAtHitObj()->GetAc());
                if (fopAcM_GetName(hit_actor) == 0xfd) {
                    my_bool = 1;
                }
            }
            if (mSphs_at[1].ChkAtHit()) {
                fopAc_ac_c* hit_actor = dCc_GetAc(mSphs_at[1].GetAtHitObj()->GetAc());
                if (fopAcM_GetName(hit_actor) == 0xfd) {
                    my_bool = 1;
                }
            }
            if (my_bool && daPy_getPlayerActorClass()->checkPlayerGuard()) {
                mpMorf->setPlaySpeed(-1.0);
                mOcState = 3;
                dComIfGp_getVibration().StartShock(3, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
            }
            current.pos.x += (my_float - field_0x6a0) * cM_ssin(shape_angle.y);
            current.pos.z += (my_float - field_0x6a0) * cM_scos(shape_angle.y);
            field_0x6a0 = my_float;
            if (mpMorf->isStop()) {
                setBck(0x1c, 2, 0.0f, 1.0f);
                mSound.startCreatureVoice(Z2SE_EN_OC_V_WAIT_ST, -1);
                if (field_0x6e3) {
                    setActionMode(0x10, 0);
                } else {
                    if (field_0x6ca && fopAcM_searchPlayerDistance(this) < 500.0f) {
                        mOcState = 0;
                    } else {
                        setActionMode(3, 0);
                    }
                }
            }
            break;
        }
        case 3:
            current.pos.x += (my_float - field_0x6a0) * cM_ssin(shape_angle.y);
            current.pos.z += (my_float - field_0x6a0) * cM_scos(shape_angle.y);
            field_0x6a0 = my_float;
            if (mpMorf->isStop()) {
                setBck(0x1c, 2, 5.0f, 1.0f);
                mSound.startCreatureVoice(Z2SE_EN_OC_V_WAIT_ST, -1);
                if (field_0x6e3) {
                    setActionMode(0x10, 0);
                } else {
                    if (field_0x6ca && fopAcM_searchPlayerDistance(this) < 500.0f) {
                        if (abs(shape_angle.y - fopAcM_searchPlayerAngleY(this)) < 0x1000) {
                            mOcState = 0;
                            break;
                        }
                    }
                    setActionMode(3, 0);
                }
            }
            break;
        default:
            break;
    }
    current.angle.y = shape_angle.y;
}

/* 80730DC0-80731124 0048E0 0364+00 2/1 0/0 0/0 .text            executeDamage__8daE_OC_cFv */
void daE_OC_c::executeDamage() {
    mBattleOn = 1;
    mPrevShapeAngle = shape_angle.y;
    switch (mOcState) {
        case 0:
            speedF = 0.0f;
            setBck(0x9, 0, 0.0f, 1.0f);
            mSound.startCreatureVoice(Z2SE_EN_OC_V_DAMAGE_LR, -1);
            mOcState = 5;
            break;
        case 1:
            speedF = 0.0f;
            setBck(0xa, 0, 0.0f, 1.0f);
            mSound.startCreatureVoice(Z2SE_EN_OC_V_DAMAGE_LR, -1);
            mOcState = 5;
            break;
        case 2:
            speedF = 0.0f;
            setBck(0x8, 0, 0.0f, 1.0f);
            mSound.startCreatureVoice(Z2SE_EN_OC_V_DAMAGE_LR, -1);
            mOcState = 5;
            break;
        case 3: {
            setBck(0x8, 0, 0.0f, 1.0f);
            mSound.startCreatureVoice(Z2SE_EN_OC_V_DAMAGE, -1);
            mOcState = 5;
            s16 half_val = cLib_distanceAngleS(shape_angle.y, fopAcM_searchPlayerAngleY(this));
            if (half_val < 0x4000) {
                speedF = -20.0f;
            } else {
                speedF = 20.0f;
            }
            onHeadLockFlg();
            break;
        }
        case 4:
            setBck(0xf, 0, 0.0f, 1.0f);
            mSound.startCreatureVoice(Z2SE_EN_OC_V_GALE, -1);
            mOcState = 6;
            speedF = 0.0f;
            break;
        case 5:
            setSpitEffect();
            cLib_chaseF(&speedF, 0.0f, 3.0f);
            if (speedF) {
                fopAcM_effSmokeSet1(&field_0xe60, &field_0xe64, &current.pos, NULL, 2.0f, &tevStr, 0);
            }
            if (mpMorf->isStop()) {
                if (daPy_getPlayerActorClass()->getCutType() != 5) {
                    offHeadLockFlg();
                    if (field_0x6e3) {
                        setActionMode(0x10, 0);
                    } else {
                        setActionMode(3, 0);
                    }
                }
            }
            break;
        case 6:
            setSpitEffect();
            if (mpMorf->isStop()) {
                if (field_0x6e3) {
                    setActionMode(0x10, 0);
                } else {
                    setActionMode(3, 0);
                }
            }
            break;
        default:
            break;
    }
}

/* 80731124-807316F8 004C44 05D4+00 1/1 0/0 0/0 .text            executeBigDamage__8daE_OC_cFv */
void daE_OC_c::executeBigDamage() {
    mBattleOn = 1;
    mPrevShapeAngle = shape_angle.y;
    switch (mOcState) {
        case 0:
        case 1:
        case 2:
            if (mOcState) {
                field_0x6dc = 1;
                setBck(0x15, 0, 0.0f, 1.0f);
                if (mOcState == 1) {
                    field_0x6bc = 0x1f60;
                } else {
                    field_0x6bc = -0x1f60;
                }
                if (health < 1) {
                    mSound.startCreatureVoice(Z2SE_EN_OC_V_DEATH, -1);
                } else {
                    mSound.startCreatureVoice(Z2SE_EN_OC_V_LEAP_SPIN, -1);
                }
            } else {
                field_0x6dc = 0;
                setBck(0x13, 0, 0.0f, 1.0f);
                field_0x6bc = 0;
                if (health < 1) {
                    mSound.startCreatureVoice(Z2SE_EN_OC_V_DEATH, -1);
                } else {
                    mSound.startCreatureVoice(Z2SE_EN_OC_V_LEAP_A, -1);
                }
            }
            offTgSph();
            mOcState = 3;
            speed.y = 40.0f;
            speedF = 20.0f;
            current.angle.y = field_0xe4a + 0x8000;
            shape_angle.y = field_0xe4a;
            field_0x6be = 0;
            break;
        case 3:
            if (field_0x6dc == 0) {
                setSpitEffect();
            } else if (field_0x6c2) {
                setSpitEffect();
            } else {
                field_0x6c2 = 5;
            }
            checkDamageBg();
            if (field_0x6bc) {
                field_0x6d8 += field_0x6bc;
                cLib_chaseAngleS(&field_0x6bc, 0, 0x100);
                cLib_chaseAngleS(&shape_angle.x, -0x4000, 0x400);
            }
            if (mAcch.ChkWallHit()) {
                speedF = 0.0f;
            }
            if (mAcch.ChkGroundHit()) {
                field_0x6d8 = 0;
                shape_angle.x = 0;
                setBck(0x14, 0, 0.0f, 1.0f);
                mSound.startCreatureSound(Z2SE_CM_BODYFALL_M, 0, -1);
                if (field_0x6dc) {
                    mpMorf->setFrame(5.0f);
                    mSound.startCreatureSound(Z2SE_EN_OC_LEAP_B, 0, -1);
                }
                mOcState = 4;
                fopAcM_effSmokeSet1(&field_0xe60, &field_0xe64, &current.pos, NULL, 2.0f, &tevStr, 1);
            }
            break;
        case 4:
            setGroundAngle();
            if (mpMorf->checkFrame(15.0f)) {
                mSound.startCreatureSound(Z2SE_CM_BODYFALL_M, 0, -1);
            }
            if (field_0x6dc == 0 && mpMorf->checkFrame(5.0f)) {
                mSound.startCreatureSound(Z2SE_EN_OC_LEAP_B, 0, -1);
            }
            checkDamageBg();
            if (mAcch.ChkWallHit()) {
                speedF = 0.0f;
            }
            cLib_chaseF(&speedF, 0.0f, 1.0f);
            if (mpMorf->isStop()) {
                if (health < 1) {
                    setActionMode(9, 0);
                    offTgSph();
                } else {
                    mOcState = 5;
                    onDownFlg();
                    setStabPos();
                    field_0x6c0 = cM_rndFX(10.0f) + 45.0f;
                }
            }
            break;
        case 5:
            setGroundAngle();
            checkDamageBg();
            setStabPos();
            cLib_chaseF(&speedF, 0.0f, 1.0f);
            mSphs_cc[0].OnCoSetBit();
            mSphs_cc[1].OnCoSetBit();
            if (daPy_getPlayerActorClass()->getCutType() == 0x27) {
                mSphs_cc[0].OffCoSetBit();
                mSphs_cc[1].OffCoSetBit();
                mStts.ClrCcMove();
                field_0x6c0 = 0x1e;
            }
            if (field_0x6c0 == 0) {
                setBck(0x17, 0, 5.0f, 1.0f);
                mSound.startCreatureVoice(Z2SE_EN_OC_V_STAND, -1);
                mOcState = 6;
                offDownFlg();
            }
            break;
        case 6:
            cLib_chaseAngleS(&field_0x688.x, 0, 0x400);
            cLib_chaseAngleS(&field_0x688.z, 0, 0x400);
            if (mpMorf->isStop()) {
                setActionMode(3, 5);
            }
        default:
            break;
    }
}

/* 807316F8-807319E4 005218 02EC+00 1/1 0/0 0/0 .text            executeWatch__8daE_OC_cFv */
void daE_OC_c::executeWatch() {
    mPrevShapeAngle = shape_angle.y;
    switch (mOcState) {
        case 0:
            speedF = 0.0f;
            if (field_0x6de) {
                setBck(0x1c, 2, 5.0f, 1.0f);
                mSound.startCreatureVoice(Z2SE_EN_OC_V_WAIT_ST, -1);
            } else {
                setBck(0x1b, 2, 5.0f, 1.0f);
                mSound.startCreatureVoice(Z2SE_EN_OC_V_WAIT, -1);
            }
            field_0x6c0 = (s8) (cM_rndFX(15.0f) + 35.0f);
            mOcState = 1;
        case 1:
            if (mpDamage && fopAcM_IsActor(mpDamage)) {
                mPrevShapeAngle = fopAcM_searchActorAngleY(this, mpDamage);
            }
            if (field_0x6c0 == 0) {
                setActionMode(3, 2);
            }
            break;
        case 2:
            speedF = 0.0f;
            if (field_0x6de) {
                setBck(0x1c, 2, 5.0f, 1.0f);
                mSound.startCreatureVoice(Z2SE_EN_OC_V_WAIT_ST, -1);
            } else {
                setBck(0x1b, 2, 5.0f, 1.0f);
                mSound.startCreatureVoice(Z2SE_EN_OC_V_WAIT, -1);
            }
            field_0x6c0 = (s8) (cM_rndFX(15.0f) + 35.0f);
            mOcState = 3;
        case 3:
            mPrevShapeAngle = cLib_targetAngleY(&current.pos, &field_0x67c);
            if (field_0x6c0 == 0) {
                mOcState = 4;
                setBck(7, 0, 5.0f, 1.0f);
                mSound.startCreatureVoice(Z2SE_EN_OC_V_CRY, -1);
            }
            break;
        case 4:
            mPrevShapeAngle = fopAcM_searchPlayerAngleY(this);
            if (mpMorf->isStop()) {
                setActionMode(3, 2);
            }
            break;
        default:
            break;
    }
}

/* 807319E4-80731D18 005504 0334+00 1/1 0/0 0/0 .text            executeSoundWatch__8daE_OC_cFv */
void daE_OC_c::executeSoundWatch() {
    s16 tgt_angle = cLib_targetAngleY(&current.pos, &field_0x67c);
    mPrevShapeAngle = tgt_angle;
    field_0x6bc = tgt_angle;
    if (mOcState == 2) {
        field_0x6de = 0;
        if (setWatchMode() & 0xff) {
            return;
        }
        if (searchPlayer2() & 0xff) {
            setActionMode(3, 3);
            return;
        }
    }
    switch (mOcState) {
        case 0:
            speedF = 0.0f;
            setBck(0xd, 0, 5.0f, 1.0f);
            mSound.startCreatureVoice(Z2SE_EN_OC_V_FIND, -1);
            field_0x6c0 = cM_rndF(30.0f) + 60.0f;
            mOcState = 1;
        case 1:
            if (field_0x6c0 == 0) {
                setBck(0xb, 2, 5.0f, 1.2f);
                mSound.startCreatureVoice(Z2SE_EN_OC_V_DASH, -1);
                mOcState = 2;
                field_0x6c0 = 0x3c;
            }
            break;
        case 2:
            cLib_chaseF(&speedF, 20.0f, 1.0f);
            cLib_addCalcAngleS(&shape_angle.y, field_0x6bc, 4, 0x800, 0x100);
            current.angle.y = shape_angle.y;
            if (current.pos.abs(field_0x67c) < 300.0f || field_0x6c0 == 0) {
                setBck(0x16, 0, 5.0f, 1.0f);
                mOcState = 3;
                speedF = 0.0f;
            }
            break;
        case 3:
            if (mpMorf->isStop()) {
                setActionMode(0, 0);
            }
            break;
        default:
            break;
    }
}

/* 80731D18-80731D4C 005838 0034+00 1/1 0/0 0/0 .text            checkBeforeDeath__8daE_OC_cFv */
int daE_OC_c::checkBeforeDeath() {
    if (mActionMode == 9 && mOcState >= 2 && field_0x6c0 < 2) {
        return 1;
    }
    return 0;
}

/* 80731D4C-80731F5C 00586C 0210+00 1/1 0/0 0/0 .text            executeDeath__8daE_OC_cFv */
void daE_OC_c::executeDeath() {
    mBattleOn = 1;
    mPrevShapeAngle = shape_angle.y;
    switch (mOcState) {
        case 0:
        case 1:
            field_0x6e8 = 1;
            offTgSph();
            if (mOcState == 0) {
                mOcState = 2;
                field_0x6c0 = 0x1e;
            } else {
                field_0x6c0 = 0x2d;
                setBck(0xe, 0, 0.0f, 1.0f);
                mSound.startCreatureVoice(Z2SE_EN_OC_V_FINISH, -1);
                mOcState = 3;
                offDownFlg();
            }
            break;
        case 3:
            setSpitEffect();
            if (mpMorf->checkFrame(28.5f)) {
                mSound.startCreatureSound(Z2SE_CM_BODYFALL_S, 0, -1);
            }
        case 2:
            cLib_chaseF(&speedF, 0.0f, 1.0f);
            if (field_0x6c0 == 0) {
                if (mName == "E_OC") {
                    fopAcM_createDisappear(this, &current.pos, 10, 0, 4);
                } else {
                    fopAcM_createDisappear(this, &current.pos, 10, 0, 0x34);
                }
                fopAcM_delete(this);
                if (field_0x6e0 != 0xff && dComIfGs_isSwitch(field_0x6e0, fopAcM_GetRoomNo(this)) == 0) {
                    dComIfGs_onSwitch(field_0x6e0, fopAcM_GetRoomNo(this));
                }
            }
            break;
        default:
            break;
    }
    if (field_0x6e8) {
        cLib_addCalc2(&field_0x6e4, -20.0f, 1.0f, 0.4f);
    }
}

/* 80731F5C-80732074 005A7C 0118+00 1/1 0/0 0/0 .text            setWaterEffect__8daE_OC_cFv */
void daE_OC_c::setWaterEffect() {
    cXyz my_vec_0(current.pos.x, mWaterLvl, current.pos.z);
    static cXyz sc(1.0f, 1.0f, 1.0f);
    static u16 w_eff_id[4] = {
        0x01B8, 0x01B9, 0x01BA, 0x01BB,
    };
    for (int idx = 0; idx < 4; ++idx) {
        field_0xe70[idx] = dComIfGp_particle_set(field_0xe70[idx], w_eff_id[idx], &my_vec_0,
                                                 &tevStr, NULL, &sc, 0xff, NULL,
                                                 -1, NULL, NULL, NULL);
    }
}

/* 80732074-807323A4 005B94 0330+00 1/1 0/0 0/0 .text            executeWaterDeath__8daE_OC_cFv */
void daE_OC_c::executeWaterDeath() {
    switch (mOcState) {
        case 0:
            setBck(0xC, 0, 0.0f, 1.0f);
            mSound.startCreatureVoice(Z2SE_EN_OC_V_DROWNED, -1);
            mSound.startCreatureSound(Z2SE_EN_OC_DROWNED, 0, -1);
            current.pos.y += 140.0f;
            mOcState = 1;
            speedF = 0.0f;
            gravity = 0.0f;
            setWaterEffect();
            mSound.startCreatureSound(Z2SE_CM_BODYFALL_WATER_M, 0, -1);
            offTgSph();
            break;
        case 1:
            cLib_chaseF(&speed.y, 5.0f, 3.0f);
            cLib_chaseAngleS(&shape_angle.x, 0, 0x800);

            if (mpMorf->checkFrame(24.0f) ||
                mpMorf->checkFrame(37.0f) ||
                mpMorf->checkFrame(49.0f)) {
                setWaterEffect();
            }

            if (speed.y > 0.0f && current.pos.y > mWaterLvl) {
                current.pos.y = mWaterLvl;
                mOcState = 2;
                speed.y = 0.0f;
            }
            break;
        case 2:
            if (mpMorf->checkFrame(24.0f) ||
                mpMorf->checkFrame(37.0f) ||
                mpMorf->checkFrame(49.0f)) {
                setWaterEffect();
            }
            if (mpMorf->isStop()) {
                if (mName == "E_OC") {
                    fopAcM_createDisappear(this, &current.pos, 10, 0, 4);
                } else {
                    fopAcM_createDisappear(this, &current.pos, 10, 0, 0x34);
                }
                fopAcM_delete(this);

                if (field_0x6e0 != 0xFF && !dComIfGs_isSwitch(field_0x6e0, fopAcM_GetRoomNo(this))) {
                    dComIfGs_onSwitch(field_0x6e0, fopAcM_GetRoomNo(this));
                }
            }
            break;
        default:
            break;
    }
    
    if (current.pos.y - 140.0f < mWaterLvl && mWaterLvl < current.pos.y + 50.0f) {
        cXyz hamon_pos(current.pos.x, mWaterLvl, current.pos.z);
        fopAcM_effHamonSet(&mRippleKey, &hamon_pos, 1.0f, 1.0f);
    }
}

/* 807323A4-80732B04 005EC4 0760+00 2/1 0/0 0/0 .text            executeDemoMaster__8daE_OC_cFv */
void daE_OC_c::executeDemoMaster() {
    cXyz my_vec_0(-4264.0f, 302.0f, -2330.0f);
    cXyz my_vec_1(16200.0f, 2850.0f, 7000.0f);
    my_vec_1 += my_vec_0;
    mPrevShapeAngle = shape_angle.y;
    camera_class* p_camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    switch (mOcState) {
        case 0: {
            field_0x6eb = 0;
            mOcState = 1;
            field_0x6f8.set(16300.0f, 3700.0f, 8400.0f);
            field_0x6f8 += my_vec_0;
            mPlayerPos.set(16325.0f, 2858.0f, 6597.0f);
            mPlayerPos += my_vec_0;
            field_0x704 = 55.0f;
            field_0x6bc = 0x5000;
            daPy_py_c *player = daPy_getPlayerActorClass();
            player->setPlayerPosAndAngle(&my_vec_1, field_0x6bc, 0);
            p_camera->mCamera.SetTrimSize(3);
            s16 angle = fopAcM_searchPlayerAngleY(this);
            current.angle.y = angle;
            shape_angle.y = angle;
            return;
        }
        case 1:
            mSound.startCreatureVoice(Z2SE_EN_OC_V_SAKEBU, -1);
            setBck(7, 0, 5.0f, 1.0f);
            mOcState = 2;
            field_0x6c0 = 15;
            break;
        case 2:
            if (field_0x6c0 == 0) {
                daPy_getPlayerActorClass()->changeOriginalDemo();
                daPy_getPlayerActorClass()->changeDemoMode(0x19, 0, 0, 0);
                mOcState = 4;
            }
            break;
        case 4:
        case 5:
            cLib_addCalc2(&field_0x704, 13.0f, 0.2f, 2.0f);
            if (mOcState == 4) {
                if (mpMorf->isStop()) {
                    setBck(4, 0, 5.0f, 1.0f);
                    mSound.startCreatureVoice(Z2SE_EN_OC_V_ANGRY_B, -1);
                    mOcState = 5;
                }
            } else {
                if (mpMorf->checkFrame(9.0f)) {
                    mSound.startCreatureSound(Z2SE_EN_OC_ATTACK_C, 0, -1);
                }
                s16 angle = fopAcM_searchPlayerAngleY(this);
                cLib_chaseAngleS(&field_0x6bc, angle + 0x8000, 0x200);
                if (mpMorf->isStop()) {
                    mOcState = 6;
                    setBck(0x10, 0, 5.0f, 1.0f);
                    mSound.startCreatureVoice(Z2SE_EN_OC_V_JUMP, -1);
                    speedF = 10.0f;
                    speed.y = 40.0f;
                    field_0x6c0 = 0x28;
                    daPy_getPlayerActorClass()->changeDemoMode(1, 0, 0, 0);
                    daPy_getPlayerActorClass()->cancelOriginalDemo();
                }
            }
            break;
        case 6:
            if (field_0x6c0 > 20) {
                cLib_addCalc2(&field_0x6f8.y, current.pos.y + 100.0f, 0.2f, 10.0f);
            }
            if (mpMorf->isStop()) {
                setBck(0x11, 0, 5.0f, 1.0f);
            }
            if (field_0x6c0 == 0) {
                mOcState = 7;
                field_0x6f8.set(16450.0f, 3050.0f, 8250.0f);
                field_0x6f8 += my_vec_0;
                mPlayerPos.set(16310.0f, 2970.0f, 7500.0f);
                mPlayerPos += my_vec_0;
                field_0x704 = 37.0f;
                current.pos.set(16449.0f, 3300.0f, 7879.0f);
                current.pos += my_vec_0;
                s16 angle = fopAcM_searchPlayerAngleY(this);
                current.angle.y = angle;
                shape_angle.y = angle;
                speedF = 0.0f;
                field_0x6c0 = 10;
            }
            break;
        case 7:
            if (field_0x6c0 == 0) {
                cLib_addCalc2(&field_0x6f8.y, my_vec_0.y + 2950.0f, 0.1f, 10.0f);
            }
            if (mAcch.ChkGroundHit()) {
                mSound.startCreatureSound(Z2SE_CM_BODYFALL_S, 0, -1);
                fopAcM_effSmokeSet1(&field_0xe60, &field_0xe64, &current.pos, NULL, 2.0f, &tevStr, 1);
                setBck(0x12, 0, 5.0f, 1.0f);
                mOcState = 8;
            }
            break;
        case 8:
            field_0x704 = 47.0f;
            cLib_addCalc2(&field_0x6f8.y, my_vec_0.y + 2950.0f, 0.1f, 10.0f);
            if (mpMorf->checkFrame(34.0f)) {
                mSound.startCreatureVoice(Z2SE_EN_OC_V_FIND, -1);
            }
            if (mpMorf->isStop()) {
                field_0x6c8 = 30;
                setActionMode(3, 0);
                Z2GetAudioMgr()->setBattleSeqState(2);
                Z2GetAudioMgr()->unMuteSceneBgm(1);
                return;
            }
            break;
        default:
            break;
    }
    if (mOcState) {
        daPy_py_c *player = daPy_getPlayerActorClass();
        player->setPlayerPosAndAngle(&my_vec_1, field_0x6bc, 0);
        p_camera->mCamera.Set(field_0x6f8, mPlayerPos, field_0x704, 0);
    }
}

/* 80732B04-80732E64 006624 0360+00 2/1 0/0 0/0 .text            executeDemoChild__8daE_OC_cFv */
void daE_OC_c::executeDemoChild() {
    cXyz local_18(-4264.0f, 302.0f, -2330.0f);
    mPrevShapeAngle = shape_angle.y;
    fopAcM_SearchByID(fopAcM_GetLinkId(this), (fopAc_ac_c**)&mpParent);
    if (mpParent) {
        switch (mOcState) {
            case 0:
                if (mpParent->mOcState == 1) {
                    field_0x6eb = 0;
                    setBck(0x1C, 2, 5.0f, 1.0f);
                    mOcState = 1;
                }
                break;
            case 1:
                if (mpParent->mOcState == 5) {
                    setBck(3, 0, 5.0f, 1.0f);
                    mSound.startCreatureVoice(Z2SE_EN_OC_V_ANGRY_A, -1);
                    mOcState = 5;
                }
                break;
            case 5:
                if (mpMorf->isStop()) {
                    setBck(0x10, 0, 5.0f, 1.0f);
                    mSound.startCreatureVoice(Z2SE_EN_OC_V_JUMP, -1);
                    mOcState = 6;
                    speedF = 10.0f;
                    speed.y = 40.0f;
                }
                break;
            case 6:
                if (mpMorf->isStop()) {
                    setBck(0x11, 0, 5.0f, 1.0f);
                }
                if (mpParent->mOcState == 7) {
                    current.pos.set(16249.0f, 4000.0f, 8036.0f);
                    current.pos += local_18;
                    s16 angle = fopAcM_searchPlayerAngleY(this);
                    current.angle.y = angle;
                    shape_angle.y = angle;
                    speed.y = 0.0f;
                    speedF = 0.0f;
                    mOcState = 7;
                }
                break;
            case 7:
                if (mAcch.ChkGroundHit()) {
                    mSound.startCreatureSound(Z2SE_CM_BODYFALL_S, 0, -1);
                    fopAcM_effSmokeSet1(&field_0xe60, &field_0xe64, &current.pos, NULL, 2.0f, &tevStr, 1);
                    setBck(0x12, 0, 5.0f, 1.0f);
                    mOcState = 8;
                }
                break;
            case 8:
                if (mpMorf->checkFrame(34.0f)) {
                    mSound.startCreatureVoice(Z2SE_EN_OC_V_FIND, -1);
                }
                if (mpMorf->isStop()) {
                    setActionMode(3, 0);
                }
                break;
            default:
                break;
        }
    }
}

/* 80732E64-8073301C 006984 01B8+00 1/1 0/0 0/0 .text            checkFall__8daE_OC_cFv */
void daE_OC_c::checkFall() {
    dBgS_GndChk gnd_chk;
    cXyz gnd_pos = current.pos;
    gnd_pos.y += 100.0f;
    gnd_chk.SetPos(&gnd_pos);
    f32 groundY = dComIfG_Bgsp().GroundCross(&gnd_chk);
    if (mAcch.ChkGroundHit()) {
        field_0x69c = groundY;
        return;
    }
    if (mActionMode != 0xD && mActionMode != 0xE && mActionMode != 10 &&
        mActionMode != 0xB && mActionMode != 0xC && speed.y < 0.0f) {
        if (groundY == -1000000000.0f || dComIfG_Bgsp().GetGroundCode(gnd_chk) == 4
            || dComIfG_Bgsp().GetGroundCode(gnd_chk) == 10
            || dComIfG_Bgsp().GetGroundCode(gnd_chk) == 5) {
            if (field_0x69c > current.pos.y) {
                setActionMode(0xD, 0);
            }
        } else if (mActionMode != 6 && (field_0x69c - 100.0f) > current.pos.y && (field_0x69c - groundY) > 500.0f) {
            setActionMode(0xE, 0);
        }
    }
}

/* 8073301C-807331CC 006B3C 01B0+00 1/1 0/0 0/0 .text            executeFallDead__8daE_OC_cFv */
void daE_OC_c::executeFallDead() {
    mPrevShapeAngle = shape_angle.y;
    switch (mOcState) {
        case 0:
            mSound.startCreatureVoice(Z2SE_EN_OC_V_FALL, -1);
            if (checkBck(0x15) || checkBck(0x13)) {
                mOcState = 1;
            } else {
                if (!checkBck(0xC)) {
                    setBck(0xC, 0, 0.0f, 1.0f);
                    current.pos.y += 140.0f;
                }
                mOcState = 2;
            }
            field_0x6c0 = 100;
            return;
        case 1:
            if (field_0x6bc != 0) {
                field_0x6d8 += field_0x6bc;
                cLib_chaseAngleS(&field_0x6bc, 0, 100);
                cLib_chaseAngleS(&shape_angle.x, -0x4000, 0x400);
            }
        case 2:
            cLib_chaseF(&speedF, 0.0f, 0.2f);
            if (field_0x6c0 == 0) {
                fopAcM_delete(this);
                if (field_0x6e0 != 0xFF) {
                    if (!dComIfGs_isSwitch(field_0x6e0, fopAcM_GetRoomNo(this))) {
                        dComIfGs_onSwitch(field_0x6e0, fopAcM_GetRoomNo(this));
                    }
                }
            }
            break;
        default:
            break;
    }
}

/* 807331CC-8073332C 006CEC 0160+00 1/1 0/0 0/0 .text            executeFall__8daE_OC_cFv */
void daE_OC_c::executeFall() {
    mPrevShapeAngle = shape_angle.y;
    cLib_chaseF(&speedF, 0.0f, 0.1f);
    switch (mOcState) {
        case 0:
            setBck(0x11, 0, 5.0f, 1.0f);
            mOcState = 1;
            break;
        case 1:
            if (mAcch.ChkGroundHit()) {
                speedF = 0.0f;
                mSound.startCreatureSound(Z2SE_CM_BODYFALL_S, 0, -1);
                fopAcM_effSmokeSet1(&field_0xe60, &field_0xe64, &current.pos, NULL, 2.0f, &tevStr, 1);
                setBck(0x12, 0, 5.0f, 1.0f);
                mOcState = 2;
            }
            break;
        case 2:
            if (mpMorf->isStop()) {
                setActionMode(3, 0);
            }
            break;
        default:
            break;
    }
}

/* 8073332C-807335B4 006E4C 0288+00 1/1 0/0 0/0 .text            executeFindStay__8daE_OC_cFv */
void daE_OC_c::executeFindStay() {
    s16 target_angle = fopAcM_searchPlayerAngleY(this);
    f32 target_dist = fopAcM_searchPlayerDistance(this);
    mPrevShapeAngle = target_angle;
    mBattleOn = true;

    if ((checkBeforeFloorBg(200.0f) & 0xff) == 0) {
        setActionMode(3, 0);
        return;
    }

    switch (mOcState) {
        case 0:
            if (!speedF) {
                if (!checkBck(0x1C)) {
                    setBck(0x1C, 2, 5.0f, 1.0f);
                }
                mOcState = 2;
            } else {
                if (!checkBck(0x1E)) {
                    setBck(0x1E, 2, 5.0f, 1.0f);
                }
                mOcState = 1;
            }
            break;
        case 1:
            cLib_chaseF(&speedF, 0.0f, 2.0f);
            if (!speedF) {
                setBck(0x1C, 2, 5.0f, 1.0f);
                mOcState = 2;
            }
        case 2: {
            if (target_dist < 400.0f) {
                cLib_chaseF(&speedF, -15.0f, 1.0f);
            } else {
                cLib_chaseF(&speedF, 0.0f, 1.0f);
            }
            s16 angleDiff = cLib_distanceAngleS(shape_angle.y, target_angle);
            if (angleDiff >= 0x400) {
                cLib_addCalcAngleS(&shape_angle.y, target_angle, 4, 0x800, 0x100);
            }
            current.angle.y = shape_angle.y;
            if (target_dist < 400.0f && target_dist > 200.0f) {
                s16 newAngle = fopAcM_searchPlayerAngleY(this);
                if (abs(shape_angle.y - newAngle) < 0x1000 && checkBeforeFloorBg(100.0f) & 0xff && dComIfGp_event_runCheck() == 0) {
                    setActionMode(4, 0);
                }
            } else {
                if ((searchPlayer2() & 0xff) == 0) {
                    setActionMode(0, 0);
                }
            }
            break;
        }
        default:
            return;
    }
}

/* 807335B4-80733E48 0070D4 0894+00 1/1 0/0 0/0 .text            executeMoveOut__8daE_OC_cFv */
void daE_OC_c::executeMoveOut() {
    f32 target_distance = fopAcM_searchPlayerDistance(this);
    s16 target_angle = fopAcM_searchPlayerAngleY(this);
    s16 home_angle = cLib_targetAngleY(&home.pos, &current.pos);
    mBattleOn = true;
    mPrevShapeAngle = shape_angle.y;
    cXyz adj_curr_vec;
    cXyz adj_home_vec;

    switch (mOcState) {
        case 0:
            if (field_0x6e3 == 2) {
                if (!checkBck(0x1E)) {
                    setBck(0x1E, 2, 5.0f, 1.0f);
                }
                mOcState = 1;
            } else {
                if (!checkBck(0x1C)) {
                    setBck(0x1C, 2, 5.0f, 1.0f);
                }
                field_0x6c0 = 30;
                mOcState = 2;
            }
        case 1: {
            cLib_addCalcAngleS(&shape_angle.y, home_angle, 4, 0x800, 0x100);
            current.angle.y = shape_angle.y;
            cLib_chaseF(&speedF, -15.0f, 1.0f);
            adj_home_vec.set(home.pos.x, 0.0f, home.pos.z);
            adj_curr_vec.set(current.pos.x, 0.0f, current.pos.z);
            if (adj_home_vec.abs(adj_curr_vec) < mMoveRange) {
                setBck(0x1C, 2, 5.0f, 1.0f);
                field_0x6c0 = 30;
                mOcState = 2;
            }
            break;
        }
        case 2: {
            int my_cond = 0;
            if (target_distance < 200.0f || home.pos.abs(current.pos) > mMoveRange + 200.0f) {
                if (abs((s16)(shape_angle.y - home_angle)) < 0x3000) {
                    my_cond = 1;
                    cLib_chaseF(&speedF, -15.0f, 1.0f);
                }
            }
            if (my_cond == 0) {
                //
                cLib_chaseF(&speedF, 0.0f, 1.0f);
                if (!speedF && !checkBck(0x1C)) {
                    setBck(0x1C, 2, 5.0f, 1.0f);
                }
            } else {
                if (!checkBck(0x1E)) {
                    setBck(0x1E, 2, 5.0f, 1.0f);
                }
                cLib_chaseF(&speedF, -15.0f, 1.0f);
                if (home.pos.abs(current.pos) < mMoveRange - 200.0f) {
                    setActionMode(3, 0);
                    return;
                }
            }
            s16 angle_diff = cLib_distanceAngleS(shape_angle.y, target_angle);
            if (angle_diff >= 0x400) {
                cLib_addCalcAngleS(&shape_angle.y, target_angle, 4, 0x800, 0x100);
            }
            current.angle.y = shape_angle.y;
            if (field_0x6c0 == 0) {
                if (home.pos.abs(daPy_getPlayerActorClass()->current.pos) < (mMoveRange - 200.0f)) {
                    setActionMode(3, 0);
                    return;
                }
                if (target_distance > l_HIO.field_0x20) {
                    if (home.pos.abs(daPy_getPlayerActorClass()->current.pos) > mMoveRange + 200.0f) {
                        setActionMode(0,0);
                        return;
                    }
                }
                if (target_distance < 400.0f && target_distance > 200.0f) {
                    s16 new_angle = fopAcM_searchPlayerAngleY(this);
                    if (abs(shape_angle.y - new_angle) >= 0x1000) {
                        return;
                    }
                    if (dComIfGp_event_runCheck() != 0) {
                        return;
                    }
                    setActionMode(4, 0);
                }
            }
            break;
        }
        default:
            break;
    }
}

/* 80733E48-80733F20 007968 00D8+00 1/1 0/0 0/0 .text            checkWaterSurface__8daE_OC_cFv */
bool daE_OC_c::checkWaterSurface() {
    dBgS_ObjGndChk_Spl gnd_chk_spl;
    cXyz my_vec_0 = current.pos;
    my_vec_0.y += 500.0f;
    gnd_chk_spl.SetPos((Vec*)&my_vec_0);
    mWaterLvl = dComIfG_Bgsp().GroundCross(&gnd_chk_spl);
    if (mAcch.ChkGroundHit()) {
        mWaterLvl = -1e9f;
    }
    if (mWaterLvl > (current.pos.y - 140.0f)) {
        return 1;
    } else {
        return 0;
    }
}

/* 80733F20-807345D8 007A40 06B8+00 2/1 0/0 0/0 .text            action__8daE_OC_cFv */
void daE_OC_c::action() {
    mSphs_at[0].OffAtSetBit();
    mSphs_at[1].OffAtSetBit();
    damage_check();

    if (mMoveRange) {
        if (field_0x6e3 == 0) {
            if (home.pos.absXZ(current.pos) > mMoveRange) {
                if (home.pos.absXZ(current.pos) > mMoveRange + 300.0f) {
                    field_0x6e3 = 2;
                } else {
                    field_0x6e3 = 1;
                }
            }
        } else if (home.pos.absXZ(current.pos) < mMoveRange - 100.0f) {
            field_0x6e3 = 0;
        }
    }

    searchOtherOc();
    mIsHomeWait = false;
    mBattleOn = false;
    field_0x6df = 0;

    if (mActionMode != 10 && checkWaterSurface()) {
        setActionMode(10, 0);
    }

    if (mActionMode == 3 || mActionMode == 1) {
        mAcchCir.SetWallR(60.0f);
    } else {
        mAcchCir.SetWallR(100.0f);
    }
    checkFall();
    field_0x566 = 0;
    switch (mActionMode) {
        case 0: executeWait(); break;
        case 1: executeWalk(); break;
        case 2: executeTalk(); break;
        case 3: field_0x566 = 1; executeFind(); break;
        case 4: field_0x566 = 1; executeAttack(); break;
        case 5: executeDamage(); break;
        case 6: executeBigDamage(); break;
        case 7: executeWatch(); break;
        case 8: executeSoundWatch(); break;
        case 9: executeDeath(); break;
        case 10: executeWaterDeath(); break;
        case 11: field_0x566 = 1; executeDemoMaster(); break;
        case 12: field_0x566 = 1; executeDemoChild(); break;
        case 13: executeFallDead(); break;
        case 14: executeFall(); break;
        case 15: field_0x566 = 1; executeFindStay(); break;
        case 16: field_0x566 = 1; executeMoveOut(); break;
    }
    mSound.setLinkSearch(field_0x566);
    setFootNoteSound();
    s16 angle_diff = shape_angle.y - mPrevShapeAngle;
    if (field_0x6df == 0) {
        cLib_addCalcAngleS(&field_0x6d2, angle_diff, 4, 0x1000, 0x400);
    } else {
        cLib_addCalcAngleS(&field_0x6d2, angle_diff, 8, 0x800, 0x400);
    }

    if (field_0x6d2 >= 0x3000) {
        field_0x6d2 = 0x3000;
    }
    if (field_0x6d2 < -0x3000) {
        field_0x6d2 = 0xd000;
    }

    fopAcM_posMoveF(this, mStts.GetCCMoveP());
    mAcch.CrrPos(dComIfG_Bgsp());
    cXyz head_lock_pos(eyePos);
    head_lock_pos.y += 300.0f;
    setHeadLockPos(&head_lock_pos);
    setWeaponGroundAngle();
    s8 reverb = dComIfGp_getReverb(static_cast<int>(fopAcM_GetRoomNo(this)));
    mpMorf->play(0, reverb);
}

/* 807345D8-80734698 0080F8 00C0+00 1/1 0/0 0/0 .text            mtx_set__8daE_OC_cFv */
void daE_OC_c::mtx_set() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(field_0x688);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::YrotM(field_0x6d8);
    mDoMtx_stack_c::scaleM(l_HIO.field_0x1c, l_HIO.field_0x1c, l_HIO.field_0x1c);
    J3DModel* model = mpMorf->getModel();
    model->setBaseTRMtx(mDoMtx_stack_c::get());
    mpMorf->modelCalc();
    if (mpModel) {
        mpModel->setBaseTRMtx(model->getAnmMtx(0xc));
    }
}

/* 80734698-807348DC 0081B8 0244+00 1/1 0/0 0/0 .text            cc_set__8daE_OC_cFv */
void daE_OC_c::cc_set() {
    cXyz my_vec_lhs;
    cXyz my_vec_rhs;
    J3DModel *model = mpMorf->getModel();
    mDoMtx_stack_c::copy(model->getAnmMtx(0x11));
    my_vec_lhs.set(10.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::multVec(&my_vec_lhs, &eyePos);
    attention_info.position = eyePos;
    attention_info.position.y += 30.0f;
    mDoMtx_stack_c::copy(model->getAnmMtx(1));
    my_vec_lhs.set(10.0f, 10.0f, 0.0f);
    mDoMtx_stack_c::multVec(&my_vec_lhs, &my_vec_rhs);
    mSphs_cc[0].SetC(my_vec_rhs);
    mSphs_cc[0].SetR(50.0f);
    dComIfG_Ccsp()->Set(&mSphs_cc[0]);
    mDoMtx_stack_c::copy(model->getAnmMtx(0x11));
    my_vec_lhs.set(10.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::multVec(&my_vec_lhs, &my_vec_rhs);
    mSphs_cc[1].SetC(my_vec_rhs);
    mSphs_cc[1].SetR(45.0f);
    dComIfG_Ccsp()->Set(&mSphs_cc[1]);
    mDoMtx_stack_c::copy(model->getAnmMtx(0xc));
    my_vec_lhs.set(0.0f, 0.0f, 70.0f);
    mDoMtx_stack_c::multVec(&my_vec_lhs, &my_vec_rhs);
    mSphs_at[0].SetC(my_vec_rhs);
    mSphs_at[0].SetR(45.0f);
    mDoMtx_stack_c::copy(model->getAnmMtx(0xc));
    my_vec_lhs.set(0.0f, 0.0f, 20.0f);
    mDoMtx_stack_c::multVec(&my_vec_lhs, &my_vec_rhs);
    mSphs_at[1].SetC(my_vec_rhs);
    mSphs_at[1].SetR(30.0f);
    dComIfG_Ccsp()->Set(&mSphs_at[0]);
    dComIfG_Ccsp()->Set(&mSphs_at[1]);
}

/* 807348DC-80734B44 0083FC 0268+00 1/1 0/0 0/0 .text            execute__8daE_OC_cFv */
int daE_OC_c::execute() {
    if (field_0x6c0) {
        --field_0x6c0;
    }
    if (field_0x6c2) {
        --field_0x6c2;
    }
    if (field_0x6c4) {
        --field_0x6c4;
    }
    if (field_0x6c6) {
        --field_0x6c6;
    }
    if (field_0x6cc) {
        --field_0x6cc;
    }
    if (field_0x6ca) {
        --field_0x6ca;
    }
    if (field_0x6d6) {
        --field_0x6d6;
    }
    if (field_0x6ce) {
        --field_0x6ce;
    }
    if (field_0x6c8) {
        --field_0x6c8;
        if (field_0x6c8 == 0) {
            camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
            mPlayerPos = daPy_getPlayerActorClass()->current.pos;
            mPlayerPos.y += 500.0f;
            field_0x704 = 55.0f;
            camera->mCamera.Reset(field_0x6f8, mPlayerPos, field_0x704, 0);
            camera->mCamera.Start();
            camera->mCamera.SetTrimSize(0);
            dComIfGp_event_reset();
            fopAcM_OffStatus(this, 0x4000);
            fopAc_ac_c* search_actor = (fopAc_ac_c*)fpcM_Search(s_demo_oc, this);
            if (search_actor) {
                fopAcM_OffStatus(search_actor, 0x4000);
            }
        }
    }
    action();
    mtx_set();
    cc_set();
    cXyz my_vec_0;
    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(0x1));
    mDoMtx_stack_c::multVecZero(&my_vec_0);
    cXyz my_vec_1(1.0f, 2.0f, 1.0f);
    setMidnaBindEffect(this, &mSound, &my_vec_0, &my_vec_1);
    return 1;
}

/* 80734B44-80734B64 008664 0020+00 2/1 0/0 0/0 .text            daE_OC_Execute__FP8daE_OC_c */
static void daE_OC_Execute(daE_OC_c* i_this) {
    i_this->execute();
}

/* 80734B64-80734B6C 008684 0008+00 1/0 0/0 0/0 .text            daE_OC_IsDelete__FP8daE_OC_c */
static bool daE_OC_IsDelete(daE_OC_c* param_0) {
    return true;
}

/* 80734B6C-80734BF0 00868C 0084+00 1/1 0/0 0/0 .text            _delete__8daE_OC_cFv */
int daE_OC_c::_delete() {
    dComIfG_resDelete(&mPhaseReqs[0], mName);
    dComIfG_resDelete(&mPhaseReqs[1], "E_ocb");
    if (field_0xe84) {
        lbl_216_bss_58 = 0;
    }
    if (heap) {
        mSound.deleteObject();
    }
    return 1;
}

/* 80734BF0-80734C10 008710 0020+00 1/0 0/0 0/0 .text            daE_OC_Delete__FP8daE_OC_c */
static void daE_OC_Delete(daE_OC_c* i_this) {
    i_this->_delete();
}

/* 80734C10-80734D88 008730 0178+00 1/1 0/0 0/0 .text            CreateHeap__8daE_OC_cFv */
int daE_OC_c::CreateHeap() {
    J3DModelData* model_data = (J3DModelData*) dComIfG_getObjectRes(mName, 0x3);
    JUT_ASSERT(0xd73, model_data != NULL);
    mpMorf = new mDoExt_McaMorfSO(model_data, NULL, NULL,
                                  (J3DAnmTransform*)dComIfG_getObjectRes("E_ocb", 0x1b),
                                  0, 1.0f, 0, -1,
                                  &mSound, 0x80000, 0x11000084);
    if (mpMorf == NULL || mpMorf->getModel() == 0) {
        return 0;
    }
    J3DModel* my_model = mpMorf->getModel();
    my_model->setUserArea((u32)this);
    for (u16 idx = 1; idx < my_model->getModelData()->getJointNum(); ++idx) {
        if (idx == 0x11 || idx == 0xc) {
            my_model->getModelData()->getJointNodePointer(idx)->setCallBack(&daE_OC_c::JointCallBack);
        }
    }
    model_data = (J3DModelData*) dComIfG_getObjectRes(mName, 0x4);
    JUT_ASSERT(0xd96, model_data != NULL);
    mpModel = mDoExt_J3DModel__create(model_data, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }
    return 1;
}

/* 80734D88-80734DA8 0088A8 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    return static_cast<daE_OC_c*>(i_this)->CreateHeap();
}

/* 80734DA8-807352AC 0088C8 0504+00 1/1 0/0 0/0 .text            create__8daE_OC_cFv */
cPhs__Step daE_OC_c::create() {
    fopAcM_SetupActor(this, daE_OC_c);
    field_0x6b4 = fopAcM_GetParam(this) & 0xff;
    if (field_0x6b4 == 0xff) {
        field_0x6b4 = 0;
    }

    u8 u_var = ((fopAcM_GetParam(this) & 0xff00) >> 8);
    if (u_var == 0x1) {
        mPlayerRange = l_HIO.field_0x0c;
    } else {
        mPlayerRange = l_HIO.field_0x08;
    }
    field_0x6e0 = (fopAcM_GetParam(this) & 0xff0000) >> 0x10;
    if (field_0x6e0 != 0xff) {
        if (dComIfGs_isSwitch(field_0x6e0, fopAcM_GetRoomNo(this))) {
            return cPhs_ERROR_e;
        }
    }
    field_0x6e1 = (fopAcM_GetParam(this) & 0xff000000) >> 0x18;
    u_var = current.angle.x & 0xff;
    if (u_var == 0xff) {
        u_var = 0;
    }
    mMoveRange = 100.0f * u_var;
    u_var = current.angle.x >> 8 & 0xff;
    if (u_var == 0xff || u_var == 0) {
        mName = "E_OC";
    } else {
        mName = "E_OC2";
    }

    cPhs__Step phase = (cPhs__Step) dComIfG_resLoad(&mPhaseReqs[0], mName);
    if (phase == cPhs_COMPLEATE_e) {
        phase = (cPhs__Step) dComIfG_resLoad(&mPhaseReqs[1], "E_ocb");
        if (phase == cPhs_COMPLEATE_e) {
            if (!fopAcM_entrySolidHeap(this, useHeapInit, 0x2e40)) {
                return cPhs_ERROR_e;
            }
            if (!lbl_216_bss_58) {
                field_0xe84 = 1;
                lbl_216_bss_58 = 1;
                l_HIO.field_0x04 = 0xFF;
            }
            attention_info.flags = 4;
            fopAcM_SetMtx(this, mpMorf->getModel()->getBaseTRMtx());
            fopAcM_SetMin(this, -200.0f, -200.0f, -200.0f);
            fopAcM_SetMax(this, 200.0f, 200.0f, 200.0f);
            mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                      fopAcM_GetSpeed_p(this), NULL, NULL);
            if (0 == strcmp("D_MN05", dComIfGp_getStartStageName())
                && dComIfGp_getStartStageRoomNo() == 0xc) {
                mAcchCir.SetWallH(95.0f);
            } else {
                mAcchCir.SetWallH(70.0f);
            }
            mAcchCir.SetWallR(100.0f);
            if (mName == "E_OC") {
                field_0x560 = health = 40;
            } else {
                field_0x560 = health = 220;
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
            if (mName == "E_OC") {
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
            current.angle.x = shape_angle.x = 0;
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
