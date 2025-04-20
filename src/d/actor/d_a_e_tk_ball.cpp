/**
 * @file d_a_e_tk_ball.cpp
 *
 */

#include "d/actor/d_a_e_tk_ball.h"
#include "d/actor/d_a_player.h"

//
// Forward References:
//

// extern "C" void daE_TK_BALL_Draw__FP15e_tk_ball_class();
// extern "C" void simple_bg_check__FP15e_tk_ball_class();
// extern "C" void impact_eff_set__FP15e_tk_ball_class();
// extern "C" void e_tk_ball_move__FP15e_tk_ball_class();
// extern "C" void e_tk_ball_return__FP15e_tk_ball_class();
// extern "C" void e_tk_ball_drop__FP15e_tk_ball_class();
// extern "C" void action__FP15e_tk_ball_class();
// extern "C" void daE_TK_BALL_Execute__FP15e_tk_ball_class();
// extern "C" bool daE_TK_BALL_IsDelete__FP15e_tk_ball_class();
// extern "C" void daE_TK_BALL_Delete__FP15e_tk_ball_class();
// extern "C" void useHeapInit__FP10fopAc_ac_c();
// extern "C" void daE_TK_BALL_Create__FP10fopAc_ac_c();
// extern "C" void __dt__8cM3dGSphFv();
// extern "C" void __dt__8cM3dGAabFv();
// extern "C" char const* const d_a_e_tk_ball__stringBase0;

// //
// // External References:
// //

// extern "C" void mDoMtx_XrotM__FPA4_fs();
// extern "C" void mDoMtx_YrotS__FPA4_fs();
// extern "C" void mDoMtx_YrotM__FPA4_fs();
// extern "C" void scaleM__14mDoMtx_stack_cFfff();
// extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
// // extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
// extern "C" void __ct__10fopAc_ac_cFv();
// extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
// extern "C" void fopAcM_delete__FP10fopAc_ac_c();
// extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
// extern "C" void fpcSch_JudgeByID__FPvPv();
// extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
// extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
// extern "C" void dComIfGp_getReverb__Fi();
// extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
// extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
// extern "C" void
// set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
// extern "C" void
// set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
// extern "C" void LockonTarget__12dAttention_cFl();
// extern "C" void LockonTruth__12dAttention_cFv();
// extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
// extern "C" void __ct__11dBgS_LinChkFv();
// extern "C" void __dt__11dBgS_LinChkFv();
// extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
// extern "C" void __ct__10dCcD_GSttsFv();
// extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
// extern "C" void __ct__12dCcD_GObjInfFv();
// extern "C" void ChkAtHit__12dCcD_GObjInfFv();
// extern "C" void ChkTgHit__12dCcD_GObjInfFv();
// extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
// extern "C" void StartCAt__8dCcD_SphFR4cXyz();
// extern "C" void MoveCAt__8dCcD_SphFR4cXyz();
// extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
// extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
// extern "C" void Set__4cCcSFP8cCcD_Obj();
// extern "C" void __pl__4cXyzCFRC3Vec();
// extern "C" void __mi__4cXyzCFRC3Vec();
// extern "C" void cM_atan2s__Fff();
// extern "C" void cM_rndFX__Ff();
// extern "C" void SetC__8cM3dGSphFRC4cXyz();
// extern "C" void MtxPosition__FP4cXyzP4cXyz();
// extern "C" void deleteObject__14Z2SoundObjBaseFv();
// extern "C" void __ct__16Z2SoundObjSimpleFv();
// extern "C" void __dl__FPv();
// extern "C" void _savegpr_24();
// extern "C" void _savegpr_25();
// extern "C" void _savegpr_26();
// extern "C" void _restgpr_24();
// extern "C" void _restgpr_25();
// extern "C" void _restgpr_26();
// extern "C" void* __vt__8dCcD_Sph[36];
// extern "C" void* __vt__9dCcD_Stts[11];
// extern "C" void* __vt__12cCcD_SphAttr[25];
// extern "C" void* __vt__14cCcD_ShapeAttr[22];
// extern "C" void* __vt__9cCcD_Stts[8];
// extern "C" u8 now__14mDoMtx_stack_c[48];
// extern "C" u8 sincosTable___5JMath[65536];
// extern "C" u8 mParticleTracePCB__13dPa_control_c[4 + 4 /* padding */];

