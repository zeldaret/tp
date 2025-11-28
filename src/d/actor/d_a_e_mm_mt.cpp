/**
 * @file d_a_e_mm_mt.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep
#include "d/actor/d_a_e_mm_mt.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
#include "f_op/f_op_actor_enemy.h"

/* 80725884-80725888 00002C 0004+00 0/1 0/0 0/0 .rodata          @3829 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_3829 = 700.0f;
// COMPILER_STRIP_GATE(0x80725884, &lit_3829);
// #pragma pop

/* 80722F78-8072305C 000078 00E4+00 1/0 0/0 0/0 .text            daE_MM_MT_Draw__FP13e_mm_mt_class
 */
static int daE_MM_MT_Draw(e_mm_mt_class* i_this) {
    i_this->enemy.model = i_this->mpModel;
    fopAc_ac_c* actor = (fopAc_ac_c*) i_this;

    g_env_light.settingTevStruct(0, &i_this->enemy.current.pos, &i_this->enemy.tevStr);
    g_env_light.setLightTevColorType_MAJI(i_this->mpModel, &i_this->enemy.tevStr);

    mDoExt_modelUpdateDL(i_this->mpModel);
    
    cXyz local_18(i_this->enemy.current.pos.x, i_this->enemy.current.pos.y + 100, i_this->enemy.current.pos.z);

    if (!fopAcM_CheckStatus(actor, fopAcM_STATUS_CARRY_NOW)) {
        i_this->mShadowKey = dComIfGd_setShadow(
            i_this->mShadowKey, 1, i_this->mpModel, &local_18, 700.0f, 0.0f,
            i_this->enemy.current.pos.y, i_this->mAcch.GetGroundH(), i_this->mAcch.m_gnd,
            &i_this->enemy.tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex()
        );
    }

    return 1;
}

// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_3883 = 20.0f;
// COMPILER_STRIP_GATE(0x80725888, &lit_3883);
// #pragma pop

/* 8072588C-80725890 000034 0004+00 0/4 0/0 0/0 .rodata          @3884 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_3884 = -1.0f;
// COMPILER_STRIP_GATE(0x8072588C, &lit_3884);
// #pragma pop

/* 8072305C-80723270 00015C 0214+00 2/2 0/0 0/0 .text            e_mm_hookCheck__FP13e_mm_mt_class
 */
static bool e_mm_hookCheck(e_mm_mt_class* i_this) {

    cCcD_Obj* hitObject;
    cXyz VStack_18;
    u32 uVar3;

    fopAc_ac_c* actor = (fopAc_ac_c*) i_this;

    if (i_this->enemy.argument == 1) {
        return false;
    }

    if (i_this->mSphere.ChkTgHit() 
        && i_this->mSphere.GetTgHitObj()->ChkAtType(AT_TYPE_HOOKSHOT)
        || fopAcM_CheckStatus(actor, 0x100000)) {
        i_this->field_0x69C = 0.0f;
        i_this->field_0x68A[0] = true;
        cXyz local_24 = i_this->enemy.current.pos;
        if(i_this->mAction == 1){
            local_24. y -=20.0f;
        } else {
            local_24.y += 20.0f;
        }
        // local_24.y += ((i_this->mAction == 1) ? -20.0f : 20.0f);
        mDoMtx_stack_c::transS(i_this->enemy.current.pos);
        mDoMtx_stack_c::ZXYrotM(i_this->enemy.shape_angle);
        mDoMtx_stack_c::inverse();
        mDoMtx_stack_c::multVec(&local_24, &VStack_18);
        daPy_py_c* pdVar3 = daPy_getPlayerActorClass();
        pdVar3->setHookshotCarryOffset(fopAcM_GetID(i_this), &VStack_18);
        return 1;
    }
    

    if(i_this->field_0x68A[0]) {
        if(daPy_getPlayerActorClass()->setForceGrab(actor, 0, 1) != 0){
            i_this->mAction = 2;
            i_this->mMode = 0;
            i_this->field_0x69C = 0.0f;
            i_this->field_0x6A2 = 0;
            i_this->field_0x6A0 = 0;
            i_this->mSpin = 0;
            i_this->mCarryAngleSpeed = 0;
            if(i_this->mAcch.ChkWaterHit() != 0){
                mDoAud_seStart(Z2SE_EN_MM_MET_LIFT_WTR,&i_this->enemy.current.pos,0,0);
            }
            i_this->mSphere.OffAtSetBit();
            i_this->field_0x68A[0] = false;
            return 1;
        }
        i_this->field_0x68A[0] = false;
    }
    return 0;
}

/* 80723270-807234E8 000370 0278+00 1/1 0/0 0/0 .text            e_mm_mt_normal__FP13e_mm_mt_class
 */
static void e_mm_mt_normal(e_mm_mt_class* i_this) {
    fopAc_ac_c* helmasaurActor;
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    fopAc_ac_c* player = (fopAc_ac_c*) dComIfGp_getPlayer(0);
    
    
    if (fopAcM_SearchByID(actor->parentActorID, &helmasaurActor)) {
        actor->scale.x = helmasaurActor->scale.x;
        e_mm_class* helmasaur = (e_mm_class*)helmasaurActor;
        actor->shape_angle.y = helmasaurActor->shape_angle.y - 0x4000;

        PSMTXCopy(helmasaur->modelMorf->getModel()->getAnmMtx(11), *calc_mtx);
        cXyz acStack_28(0.0f, 0.0f, 0.0f);
        MtxPosition(&acStack_28, &actor->current.pos);
        actor->eyePos = helmasaur->enemy.eyePos;
        actor->attention_info.position = i_this->enemy.eyePos;
        fopAcM_OffStatus(actor, 0);
        actor->attention_info.flags = 0;
        if(i_this->mInvulnerabilityTimer == 0 && helmasaur->field_0xb98){
            i_this->mSphere.OnAtSetBit();
            if(i_this->mSphere.ChkAtShieldHit()){
                i_this->mInvulnerabilityTimer = 15;
                helmasaur->field_0xb99 |= 1;
                i_this->mAtInfo.mpCollider = i_this->mSphere.GetAtHitObj(); 
                i_this->mSphere.SetAtSe(9);
            }
        } else {
            i_this->mSphere.OffAtSetBit();
        }
        if(actor->argument != 1 
            && ((i_this->mSphere.ChkTgHit() 
            && i_this->mSphere.GetTgHitObj()->ChkAtType(AT_TYPE_HOOKSHOT)) 
            || fopAcM_CheckStatus(actor, 0x100000))) {
                helmasaur->field_0xb99 |= 4;
        }
        if(helmasaur->field_0x672 == 0){
            i_this->mAction = 1;
            i_this->mMode = 0;
            i_this->field_0x68A[0] = 0;
            i_this->mAcch.OnLineCheck();
            i_this->mSphere.OnTgShield();
            i_this->mSphere.SetTgHitMark(CcG_Tg_UNK_MARK_2);
            i_this->mSphere.SetTgSe(9);
            i_this->mSphere.OffTgHookShotNoHitMark();
            i_this->mSphere.OffTgNoHitMark();
            i_this->mSphere.OffCoSetBit();
            fopAcM_SetGroup(actor, 3);
            fopAcM_OffStatus(actor, 0);
            actor->attention_info.flags &= 0xFFFFFFFB;
            actor->attention_info.distances[2] = 0;
            fopAcM_OnStatus(actor, 0x400);
            s16 actor_angle = player->shape_angle.y + 0x4000;
            s16 angle = actor->shape_angle.y - actor_angle;
            if(angle > 0x4000 || angle < -0x4000){
                i_this->mCarryAngle = -0x8000;
                return;
            }
            i_this->mCarryAngle = 0;
        }
    }
}

