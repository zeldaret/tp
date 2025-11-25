/**
 * @file d_a_e_mm_mt.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep
#include "d/actor/d_a_e_mm_mt.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
#include "f_op/f_op_actor_enemy.h"

/* 80722F78-8072305C 000078 00E4+00 1/0 0/0 0/0 .text            daE_MM_MT_Draw__FP13e_mm_mt_class
 */
static int daE_MM_MT_Draw(e_mm_mt_class* i_this) {
    i_this->model = i_this->mpModel;

    g_env_light.settingTevStruct(0, &i_this->current.pos, &i_this->tevStr);
    g_env_light.setLightTevColorType_MAJI(i_this->mpModel, &i_this->tevStr);

    mDoExt_modelUpdateDL(i_this->mpModel);
    
    cXyz local_18(i_this->current.pos.x, i_this->current.pos.y + 100, i_this->current.pos.z);

    if (!fopAcM_CheckStatus(i_this, fopAcM_STATUS_CARRY_NOW)) {
        i_this->mShadowKey = dComIfGd_setShadow(
            i_this->mShadowKey, 1, i_this->mpModel, &local_18, 700.0f, 0.0f,
            i_this->current.pos.y, i_this->mAcch.GetGroundH(), i_this->mAcch.m_gnd,
            &i_this->tevStr, 0, 1.0, dDlst_shadowControl_c::getSimpleTex()
        );
    }

    return 1;
}




/* 8072305C-80723270 00015C 0214+00 2/2 0/0 0/0 .text            e_mm_hookCheck__FP13e_mm_mt_class
 */