//
// Declarations:
//

/* 807BBFF8-807BC070 000078 0078+00 1/0 0/0 0/0 .text daE_TK_BALL_Draw__FP15e_tk_ball_class */
static int daE_TK_BALL_Draw(e_tk_ball_class* i_this) {
    if (i_this->mDrawFlag) {
        return 1;
    }

    g_env_light.settingTevStruct(0, &i_this->current.pos, &i_this->tevStr);
    g_env_light.setLightTevColorType_MAJI(i_this->mpModel, &i_this->tevStr);
    mDoExt_modelUpdateDL(i_this->mpModel);
    return 1;
}

/* ############################################################################################## */
/* 807BD56C-807BD570 000000 0004+00 4/4 0/0 0/0 .rodata          @3710 */
// SECTION_RODATA static u8 const lit_3710[4] = {
//     0x00,
//     0x00,
//     0x00,
//     0x00,
// };
// COMPILER_STRIP_GATE(0x807BD56C, &lit_3710);

/* 807BD570-807BD574 000004 0004+00 0/1 0/0 0/0 .rodata          @3711 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_3711 = 30.0f;
// COMPILER_STRIP_GATE(0x807BD570, &lit_3711);
// #pragma pop

/* 807BD574-807BD578 000008 0004+00 1/2 0/0 0/0 .rodata          @3712 */
// SECTION_RODATA static f32 const lit_3712 = -50.0f;
// COMPILER_STRIP_GATE(0x807BD574, &lit_3712);

/* 807BD578-807BD57C 00000C 0004+00 0/1 0/0 0/0 .rodata          @3713 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_3713 = -30.0f;
// COMPILER_STRIP_GATE(0x807BD578, &lit_3713);
// #pragma pop

/* 807BD57C-807BD580 000010 0004+00 0/2 0/0 0/0 .rodata          @3714 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_3714 = 50.0f;
// COMPILER_STRIP_GATE(0x807BD57C, &lit_3714);
// #pragma pop

/* 807BC070-807BC1CC 0000F0 015C+00 3/3 0/0 0/0 .text simple_bg_check__FP15e_tk_ball_class */
static int simple_bg_check(e_tk_ball_class* i_this) {
    fopAc_ac_c* actor = i_this;

    cXyz local_90 = actor->current.pos;
    local_90.y += i_this->mPosYOffset;

    mDoMtx_YrotS(*calc_mtx, actor->current.angle.y);

    cXyz start_pos;
    cXyz end_pos;

    cXyz local_b4;
    local_b4.x = 0.0f;
    local_b4.y = 30.0f;
    local_b4.z = -50.0f;

    cXyz mtx_offset;
    MtxPosition(&local_b4, &mtx_offset);
    start_pos = local_90 + mtx_offset;

    local_b4.y = -30.0f;
    local_b4.z = 50.0f;
    MtxPosition(&local_b4, &mtx_offset);
    end_pos = local_90 + mtx_offset;

    dBgS_LinChk line_check;
    line_check.Set(&start_pos, &end_pos, actor);
    if (dComIfG_Bgsp().LineCross(&line_check)) {
        return true;
    } else {
        return false;
    }
}

/* ############################################################################################## */
/* 807BD580-807BD584 000014 0004+00 3/4 0/0 0/0 .rodata          @3763 */
// SECTION_RODATA static f32 const lit_3763 = 2.0f;
// COMPILER_STRIP_GATE(0x807BD580, &lit_3763);

/* 807BD584-807BD588 000018 0004+00 1/2 0/0 0/0 .rodata          @3764 */
// SECTION_RODATA static f32 const lit_3764 = 1.0f;
// COMPILER_STRIP_GATE(0x807BD584, &lit_3764);

/* 807BC1CC-807BC3F8 00024C 022C+00 3/3 0/0 0/0 .text            impact_eff_set__FP15e_tk_ball_class
 */