/* ############################################################################################## */
/* 80725890-80725894 000038 0004+00 0/1 0/0 0/0 .rodata          @4008 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4008 = 150.0f;
// COMPILER_STRIP_GATE(0x80725890, &lit_4008);
// #pragma pop

/* 80725894-80725898 00003C 0004+00 0/1 0/0 0/0 .rodata          @4009 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4009 = 3.0f;
// COMPILER_STRIP_GATE(0x80725894, &lit_4009);
// #pragma pop

/* 80725898-8072589C 000040 0004+00 0/1 0/0 0/0 .rodata          @4010 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4010 = 3.0f / 20.0f;
// COMPILER_STRIP_GATE(0x80725898, &lit_4010);
// #pragma pop

/* 8072589C-807258A0 000044 0004+00 0/2 0/0 0/0 .rodata          @4011 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4011 = 2000.0f;
// COMPILER_STRIP_GATE(0x8072589C, &lit_4011);
// #pragma pop

/* 807258A0-807258A4 000048 0004+00 0/2 0/0 0/0 .rodata          @4012 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4012 = 1.0f / 10.0f;
// COMPILER_STRIP_GATE(0x807258A0, &lit_4012);
// #pragma pop

/* 807258A4-807258A8 00004C 0004+00 0/4 0/0 0/0 .rodata          @4013 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4013 = 200.0f;
// COMPILER_STRIP_GATE(0x807258A4, &lit_4013);
// #pragma pop

/* 807258A8-807258AC 000050 0004+00 0/1 0/0 0/0 .rodata          @4014 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4014 = 59.0f / 20.0f;
// COMPILER_STRIP_GATE(0x807258A8, &lit_4014);
// #pragma pop

/* 807258AC-807258B0 000054 0004+00 0/2 0/0 0/0 .rodata          @4015 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4015 = 5.0f;
// COMPILER_STRIP_GATE(0x807258AC, &lit_4015);
// #pragma pop

/* 807258B0-807258B4 000058 0004+00 0/3 0/0 0/0 .rodata          @4016 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4016 = 30.0f;
// COMPILER_STRIP_GATE(0x807258B0, &lit_4016);
// #pragma pop

/* 807258B4-807258B8 00005C 0004+00 0/3 0/0 0/0 .rodata          @4017 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4017 = 0.5f;
// COMPILER_STRIP_GATE(0x807258B4, &lit_4017);
// #pragma pop

/* 807234E8-80723744 0005E8 025C+00 1/1 0/0 0/0 .text            e_mm_mt_hagare__FP13e_mm_mt_class
 */
static void e_mm_mt_hagare(e_mm_mt_class* i_this) {
    fopAc_ac_c* player = (fopAc_ac_c*) dComIfGp_getPlayer(0);
    fopAc_ac_c* actor = (fopAc_ac_c*) i_this;

    cXyz local_30 = player->current.pos - i_this->enemy.current.pos;
    local_30.y += 150.0f;
    i_this->enemy.current.angle.y = local_30.atan2sX_Z();
    cMtx_YrotS(*calc_mtx, i_this->enemy.current.angle.y);
    cMtx_XrotM(*calc_mtx, (int)local_30.atan2sY_XZ());
    local_30.x = 0.0f;
    local_30.y = 0.0f;
    local_30.z = i_this->enemy.speedF;
    MtxPosition(&local_30, &i_this->enemy.speed);
    if(e_mm_hookCheck(i_this) == 0){
        s32 arg = i_this->mMode;
        switch(arg){
            case -10:
                cLib_addCalc2(&i_this->enemy.speedF, 3.0f, 1.0f, 0.15f); 
                cLib_addCalc2(&i_this->field_0x69C, 2000.0f, 0.1f, 200.0f);
                if(i_this->enemy.speedF >= 2.95f){
                    i_this->mMode = 0;
                } else {
                    break;
                }
                // fallthrough
            case 0:
                cLib_addCalc2(&i_this->enemy.speedF, 100.0f, 1.0f, 5.0f);
                break;
        }
        i_this->enemy.current.pos += i_this->enemy.speed;
        i_this->enemy.eyePos = i_this->enemy.current.pos;
        i_this->enemy.attention_info.position = i_this->enemy.current.pos;
        s16 spA = i_this->enemy.speedF * 30.0f;
        s16 sVar6;
        if(i_this->mCarryAngle == 0){
            sVar6 = -0x4000;
        } else {
            sVar6 = 0x4000;
        }

        cLib_addCalcAngleS2(&i_this->enemy.shape_angle.y, 
                        player->shape_angle.y + 0x4000 +  i_this->mCarryAngle,
                        4,
                        spA + 0x100);
        cLib_addCalcAngleS2(&i_this->enemy.shape_angle.z, sVar6, 4, spA);
        local_30 = player->current.pos - i_this->enemy.current.pos;
        local_30.y = 0.0f;
        i_this->mAction = 3;
        i_this->mMode = 0;
        i_this->mSphere.OnCoSetBit();
        i_this->field_0x68A[0] = 0;
        i_this->enemy.speedF *= 0.5f;
        return;
    }

}

