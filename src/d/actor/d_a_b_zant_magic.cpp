/**
 * @file d_a_b_zant_magic.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_b_zant_magic.h"
#include "d/actor/d_a_b_zant.h"
#include "d/d_com_inf_game.h"
#include "d/actor/d_a_player.h"
#include "SSystem/SComponent/c_math.h"
#include <cmath.h>

/* 8064F778-8064F7B4 000078 003C+00 1/1 0/0 0/0 .text            draw__11daB_ZANTM_cFv */
int daB_ZANTM_c::draw() {
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    return 1;
}

/* 8064F7B4-8064F7D4 0000B4 0020+00 1/0 0/0 0/0 .text            daB_ZANTM_Draw__FP11daB_ZANTM_c */
static int daB_ZANTM_Draw(daB_ZANTM_c* i_this) {
    return i_this->draw();
}

namespace {
/* 80650508-80650554 000020 004C+00 0/1 0/0 0/0 .data            cc_zant_src__30@unnamed@d_a_b_zant_magic_cpp@ */
dCcD_SrcCps cc_zant_src = {
    {
        {0, {{AT_TYPE_CSTATUE_SWING, 2, 0x1D}, {0xD8FBFDFF, 0}, 0}},
        {dCcD_SE_13, 0, 1, 0, {0}},
        {dCcD_SE_NONE, 0, 0, 0, {2}},
        {0},
    },
    {{
        {0.0f, 0.0f, 0.0f},
        {0.0f, 0.0f, 0.0f},
        20.0f,
    }},
};

/* 80650554-80650594 00006C 0040+00 0/1 0/0 0/0 .data            cc_zant_src2__30@unnamed@d_a_b_zant_magic_cpp@ */
dCcD_SrcSph cc_zant_src2 = {
    {
        {0x0, {{0x400, 0x2, 0x0}, {0x6000, 0x3}, 0x0}}, // mObj
        {dCcD_SE_METAL, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x3}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 80650594-806505D4 0000AC 0040+00 0/1 0/0 0/0 .data            cc_zant_src3__30@unnamed@d_a_b_zant_magic_cpp@ */
dCcD_SrcSph cc_zant_src3 = {
    {
        {0x0, {{0x400, 0x2, 0x0}, {0x2, 0x3}, 0x0}}, // mObj
        {dCcD_SE_METAL, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};
}

/* 8064F7D4-8064F938 0000D4 0164+00 1/1 0/0 0/0 .text            setMagicEffect__11daB_ZANTM_cFv */
void daB_ZANTM_c::setMagicEffect() {
    static u16 magic_effect_id[] = {
        0x890D, 0x890E, 0x890F, 0x8910,
    };

    cXyz size(0.5f, 0.5f, 0.5f);
    cXyz sp30(current.pos);
    field_0x5dc = speed * 0.8f;

    for (int i = 0; i < 4; i++) {
        field_0xbfc[i] = dComIfGp_particle_set(field_0xbfc[i], magic_effect_id[i], &sp30, &tevStr, &shape_angle, &size, 0xFF, NULL, -1, NULL, NULL, NULL);

        JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(field_0xbfc[i]);
        if (emitter != NULL) {
            emitter->setGlobalScale(size);
            emitter->setParticleCallBackPtr(dPa_control_c::getParticleTracePCB());
            emitter->setUserWork((u32)&field_0x5dc);
        }
    }
}

/* 8064F938-8064FA50 000238 0118+00 1/1 0/0 0/0 .text            setMagicHitEffect__11daB_ZANTM_cFv
 */
void daB_ZANTM_c::setMagicHitEffect() {
    static u16 magic_effect_id[] = {
        0x8862, 0x8863, 0x8864, 0x8865,
    };

    Z2GetAudioMgr()->seStart(Z2SE_EN_ZAN_FIRE_BURST, &current.pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, false);

    cXyz size(0.5f, 0.5f, 0.5f);
    cXyz sp34(current.pos);
    sp34.y -= 25.0f;

    for (int i = 0; i < 4; i++) {
        dComIfGp_particle_set(magic_effect_id[i], &current.pos, &tevStr, &shape_angle, &size);
    }
}

/* 8064FA50-8064FD6C 000350 031C+00 1/1 0/0 0/0 .text            executeSmall__11daB_ZANTM_cFv */
void daB_ZANTM_c::executeSmall() {
    cXyz target_pos;
    daPy_getPlayerActorClass();

    if (daPy_py_c::checkMasterSwordEquip()) {
        mTgCollider.OnTgSetBit();
    } else {
        mTgCollider.OffTgSetBit();
    }

    fopAc_ac_c* boss;
    fopAcM_SearchByID(fopAcM_GetLinkId(this), &boss);

    f32 magic_speed;
    if (boss != NULL) {
        if (dComIfGp_roomControl_getStayNo() == 55) {
            magic_speed = ((daB_ZANT_c*)boss)->getMagicWaterSpeed();
        } else {
            magic_speed = ((daB_ZANT_c*)boss)->getMagicSpeed();
        }
    } else {
        if (dComIfGp_roomControl_getStayNo() == 55) {
            magic_speed = 40.0f;
        } else {
            magic_speed = 100.0f;
        }
    }

    switch (mMode) {
    case 0:
        mAliveTimer = 900;
        mMode = 1;
        field_0x5e8 = 0.0f;
        
        target_pos = daPy_getPlayerActorClass()->current.pos;
        target_pos.y += mPrm * 60.0f - 260.0f;

        if (dComIfGp_roomControl_getStayNo() != 55) {
            cLib_chaseAngleS(&current.angle.y, cLib_targetAngleY(&current.pos, &target_pos), 0x2000);
        }

        cLib_chaseAngleS(&current.angle.x, cLib_targetAngleX(&current.pos, &target_pos), 0x2000);
        speedF = std::abs(magic_speed * cM_scos(current.angle.x));
        speed.y = magic_speed * cM_ssin(current.angle.x);
        Z2GetAudioMgr()->seStart(Z2SE_EN_ZAN_FIRE_OUT, &current.pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, false);
    case 1:
        Z2GetAudioMgr()->seStartLevel(Z2SE_EN_ZAN_FIRE, &current.pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, false);
        cLib_chaseF(&field_0x5e8, 1.0f, 0.1f);

        if (mAliveTimer == 0 || mAcch.ChkWallHit() || mAcch.ChkGroundHit()) {
            speed.z = 0.0f;
            speed.y = 0.0f;
            speed.x = 0.0f;

            setMagicHitEffect();
            fopAcM_delete(this);
        }

        cXyz* phitpos = NULL;
        if (mAtCollider.ChkAtHit()) {
            phitpos = mAtCollider.GetAtHitPosP();
        } else if (mTgCollider.ChkTgHit()) {
            phitpos = mTgCollider.GetTgHitPosP();
        }

        if (phitpos != NULL) {
            current.pos = *phitpos;
            speed.z = 0.0f;
            speed.y = 0.0f;
            speed.x = 0.0f;

            setMagicHitEffect();
            fopAcM_delete(this);
        }
        break;
    }
}

/* 8064FD6C-8064FE6C 00066C 0100+00 1/1 0/0 0/0 .text            cc_set__11daB_ZANTM_cFv */
void daB_ZANTM_c::cc_set() {
    eyePos = current.pos;
    eyePos.y += 30.0f;
    
    attention_info.position = eyePos;
    attention_info.position.y += 30.0f;

    mAtCollider.cM3dGCps::Set(old.pos, current.pos, 20.0f);
    mAtCollider.CalcAtVec();
    dComIfG_Ccsp()->Set(&mAtCollider);

    field_0x848.SetC(current.pos);
    field_0x848.SetR(50.0f);
    dComIfG_Ccsp()->Set(&field_0x848);

    mTgCollider.SetC(current.pos);
    mTgCollider.SetR(50.0f);
    dComIfG_Ccsp()->Set(&mTgCollider);
}

/* 8064FE6C-8064FF04 00076C 0098+00 1/1 0/0 0/0 .text            execute__11daB_ZANTM_cFv */
int daB_ZANTM_c::execute() {
    if (mAliveTimer != 0) {
        mAliveTimer--;
    }

    executeSmall();
    setMagicEffect();

    mCcStts.Move();
    fopAcM_posMoveF(this, mCcStts.GetCCMoveP());
    mAcch.CrrPos(dComIfG_Bgsp());

    cc_set();

    mDoMtx_stack_c::transS(current.pos);
    cMtx_copy(mDoMtx_stack_c::get(), field_0x5ac);
    return 1;
}

/* 8064FF04-8064FF24 000804 0020+00 1/0 0/0 0/0 .text            daB_ZANTM_Execute__FP11daB_ZANTM_c
 */
static int daB_ZANTM_Execute(daB_ZANTM_c* i_this) {
    return i_this->execute();
}

/* 8064FF24-8064FF2C 000824 0008+00 1/0 0/0 0/0 .text            daB_ZANTM_IsDelete__FP11daB_ZANTM_c
 */
static int daB_ZANTM_IsDelete(daB_ZANTM_c* i_this) {
    return 1;
}

/* 8064FF2C-8064FF34 00082C 0008+00 1/1 0/0 0/0 .text            _delete__11daB_ZANTM_cFv */
int daB_ZANTM_c::_delete() {
    return 1;
}

/* 8064FF34-8064FF54 000834 0020+00 1/0 0/0 0/0 .text            daB_ZANTM_Delete__FP11daB_ZANTM_c
 */
static int daB_ZANTM_Delete(daB_ZANTM_c* i_this) {
    return i_this->_delete();
}

/* 8064FF54-806500A8 000854 0154+00 1/1 0/0 0/0 .text            create__11daB_ZANTM_cFv */
int daB_ZANTM_c::create() {
    fopAcM_SetupActor(this, daB_ZANTM_c);
    OS_REPORT("B_ZANTM PARAM %x\n", fopAcM_GetParam(this));

    mPrm = fopAcM_GetParam(this);
    attention_info.flags = 0;

    mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this), NULL, NULL);
    
    fopAcM_SetMtx(this, field_0x5ac);
    fopAcM_SetMin(this, -400.0f, -400.0f, -400.0f);
    fopAcM_SetMax(this, 400.0f, 400.0f, 400.0f);

    health = 80;
    field_0x560 = 80;

    mCcStts.Init(0xFF, 0, this);
    mAtCollider.Set(cc_zant_src);
    mAcchCir.SetWall(20.0f, 20.0f);
    mAtCollider.SetAtSpl(dCcG_At_Spl_UNK_0);
    mAtCollider.SetAtAtp(2);
    mAtCollider.SetStts(&mCcStts);

    field_0x848.Set(cc_zant_src2);
    field_0x848.SetStts(&mCcStts);

    mTgCollider.Set(cc_zant_src3);
    mTgCollider.SetStts(&mCcStts);

    gravity = 0.0f;
    return cPhs_COMPLEATE_e;
}

static int daB_ZANTM_Create(daB_ZANTM_c* i_this) {
    return i_this->create();
}

/* 806505E4-80650604 -00001 0020+00 1/0 0/0 0/0 .data            l_daB_ZANTM_Method */
static actor_method_class l_daB_ZANTM_Method = {
    (process_method_func)daB_ZANTM_Create,
    (process_method_func)daB_ZANTM_Delete,
    (process_method_func)daB_ZANTM_Execute,
    (process_method_func)daB_ZANTM_IsDelete,
    (process_method_func)daB_ZANTM_Draw,
};

/* 80650604-80650634 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_B_ZANTM */
extern actor_process_profile_definition g_profile_B_ZANTM = {
  fpcLy_CURRENT_e,        // mLayerID
  4,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_B_ZANTM,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daB_ZANTM_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  227,                    // mPriority
  &l_daB_ZANTM_Method,    // sub_method
  0x00040100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