static void impact_eff_set(e_tk_ball_class* i_this) {
    cXyz pos = i_this->current.pos;
    pos.y = pos.y + i_this->mPosYOffset;

    cXyz scale;
    scale.setall(2.0f);

    csXyz rotation = i_this->current.angle;
    rotation.y -= 0x8000;

    if (!i_this->mFireTypeFlag) {
        dComIfGp_particle_set(0x819b, &pos, &rotation, &scale);
        dComIfGp_particle_set(0x819c, &pos, &rotation, &scale);
        i_this->mSound.startSound(Z2SE_EN_TK_HIT, 0, -1);
    } else {
        dComIfGp_particle_set(0x8198, &pos, &rotation, &scale);
        dComIfGp_particle_set(0x8199, &pos, &rotation, &scale);
        i_this->mSound.startSound(Z2SE_EN_TK2_HIT, 0, -1);
    }
}

/* ############################################################################################## */
/* 807BD588-807BD58C 00001C 0004+00 0/1 0/0 0/0 .rodata          @3923 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_3923 = -20.0f;
// COMPILER_STRIP_GATE(0x807BD588, &lit_3923);
// #pragma pop

/* 807BD58C-807BD594 000020 0008+00 0/2 0/0 0/0 .rodata          @3924  ????????????*/
// #pragma push
// #pragma force_active on
// SECTION_RODATA static u8 const lit_3924[8] = {
//     0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
// };
// COMPILER_STRIP_GATE(0x807BD58C, &lit_3924);
// #pragma pop

/* 807BD594-807BD59C 000028 0008+00 0/2 0/0 0/0 .rodata          @3925  ????????????*/
// #pragma push
// #pragma force_active on
// SECTION_RODATA static u8 const lit_3925[8] = {
//     0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
// };
// COMPILER_STRIP_GATE(0x807BD594, &lit_3925);
// #pragma pop

/* 807BD59C-807BD5A4 000030 0008+00 0/2 0/0 0/0 .rodata          @3926  ????????????*/
// #pragma push
// #pragma force_active on
// SECTION_RODATA static u8 const lit_3926[8] = {
//     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
// };
// COMPILER_STRIP_GATE(0x807BD59C, &lit_3926);
// #pragma pop

/* 807BD5A4-807BD5A8 000038 0004+00 0/1 0/0 0/0 .rodata          @3927 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_3927 = 10.0f;
// COMPILER_STRIP_GATE(0x807BD5A4, &lit_3927);
// #pragma pop

/* 807BD5A8-807BD5AC 00003C 0004+00 0/1 0/0 0/0 .rodata          @3928 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_3928 = -3.0f / 10.0f;
// COMPILER_STRIP_GATE(0x807BD5A8, &lit_3928);
// #pragma pop

/* 807BD5AC-807BD5B0 000040 0004+00 0/1 0/0 0/0 .rodata          @3929 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_3929 = 60.0f;
// COMPILER_STRIP_GATE(0x807BD5AC, &lit_3929);
// #pragma pop

/* 807BC3F8-807BCA18 000478 0620+00 1/1 0/0 0/0 .text            e_tk_ball_move__FP15e_tk_ball_class
 */