/* ############################################################################################## */
/* 807258B8-807258BC 000060 0004+00 0/2 0/0 0/0 .rodata          @4089 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4089 = 10.0f;
COMPILER_STRIP_GATE(0x807258B8, &lit_4089);
#pragma pop

/* 807258BC-807258C0 000064 0004+00 0/1 0/0 0/0 .rodata          @4090 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4090 = 0.25f;
COMPILER_STRIP_GATE(0x807258BC, &lit_4090);
#pragma pop

/* 807258C0-807258C4 000068 0004+00 0/2 0/0 0/0 .rodata          @4091 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4091 = 1000.0f;
COMPILER_STRIP_GATE(0x807258C0, &lit_4091);
#pragma pop

/* 807258C4-807258C8 00006C 0004+00 0/1 0/0 0/0 .rodata          @4092 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4092 = -G_CM3D_F_INF;
// COMPILER_STRIP_GATE(0x807258C4, &lit_4092);
// #pragma pop

/* 80723744-807239CC 000844 0288+00 1/1 0/0 0/0 .text            e_mm_mt_carry__FP13e_mm_mt_class */
static void e_mm_mt_carry(e_mm_mt_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*) i_this;
    fopAc_ac_c* player = (fopAc_ac_c*) dComIfGp_getPlayer(0);

    switch(i_this->mMode){
        case 0: 
            cLib_offBit<u32>(i_this->enemy.attention_info.flags, fopAc_AttnFlag_CARRY_e);
            i_this->mMode = 1;
            s16 angle_delta_y = i_this->mRotation.y - ((s16)(player->shape_angle.y + 0x4000));
            if (angle_delta_y > 0x4000 || angle_delta_y < -0x4000){
                i_this->mCarryAngle = -0x8000;
            } else {
                i_this->mCarryAngle  = 0;
            }
            break;
        
        case 1:
            if(fopAcM_checkCarryNow(actor) == 0) {
             i_this->mAction = 3;
             i_this->mSphere.OnCoSetBit();
             i_this->field_0x68A[0] = false;
             if(fopAcM_GetSpeedF(actor) > 1.0f || fopAcM_GetSpeedF(player) > 10.0f){
                i_this->enemy.speedF = i_this->enemy.speedF * 0.25f + 30.0f;
                i_this->enemy.speed.y = 30.0f;
                i_this->enemy.current.angle.y = player->shape_angle.y;
                i_this->mMode = 0;
             } else {
                i_this->enemy.speedF = 0.0f;
                i_this->enemy.speed.y = 0.0f;
                i_this->mMode  = 5;
                i_this->field_0x69C = 0x447a0000;
                if(i_this->mAcch.ChkWaterHit() != 0){
                    mDoAud_seStart(Z2SE_EN_MM_MET_PUT_WTR, &i_this->enemy.current.pos, 0, 0);
                } else {
                    mDoAud_seStart(Z2SE_EN_MM_MET_PUT_LND, &i_this->enemy.current.pos, 0, 0);
                }
             }
        }
        break;
    }
    if(i_this->mAcch.GetGroundH() == -G_CM3D_F_INF){
        i_this->field_0x698 += 1;
        if(i_this->field_0x698 > 500){
            fopAcM_delete(player);
            return;
        }
    } else {
        i_this->field_0x698 = 0;
    }
    i_this->enemy.eyePos = i_this->enemy.current.pos;
    i_this->enemy.attention_info.position = i_this->enemy.current.pos;
    cLib_addCalcAngleS2(&i_this->mRotation.y, i_this->enemy.shape_angle.y +  0x4000 + i_this->mCarryAngle,
        1, i_this->mCarryAngleSpeed);
    cLib_addCalcAngleS2(&i_this->mRotation.z, -0x8000,1, i_this->mCarryAngleSpeed);
    cLib_addCalcAngleS2(&i_this->mCarryAngleSpeed, 0x2000, 1, 0x100);
    
}




/* ############################################################################################## */
/* 807258C8-807258CC 000070 0004+00 0/1 0/0 0/0 .rodata          @4146 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4146 = -50.0f;
// COMPILER_STRIP_GATE(0x807258C8, &lit_4146);
// #pragma pop

// /* 807239CC-80723B70 000ACC 01A4+00 1/1 0/0 0/0 .text            wall_angle_get__FP13e_mm_mt_class
//  */
static s16 wall_angle_get(e_mm_mt_class* i_this) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;
    cXyz vec1, vec2, vec3[2];
    dBgS_LinChk linchk;
    cMtx_YrotS(*calc_mtx, a_this->current.angle.y);
    vec1.x = 0.0f;
    vec1.y = 0.0f;
    vec1.z = -50.0f; 
    MtxPosition(&vec1, &vec2);
    vec2 += a_this->current.pos;
    vec1.x = 5.0f;
    vec1.y = 0.0f;
    vec1.z = 200.0f;

    for(int i = 0; i < 2; i++){
        MtxPosition(&vec1, &vec3[i]);
        vec1.x *= -1.0f;
        vec3[i] += vec2;
        linchk.Set(&vec2, &vec3[i], a_this);
        if(dComIfG_Bgsp().LineCross(&linchk)) {
            vec3[i] = linchk.GetCross();
        } else {
            return 0x23;
        }
    }

    vec1 = vec3[1] - vec3[0]; 
    s16 angle = vec1.atan2sX_Z() + 0x4000;
    return angle;
}