static bool e_mm_hookCheck(e_mm_mt_class* i_this) {

    cCcD_Obj* hitObject;
    cXyz VStack_18;
    u32 uVar3;

    if (i_this->argument == 1) {
        return false;
    }

    if (i_this->mSphere.ChkTgHit() 
        && i_this->mSphere.GetTgHitObj()->ChkAtType(AT_TYPE_HOOKSHOT)
        || fopAcM_CheckStatus(i_this, 0x100000)) {
        i_this->field_0x69C = 0.0f;
        i_this->field_0x68A[0] = true;
        cXyz local_24 = i_this->current.pos;
        if(i_this->mAction == 1){
            local_24. y -=20.0f;
        } else {
            local_24.y += 20.0f;
        }
        // local_24.y += ((i_this->mAction == 1) ? -20.0f : 20.0f);
        mDoMtx_stack_c::transS(i_this->current.pos);
        mDoMtx_stack_c::ZXYrotM(i_this->shape_angle);
        mDoMtx_stack_c::inverse();
        mDoMtx_stack_c::multVec(&local_24, &VStack_18);
        daPy_py_c* pdVar3 = daPy_getPlayerActorClass();
        pdVar3->setHookshotCarryOffset(fopAcM_GetID(i_this), &VStack_18);
        return 1;
    }
    

    if(i_this->field_0x68A[0]) {
        if(daPy_getPlayerActorClass()->setForceGrab(i_this, 0, 1) != 0){
            i_this->mAction = 2;
            i_this->mMode = 0;
            i_this->field_0x69C = 0.0f;
            i_this->field_0x6A2 = 0;
            i_this->field_0x6A0 = 0;
            i_this->mSpin = 0;
            i_this->mCarryAngleSpeed = 0;
            if(i_this->mAcch.ChkWaterHit() != 0){
                mDoAud_seStart(Z2SE_EN_MM_MET_LIFT_WTR,&i_this->current.pos,0,0);
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
    // NONMATCHING
    fopAc_ac_c* a_this;
    dBgS_LinChk lin_chk;
    cXyz acStack_28 [2];

    a_this = dComIfGp_getPlayer(0);
    if (fopAcM_SearchByID(i_this->parentActorID, &a_this) != 0) {
        i_this->scale.x = a_this->scale.x;
        i_this->shape_angle.y = a_this->shape_angle.y - 0x4000;


        MtxPosition(acStack_28, &i_this->current.pos);
        i_this->eyePos = a_this->eyePos;
        i_this->attention_info.position = i_this->eyePos;
        fopAcM_OffStatus(i_this,0); // unsure. Delete if posssible
        
        if(i_this->mInvulnerabilityTimer == 0 && i_this->field_0xB98){
            i_this->mSphere.OnAtSetBit();
            if(i_this->mSphere.ChkAtShieldHit()){
                i_this->mInvulnerabilityTimer = 15;
                i_this->field_0xB99 |= 1;
                i_this->mAtInfo.mpCollider = i_this->mSphere.GetAtHitObj(); 
                i_this->mSphere.SetAtSe(9);
            }
        } else {
            i_this->mSphere.OffAtSetBit();
        }
        if(i_this->argument != 1 
            && ((i_this->mSphere.ChkTgHit() 
            && i_this->mSphere.GetTgHitObj()->ChkAtType(AT_TYPE_HOOKSHOT)) 
            || fopAcM_CheckStatus(i_this, 0x100000))) {
                i_this->field_0xB99 |= 4;
        }
        if(i_this->field_0x672 == 0){
            i_this->mAction = 1;
            i_this->mMode = 0;
            i_this->field_0x68A[0] = 0;
            i_this->mAcch.OnLineCheck();
            i_this->mSphere.OnTgShield();
            i_this->mSphere.SetTgHitMark(CcG_Tg_UNK_MARK_2);
            i_this->mSphere.SetTgSe(9);
            i_this->mSphere.OffTgHookShotNoHitMark();
            i_this->mSphere.OffTgNoHitMark();
            fopAcM_SetGroup(i_this, 3);
            fopAcM_OffStatus(i_this, 0);
            i_this->attention_info.flags &= 0xFFFFFFFB;
            i_this->attention_info.distances[2] = 0;
            fopAcM_OnStatus(i_this, 0x400);
            s16 angle = i_this->shape_angle.y - a_this->shape_angle.y + 0x4000;
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
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4008 = 150.0f;
COMPILER_STRIP_GATE(0x80725890, &lit_4008);
#pragma pop

/* 80725894-80725898 00003C 0004+00 0/1 0/0 0/0 .rodata          @4009 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4009 = 3.0f;
COMPILER_STRIP_GATE(0x80725894, &lit_4009);
#pragma pop

/* 80725898-8072589C 000040 0004+00 0/1 0/0 0/0 .rodata          @4010 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4010 = 3.0f / 20.0f;
COMPILER_STRIP_GATE(0x80725898, &lit_4010);
#pragma pop

/* 8072589C-807258A0 000044 0004+00 0/2 0/0 0/0 .rodata          @4011 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4011 = 2000.0f;
COMPILER_STRIP_GATE(0x8072589C, &lit_4011);
#pragma pop

/* 807258A0-807258A4 000048 0004+00 0/2 0/0 0/0 .rodata          @4012 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4012 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x807258A0, &lit_4012);
#pragma pop

/* 807258A4-807258A8 00004C 0004+00 0/4 0/0 0/0 .rodata          @4013 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4013 = 200.0f;
COMPILER_STRIP_GATE(0x807258A4, &lit_4013);
#pragma pop

/* 807258A8-807258AC 000050 0004+00 0/1 0/0 0/0 .rodata          @4014 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4014 = 59.0f / 20.0f;
COMPILER_STRIP_GATE(0x807258A8, &lit_4014);
#pragma pop

/* 807258AC-807258B0 000054 0004+00 0/2 0/0 0/0 .rodata          @4015 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4015 = 5.0f;
COMPILER_STRIP_GATE(0x807258AC, &lit_4015);
#pragma pop

/* 807258B0-807258B4 000058 0004+00 0/3 0/0 0/0 .rodata          @4016 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4016 = 30.0f;
COMPILER_STRIP_GATE(0x807258B0, &lit_4016);
#pragma pop

/* 807258B4-807258B8 00005C 0004+00 0/3 0/0 0/0 .rodata          @4017 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4017 = 0.5f;
COMPILER_STRIP_GATE(0x807258B4, &lit_4017);
#pragma pop

/* 807234E8-80723744 0005E8 025C+00 1/1 0/0 0/0 .text            e_mm_mt_hagare__FP13e_mm_mt_class
 */
static void e_mm_mt_hagare(e_mm_mt_class* i_this) {
    // NONMATCHING

    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    cXyz local_30;
    cXyz local_3c = player->current.pos - i_this->current.pos;
    local_30 = local_3c;
    local_30.y += 150.0f;
    i_this->current.angle.y = local_30.atan2sX_Z();
    cMtx_YrotS(*calc_mtx, i_this->current.angle.y);
    cMtx_YrotM(*calc_mtx, local_30.atan2sY_XZ());
    local_30.x = 0.0f;
    local_30.y = 0.0f;
    local_30.z = i_this->speedF;
    MtxPosition(&local_30, &i_this->speed);
    if(e_mm_hookCheck(i_this) == 0){
        if(i_this->mMode) {
            if(i_this->mMode <= -1 && i_this->mMode == -10){
                cLib_addCalc2(&i_this->speedF, 1.0f, 3.0f, 0.15f); 
                cLib_addCalc2(&i_this->field_0x69C, 1.0f, 2000.0f, 0.15f);
                if(i_this->speedF >= 2.09f){
                    i_this->mMode = 0;
                }
                cLib_addCalc2(&i_this->speedF, 1.0f, 100.0f, 0.15f);

            }
            i_this->current.pos += i_this->speed;
            i_this->eyePos = i_this->current.pos;
            i_this->attention_info.position = i_this->current.pos;
            s16 sVar6;
            if(i_this->mCarryAngle == 0){
                sVar6 = -0.4000;
            } else {
                sVar6 = 0x4000;
            }
            s16 spA = i_this->speedF * 30.0f;
            cLib_addCalcAngleS2(&i_this->shape_angle.y, 
                            player->shape_angle.y + (i_this->mCarryAngle + 0x4000),
                            4,
                            spA + 0x100);
            cLib_addCalcAngleS2(&i_this->shape_angle.z, sVar6, 4, spA);
            cXyz local_48 = player->current.pos - i_this->current.pos;
            i_this->mAction = 3;
            i_this->mMode = 0;
            i_this->mSphere.OnCoSetBit();
            i_this->field_0x68A[0] = 0;
            i_this->speedF += 0.5f;
            return;
        }
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
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4092 = -G_CM3D_F_INF;
COMPILER_STRIP_GATE(0x807258C4, &lit_4092);
#pragma pop

/* 80723744-807239CC 000844 0288+00 1/1 0/0 0/0 .text            e_mm_mt_carry__FP13e_mm_mt_class */
static void e_mm_mt_carry(e_mm_mt_class* i_this) {
    // NONMATCHING
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    switch(i_this->mMode){
        case 0: 
            cLib_offBit<u32>(i_this->attention_info.flags, fopAc_AttnFlag_CARRY_e);
            i_this->mMode = 1;
            s16 angle_delta_y = i_this->mRotation.y - (player->shape_angle.y + 0x4000);
            if (angle_delta_y > 0x4000 || angle_delta_y < -0x4000){
                i_this->mCarryAngle = -0x8000;
            } else {
                i_this->mCarryAngle  = 0;
            }
            break;
        
        case 1:
            if(fopAcM_checkCarryNow(i_this) == 0) {
             i_this->mAction = 3;
             i_this->mSphere.OnCoSetBit();
             i_this->field_0x68A[0] = false;
             if(i_this->speedF > 1.0f || i_this->speedF > 10.0f){
                i_this->speedF = i_this->speedF * 0.25f + 30.0f;
                i_this->speed.y = 30.0f;
                i_this->current.angle.y = player->shape_angle.y;
                i_this->mMode = 0;
             } else {
                i_this->speedF = 0.0f;
                i_this->speed.y = 0.0f;
                i_this->mMode  = 5;
                i_this->field_0x69C = 0x447a0000;
                if(i_this->mAcch.ChkWaterHit() != 0){
                    mDoAud_seStart(Z2SE_EN_MM_MET_PUT_WTR, &i_this->current.pos, 0, 0);
                } else {
                    mDoAud_seStart(Z2SE_EN_MM_MET_PUT_LND, &i_this->current.pos, 0, 0);
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
        i_this->field_0x698 = 0;
        i_this->eyePos = i_this->current.pos;
        i_this->attention_info.position = i_this->current.pos;
        //u32 temp = i_this->shape_angle.y + i_this->mCarryAngle;
        cLib_addCalcAngleS2(&i_this->mRotation.y, i_this->shape_angle.y + (i_this->mCarryAngle + 0x4000),
            1, i_this->mCarryAngleSpeed);
        cLib_addCalcAngleS2(&i_this->mRotation.z, -0x8000,1, i_this->mCarryAngleSpeed);
        cLib_addCalcAngleS2(&i_this->mCarryAngleSpeed, 0x2000, 1, 0x100);
    }
}

/* ############################################################################################## */
/* 807258C8-807258CC 000070 0004+00 0/1 0/0 0/0 .rodata          @4146 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4146 = -50.0f;
COMPILER_STRIP_GATE(0x807258C8, &lit_4146);
#pragma pop

/* 807239CC-80723B70 000ACC 01A4+00 1/1 0/0 0/0 .text            wall_angle_get__FP13e_mm_mt_class
 */
static int wall_angle_get(e_mm_mt_class* i_this) {
    fopAc_ac_c* a_this = static_cast<fopAc_ac_c*>(i_this);
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

/* ############################################################################################## */
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
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4343 = 1.5f;
COMPILER_STRIP_GATE(0x807258E0, &lit_4343);
#pragma pop

/* 807258E4-807258E8 00008C 0004+00 0/1 0/0 0/0 .rodata          @4344 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4344 = 1300.0f;
COMPILER_STRIP_GATE(0x807258E4, &lit_4344);
#pragma pop

/* 807258E8-807258EC 000090 0004+00 0/2 0/0 0/0 .rodata          @4345 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4345 = 2.0f;
COMPILER_STRIP_GATE(0x807258E8, &lit_4345);
#pragma pop

/* 807258EC-807258F0 000094 0004+00 0/1 0/0 0/0 .rodata          @4346 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4346 = -5.0f;
COMPILER_STRIP_GATE(0x807258EC, &lit_4346);
#pragma pop

/* 807258F0-807258F8 000098 0008+00 0/2 0/0 0/0 .rodata          @4348 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4348[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x807258F0, &lit_4348);
#pragma pop

/* 80723B70-80724190 000C70 0620+00 1/1 0/0 0/0 .text            e_mm_mt_drop__FP13e_mm_mt_class */
static void e_mm_mt_drop(e_mm_mt_class* i_this) {
    // NONMATCHING

    /*if(m != 5)
        if(m < 5 && m >= 0){
            
        } else{

         }
    
    else{

    }
    */

    if((e_mm_hookCheck(i_this) & 0xFF) == 0){
        if(i_this->mMode != 5){
            if(i_this->mMode < 5){ 
                if(i_this->mMode > -1) {
                    if(i_this->mTimer[1] == 0 && i_this->mAcch.ChkWallHit()){
                        s16 wall_angle = wall_angle_get(i_this);
                        if(wall_angle != 0x23){
                            s16 angle_delta = i_this->current.angle.y - wall_angle; 
                            i_this->mSpin = angle_delta * -0.3;
                            i_this->current.angle.y += (s16)(0x8000- (angle_delta << 1)); 
                            if(i_this->mAcch.ChkWaterHit() == 0){
                                mDoAud_seStart(Z2SE_EN_MM_MET_BOUND_LND, &i_this->current.pos, (u32)(i_this->speed.y), 0);
                            } else {
                                mDoAud_seStart(Z2SE_EN_MM_MET_BOUND_WTR, &i_this->current.pos, (u32)(i_this->speed.y), 0);
                            }
                            i_this->speedF *= 0.5f;
                            i_this->mTimer[1] = 10;
                        }
                    }
                    if(i_this->mAcch.ChkGroundHit()){
                        if(i_this->mMode < 4){
                            i_this->mMode += 1;
                        }
                        if(i_this->field_0x696[18] < -30.0f){

                            // i_this->speed.y = i_this->field_0x6A8 * -0.4f;
                            i_this->speedF *= 0.75;
                            if(i_this->mAcch.ChkWaterHit() == 0){
                                mDoAud_seStart(Z2SE_EN_MM_MET_BOUND_LND, &i_this->current.pos, (u32)(i_this->speed.y), 0);
                            }else{
                                mDoAud_seStart(Z2SE_EN_MM_MET_BOUND_WTR, &i_this->current.pos, (u32)(i_this->speed.y), 0);
                            }
                            
                            if(i_this->mSpin == 0){
                                i_this->mSpin = cM_rndFX(1300.0f);
                            }
                        } else {
                            i_this->mMode = 5;
                            if(i_this->mAcch.ChkWaterHit() == 0){
                                mDoAud_seStart(Z2SE_EN_MM_MET_BOUND_LND, &i_this->current.pos, 0, 0);
                            }else{
                                mDoAud_seStart(Z2SE_EN_MM_MET_BOUND_WTR, &i_this->current.pos, 0, 0);
                            }
                            
                        }
                    }
                }
            }
        } else {
            cLib_addCalc0(&i_this->speedF, 1.0, 2.0);
        }
        cMtx_YrotS(*calc_mtx, i_this->current.angle.y);
        cXyz local_28(0.0f, 0.0f, i_this->speedF);
        cXyz local_34;
        MtxPosition(&local_28, &local_34);
        i_this->speed.x = local_34.x;
        i_this->speed.z = local_34.z;
        i_this->current.pos.x += i_this->speed.x;
        i_this->current.pos.y += i_this->speed.y;
        i_this->current.pos.z += i_this->speed.z;
        i_this->speed.y -= 5;
        i_this->eyePos = i_this->current.pos;
        i_this->attention_info.position = i_this->current.pos;
        cLib_addCalcAngleS2(&i_this->mRotation.z,-0x8000,1,0x1000);
        cLib_onBit<u32>(i_this->attention_info.flags, fopAc_AttnFlag_CARRY_e);
        i_this->attention_info.distances[7] = '\a';
        i_this->mRotation.y += i_this->mSpin;
        if(i_this->speedF < 20.0f){
            i_this->mSphere.OffAtSetBit();
        } else {
            i_this->mSphere.OnAtSetBit();
            i_this->mSph.OffAtVsBitSet(12);
            i_this->mSph.OnAtVsBitSet(2);
            i_this->mSph.SetAtHitMark(1);
            if(i_this->mInvulnerabilityTimer == 0 && i_this->mSphere.ChkAtHit()){
                i_this->mInvulnerabilityTimer = 4;
                i_this->speedF *= 0.5f;
            }
        }
        if(fopAcM_checkCarryNow(i_this) != 0){ 

            i_this->mAction = 2;
            i_this->mMode = 0;
            //
            //
            i_this->mSpin = 0;
            i_this->mCarryAngleSpeed = 0;
            if(i_this->mAcch.ChkWaterHit() != 0){
                mDoAud_seStart(Z2SE_EN_MM_MET_LIFT_WTR, &i_this->current.pos, 0,0);
            }
            i_this->mSphere.OffAtSetBit();
        } else {
           if(fopAcM_CheckStatus(i_this, 0x200) != 0 && i_this->mInvulnerabilityTimer == 0){
                i_this->mAction = 1;
                i_this->mMode = -10;
                i_this->field_0x68A[0] = false;
                i_this->mSphere.OffCoSetBit();
                i_this->shape_angle = i_this->mRotation;

                fopAc_ac_c* pfVar4 = dComIfGp_getPlayer(0);
                s16 sVar1 = i_this->shape_angle.y - (pfVar4->shape_angle.y + 0x4000);
                if(sVar1 < 0x4001 && sVar1 > -0x4001){
                    i_this->mCarryAngle = 0;
                } else {
                    i_this-> mCarryAngle = -0x8000;
                }

            }
        }
    }
    return;

}

/* ############################################################################################## */
/* 807258F8-807258FC 0000A0 0004+00 0/2 0/0 0/0 .rodata          @4730 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4730 = 50.0f;
COMPILER_STRIP_GATE(0x807258F8, &lit_4730);
#pragma pop

/* 807258FC-80725900 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4731 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4731 = 40.0f;
COMPILER_STRIP_GATE(0x807258FC, &lit_4731);
#pragma pop

/* 80725900-80725904 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4732 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4732 = 5500.0f;
COMPILER_STRIP_GATE(0x80725900, &lit_4732);
#pragma pop

/* 80725904-80725908 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4733 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4733 = 5000.0f;
COMPILER_STRIP_GATE(0x80725904, &lit_4733);
#pragma pop

/* 80725908-8072590C 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4734 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4734 = 3000.0f;
COMPILER_STRIP_GATE(0x80725908, &lit_4734);
#pragma pop

/* 8072590C-80725910 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4735 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4735 = 4000.0f;
COMPILER_STRIP_GATE(0x8072590C, &lit_4735);
#pragma pop

/* 80725910-80725914 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4736 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4736 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80725910, &lit_4736);
#pragma pop

/* 80725914-80725918 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4737 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4737 = -60.0f;
COMPILER_STRIP_GATE(0x80725914, &lit_4737);
#pragma pop

/* 80725918-8072591C 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4738 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4738 = -90.0f;
COMPILER_STRIP_GATE(0x80725918, &lit_4738);
#pragma pop

/* 8072591C-80725920 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4739 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4739 = 60.0f;
COMPILER_STRIP_GATE(0x8072591C, &lit_4739);
#pragma pop

/* 80725920-80725924 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4740 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4740 = 20000.0f;
COMPILER_STRIP_GATE(0x80725920, &lit_4740);
#pragma pop

/* 80724190-80724D40 001290 0BB0+00 1/1 0/0 0/0 .text            action__FP13e_mm_mt_class */
static void action(e_mm_mt_class* i_this) {
    // NONMATCHING
    fopAc_ac_c *local_88 = dComIfGp_getPlayer(0);
    fopAc_ac_c *local_8c;
    //
    s32 sVar1 = fopAcM_SearchByID(i_this->parentActorID, &local_8c);
    fopAc_ac_c* pfVar15 = 0x0;
    if((sVar1 != 0) && (local_8c != NULL)){
        pfVar15 = local_8c;
    }
    if(pfVar15 != NULL){
        
    }
}

/* 80724D40-80724DF4 001E40 00B4+00 2/1 0/0 0/0 .text daE_MM_MT_Execute__FP13e_mm_mt_class */
static int daE_MM_MT_Execute(e_mm_mt_class* i_this) {
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
    fopAcM_OffStatus(i_this, fopAcM_STATUS_UNK_0x200);
    i_this->mSound.framework(0, dComIfGp_getReverb(fopAcM_GetRoomNo(i_this)));
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
    if (i_this->heap != NULL){
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

/* ############################################################################################## */
/* 80725924-80725928 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4896 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4896 = -200.0f;
COMPILER_STRIP_GATE(0x80725924, &lit_4896);
#pragma pop

/* 80725928-8072592C 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4897 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4897 = 65535.0f;
COMPILER_STRIP_GATE(0x80725928, &lit_4897);
#pragma pop

/* 8072596C-807259AC 000038 0040+00 1/1 0/0 0/0 .data            cc_sph_src$4792 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0xd}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_METAL, 0x0, 0x1, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x2, 0x0, 0x0, 0x407}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 807259AC-807259EC 000078 0040+00 1/1 0/0 0/0 .data            hk_sph_src$4793 */
static dCcD_SrcSph hk_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x4080, 0x3}, 0x0}}, // mObj
        {dCcD_SE_13, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x406}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 80724EE0-80725218 001FE0 0338+00 1/0 0/0 0/0 .text            daE_MM_MT_Create__FP10fopAc_ac_c */
static int daE_MM_MT_Create(fopAc_ac_c* i_this) {
    cPhs__Step cVar1;
    bool bVar2;
    float fVar3;
    
    e_mm_mt_class* a_this = (e_mm_mt_class*) i_this;

    if(fopAcM_CheckCondition(i_this, fopAcCnd_INIT_e) == 0){
        fopAcM_ct(a_this, e_mm_mt_class);

        fVar3 = cM_rndF(65535.0);
        
        a_this->mAcch.Set(fopAcM_GetPosition_p(a_this), fopAcM_GetOldPosition_p(a_this), a_this, 1, &a_this->mAcchCir,
            fopAcM_GetSpeed_p(a_this), NULL, NULL);
        dBgS_ObjAcch();
        daE_MM_MT_Execute(a_this);

        fopAcM_OnCondition(i_this, fopAcCnd_INIT_e);
    }

    if(dComIfG_resLoad(&a_this->mPhase, "E_MM_MT") == cPhs_COMPLEATE_e){
        OS_REPORT("E_MM_MT PARAM %x\n", fopAcM_GetParam(i_this));
        a_this->parameters = fopAcM_GetParam(i_this);
        OS_REPORT("E_MM_MT//////////////E_MM_MT SET 1 !!\n");
        if(fopAcM_entrySolidHeap(i_this, useHeapInit, 0x850)){
            OS_REPORT("//////////////E_MM_MT SET 2 !!\n");
            fopAcM_SetMtx(a_this, a_this->mpModel->getBaseTRMtx());
            fopAcM_SetMin(a_this, -200.0f, -200.0f, -200.0f);
            fopAcM_SetMax(a_this, 200.0f, 200.0f, 200.0f);
            a_this->mStts.Init(100,0,i_this);
            if(i_this->argument == 1){
                //setweight

            } else {
                //setweight

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


            a_this->mSphere.Set(cc_sph_src);
            a_this->mSphere.SetStts(&a_this->mStts);
            if(i_this->argument == 1){
                fopAcM_OffStatus(i_this, 0x80000);
                a_this->mSphere.SetAtType(0xd8fbbdff);
                //8d8
                a_this->mSphere.SetAtAtp(2);

            } else {
                static dCcD_SrcSph secondary_sph_src = {
            {
                {0x0, {{AT_TYPE_0, 0x0, 0x0}, {0x00004080, 0x3}, 0x0}},  // mObj  
                {dCcD_SE_13, 0x0, 0x0, 0x0, 0x0},                // mGObjAt
                {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x406},                // mGObjTg
                {0x0},                                             // mGObjCo
            },                                                     // mObjInf
            {
                {{0.0f, 0.0f, 0.0f}, 40.0f}  // mSphere
            }  
            };
                a_this->mSph.Set(secondary_sph_src);
            }


            a_this->mAcch.Set(fopAcM_GetPosition_p(a_this), fopAcM_GetOldPosition_p(i_this), i_this, 1,
                            &a_this->mAcchCir, fopAcM_GetSpeed_p(a_this), NULL, NULL);

            a_this->mAcchCir.SetWall(50.0f, 50.0f);
            a_this->mSound.init(&i_this->current.pos, &a_this->eyePos, 3, 1);
            a_this->mAtInfo.mpSound = &a_this->mSound;
            a_this->mAtInfo.mPowerType = 9;
            i_this->attention_info.distances[4] = 7;
            a_this->lifetime = (short)(int)cM_rndF(65535.0f);
            daE_MM_MT_Execute(a_this);
        } else {
            cVar1 = cPhs_ERROR_e;
        }
    }
    return cVar1;
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