static void e_tk_ball_move(e_tk_ball_class* i_this) {
    fopAc_ac_c* actor = i_this;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);

    cXyz cStack_58;
    cXyz local_28;
    cXyz local_34;
    cXyz cStack_4c;

    s8 bVar2;
    switch (i_this->mMoveState) {
    case 0:
        i_this->mMoveState = 1;
        i_this->mPos0 = actor->current.pos;
        local_28 = player->eyePos;
        local_28.y += -20.0f;
        local_28 -= i_this->mPos0;

        i_this->mMinDist = local_28.abs();
        if (i_this->mMinDist < 10.0f) {
            i_this->mMinDist = 10.0f;
        }
        actor->current.angle.y = cM_atan2s(local_28.x, local_28.z);
        actor->current.angle.x =
            -cM_atan2s(local_28.y, JMAFastSqrt(local_28.x * local_28.x + local_28.z * local_28.z));
        cMtx_YrotS(*calc_mtx, actor->current.angle.y);
        cMtx_XrotM(*calc_mtx, actor->current.angle.x);

        local_28.set(0.0f, 0.0f, 50.0f);
        MtxPosition(&local_28, &actor->speed);

        i_this->mSph1.OnAtVsPlayerBit();
        i_this->mSph1.OffAtVsEnemyBit();
        i_this->mSph1.StartCAt(actor->current.pos);
        i_this->mSpeed = 100;
        /* [[fallthrough]] */

    case 1:
        actor->current.pos += actor->speed;
        break;
    }

    cStack_4c = actor->current.pos;
    cStack_4c.y += i_this->mPosYOffset;

    i_this->mSph2.SetC(cStack_4c);

    dComIfG_Ccsp()->Set(&i_this->mSph2);
    bVar2 = false;

    fopAc_ac_c* parent = fopAcM_SearchByID(actor->parentActorID);
    if (parent != NULL) {
        dAttention_c* attention = &dComIfGp_getAttention();
        if (attention->Lockon() && parent == attention->LockonTarget(0)) {
            bVar2 = true;
            (parent->attention_info).flags = (parent->attention_info).flags | 0x200000;
        }
    }
    if (i_this->mSph2.ChkTgHit() || i_this->mSph1.ChkAtShieldHit()) {
        impact_eff_set(i_this);
        actor->current.angle.x *= -0x1;
        if (bVar2 && daPy_getPlayerActorClass()->getCutType() != 0x0) {
            i_this->mAction = 1;
            i_this->mMoveState = 0;
            actor->current.angle.y -= 0x8000;
        } else {
            i_this->mAction = 2;
            i_this->mMoveState = 0;
            actor->speed.x *= -0.3f;
            actor->speed.z *= -0.3f;
            actor->speed.y = 0.0f;
            actor->current.pos += actor->speed;
            i_this->mSpeed = 0x3c;
            return;  //?
        }

        actor->current.pos.y = actor->current.pos.y + i_this->mPosYOffset;
        actor->home.pos = actor->current.pos;
        local_28 = i_this->mPos0 - actor->home.pos;
        i_this->mMinDist = local_28.abs();
        local_34.x = 0.0;
        local_34.y = 0.0;
        if (daPy_getPlayerActorClass()->getCutType() != 0) {
            local_34.z = 60.0f;
        }
        cMtx_YrotS(*calc_mtx, actor->current.angle.y);
        cMtx_XrotM(*calc_mtx, actor->current.angle.x);
        MtxPosition(&local_34, &actor->speed);
        i_this->mSph1.OffAtVsPlayerBit();
        i_this->mSph1.OnAtVsEnemyBit();
        i_this->mSpeed = 100;
        i_this->mImpactEffect = 10;
        actor->current.pos += actor->speed;

    } else {
        i_this->mSph1.MoveCAt(actor->current.pos);
        dComIfG_Ccsp()->Set(&i_this->mSph1);

        if ((simple_bg_check(i_this) != 0) || (i_this->mSph1.ChkAtHit() != 0)) {
            impact_eff_set(i_this);
            fopAcM_delete(actor);
        }
    }
}

/* 807BCA18-807BCAF4 000A98 00DC+00 1/1 0/0 0/0 .text e_tk_ball_return__FP15e_tk_ball_class */
static void e_tk_ball_return(e_tk_ball_class* i_this) {
    switch (i_this->mMoveState) {  // Forces beq, b
    case 0:
        i_this->current.pos += i_this->speed;
        if (i_this->mImpactEffect == 0) {
            i_this->mSph2.SetTgHitMark(CcG_Tg_UNK_MARK_0);
        }
        break;
    }

    cXyz local_18;
    local_18.x = i_this->current.pos.x;
    local_18.y = i_this->current.pos.y;
    local_18.z = i_this->current.pos.z;
    local_18.y += i_this->mPosYOffset;
    i_this->mSph1.MoveCAt(local_18);
    dComIfG_Ccsp()->Set(&i_this->mSph1);

    if (i_this->mImpactEffect == 0 &&
        (simple_bg_check(i_this) != 0 || (i_this->mSph1.ChkAtHit() != 0)))
    {
        impact_eff_set(i_this);
        fopAcM_delete(i_this);
    }
}

/* 807BCAF4-807BCB94 000B74 00A0+00 1/1 0/0 0/0 .text            e_tk_ball_drop__FP15e_tk_ball_class
 */
static void e_tk_ball_drop(e_tk_ball_class* i_this) {
    switch (i_this->mMoveState) {  // Forces beq, b
    case 0:
        i_this->current.pos += i_this->speed;
        i_this->speed.y -= 2.0f;
        if (i_this->speed.y < -50.0f) {
            i_this->speed.y = -50.0f;
        }
        break;
    }

    if (simple_bg_check(i_this) != 0 || i_this->mSpeed == 0) {
        impact_eff_set(i_this);
        fopAcM_delete(i_this);
    }
}