// /* ############################################################################################## */
/* 807258CC-807258D0 000074 0004+00 0/1 0/0 0/0 .rodata          @4338 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4338 = -3.0f / 10.0f;
COMPILER_STRIP_GATE(0x807258CC, &lit_4338);
#pragma pop

/* 807258D0-807258D4 000078 0004+00 0/1 0/0 0/0 .rodata          @4339 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4339 = -30.0f;
COMPILER_STRIP_GATE(0x807258D0, &lit_4339);
#pragma pop

/* 807258D4-807258D8 00007C 0004+00 0/1 0/0 0/0 .rodata          @4340 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4340 = -2.0f / 5.0f;
COMPILER_STRIP_GATE(0x807258D4, &lit_4340);
#pragma pop

/* 807258D8-807258DC 000080 0004+00 0/1 0/0 0/0 .rodata          @4341 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4341 = 0.75f;
COMPILER_STRIP_GATE(0x807258D8, &lit_4341);
#pragma pop

/* 807258DC-807258E0 000084 0004+00 0/1 0/0 0/0 .rodata          @4342 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4342 = 3500.0f;
COMPILER_STRIP_GATE(0x807258DC, &lit_4342);
#pragma pop

/* 807258E0-807258E4 000088 0004+00 0/1 0/0 0/0 .rodata          @4343 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4343 = 1.5f;
// COMPILER_STRIP_GATE(0x807258E0, &lit_4343);
// #pragma pop

/* 807258E4-807258E8 00008C 0004+00 0/1 0/0 0/0 .rodata          @4344 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4344 = 1300.0f;
// COMPILER_STRIP_GATE(0x807258E4, &lit_4344);
// #pragma pop

/* 807258E8-807258EC 000090 0004+00 0/2 0/0 0/0 .rodata          @4345 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4345 = 2.0f;
// COMPILER_STRIP_GATE(0x807258E8, &lit_4345);
// #pragma pop

/* 807258EC-807258F0 000094 0004+00 0/1 0/0 0/0 .rodata          @4346 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4346 = -5.0f;
// COMPILER_STRIP_GATE(0x807258EC, &lit_4346);
// #pragma pop

/* 807258F0-807258F8 000098 0008+00 0/2 0/0 0/0 .rodata          @4348 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static u8 const lit_4348[8] = {
//     0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
// };
// COMPILER_STRIP_GATE(0x807258F0, &lit_4348);
// #pragma pop

/* 80723B70-80724190 000C70 0620+00 1/1 0/0 0/0 .text            e_mm_mt_drop__FP13e_mm_mt_class */
static void e_mm_mt_drop(e_mm_mt_class* i_this) {

    fopAc_ac_c* actor = (fopAc_ac_c*) i_this;
    if((e_mm_hookCheck(i_this)) == 0){
        s32 mode = i_this->mMode;
        if(mode != 5){
            if(mode < 5 && mode < 0){
                if(i_this->mTimer[0] == 0 && i_this->mAcch.ChkWallHit()){
                    s16 wall_angle = wall_angle_get(i_this);
                    if(wall_angle != 0x23){
                        wall_angle = i_this->enemy.current.angle.y - wall_angle; 
                        i_this->mSpin = wall_angle * -0.3f;
                        i_this->enemy.current.angle.y += (s16)(0x8000 - (wall_angle << 1)); 
                        if(i_this->mAcch.ChkWaterHit()){
                            mDoAud_seStart(Z2SE_EN_MM_MET_BOUND_WTR, &i_this->enemy.current.pos, (u32)(i_this->enemy.speed.y), 0);
                        } else {
                            mDoAud_seStart(Z2SE_EN_MM_MET_BOUND_LND, &i_this->enemy.current.pos, (u32)(i_this->enemy.speed.y), 0);
                        }
                        i_this->enemy.speedF *= 0.5f;
                        i_this->mTimer[0] = 10;
                    }
                }
                if(i_this->mAcch.ChkGroundHit()){
                    if(i_this->mMode < 4){
                        i_this->mMode += 1;
                    }
                    if(i_this->field_0x6A8 < -30.0f){
                        i_this->enemy.speed.y = i_this->field_0x6A8 * -0.4f;
                        i_this->enemy.speedF *= 0.75f;
                        if(i_this->mAcch.ChkWaterHit()){
                            mDoAud_seStart(Z2SE_EN_MM_MET_BOUND_WTR, &i_this->enemy.current.pos, (u32)(i_this->enemy.speed.y), 0);
                            
                        }else{
                            mDoAud_seStart(Z2SE_EN_MM_MET_BOUND_LND, &i_this->enemy.current.pos, (u32)(i_this->enemy.speed.y), 0);
                        }
                        i_this->field_0x69C = 3500.0f;
                        cXyz local_40 = i_this->enemy.current.pos; 
                        cXyz local_4c(0x3FC00000, 0x3FC00000, 0x3FC00000); 
                        if(i_this->mSpin == 0){
                            i_this->mSpin = cM_rndFX(1300.0f);
                        }
                    } else {
                        i_this->mMode = 5;
                        if(i_this->mAcch.ChkWaterHit() != 0){
                            mDoAud_seStart(Z2SE_EN_MM_MET_BOUND_WTR, &i_this->enemy.current.pos, 0, 0);
                        }else{
                            mDoAud_seStart(Z2SE_EN_MM_MET_BOUND_LND, &i_this->enemy.current.pos, 0, 0);
                        }

                        
                    }
                }
            }
        } else {
            cLib_addCalc0(&i_this->enemy.speedF, 1.0, 2.0);
        }
        cMtx_YrotS(*calc_mtx, i_this->enemy.current.angle.y);
        cXyz local_28;
        local_28.x = 0.0f;
        local_28.y = 0.0f; 
        local_28.z = i_this->enemy.speedF;
        cXyz local_34;
        MtxPosition(&local_28, &local_34);
        i_this->enemy.speed.x = local_34.x;
        i_this->enemy.speed.z = local_34.z;
        i_this->enemy.current.pos.x += i_this->enemy.speed.x;
        i_this->enemy.current.pos.z += i_this->enemy.speed.z;
        i_this->enemy.current.pos.y += i_this->enemy.speed.y;
        i_this->enemy.speed.y += -5.0f;
        i_this->enemy.eyePos = i_this->enemy.current.pos;
        i_this->enemy.attention_info.position = i_this->enemy.current.pos;
        cLib_addCalcAngleS2(&i_this->mRotation.z,-0x8000,1,0x1000);
        cLib_onBit<u32>(i_this->enemy.attention_info.flags, fopAc_AttnFlag_CARRY_e);
        i_this->enemy.attention_info.distances[4] = '\a';
        i_this->mRotation.y += i_this->mSpin;
        if(i_this->enemy.speedF >= 20.0f){
            i_this->mSphere.OnAtSetBit();
            i_this->mSphere.OffAtVsBitSet(12);
            i_this->mSphere.OnAtVsBitSet(2);
            i_this->mSphere.SetAtHitMark(1);
            if(i_this->mInvulnerabilityTimer == 0 && i_this->mSphere.ChkAtHit()){
                i_this->mInvulnerabilityTimer = 4;
                i_this->enemy.speedF *= 0.5f;
            }
        } else {
             i_this->mSphere.OffAtSetBit();
        }
        if(fopAcM_checkCarryNow(actor)){ 
            i_this->mAction = 2;
            i_this->mMode = 0;
            i_this->field_0x6A2 = 0;
            i_this->field_0x6A0 = 0;
            i_this->mSpin = 0;
            i_this->mCarryAngleSpeed = 0;
            if(i_this->mAcch.ChkWaterHit() != 0){
                mDoAud_seStart(Z2SE_EN_MM_MET_LIFT_WTR, &i_this->enemy.current.pos, 0,0);
            }
            i_this->mSphere.OffAtSetBit();
            return;
        } 
        if(fopAcM_CheckStatus(actor, 0x200) != 0 && i_this->mInvulnerabilityTimer == 0){
            i_this->mAction = 1;
            i_this->mMode = -10;
            i_this->field_0x68A[0] = false;
            i_this->mSphere.OffCoSetBit();
            i_this->enemy.shape_angle = i_this->mRotation;

            fopAc_ac_c* player = (fopAc_ac_c*) dComIfGp_getPlayer(0);
            s16 sVar1 = i_this->enemy.shape_angle.y - (s16)(player->shape_angle.y + 0x4000);
            if(sVar1 > 0x4000 || sVar1 < -0x4000){
                i_this-> mCarryAngle = -0x8000;
                return;
            } 
            i_this->mCarryAngle = 0;
        }
    }
}

/* ############################################################################################## */
/* 807258F8-807258FC 0000A0 0004+00 0/2 0/0 0/0 .rodata          @4730 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4730 = 50.0f;
// COMPILER_STRIP_GATE(0x807258F8, &lit_4730);
// #pragma pop

/* 807258FC-80725900 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4731 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4731 = 40.0f;
// COMPILER_STRIP_GATE(0x807258FC, &lit_4731);
// #pragma pop

/* 80725900-80725904 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4732 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4732 = 5500.0f;
// COMPILER_STRIP_GATE(0x80725900, &lit_4732);
// #pragma pop

/* 80725904-80725908 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4733 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4733 = 5000.0f;
// COMPILER_STRIP_GATE(0x80725904, &lit_4733);
// #pragma pop

/* 80725908-8072590C 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4734 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4734 = 3000.0f;
// COMPILER_STRIP_GATE(0x80725908, &lit_4734);
// #pragma pop

/* 8072590C-80725910 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4735 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4735 = 4000.0f;
// COMPILER_STRIP_GATE(0x8072590C, &lit_4735);
// #pragma pop

/* 80725910-80725914 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4736 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4736 = 7.0f / 10.0f;
// COMPILER_STRIP_GATE(0x80725910, &lit_4736);
// #pragma pop

/* 80725914-80725918 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4737 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4737 = -60.0f;
// COMPILER_STRIP_GATE(0x80725914, &lit_4737);
// #pragma pop

/* 80725918-8072591C 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4738 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4738 = -90.0f;
// COMPILER_STRIP_GATE(0x80725918, &lit_4738);
// #pragma pop

// /* 8072591C-80725920 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4739 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4739 = 60.0f;
// COMPILER_STRIP_GATE(0x8072591C, &lit_4739);
// #pragma pop

// /* 80725920-80725924 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4740 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4740 = 20000.0f;
// COMPILER_STRIP_GATE(0x80725920, &lit_4740);
// #pragma pop

/* 80724190-80724D40 001290 0BB0+00 1/1 0/0 0/0 .text            action__FP13e_mm_mt_class */
static void action(e_mm_mt_class* i_this) {
    fopAc_ac_c* unusedPlayer = dComIfGp_getPlayer(0);
    fopAc_ac_c* actor = static_cast<fopAc_ac_c*>(&i_this->enemy);
    cXyz tgHitPosDist;
    cXyz tgHitPosAbove;

    fopAc_ac_c* helamsaurActor;

    s16 distAngle = 0;
    e_mm_class* helmasaur = NULL;
    if (fopAcM_SearchByID(actor->parentActorID, &helamsaurActor) && helamsaurActor != NULL) {
        helmasaur = (e_mm_class*)helamsaurActor;
    }

    cXyz* ccMove_p = i_this->mStts.GetCCMoveP();
    if (helmasaur != NULL) {
        helmasaur->field_0x674.x = ccMove_p->x;
        helmasaur->field_0x674.z = ccMove_p->z;
    }

    switch (i_this->mAction) {
    case 0:
        e_mm_mt_normal(i_this);
        i_this->mAcch.CrrPos(dComIfG_Bgsp());
        if (helmasaur != NULL) {
            distAngle = cLib_distanceAngleS(helmasaur->enemy.shape_angle.y - (s16)0x8000,
                                            fopAcM_searchPlayerAngleY(actor));
            if (distAngle > 0x3000 || distAngle < -0x3000 || i_this->mAction != 0) {
                i_this->mSphere.OnTgShield();
                i_this->mSphere.SetTgHitMark(CcG_Tg_UNK_MARK_2);
                i_this->mSphere.SetTgSe(9);
                i_this->mSphere.OnTgNoHitMark();
            } else {
                i_this->mSphere.OffTgShield();
                i_this->mSphere.SetTgHitMark(CcG_Tg_UNK_MARK_0);
                i_this->mSphere.SetTgSe(0);
                i_this->mSphere.OffTgNoHitMark();
            }
        }

        break;
    case 1:
        e_mm_mt_hagare(i_this);
        i_this->mAcch.CrrPos(dComIfG_Bgsp());
        i_this->mRotation = actor->shape_angle;

        break;
    case 2:
        e_mm_mt_carry(i_this);
        i_this->mInvulnerabilityTimer = 3;
        i_this->mAcchCir.SetWall(20.0f, 20.0f);
        i_this->mAcch.CrrPos(dComIfG_Bgsp());

        break;
    case 3:
        e_mm_mt_drop(i_this);
        i_this->field_0x6A8 = actor->speed.y;

        if (i_this->mSphere.ChkCoHit()) {
            cXyz* ccMove_p = i_this->mStts.GetCCMoveP();

            if (ccMove_p != NULL) {
                actor->current.pos.x += ccMove_p->x * 0.5f;
                actor->current.pos.z += ccMove_p->z * 0.5f;

                if (fabsf(ccMove_p->x) >= 2.0f || fabsf(ccMove_p->z) >= 2.0f) {
                    cLib_addCalc2(&i_this->field_0x69C, NREG_F(5) + 1000.0f, 0.1f,
                                  NREG_F(6) + 200.0f);
                    s16 playerAngleY = fopAcM_searchPlayerAngleY(actor);
                    s16 playerAngleDelta = i_this->mRotation.y - playerAngleY;
                    if (playerAngleDelta > 0x4000 || playerAngleDelta < -0x4000) {
                        playerAngleY += (s16)0x8000;
                    }
                    cLib_addCalcAngleS2(&i_this->mRotation.y, playerAngleY, 4, 0x100);
                }
            }
        }
        i_this->mAcchCir.SetWall(50.0f, 50.0f);
        i_this->mAcch.CrrPos(dComIfG_Bgsp());
        break;
    }

    fopEn_enemy_c* enemy = (fopEn_enemy_c*)actor;
    setMidnaBindEffect(enemy, &i_this->mSound, &actor->current.pos,
                       &actor->scale);

    if (i_this->mInvulnerabilityTimer == 0) {
        i_this->mStts.Move();
        if (i_this->mSphere.ChkTgHit()) {
            i_this->mInvulnerabilityTimer = 10;
            i_this->mAtInfo.mpCollider = i_this->mSphere.GetTgHitObj();
            if (i_this->mSphere.GetTgHitObj()->ChkAtType(0x80)) {
                i_this->mSound.startCollisionSE(0x40018, 45);
            }
            if (helmasaur != NULL && helmasaur->field_0x672 != 0) {
                if (i_this->mSphere.GetTgSe() == 9 ||
                   (i_this->mSphere.GetTgHitObj()->ChkAtType(0x8000000) &&
                    helmasaur->action == 2)) {
                    tgHitPosDist = actor->current.pos - *i_this->mSphere.GetTgHitPosP();
                    csXyz hitMarkAngle;
                    tgHitPosAbove.set(*i_this->mSphere.GetTgHitPosP());
                    if (i_this->mSphere.GetTgHitObj()->ChkAtType(16)) {
                        tgHitPosAbove.y += 100.0f;
                    }
                    hitMarkAngle.x = 0;
                    hitMarkAngle.y = (s16)tgHitPosDist.atan2sX_Z();
                    hitMarkAngle.z = 0;
                    def_se_set(&i_this->mSound, i_this->mAtInfo.mpCollider, 40, actor);

                    cCcD_Obj* collider = i_this->mAtInfo.mpCollider;
                    dComIfGp_setHitMark(2, actor, &tgHitPosAbove, &hitMarkAngle, NULL, 0);
                    helmasaur->field_0xb99 |= (s8)0x2;
                    i_this->mSphere.ClrTgHit();
                } else {
                    if ((helmasaur->field_0xb99 & 0x8) == 0 &&
                        (helmasaur->field_0xb99 & 0x10) == 0)
                    {
                        s16 health = actor->health;
                        cc_at_check(actor, &i_this->mAtInfo);
                        helmasaur->atInfo.mpCollider = i_this->mAtInfo.mpCollider;
                        helmasaur->field_0x6ac = i_this->mAtInfo.mHitDirection.y;
                        i_this->mInvulnerabilityTimer = 8;

                        if ((s32)actor->health <= 2000 - helmasaur->enemy.field_0x560) {
                            helmasaur->field_0xb99 |= (s8)0x10;
                            if (i_this->mAtInfo.mHitType == 1 ||
                                i_this->mAtInfo.mpCollider->ChkAtType(8))
                            {
                                if (!daPy_getPlayerActorClass()->checkCutJumpCancelTurn()) {
                                    dScnPly_c::setPauseTimer(5);
                                }
                            }

                            i_this->mSphere.OnTgShield();
                            i_this->mSphere.SetTgHitMark(CcG_Tg_UNK_MARK_2);
                            i_this->mSphere.SetTgSe(9);
                            i_this->mSphere.OffTgNoHitMark();
                        } else {
                            if (health != actor->health) {
                                i_this->mSound.startCreatureVoice(Z2SE_EN_MM_V_DAMAGE, -1);
                            } else {
                                i_this->mSound.startCreatureVoice(Z2SE_EN_MM_V_NO_DAMAGE, -1);
                            }

                            if (i_this->mAtInfo.mHitType == 1 ||
                                i_this->mAtInfo.mpCollider->ChkAtType(8))
                            {
                                if (!daPy_getPlayerActorClass()->checkCutJumpCancelTurn()) {
                                    dScnPly_c::setPauseTimer(2);
                                }
                            }

                            helmasaur->field_0xb99 |= (s8)0x8;
                        }

                        i_this->mSphere.ClrTgHit();
                    }
                }
            } else {
                tgHitPosDist = actor->current.pos - *i_this->mSphere.GetTgHitPosP();
                csXyz local_84;
                tgHitPosAbove.set(*i_this->mSphere.GetTgHitPosP());

                if (i_this->mSphere.GetTgHitObj()->ChkAtType(16)) {
                    tgHitPosAbove.y += 100.0f;
                }

                local_84.x = 0;
                local_84.y = (s16)tgHitPosDist.atan2sX_Z();
                local_84.z = 0;
                cCcD_Obj* collider = i_this->mAtInfo.mpCollider;
                def_se_set(&i_this->mSound, i_this->mAtInfo.mpCollider, 40, actor);
                dComIfGp_setHitMark(2, actor, &tgHitPosAbove, &local_84, NULL, 0);

                fopAc_ac_c* local_a4 = at_power_check(&i_this->mAtInfo);

                if (i_this->mAtInfo.mHitType == 1) {
                    if (daPy_getPlayerActorClass()->getCutType() == 8 ||
                        daPy_getPlayerActorClass()->getCutType() == 9 ||
                        daPy_getPlayerActorClass()->getCutType() == 23 ||
                        daPy_getPlayerActorClass()->getCutType() == 24) {
                        actor->speedF = cM_rndF(10.0f) + 40.0f +  TREG_F(16);
                        i_this->mSpin = (s16)(cM_rndF(2000.0f) + 5500.0f);
                        i_this->field_0x69C = (f32)(s16)(cM_rndF(1000.0f) + 5000.0f);
                    } else {
                        actor->speedF = TREG_F(17) + 30.0f;
                        i_this->mSpin = (s16)cM_rndFX(3000.0f);
                        i_this->field_0x69C = NREG_F(10) + 4000.0f;
                    }
                } else {
                    if (local_a4 != 0) {
                        actor->speedF = local_a4->speedF * 0.7f;
                        actor->current.angle.y = local_a4->current.angle.y + (s16)cM_rndFX(5000.0f);
                    }
                    i_this->mSpin = (s16)cM_rndFX(3000.0f);
                    i_this->field_0x69C = NREG_F(10) + 4000.0f;
                }

                i_this->mSphere.ClrTgHit();
            }
        }
    }

    if (helmasaur != NULL && helmasaur->field_0x672 != 0 && helmasaur->field_0xb99 != 4)
    {
        i_this->mpModel->setBaseTRMtx(helmasaur->modelMorf->getModel()->getAnmMtx(11));
    } else {
        i_this->field_0x6A0 = i_this->field_0x69C * cM_ssin(i_this->lifetime * (NREG_S(3) + 3000));
        i_this->field_0x6A2 = i_this->field_0x69C * cM_ssin(i_this->lifetime * (NREG_S(4) + 4000));

        cLib_addCalc0(&i_this->field_0x69C, 0.1f, NREG_F(1) + 50.0f);
        cLib_addCalcAngleS2(&i_this->mSpin, 0, 1, TREG_S(5) + 50);
        mDoMtx_stack_c::transS(actor->current.pos.x, actor->current.pos.y,
                               actor->current.pos.z);
        cMtx_YrotS(*calc_mtx, i_this->mRotation.y);

        if (fopAcM_checkCarryNow(actor)) {
            tgHitPosDist.x = 30.0f;
        } else {
            tgHitPosDist.x = 0.0f;
        }

        tgHitPosDist.y = 0.0f;
        tgHitPosDist.z = 0.0f;
        MtxPosition(&tgHitPosDist, &tgHitPosAbove);
        mDoMtx_stack_c::transM(tgHitPosAbove.x, tgHitPosAbove.y, tgHitPosAbove.z);

        mDoMtx_stack_c::YrotM((s16)i_this->mRotation.y);
        mDoMtx_stack_c::XrotM((s16)i_this->field_0x6A0);
        mDoMtx_stack_c::ZrotM(i_this->mRotation.z + i_this->field_0x6A2);
        mDoMtx_stack_c::scaleM(actor->scale.x, actor->scale.x, actor->scale.x);
        i_this->mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    }

    cXyz curPos = actor->current.pos;
    if (helmasaur != NULL && helmasaur->field_0x672 != 0) {
        fopAc_ac_c* parentActor;
        if (fopAcM_SearchByID(actor->parentActorID, &parentActor) && parentActor != 0) {
            cMtx_YrotS(*calc_mtx, parentActor->shape_angle.y);
            if (actor->argument != 1) {
                tgHitPosDist.x = JREG_F(8);
                tgHitPosDist.y = JREG_F(9) + -60.0f;
                tgHitPosDist.z = JREG_F(10) + 20.0f;
            } else {
                tgHitPosDist.x = JREG_F(11);
                tgHitPosDist.y = JREG_F(12) + -90.0f;
                tgHitPosDist.z = JREG_F(13) + 50.0f;
            }
            MtxPosition(&tgHitPosDist, &curPos);
            curPos += actor->current.pos;
        } else {
            helmasaur->field_0x672 = 0;
        }
    } else {
        cMtx_XrotS(*calc_mtx, i_this->mRotation.z);
        tgHitPosDist.x = 0.0f;
        tgHitPosDist.y = -(actor->scale.x * 30.0f);
        tgHitPosDist.z = 0.0f;
        MtxPosition(&tgHitPosDist, &curPos);
        curPos += actor->current.pos;
    }
    i_this->mSph.SetC(curPos);

    if (i_this->mAction == 1) {
        i_this->mSph.SetR((JREG_F(15) + 60.0f) * actor->scale.x);
    } else if (i_this->mAction == 2) {
        i_this->mSph.SetR((JREG_F(16) + 100.0f) * actor->scale.x);
    } else {
        i_this->mSph.SetR((JREG_F(17) + 50.0f) * actor->scale.x);
    }

    dComIfG_Ccsp()->Set(&i_this->mSph);

    if (i_this->mInvulnerabilityTimer != 0) {
        curPos.y += 20000.0f;
    }
    i_this->mSphere.SetC(curPos);

    i_this->mSphere.SetR((JREG_F(14) + 40.0f) * actor->scale.x);

    dComIfG_Ccsp()->Set(&i_this->mSphere);
}