/* ############################################################################################## */
/* 807BD5B0-807BD5B4 000044 0004+00 0/1 0/0 0/0 .rodata          @4115 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4115 = 1.0f / 10.0f;
// COMPILER_STRIP_GATE(0x807BD5B0, &lit_4115);
// #pragma pop

/* 807BD5B4-807BD5B8 000048 0004+00 0/1 0/0 0/0 .rodata          @4116 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4116 = 300.0f;
// COMPILER_STRIP_GATE(0x807BD5B4, &lit_4116);
// #pragma pop

/* 807BD5B8-807BD5BC 00004C 0004+00 1/2 0/0 0/0 .rodata          @4117 */
// SECTION_RODATA static f32 const lit_4117 = 32768.0f;
// COMPILER_STRIP_GATE(0x807BD5B8, &lit_4117);

/* 807BD5BC-807BD5C0 000050 0004+00 0/1 0/0 0/0 .rodata          @4118 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4118 = 1.5f;
// COMPILER_STRIP_GATE(0x807BD5BC, &lit_4118);
// #pragma pop

/* 807BD5C0-807BD5C4 000054 0004+00 0/1 0/0 0/0 .rodata          @4119 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4119 = 4.0f / 5.0f;
// COMPILER_STRIP_GATE(0x807BD5C0, &lit_4119);
// #pragma pop

/* 807BCB94-807BCF84 000C14 03F0+00 1/1 0/0 0/0 .text            action__FP15e_tk_ball_class */
static void action(e_tk_ball_class* i_this) {
    fopAc_ac_c* actor = i_this;

    /* 807BD5D0-807BD5D8 000000 0006+02 1/1 0/0 0/0 .data            e_id$3988 */
    static u16 e_id[4] = {0x819D, 0x819E, 0x819A, 0x0000};

    s8 drop_flag = true;
    switch (i_this->mAction) {
    case 0:
        e_tk_ball_move(i_this);
        break;
    case 1:
        e_tk_ball_return(i_this);
        break;
    case 2:
        e_tk_ball_drop(i_this);
        drop_flag = false;
        break;
    }

    if (drop_flag) {
        cXyz pos_diff = actor->home.pos - actor->current.pos;
        f32 abs_pos_diff = pos_diff.abs();
        f32 fVar2 = i_this->mMinDist * 0.1f;
        if (fVar2 > 300.0f) {
            fVar2 = 300.0f;
        }
        f32 fVar9 = cM_ssin((abs_pos_diff / i_this->mMinDist) * 32768.0f);
        i_this->mPosYOffset = fVar2 * fVar9;
        if (abs_pos_diff > i_this->mMinDist * 1.5f) {
            fopAcM_delete(actor);
        }
    } else {
        i_this->mPosYOffset = 0.0f;
    }

    cXyz position = actor->current.pos;
    position.y = position.y + i_this->mPosYOffset;

    cXyz global_scale;
    global_scale.setall(2.0f);

    for (int i = 0; i < 2; i++) {
        i_this->mArr[i] = dComIfGp_particle_set(
            i_this->mArr[i], e_id[i + i_this->mFireTypeFlag * 2], &position, NULL, NULL);

        JPABaseEmitter* particle_emitter = dComIfGp_particle_getEmitter(i_this->mArr[i]);
        if (particle_emitter != NULL) {
            particle_emitter->setGlobalScale(global_scale);
            if (i_this->mFireTypeFlag == true) {
                particle_emitter->setParticleCallBackPtr(dPa_control_c::getParticleTracePCB());
                i_this->mPos1 = position - i_this->mPos2;
                i_this->mPos1 *= 0.8f;
                particle_emitter->setUserWork((u32)&i_this->mPos1);
                i_this->mPos2 = position;
                break;
            }
        }
    }

    if (i_this->mFireTypeFlag == true) {
        i_this->mSound.startLevelSound(Z2SE_EN_TK2_SHOT, 0, -1);
    } else {
        i_this->mSound.startLevelSound(Z2SE_EN_TK_SHOT, 0, -1);
    }
}

/* 807BCF84-807BD0C0 001004 013C+00 2/1 0/0 0/0 .text daE_TK_BALL_Execute__FP15e_tk_ball_class */
static int daE_TK_BALL_Execute(e_tk_ball_class* i_this) {
    if (i_this->mDrawFlag != 0) {
        return 1;
    }

    i_this->mCnt++;

    for (int i = 0; i < 2; i++) {
        if ((&i_this->mSpeed)[i] != 0) {
            (&i_this->mSpeed)[i]--;
        }
    }

    if (i_this->mLifetime != 0) {
        i_this->mLifetime--;
    }

    action(i_this);
    i_this->shape_angle.y += 0x1000;
    i_this->shape_angle.x += 0xE00;

    MTXTrans(mDoMtx_stack_c::get(), i_this->current.pos.x,
             i_this->current.pos.y + i_this->mPosYOffset, i_this->current.pos.z);
    mDoMtx_YrotM(mDoMtx_stack_c::get(), i_this->shape_angle.y);
    mDoMtx_XrotM(mDoMtx_stack_c::get(), i_this->shape_angle.x);
    mDoMtx_stack_c::scaleM(2.0, 2.0, 2.0);
    i_this->mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    i_this->mSound.framework(0, dComIfGp_getReverb(fopAcM_GetRoomNo(i_this)));
    return 1;
}

/* 807BD0C0-807BD0C8 001140 0008+00 1/0 0/0 0/0 .text daE_TK_BALL_IsDelete__FP15e_tk_ball_class */
static int daE_TK_BALL_IsDelete(e_tk_ball_class* i_this) {
    return 1;
}

/* ############################################################################################## */
/* 807BD5C4-807BD5C4 000058 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
// #pragma push
// #pragma force_active on
// SECTION_DEAD static char const* const stringBase_807BD5C4 = "E_tk";
// SECTION_DEAD static char const* const stringBase_807BD5C9 = "E_tk2";
// #pragma pop

/* 807BD0C8-807BD13C 001148 0074+00 1/0 0/0 0/0 .text daE_TK_BALL_Delete__FP15e_tk_ball_class */
static int daE_TK_BALL_Delete(e_tk_ball_class* i_this) {
    if (i_this->mFireTypeFlag == 0) {
        dComIfG_resDelete(&i_this->mPhaseReq, "E_tk");
    } else {
        dComIfG_resDelete(&i_this->mPhaseReq, "E_tk2");
    }
    if (i_this->heap != NULL) {
        i_this->mSound.deleteObject();
    }
    return 1;
}

/* 807BD13C-807BD1EC 0011BC 00B0+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    e_tk_ball_class* a_this = static_cast<e_tk_ball_class*>(i_this);
    J3DModelData* ball_model;

    if (a_this->mFireTypeFlag == 0) {
        ball_model = (J3DModelData*)dComIfG_getObjectRes("E_tk", 0xD);
    } else {
        ball_model = (J3DModelData*)dComIfG_getObjectRes("E_tk2", 0xD);
    }
    a_this->mpModel = mDoExt_J3DModel__create(ball_model, 0x80000, 0x11000084);

    if (a_this->mpModel == NULL) {
        return 0;
    } else {
        return 1;
    }
}

/* ############################################################################################## */
/* 807BD6A8-807BD6B4 0000D8 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
// SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__8cM3dGSphFv,
// };

/* 807BD6B4-807BD6C0 0000E4 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
// SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__8cM3dGAabFv,
// };

/* 807BD1EC-807BD4D4 00126C 02E8+00 1/0 0/0 0/0 .text            daE_TK_BALL_Create__FP10fopAc_ac_c
 */