/* 80724D40-80724DF4 001E40 00B4+00 2/1 0/0 0/0 .text daE_MM_MT_Execute__FP13e_mm_mt_class */
static int daE_MM_MT_Execute(e_mm_mt_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*) i_this;
    i_this->lifetime++;

    for(s32 i = 0; i < 2; i++){
        if(i_this->mTimer[i] != 0){
            i_this->mTimer[i]--;
        }
    }
    if(i_this->mInvulnerabilityTimer != 0){
        i_this->mInvulnerabilityTimer--;
    }
    action(i_this);
    fopAcM_OffStatus(actor, fopAcM_STATUS_UNK_0x200);
    i_this->mSound.framework(0, dComIfGp_getReverb(fopAcM_GetRoomNo(actor)));
    return true;
}

/* 80724DF4-80724DFC 001EF4 0008+00 1/0 0/0 0/0 .text daE_MM_MT_IsDelete__FP13e_mm_mt_class */
static int daE_MM_MT_IsDelete(e_mm_mt_class* i_this) {
    return 1;
}

/* 80724DFC-80724E58 001EFC 005C+00 1/0 0/0 0/0 .text            daE_MM_MT_Delete__FP13e_mm_mt_class
 */
static int daE_MM_MT_Delete(e_mm_mt_class* i_this) {
    dComIfG_resDelete(&i_this->mPhase, "E_MM_MT");
    if (i_this->enemy.heap != NULL){
        i_this->mSound.deleteObject();
    }
    return 1;
}

/* 80724E58-80724EE0 001F58 0088+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    J3DModelData* i_modelData;
    s64 resource_index = 4;

    if (i_this->argument == 1) {
        resource_index = 3;
    }
    i_modelData = (J3DModelData*) dComIfG_getObjectRes("E_MM_MT",resource_index);
    JUT_ASSERT(1197, i_modelData != NULL);

    ((e_mm_mt_class*)i_this)->mpModel = mDoExt_J3DModel__create(i_modelData, 0x80000, 0x11000084);

    if (((e_mm_mt_class*)i_this)->mpModel == NULL) {
        return 0;
    }

    return 1;
}

// /* ############################################################################################## */
// /* 80725924-80725928 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4896 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4896 = -200.0f;
// COMPILER_STRIP_GATE(0x80725924, &lit_4896);
// #pragma pop

// /* 80725928-8072592C 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4897 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4897 = 65535.0f;
// COMPILER_STRIP_GATE(0x80725928, &lit_4897);
// #pragma pop

// /* 8072596C-807259AC 000038 0040+00 1/1 0/0 0/0 .data            cc_sph_src$4792 */
// static dCcD_SrcSph cc_sph_src = {
//     {
//         {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0xd}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
//         {dCcD_SE_METAL, 0x0, 0x1, 0x0, 0x0}, // mGObjAt
//         {dCcD_SE_NONE, 0x2, 0x0, 0x0, 0x407}, // mGObjTg
//         {0x0}, // mGObjCo
//     }, // mObjInf
//     {
//         {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
//     } // mSphAttr
// };