static cPhs__Step daE_TK_BALL_Create(fopAc_ac_c* i_this) {
    /* 807BD5D8-807BD618 000008 0040+00 1/1 0/0 0/0 .data            at_sph_src$4199 */
    static dCcD_SrcSph at_sph_src = {
        {
            {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0xd}, {0x0, 0x0}, 0x0}},  // mObj
            {dCcD_SE_METAL, 0x1, 0x0, 0x0, 0x0},                          // mGObjAt
            {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2},                           // mGObjTg
            {0x0},                                                        // mGObjCo
        },                                                                // mObjInf
        {
            {{0.0f, 0.0f, 0.0f}, 20.0f}  // mSph
        }  // mSphAttr
    };

    /* 807BD618-807BD658 000048 0040+00 1/1 0/0 0/0 .data            tg_sph_src$4200 */
    static dCcD_SrcSph tg_sph_src = {
        {
            {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x0}},  // mObj
            {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},                // mGObjAt
            {dCcD_SE_METAL, 0x5, 0x0, 0x0, 0x2},               // mGObjTg
            {0x0},                                             // mGObjCo
        },                                                     // mObjInf
        {
            {{0.0f, 0.0f, 0.0f}, 35.0f}  // mSph
        }  // mSphAttr
    };

    fopAcM_SetupActor(i_this, e_tk_ball_class);
    e_tk_ball_class* a_this = static_cast<e_tk_ball_class*>(i_this);

    cPhs__Step phase;
    u32 size;

    a_this->mFireTypeFlag = fopAcM_GetParam(a_this);
    if (a_this->mFireTypeFlag == 0xff) {
        a_this->mFireTypeFlag = 0;
    }

    if (a_this->mFireTypeFlag == 0) {
        phase = (cPhs__Step)dComIfG_resLoad(&a_this->mPhaseReq, "E_tk");
        size = 0x820;
    } else {
        phase = (cPhs__Step)dComIfG_resLoad(&a_this->mPhaseReq, "E_tk2");
        size = 0xEE0;
    }

    if (phase == cPhs_COMPLEATE_e) {
        a_this->mArg0 = fopAcM_GetParamBit(a_this, 8, 8);
        if (a_this->mArg0 == 0xff) {
            a_this->mArg0 = 0x0;
        }

        if (!fopAcM_entrySolidHeap(i_this, useHeapInit, size)) {
            return cPhs_ERROR_e;
        }
        a_this->cullMtx = a_this->mpModel->mBaseTransformMtx;
        a_this->mStts.Init(0xff, 0, i_this);
        a_this->mSph1.Set(at_sph_src);
        a_this->mSph1.SetStts(&a_this->mStts);
        if (a_this->mFireTypeFlag == 1) {
            a_this->mSph1.SetAtType(0x100);
            a_this->mSph1.SetAtMtrl(0x1);
        }

        a_this->mSph2.Set(tg_sph_src);
        a_this->mSph2.SetStts(&a_this->mStts);

        a_this->mSound.init((Vec*)&a_this->current, 1);
        a_this->shape_angle.y = cM_rndFX(32768.0f);
        a_this->shape_angle.x = cM_rndFX(32768.0f);
        a_this->mDrawFlag = true;
        MTXScale(mDoMtx_stack_c::get(), 0.0, 0.0, 0.0);
        a_this->mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
        daE_TK_BALL_Execute(a_this);
    }
    return phase;
}

/* 807BD4D4-807BD51C 001554 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
// extern "C" void __dt__8cM3dGSphFv() {
//     // NONMATCHING
// }

/* 807BD51C-807BD564 00159C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
// extern "C" void __dt__8cM3dGAabFv() {
//     // NONMATCHING
// }

/* 807BD5C4-807BD5C4 000058 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/* 807BD658-807BD678 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_TK_BALL_Method */
static actor_method_class l_daE_TK_BALL_Method = {
    (process_method_func)daE_TK_BALL_Create,  (process_method_func)daE_TK_BALL_Delete,
    (process_method_func)daE_TK_BALL_Execute, (process_method_func)daE_TK_BALL_IsDelete,
    (process_method_func)daE_TK_BALL_Draw,
};

/* 807BD678-807BD6A8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_TK_BALL */
extern actor_process_profile_definition g_profile_E_TK_BALL = {
    fpcLy_CURRENT_e,          // mLayerID
    7,                        // mListID
    fpcPi_CURRENT_e,          // mListPrio
    PROC_E_TK_BALL,           // mProcName
    &g_fpcLf_Method.base,     // sub_method
    sizeof(e_tk_ball_class),  // mSize
    0,                        // mSizeOther
    0,                        // mParameters
    &g_fopAc_Method.base,     // sub_method
    151,                      // mPriority
    &l_daE_TK_BALL_Method,    // sub_method
    0x00040120,               // mStatus
    fopAc_ACTOR_e,            // mActorType
    fopAc_CULLBOX_0_e,        // cullType
};