// /* 807259AC-807259EC 000078 0040+00 1/1 0/0 0/0 .data            hk_sph_src$4793 */
// static dCcD_SrcSph hk_sph_src = {
//     {
//         {0x0, {{0x0, 0x0, 0x0}, {0x4080, 0x3}, 0x0}}, // mObj
//         {dCcD_SE_13, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
//         {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x406}, // mGObjTg
//         {0x0}, // mGObjCo
//     }, // mObjInf
//     {
//         {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
//     } // mSphAttr
// };

/* 80724EE0-80725218 001FE0 0338+00 1/0 0/0 0/0 .text            daE_MM_MT_Create__FP10fopAc_ac_c */
static int daE_MM_MT_Create(fopAc_ac_c* i_this) {
    cPhs__Step cVar1;
    bool bVar2;
    float fVar3;
    
    e_mm_mt_class* helmasaurShell = (e_mm_mt_class*) i_this;
    fopAc_ac_c* actor = (fopAc_ac_c*) i_this;

    if(fopAcM_CheckCondition(i_this, fopAcCnd_INIT_e) == 0){
        fopAcM_ct(i_this, e_mm_mt_class);
    }   

    s32 phase = dComIfG_resLoad(&helmasaurShell->mPhase, "E_MM_MT");
    if(phase == cPhs_COMPLEATE_e){
        OS_REPORT("E_MM_MT PARAM %x\n", fopAcM_GetParam(i_this));
        *(u8*)helmasaurShell->parameters = fopAcM_GetParam(i_this);
        OS_REPORT("E_MM_MT//////////////E_MM_MT SET 1 !!\n");
        

        if(fopAcM_entrySolidHeap(i_this, useHeapInit, 0x850) == 0){
            OS_REPORT("//////////////E_MM_MT SET NON !!\n");
            return 5;
        }
        OS_REPORT("//////////////E_MM_MT SET 2 !!\n");
        fopAcM_SetMtx(i_this, helmasaurShell->mpModel->getBaseTRMtx());
        fopAcM_SetMin(i_this, -200.0f, -200.0f, -200.0f);
        fopAcM_SetMax(i_this, 200.0f, 200.0f, 200.0f);
        helmasaurShell->mStts.Init(100,0,i_this);
        if(i_this->argument == 1){
            helmasaurShell->mStts.SetWeight(0xFE);

        } else {
            helmasaurShell->mStts.SetWeight(200);
        }

        i_this->health = 2000;
        i_this->field_0x560 = 2000;
        static dCcD_SrcSph cc_sph_src = {
            {
                //
                {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0xd}, {0xd8fbfdff, 0x3}, 0x75}},  // mObj  
                {dCcD_SE_METAL, 0x0, 0x1, 0x0, 0x0},                // mGObjAt
                {dCcD_SE_NONE, 0x2, 0x0, 0x0, 0x407},                // mGObjTg
                {0x0},                                             // mGObjCo
            },                                                     // mObjInf
            {
                {{0.0f, 0.0f, 0.0f}, 40.0f}  // mSphere
            }  // mSphAttr
        };


        helmasaurShell->mSphere.Set(cc_sph_src);
        helmasaurShell->mSphere.SetStts(&helmasaurShell->mStts);
        if(i_this->argument == 1){
            fopAcM_OffStatus(i_this, 0x80000);
            helmasaurShell->mSphere.SetAtType(0xd8fbbdff);
            helmasaurShell->mStts.SetWeight(0xFE);
            helmasaurShell->mSphere.SetAtAtp(2);
        } else {
            static dCcD_SrcSph hk_sph_src = {
                {
                    {0x0, {{0x0, 0x0, 0x0}, {0x4080, 0x3}, 0x0}},  // mObj  
                    {dCcD_SE_13, 0x0, 0x0, 0x0, 0x0},                // mGObjAt
                    {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x406},                // mGObjTg
                    {0x0},                                             // mGObjCo
                },                                                     // mObjInf
                {
                    {{0.0f, 0.0f, 0.0f}, 40.0f}  // mSphere
                }  
            };
            helmasaurShell->mStts.SetWeight(200);
            helmasaurShell->mSph.Set(hk_sph_src);
            helmasaurShell->mSph.SetStts(&helmasaurShell->mStts);
        }
        helmasaurShell->mAcch.Set(fopAcM_GetPosition_p(i_this), fopAcM_GetOldPosition_p(i_this), i_this, 1,
                        &helmasaurShell->mAcchCir, fopAcM_GetSpeed_p(i_this), NULL, NULL);

        helmasaurShell->mAcchCir.SetWall(50.0f, 50.0f);
        helmasaurShell->mSound.init(&i_this->current.pos, &i_this->eyePos, 3, 1);
        helmasaurShell->mAtInfo.mpSound = &helmasaurShell->mSound;
        helmasaurShell->mAtInfo.mPowerType = 9;
        i_this->attention_info.distances[4] = 7;
        helmasaurShell->lifetime = (short)(int)cM_rndF(65535.0f);
        daE_MM_MT_Execute(helmasaurShell);
    } 
    //return cPhs_ERROR_e;
    return phase;
}

/* 807259EC-80725A0C -00001 0020+00 1/0 0/0 0/0 .data            l_daE_MM_MT_Method */
static actor_method_class l_daE_MM_MT_Method = {
    (process_method_func)daE_MM_MT_Create,
    (process_method_func)daE_MM_MT_Delete,
    (process_method_func)daE_MM_MT_Execute,
    (process_method_func)daE_MM_MT_IsDelete,
    (process_method_func)daE_MM_MT_Draw,
};

/* 80725A0C-80725A3C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_MM_MT */
extern actor_process_profile_definition g_profile_E_MM_MT = {
  fpcLy_CURRENT_e,        // mLayerID
  8,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_MM_MT,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(e_mm_mt_class),  // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  168,                    // mPriority
  &l_daE_MM_MT_Method,    // sub_method
  0x000C0100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
