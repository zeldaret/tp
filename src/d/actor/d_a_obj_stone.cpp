/**
 * d_a_obj_stone.cpp
 * Actor - Object Stone
 *
 * Small and large rocks
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_stone.h"
#include "d/actor/d_a_player.h"
#include "d/d_lib.h"
#include "f_op/f_op_kankyo_mng.h"
#include "global.h"
#include "SSystem/SComponent/c_math.h"
#include "cmath.h"

/* 80CECAB4-80CECABC 000000 0008+00 14/14 0/0 0/0 .rodata          l_bmdIdx */
const static int l_bmdIdx[2] = {3, 3};

/* 80CECABC-80CECAFC 000008 0040+00 0/1 0/0 0/0 .rodata          l_sph_src */
const static dCcD_SrcSph l_sph_src = {
    {
        {0, {{AT_TYPE_THROW_OBJ, 0x03, 0x13}, {0xD8FAFDFF, 0x11}, 0x79}},
        {dCcD_SE_THROW_OBJ, 0, 0, 0, {0x08}},
        {dCcD_SE_NONE, 0x02, 0, 0, {0x03}},
        {0},
    },
    {
        {
            {0.0f, 0.0f, 0.0f},
            50.0f,
        },
    }};

/* 80CECAFC-80CECB04 000048 0008+00 0/3 0/0 0/0 .rodata          l_r */
// radius
const static f32 l_r[2] = {
    30.0f,
    50.0f,
};

/* 80CECB04-80CECB0C 000050 0008+00 0/1 0/0 0/0 .rodata          l_rolling_speedF */
const static f32 l_rolling_speedF[2] = {9.0f, 9.0f};

/* 80CECB0C-80CECB14 000058 0008+00 0/0 0/0 0/0 .rodata          l_rolling_time */
const static u32 l_rolling_time[2] = {
    30,
    23,
};

/* 80CECB14-80CECB1C 000060 0008+00 1/2 0/0 0/0 .rodata          l_initial_offsetY */
const static f32 l_initial_offsetY[2] = {10.0f, 20.0f};

/* 80CECB1C-80CECB24 000068 0008+00 0/3 0/0 0/0 .rodata          l_put_offsetY */
const static f32 l_put_offsetY[2] = {20.0f, 30.0f};

/* 80CECB24-80CECB28 000070 0002+02 1/2 0/0 0/0 .rodata          l_weight */
const static u8 l_weight[2] = {120, 200};

/* 80CECB28-80CECB30 000074 0008+00 0/1 0/0 0/0 .rodata          l_speedH */
const static f32 l_speedH[2] = {
    36.0f,
    43.0f,
};

/* 80CECB30-80CECB38 00007C 0008+00 0/1 0/0 0/0 .rodata          l_speedV */
const static f32 l_speedV[2] = {
    27.0f,
    22.0f,
};

/* 80CECB38-80CECB40 000084 0008+00 0/1 0/0 0/0 .rodata          l_water_speedH */
const static f32 l_water_speedH[2] = {
    5.0f,
    5.0f,
};

/* 80CECB40-80CECB48 00008C 0008+00 0/1 0/0 0/0 .rodata          l_water_speedV */
const static f32 l_water_speedV[2] = {
    5.0f,
    5.0f,
};

/* 80CECB48-80CECB50 000094 0008+00 0/1 0/0 0/0 .rodata          l_water_resist */
const static f32 l_water_resist[2] = {
    0.02f,
    0.02f,
};

/* 80CECB50-80CECB58 00009C 0008+00 0/1 0/0 0/0 .rodata          l_water_walk_resist */
const static f32 l_water_walk_resist[2] = {
    0.15f,
    0.15f,
};

/* 80CECB58-80CECB60 0000A4 0008+00 0/2 0/0 0/0 .rodata          l_buoyancy */
const static f32 l_buoyancy[2] = {
    5.9f,
    5.9f,
};

/* 80CECB60-80CECB68 0000AC 0008+00 1/1 0/0 0/0 .rodata          l_shadow_size */
const static f32 l_shadow_size[2] = {40.0f, 65.0f};

/* 80CECB68-80CECB70 0000B4 0008+00 0/1 0/0 0/0 .rodata          l_wpillar_scl */
const static f32 l_wpillar_scl[2] = {
    0.65f,
    1.1f,
};

/* 80CECB70-80CECB78 0000BC 0008+00 0/1 0/0 0/0 .rodata          l_hamon_scl */
const static f32 l_hamon_scl[2] = {
    0.7f,
    1.2f,
};

/* 80CECB78-80CECB80 0000C4 0008+00 0/1 0/0 0/0 .rodata          l_yogan_eff_scl */
const static f32 l_yogan_eff_scl[2] = {
    0.6f,
    1.1f,
};

/* 80CECB80-80CECB88 0000CC 0008+00 0/1 0/0 0/0 .rodata          l_wall_h */
const static f32 l_wall_h[2] = {
    30.0f,
    50.0f,
};

/* 80CECB88-80CECB90 0000D4 0008+00 0/1 0/0 0/0 .rodata          l_wall_r */
const static f32 l_wall_r[2] = {30.0f, 50.0f};

/* 80CECB90-80CECB94 0000DC 0004+00 0/1 0/0 0/0 .rodata          l_rot_angle */
const static s16 l_rot_angle[2] = {35, 18};

/* 80CECB94-80CECB98 0000E0 0004+00 0/1 0/0 0/0 .rodata          l_walk_rot_angle */
const static s16 l_walk_rot_angle[2] = {40, 40};

/* 80CECC74-80CECC7C -00001 0008+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName[2] = {
    "D_Srock",  // small rock
    "D_Brock",  // big rock
};

/* 80CE9078-80CE935C 000078 02E4+00 1/1 0/0 0/0 .text            bound__FP4cXyzRC13cBgS_PolyInfof */
static f32 bound(cXyz* param_0, cBgS_PolyInfo const& param_1, f32 param_2) {
    cM3dGPla plane;
    f32 ret;
    if (dComIfG_Bgsp().GetTriPla(param_1, &plane)) {
        cXyz pos;
        f32 abs = param_0->abs();

        C_VECReflect(param_0, (Vec*)&plane, &pos);
        *param_0 = pos * abs * param_2;

        return param_0->absXZ();
    } else {
        return 0.0f;
    }
}

/* 80CE93A4-80CE93C4 0003A4 0020+00 1/1 0/0 0/0 .text            CheckCreateHeap__FP10fopAc_ac_c */
static bool CheckCreateHeap(fopAc_ac_c* i_this) {
    return static_cast<daObjStone_c*>(i_this)->CreateHeap();
}

/* 80CE93C4-80CE9468 0003C4 00A4+00 1/1 0/0 0/0 .text            initBaseMtx__12daObjStone_cFv */
void daObjStone_c::initBaseMtx() {
    field_0x0910 = cXyz::Zero;
    field_0x091c = 0;
    field_0x0930 = ZeroQuat;
    field_0x0920 = field_0x0930;
    mpModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80CE9468-80CE9540 000468 00D8+00 2/2 0/0 0/0 .text            setBaseMtx__12daObjStone_cFv */
void daObjStone_c::setBaseMtx() {
    mDoMtx_quatMultiply(&field_0x0920, &field_0x0930, &field_0x0920);
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y + mInitialOffsetY, current.pos.z);
    mDoMtx_stack_c::quatM(&field_0x0920);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mDoMtx_stack_c::ZXYrotM(mShapeAngle);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    field_0x0930 = field_0x0920;
    field_0x0920 = ZeroQuat;
}

/* 80CE9540-80CE97C0 000540 0280+00 1/1 0/0 0/0 .text            Create__12daObjStone_cFv */
int daObjStone_c::Create() {
    mShapeAngle = shape_angle;
    shape_angle.setall(0);

    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());

    // set chkCirlce wall bounds
    mChkCircle.SetWall(l_wall_h[mStoneType], l_wall_r[mStoneType]);

    // setup chkobj
    mChkObj.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mChkCircle,
                fopAcM_GetSpeed_p(this), 0, 0);
    mChkObj.SetWtrChkMode(2);
    mChkObj.ClrObj();
    mChkObj.SetBomb();

    mStatus.Init(l_weight[mStoneType], 0xFF, this);

    // setup collider
    mCollider.Set(l_sph_src);
    mCollider.SetR(l_r[mStoneType]);
    mCollider.SetStts(&mStatus);

    if (mStoneType == OBJ_STONE_TYPE_SMALL) {
        mCollider.SetAtAtp(2);
    }

    fopAcM_setCullSizeSphere(this, 0.0f, 0.0f, 0.0f, l_r[mStoneType] * 1.2f);
    cLib_onBit<u32>(attention_info.flags, 0x10);
    attention_info.distances[fopAc_attn_CARRY_e] = 0x2A;
    fopAcM_OnCarryType(this, fopAcM_CARRY_LIGHT);

    cXyz other_pos = current.pos;

    mChkObj.CrrPos(dComIfG_Bgsp());
    current.pos = other_pos;
    mInitialOffsetY = 0.0f;
    field_0x094d = 0x1E;

    // Set heavy carry type if big stone
    if (mStoneType == OBJ_STONE_TYPE_BIG) {
        fopAcM_OnCarryType(this, fopAcM_CARRY_HEAVY);
    }

    init_modePutWait();
    initBaseMtx();

    u8 stoneType = mStoneType;

    cXyz pos = current.pos;
    pos.y += 1.0f;

    // Create the mark actor that goes under the stone
    fopAcM_createChild(PROC_Obj_StoneMark, fopAcM_GetID(this), stoneType, &pos,
                       fopAcM_GetRoomNo(this), &shape_angle, &scale, -1, 0);

    mSound.init(&current.pos, 1);
    mLastPosY = current.pos.y;

    return 1;
}


/* 80CE97C0-80CE9840 0007C0 0080+00 1/1 0/0 0/0 .text            CreateHeap__12daObjStone_cFv */
bool daObjStone_c::CreateHeap() {
    mpModel = mDoExt_J3DModel__create(
        (J3DModelData*)dComIfG_getObjectRes(l_arcName[mStoneType], l_bmdIdx[mStoneType]), 0x80000,
        0x11000084);
    return mpModel != NULL;
}

/* 80CE9840-80CE99D4 000840 0194+00 1/1 0/0 0/0 .text            create__12daObjStone_cFv */
int daObjStone_c::create() {
    fopAcM_SetupActor(this, daObjStone_c);

    mStoneType = getType();

    int phase = dComIfG_resLoad(&mPhase, l_arcName[mStoneType]);

    if (phase == cPhs_COMPLEATE_e) {
        // Allocate solid heap on GAME and load rock's model into it
        if (!fopAcM_entrySolidHeap(this, (heapCallbackFunc)CheckCreateHeap, 0x860)) {
            return cPhs_ERROR_e;
        }

        // Load everything else?
        if (!Create()) {
            return cPhs_ERROR_e;
        }
    }

    return phase;
}

/* 80CE9BA0-80CE9CF8 000BA0 0158+00 1/1 0/0 0/0 .text            execute__12daObjStone_cFv */
int daObjStone_c::execute() {
    cXyz pos;

    mStatus.SetWeight(l_weight[this->mStoneType]);
    fopAcM_SetGravity(this, -6.0f);
    mode_proc_call();

    if (mCollider.ChkTgHit() && mCollider.GetTgHitObj()) {
        mSound.startCollisionSE(mCollider.GetTgHitObjHitSeID(1), 2, 0);
    }

    mSound.framework(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    attention_info.position = current.pos;
    eyePos = attention_info.position;

    setBaseMtx();
    pos = current.pos;
    pos.y += mInitialOffsetY;

    mCollider.SetC(pos);
    dComIfG_Ccsp()->Set(&mCollider);
    mChkObj.OffLineCheck();
    field_0x094f = mIsInWater;
    effect_delete(false);
    return 1;
}

/* 80CE9CF8-80CEAF10 000CF8 1218+00 1/1 0/0 0/0 .text            mode_proc_call__12daObjStone_cFv */
void daObjStone_c::mode_proc_call() {
    static daObjStone_c::modeFunc l_func[7] = {
        &daObjStone_c::modeWait,
        &daObjStone_c::modeDrop,
        &daObjStone_c::modeCarry,
        &daObjStone_c::modePutWait,
        &daObjStone_c::modeWalk,
        &daObjStone_c::modeBreak,
        &daObjStone_c::modeYogan,
    };
    if (fopAcM_checkCarryNow(this) && field_0x0907 != 2) {
        if (daPy_py_c::checkNowWolf()) {
            init_modePushWolfNonBreak();
        } else {
            init_modeCarry();
        }
    }
    if (mCollider.ChkTgHit()) {
        cCcD_Obj* tgHitObj = mCollider.GetTgHitObj();
        if (tgHitObj != NULL) {
            fopAc_ac_c* tgHitActor = mCollider.GetTgHitAc();
            if (fopAcM_GetName(tgHitActor) == PROC_OBJ_GRA) {
                init_modeBreak();
            } else {
                if (tgHitObj->ChkAtType(AT_TYPE_BOMB)) {
                    init_modeBreak();
                }
                if (tgHitObj->ChkAtType(AT_TYPE_IRON_BALL) && tgHitObj->GetAtAtp() != 1) {
                    init_modeBreak();
                } else if (tgHitObj->ChkAtType(AT_TYPE_CSTATUE_SWING) &&
                           (fopAcM_GetName(tgHitActor) == PROC_Obj_VolcanicBomb))
                {
                    init_modeBreak();
                }
            }
        }
    }
    if (mCollider.ChkAtHit()) {
        init_modeBreak();
    }
    bool isGroundLanding = mChkObj.ChkGroundLanding() != 0;
    u32 isWallhit = mChkObj.m_flags & dBgS_Acch::WALL_HIT;
    bool isGroundHit = mChkObj.ChkGroundHit() != 0;
    bool isWaterHit = mChkObj.ChkWaterHit() != 0;
    bool isWaterIn = mChkObj.ChkWaterIn() != 0;
    if (field_0x0907 == 1) {
        if (isGroundLanding && !isWaterIn) {
            speed.x = speedF * cM_ssin(current.angle.y);
            speed.z = speedF * cM_scos(current.angle.y);
            speed.y = mLastSpeedY;
            if (speed.abs() > 2.0f) {
                bound(&speed, mChkObj.m_gnd, 0.4f);
            } else {
                speed.setall(0.0f);
            }
            speedF = speed.absXZ();
            current.angle.y = cM_atan2s(speed.x, speed.z);
        } else {
            if (isWallhit && field_0x0951 == 0 && isWaterIn) {
                speed.x = speedF * cM_ssin(current.angle.y);
                speed.z = speedF * cM_scos(current.angle.y);
                speed.y = mLastSpeedY;
                if (speed.abs() > 2.0f) {
                    bound(&speed, mChkCircle, 0.5f);
                } else {
                    speed.setall(0.0f);
                }
                speed.y = mLastSpeedY;
                speedF = speed.absXZ();
                current.angle.y = cM_atan2s(speed.x, speed.z);
            }
        }
    }
    if (field_0x0907 == 4 && isWallhit) {
        speed.x = speedF * cM_ssin(current.angle.y);
        speed.z = speedF * cM_scos(current.angle.y);
        if (speed.abs() > 2.0f) {
            bound(&speed, mChkCircle, 0.5f);
        } else {
            speed.setall(0.0f);
        }
        speedF = speed.absXZ();
        current.angle.y = cM_atan2s(speed.x, speed.z);
    }
    mIsInWater = false;
    if (isWaterHit || isWaterIn) {
        f32 waterHeight = mChkObj.m_wtr.GetHeight();
        int iVar10 = dComIfG_Bgsp().GetPolyAtt0(mChkObj.m_wtr);
        if (waterHeight > current.pos.y) {
            switch (iVar10) {
            case 7:
            case 11:
            default:
                mIsInWater = 1;
                if (field_0x094f == 0) {
                    fopKyM_createWpillar(&current.pos, l_wpillar_scl[mStoneType], 0);
                    cXyz cStack_d4(current.pos.x, waterHeight - 0.1f, current.pos.z);
                    dBgS_ObjGndChk adStack_c8;
                    adStack_c8.SetPos(&cStack_d4);
                    f32 dVar17 = dComIfG_Bgsp().GroundCross(&adStack_c8);
                    if (dVar17 == -1000000000.0f) {
                        dVar17 = -100000.0f;
                    }
                    dVar17 = fabs(waterHeight - dVar17);
                    if ((mStoneType == OBJ_STONE_TYPE_SMALL && dVar17 < 60.0f) ||
                        (mStoneType == OBJ_STONE_TYPE_BIG && dVar17 < 100.0f))
                    {
                        fopAcM_seStart(this, Z2SE_OBJ_CMN_ROCK_ASASE, 0);
                    } else {
                        fopAcM_seStart(this, Z2SE_OBJ_CMN_ROCK_WTR, 0);
                    }
                }
                if (isGroundHit) {
                    f32 waterHeightDiff = waterHeight - current.pos.y;
                    if ((mStoneType == OBJ_STONE_TYPE_SMALL && waterHeightDiff < 60.0f) ||
                     (mStoneType == OBJ_STONE_TYPE_BIG && waterHeightDiff < 90.0f))
                    {
                        cXyz cStack_e0(current.pos);
                        cStack_e0.y = waterHeight;
                        fopAcM_effHamonSet(&field_0x0954, &cStack_e0, l_hamon_scl[mStoneType], 0.1f);
                    }
                }
                if (speed.y < -10.0f) {
                    speed.y = -10.0f;
                }
                if (speed.y > 10.0f) {
                    speed.y = 10.0f;
                }
                if (speedF > 10.0f) {
                    speedF = 10.0f;
                }
                break;
            case 6:
                if (field_0x0907 != 6) {
                    init_modeYogan();
                    cXyz cStack_ec(current.pos.x, waterHeight, current.pos.z);
                    cXyz cStack_f8(l_yogan_eff_scl[mStoneType], l_yogan_eff_scl[mStoneType],
                                   l_yogan_eff_scl[mStoneType]);
                    dComIfGp_particle_set(0x8757, &cStack_ec, &tevStr, 0, &cStack_f8);
                    dComIfGp_particle_set(0x8758, &cStack_ec, &tevStr, 0, &cStack_f8);
                }
                break;

            }
        }
    }
    if (field_0x0907 == 1) {
        if (mIsInWater) {
            if (isGroundLanding) {
                init_modeWalk();
                fopAcM_seStart(this, Z2SE_OBJ_CMN_ROCK_PUT_WTR, 0);
            }
        } else {
            if (isGroundLanding) {
                if (!isWaterIn) {
                    int iVar8 = dComIfG_Bgsp().GetPolyAtt0(mChkObj.m_gnd);
                    if (iVar8 == 1 || iVar8 == 3 || iVar8 == 4) {
                        mInitialOffsetY = l_put_offsetY[mStoneType];
                        if (mStoneType == 1) {
                            fopAcM_seStart(this, Z2SE_OBJ_CMN_L_ROCK_BOUND, 0);
                        } else {
                            fopAcM_seStart(this, Z2SE_OBJ_CMN_ROCK_BOUND, 0);
                        }
                        init_modeWalk();
                    } else {
                        init_modeBreak();
                    }
                } else {
                    fopAcM_seStart(this, Z2SE_OBJ_CMN_ROCK_PUT_WTR, 0);
                }
            }
            if (isWallhit) {
                init_modeBreak();
            }
        }
    } else if (field_0x0907 == 0 && isGroundLanding) {
        if (!isWaterIn) {
            if (speedF == 0.0f) {
                if (mStoneType == 1) {
                    fopAcM_seStart(this, Z2SE_OBJ_CMN_L_ROCK_PUT, 0);
                } else {
                    fopAcM_seStart(this, Z2SE_OBJ_CMN_ROCK_PUT, 0);
                }
            } else if (mStoneType == 1) {
                fopAcM_seStart(this, Z2SE_OBJ_CMN_L_ROCK_BOUND, 0);
            } else {
                fopAcM_seStart(this, Z2SE_OBJ_CMN_ROCK_BOUND, 0);
            }
        } else {
            fopAcM_seStart(this, Z2SE_OBJ_CMN_ROCK_PUT_WTR, 0);
        }
    }
    if (field_0x094d != 0) {
        field_0x094d--;
    } else {
        if (field_0x0907 != 2) {
            f32 dVar16 = fabs(current.pos.y - mLastPosY);
            if (isGroundLanding && !isWaterHit && dVar16 > 50.0f) {
                fopAcM_effSmokeSet1(&field_0x095c, &field_0x0960,
                    &current.pos, 0, l_r[mStoneType] / l_r[1], &tevStr, 1);
                dComIfGp_particle_levelEmitterOnEventMove(field_0x095c);
                dComIfGp_particle_levelEmitterOnEventMove(field_0x0960);
                field_0x094d = 30;
            }
        }
    }
    if (isGroundHit) {
        mLastPosY = current.pos.y;
    }
    (this->*(l_func[field_0x0907]))();
    CrrPos();
    field_0x0951 = isWallhit != 0;
}

/* 80CEAF88-80CEAFD8 001F88 0050+00 1/1 0/0 0/0 .text            init_modePutWait__12daObjStone_cFv
 */
void daObjStone_c::init_modePutWait() {
    mCollider.OffAtSPrmBit(1);
    mCollider.OnCoSPrmBit(1);
    cLib_onBit<u32>(attention_info.flags, 0x10);
    mInitialOffsetY = l_initial_offsetY[mStoneType];
    mMode = 0;
    field_0x0907 = 3;
}

/* 80CEAFD8-80CEAFE8 001FD8 0010+00 1/0 0/0 0/0 .text            modePutWait__12daObjStone_cFv */
void daObjStone_c::modePutWait() {
    mMode++;
}

/* 80CEAFE8-80CEB01C 001FE8 0034+00 2/2 0/0 0/0 .text            init_modeWait__12daObjStone_cFv */
void daObjStone_c::init_modeWait() {
    mCollider.OffAtSPrmBit(1);
    mCollider.OnCoSPrmBit(1);
    cLib_onBit<u32>(attention_info.flags, 0x10);
    mMode = 0;
    field_0x0907 = 0;
}

/* 80CEB01C-80CEB0B8 00201C 009C+00 1/0 0/0 0/0 .text            modeWait__12daObjStone_cFv */
void daObjStone_c::modeWait() {
    mMode++;
    speedF *= 0.95f;

    fopAcM_posMoveF(this, mStatus.GetCCMoveP());
    cLib_chaseF(&mInitialOffsetY, l_put_offsetY[mStoneType], 8.0f);

    if (mMode > 5 && checkRollAngle()) {
        init_modeWalk();
    }
}

/* 80CEB0B8-80CEB0F8 0020B8 0040+00 1/1 0/0 0/0 .text            init_modeDrop__12daObjStone_cFv */
void daObjStone_c::init_modeDrop() {
    mCollider.OnAtSPrmBit(1);
    mCollider.OnCoSPrmBit(1);
    cLib_offBit<u32>(attention_info.flags, 0x10);
    mMode = 0;
    mLastPosY = current.pos.y;
    field_0x0907 = 1;
}

/* 80CEB0F8-80CEB35C 0020F8 0264+00 1/0 0/0 0/0 .text            modeDrop__12daObjStone_cFv */
void daObjStone_c::modeDrop() {
    cXyz pos2, pos;
    mMode++;
    mChkObj.OnLineCheck();

    if (mIsInWater != 0) {
        mCollider.OffAtSPrmBit(1);
        mChkObj.ChkGroundHit() ? cLib_onBit<u32>(attention_info.flags, 0x10) :
                                 cLib_offBit<u32>(attention_info.flags, 0x10);

        pos2.x = speedF * cM_ssin(current.angle.y);
        pos2.y = speed.y;
        pos2.z = speedF * cM_scos(current.angle.y);

        pos = pos2;
        pos.x = -pos.x * l_water_resist[mStoneType];
        pos.y = -pos.y * l_water_resist[mStoneType];
        pos.z = -pos.z * l_water_resist[mStoneType];

        pos2 += pos;
        speedF = sqrtf(pos2.x * pos2.x + pos2.z * pos2.z);
        speed.y = pos2.y;

        fopAcM_SetGravity(this, -6.0f + l_buoyancy[mStoneType]);
    }

    fopAcM_posMoveF(this, mStatus.GetCCMoveP());
    mLastSpeedY = speed.y;
    calcRotBaseMtx(0);
}


/* 80CEB35C-80CEB480 00235C 0124+00 1/1 0/0 0/0 .text            init_modeCarry__12daObjStone_cFv */
void daObjStone_c::init_modeCarry() {
    mCollider.OffCoSPrmBit(1);
    mCollider.OffAtSPrmBit(1);
    fopAcM_SetModel(this, mpModel);
    mMode = 0;
    field_0x0950 = field_0x0907;
    if (mIsInWater == 0) {
        if (mStoneType == OBJ_STONE_TYPE_BIG) {
            fopAcM_seStart(this, Z2SE_OBJ_CMN_L_ROCK_LIFT, 0);  // literals inline
        } else {
            fopAcM_seStart(this, Z2SE_OBJ_CMN_ROCK_LIFT, 0);  // literals inline
        }
    }

    field_0x0907 = 2;
}

/* 80CEB480-80CEB6E8 002480 0268+00 1/0 0/0 0/0 .text            modeCarry__12daObjStone_cFv */
void daObjStone_c::modeCarry() {
    mMode++;

    if (mMode == 8 && mStoneType == OBJ_STONE_TYPE_SMALL) {
        mInitialOffsetY = l_r[mStoneType];
        set_carry_eff();
    }

    if (mMode == 17 && mStoneType == OBJ_STONE_TYPE_BIG) {
        mInitialOffsetY = l_r[mStoneType];
        set_carry_eff();
    }

    if (field_0x0908 == 0) {
        if (mStoneType == OBJ_STONE_TYPE_BIG) {
            if (mMode == 21) {
                createItem();
                field_0x0908 = 1;
            }
        } else if (mMode == 14) {
            createItem();
            field_0x0908 = 1;
        }
    }

    if ((mStoneType == OBJ_STONE_TYPE_SMALL && mMode > 8) ||
        (mStoneType == OBJ_STONE_TYPE_BIG && mMode > 17))
    {
        f32 frame_rate = daPy_getLinkPlayerActorClass()->getBaseAnimeFrameRate() * 0.25f;
        mDoMtx_quatSlerp(&field_0x0930, &ZeroQuat, &field_0x0930, frame_rate);
    }

    if (!fopAcM_checkCarryNow(this)) {
        if (speedF != 0.0f) {
            mChkObj.CrrPos(dComIfG_Bgsp());
            mIsInWater = mChkObj.ChkWaterIn();

            if (!mIsInWater) {
                speedF = l_speedH[mStoneType];
                speed.y = l_speedV[mStoneType];
            } else {
                speedF = l_water_speedH[mStoneType];
                speed.y = l_water_speedV[mStoneType];

                if (speed.y < -10.0f)
                    speed.y = -10.0f;

                if (speed.y > 10.0f)
                    speed.y = 10.0f;

                if (speedF > 10.0f)
                    speedF = 10.0f;
            }
            mInitialOffsetY = l_r[mStoneType];
            init_modeDrop();
        } else {
            mLastPosY = current.pos.y;
            init_modeWait();
        }

        model = 0;
    }
}

/* 80CEB6E8-80CEB720 0026E8 0038+00 2/2 0/0 0/0 .text            init_modeWalk__12daObjStone_cFv */
void daObjStone_c::init_modeWalk() {
    mCollider.OffAtSPrmBit(1);
    mCollider.OnCoSPrmBit(1);
    cLib_onBit<u32>(attention_info.flags, 0x10);
    mMode = 0;
    field_0x0907 = 4;
}

/* 80CEB720-80CEBCDC 002720 05BC+00 1/0 0/0 0/0 .text            modeWalk__12daObjStone_cFv */
void daObjStone_c::modeWalk() {
    mMode++;
    if (field_0x0908 == 0) {
        if (mStoneType == OBJ_STONE_TYPE_BIG) {
            if (mMode == 4) {
                createItem();
                field_0x0908 = 1;
            }
        } else if (mMode == 7) {
            createItem();
            field_0x0908 = 1;
        }
    }
    if (mIsInWater) {
        cXyz local_b0;
        cXyz local_bc;
        local_b0.x = speedF * cM_ssin(current.angle.y);
        local_b0.y = speed.y;
        local_b0.z = speedF * cM_scos(current.angle.y);
        local_bc = local_b0;
        local_bc.x = -local_bc.x * l_water_walk_resist[mStoneType];
        local_bc.y = -local_bc.y * l_water_walk_resist[mStoneType];
        local_bc.z = -local_bc.z * l_water_walk_resist[mStoneType];
        local_b0 += local_bc;
        speedF = std::sqrt(local_b0.x * local_b0.x + local_b0.z * local_b0.z);
        speed.y = local_b0.y;
        fopAcM_SetGravity(this, -6.0f + l_buoyancy[mStoneType]);
    }
    fopAcM_posMoveF(this, mStatus.GetCCMoveP());
    f32 dVar15 = 89.0f;
    cXyz cStack_c8(current.pos);
    cStack_c8.y += 50.0f;
    f32 dVar14 = 1.0f - 0.2f;
    cM3dGPla acStack_a4;
    bool iVar7 = fopAcM_gc_c::gndCheck(&cStack_c8);
    bool isTriPla = fopAcM_gc_c::getTriPla(&acStack_a4);
    f32 dVar12 = fopAcM_gc_c::getGroundY();
    if (iVar7 && dVar12 != -1000000000.0f && isTriPla) {
        f32 dVar12 = cM_scos(cM_deg2s(dVar15 - 0.5f));
        cXyz cStack_d4(acStack_a4.mNormal);
        if (cStack_d4.y < dVar12) {
            cXyz local_e0(cStack_d4);
            s16 sVar9 = cM_atan2s(local_e0.x, local_e0.z);
            f32 dVar12 = 10.0f;
            dVar12 *= (1.0f - cStack_d4.y);
            if (dVar12 < 0.1f) {
                dVar12 = 0.1f;
            } else {
                if (dVar12 > 1.0f) {
                    dVar12 = 1.0f;
                }
            }
            cXyz local_ec((speedF * cM_ssin(current.angle.y)), 0.0f,
                         speedF * cM_scos(current.angle.y));
            cXyz cStack_f8((dVar12 * cM_ssin(sVar9)), 0.0f, dVar12 * cM_scos(sVar9));
            local_ec += cStack_f8;
            speedF =
                std::sqrt(local_ec.x * local_ec.x + local_ec.z * local_ec.z);
            current.angle.y = cM_atan2s(local_ec.x, local_ec.z);
        }
    }
    speedF *= dVar14;
    if (mStatus.GetCCMoveP()->abs2XZ() > 0.01000000070780516f) {
        speedF *= 0.9f;
    }
    if (speedF < 0.5f) {
        speedF = 0;
    }
    f32 step = 8.0f;
    if (speed.y < 0.0f && std::fabs(speed.y) > step) {
        step = std::fabs(speed.y);
    }
    cLib_chaseF(&mInitialOffsetY, l_put_offsetY[mStoneType], step);
    calcRotBaseMtx(NULL);
    if (speedF == 0.0f && mChkObj.ChkGroundHit()) {
        init_modeWait();
    }
}

/* 80CEBCDC-80CEBE24 002CDC 0148+00 1/1 0/0 0/0 .text init_modePushWolfNonBreak__12daObjStone_cFv
 */
void daObjStone_c::init_modePushWolfNonBreak() {
    mCollider.OffAtSPrmBit(1);
    mCollider.OnCoSPrmBit(1);
    fopAcM_cancelCarryNow(this);
    current.angle.y = daPy_getPlayerActorClass()->current.angle.y;
    speedF = l_rolling_speedF[mStoneType];
    field_0x0950 = field_0x0907;
    mMode = 0;

    if (mIsInWater == 0) {
        if (mStoneType == OBJ_STONE_TYPE_BIG) {
            fopAcM_seStart(this, Z2SE_OBJ_CMN_L_ROCK_ROLL, 0);  // literals inline
        } else {
            fopAcM_seStart(this, Z2SE_OBJ_CMN_ROCK_ROLL, 0);  // literals inline
        }
    }

    field_0x0907 = 4;
}

/* 80CEBE24-80CEBE84 002E24 0060+00 1/1 0/0 0/0 .text            init_modeYogan__12daObjStone_cFv */
void daObjStone_c::init_modeYogan() {
    mCollider.OffAtSPrmBit(1);
    mCollider.OnCoSPrmBit(1);
    mInitialOffsetY = l_initial_offsetY[mStoneType];
    mMode = 0;
    fopAcM_SetGravity(this, -0.4f);
    fopAcM_SetMaxFallSpeed(this, -2.0f);
    current.pos.y = mChkObj.m_wtr.GetHeight();
    field_0x0907 = 6;
}

/* 80CEBE84-80CEBF1C 002E84 0098+00 1/0 0/0 0/0 .text            modeYogan__12daObjStone_cFv */
void daObjStone_c::modeYogan() {
    f32 height = mChkObj.m_wtr.GetHeight();
    f32 pos_y = 200.0f + current.pos.y;

    bool pos_check = height > pos_y;
    bool gnd_landing = mChkObj.ChkGroundLanding();

    speedF *= 0.65f;
    fopAcM_posMoveF(this, 0);

    if (pos_check || gnd_landing) {
        fopAcM_delete(this);
    }

    mMode++;
}

/* 80CECC20-80CECC2C 00016C 0006+06 0/1 0/0 0/0 .rodata          l_eff_id$5089 */
const static u16 l_eff_id[3] = {
    0x859B, 0x859C, 0x859D,
};

/* 80CEBF1C-80CEC180 002F1C 0264+00 1/1 0/0 0/0 .text            init_modeBreak__12daObjStone_cFv */
void daObjStone_c::init_modeBreak() {
    if (field_0x0907 != 5) {
        fopAcM_cancelCarryNow(this);
        if (!mIsInWater) {
            if (mStoneType == OBJ_STONE_TYPE_BIG) {
                fopAcM_seStart(this, Z2SE_OBJ_CMN_L_ROCK_BREAK, 0);
            } else {
                fopAcM_seStart(this, Z2SE_OBJ_CMN_ROCK_BREAK, 0);
            }
        }
        cXyz acStack_40;
        if (mStoneType == OBJ_STONE_TYPE_BIG) {
            acStack_40.setall(1.0f);
        } else {
            acStack_40.setall(0.5f);
        }
        J3DModelData* stone_bmd = (J3DModelData*)dComIfG_getObjectRes("Always", 27);
        JUT_ASSERT(1687, stone_bmd != 0);
        JPABaseEmitter* emitter = dComIfGp_particle_set(
            0x15c, &current.pos, 0, &acStack_40, 0xff, &dPa_modelEcallBack::getEcallback(), fopAcM_GetRoomNo(this), 0, 0, 0);
        dPa_modelEcallBack::setModel(emitter, stone_bmd, tevStr,
                                     3, 0, NULL, 0);
        for (int i = 0; i < 3; i = i + 1) {
            dComIfGp_particle_set(
                l_eff_id[i],
                &current.pos, NULL, &acStack_40, 0xff, 0, fopAcM_GetRoomNo(this), 0, 0, 0);
        }
        if (field_0x0908 == 0) {
            createItem();
            field_0x0908 = 1;
        }
        mMode = 0;
        field_0x0907 = 5;
        fopAcM_delete(this);
    }
}

/* 80CEC180-80CEC1AC 003180 002C+00 1/0 0/0 0/0 .text            modeBreak__12daObjStone_cFv */
void daObjStone_c::modeBreak() {
    mMode++;
    fopAcM_delete(this);
}

/* 80CEC1AC-80CEC264 0031AC 00B8+00 1/1 0/0 0/0 .text            CrrPos__12daObjStone_cFv */
void daObjStone_c::CrrPos() {
    bool check1 = false;
    bool check2 = false;

    cXyz pos = current.pos;
    u8 mode = field_0x0907;

    if (mode == 2) {
        check1 = true;
        pos = current.pos;
    }

    if (field_0x0907 == 3) {
        check2 = true;
    }

    if (!check2) {
        mChkObj.CrrPos(dComIfG_Bgsp());
    }

    if (check1) {
        current.pos = pos;
    }
}

/* 80CEC264-80CEC33C 003264 00D8+00 3/3 0/0 0/0 .text            createItem__12daObjStone_cFv */
void daObjStone_c::createItem() {
    int item_no = getItemNo();
    int item_bit = getItemBit();

    csXyz angle(0, home.angle.y, 0);
    u8 item_type = getItemType();

    if (item_type == 0) {
        cXyz pos(home.pos);
        fopAcM_createItem(&pos, item_no, item_bit, fopAcM_GetHomeRoomNo(this), &angle, 0, 8);
    } else {
        fopAcM_createItemFromTable(&home.pos, item_no, item_bit, fopAcM_GetHomeRoomNo(this), &angle,
                                   8, 0, 0, 0, false);
    }
}

/* 80CEC33C-80CEC5BC 00333C 0280+00 2/2 0/0 0/0 .text            calcRotBaseMtx__12daObjStone_cFPs
 */
void daObjStone_c::calcRotBaseMtx(s16* param_1) {
    cXyz local_5c = current.pos - old.pos;
    cXyz cStack_68(local_5c.x, 0.0f, local_5c.z);
    bool iVar5 = local_5c.normalizeRS();
    bool iVar6 = cStack_68.normalizeRS();
    bool bVar4 = true;
    if (!iVar5 && !iVar6) {
        bVar4 = false;
    }
    if (iVar6) {
        field_0x0910 = cStack_68;
        mDoMtx_stack_c::YrotS(0x4000);
        mDoMtx_stack_c::multVec(&field_0x0910, &field_0x0910);
    } else if (iVar5) {
        field_0x0910 = cXyz::BaseX;
    }
    if (bVar4) {
        f32 dVar9 = std::fabs(speedF);
        f32 dVar10 = std::fabs(speed.y);
        if (current.pos.y == old.pos.y) {
            dVar10 = 0.0f;
        }
        s16 sVar7 = l_rot_angle[mStoneType];
        if (field_0x0907 != 1) {
            sVar7 = l_walk_rot_angle[mStoneType];
        }
        if (param_1 != NULL) {
            sVar7 = *param_1;
        }
        if (mChkObj.ChkWaterIn()) {
            sVar7 *= 0.5f;
        }
        field_0x091c = sVar7 * (dVar9 + dVar10);
        field_0x0920.x = field_0x0910.x * cM_ssin(field_0x091c);
        field_0x0920.y = field_0x0910.y * cM_ssin(field_0x091c);
        field_0x0920.z = field_0x0910.z * cM_ssin(field_0x091c);
        field_0x0920.w = cM_scos(field_0x091c);
    } else {
        field_0x0920 = ZeroQuat;
    }
}

/* 80CEC5BC-80CEC6D8 0035BC 011C+00 1/1 0/0 0/0 .text            checkRollAngle__12daObjStone_cFv */
int daObjStone_c::checkRollAngle() {
    f32 dVar11 = 89.0f;
    cXyz pos = current.pos;
    pos.y += 50.0f;

    cM3dGPla plane;
    bool gnd_chk = fopAcM_gc_c::gndCheck(&pos);
    bool triPla = dComIfG_Bgsp().GetTriPla(fopAcM_gc_c::mGndCheck, &plane);
    f32 ground_y = fopAcM_gc_c::getGroundY();

    if (gnd_chk && -1000000000.0f != ground_y && triPla) {
        f32 tmp2 = cM_scos(cM_deg2s(dVar11 - 0.5f));
        cXyz pos2 = plane.mNormal;

        if (pos2.y < tmp2) {
            return 1;
        }
    }

    return 0;
}

/* 80CECC34-80CECC3C 000180 0006+02 0/1 0/0 0/0 .rodata          l_carry_eff_id$5307 */
const static u16 l_carry_eff_id[3] = {0x859E, 0x859F, 0x85A0};

/* 80CEC6D8-80CEC7DC 0036D8 0104+00 1/1 0/0 0/0 .text            set_carry_eff__12daObjStone_cFv */
void daObjStone_c::set_carry_eff() {
    cXyz pos;

    if (mStoneType == 1) {
        pos.setall(1.0f);
    } else {
        pos.setall(0.5f);
    }

    if (field_0x0950 == 3) {
        for (int i = 0; i < 3; i++) {
            field_0x0964[i] =
                dComIfGp_particle_set(l_carry_eff_id[i], &current.pos, 0, &pos, 0xFF, 0, 0xFFFFFFFF,
                                      0, 0, 0);  // float literal inline
            if (field_0x0964[i] != 0) {
                field_0x0964[i]->becomeImmortalEmitter();
            }
        }
    }
}

/* 80CEC7DC-80CEC888 0037DC 00AC+00 2/2 0/0 0/0 .text            effect_delete__12daObjStone_cFb */
void daObjStone_c::effect_delete(bool param_1) {
    for (int i = 0; i < 3; i = i + 1) {
        if (field_0x0964[i] != NULL) {
            if ((field_0x0964[i]->getAge() > 5 &&
                 field_0x0964[i]->getParticleNumber() == 0) ||
                param_1)
            {
                field_0x0964[i]->becomeInvalidEmitter();
                field_0x0964[i]->quitImmortalEmitter();
                field_0x0964[i] = NULL;
            } else {
                field_0x0964[i]->setGlobalTranslation(current.pos);
            }
        }
    }
}

/* 80CEC888-80CEC948 003888 00C0+00 1/1 0/0 0/0 .text            draw__12daObjStone_cFv */
int daObjStone_c::draw() {
    g_env_light.settingTevStruct(8, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    mDoExt_modelUpdateDL(mpModel);

    if (!model) {
        f32 shadow_size = l_shadow_size[mStoneType];
        GXTexObj* pTex = dDlst_shadowControl_c::getSimpleTex();
        cXyz pos = current.pos;

        dComIfGd_setSimpleShadow(&pos, mChkObj.GetGroundH(), shadow_size, mChkObj.m_gnd, 0,
                                 1.0f, pTex);
    }
    return 1;
}

/* 80CEC948-80CEC9BC 003948 0074+00 1/1 0/0 0/0 .text            _delete__12daObjStone_cFv */
int daObjStone_c::_delete() {
    mSound.deleteObject();
    u16 setid = fopAcM_GetSetId(this);
    fopAcM_offActor(this, setid);
    effect_delete(true);
    dComIfG_resDelete(&mPhase, l_arcName[mStoneType]);
    return 1;
}

/* 80CEC9BC-80CEC9DC 0039BC 0020+00 1/0 0/0 0/0 .text            daObjStone_Draw__FP12daObjStone_c
 */
static int daObjStone_Draw(daObjStone_c* i_this) {
    return i_this->draw();
}

/* 80CEC9DC-80CEC9FC 0039DC 0020+00 1/0 0/0 0/0 .text daObjStone_Execute__FP12daObjStone_c */
static int daObjStone_Execute(daObjStone_c* i_this) {
    return i_this->execute();
}

/* 80CEC9FC-80CECA1C 0039FC 0020+00 1/0 0/0 0/0 .text            daObjStone_Delete__FP12daObjStone_c
 */
static int daObjStone_Delete(daObjStone_c* i_this) {
    return i_this->_delete();
}

/* 80CECA1C-80CECA3C 003A1C 0020+00 1/0 0/0 0/0 .text            daObjStone_Create__FP10fopAc_ac_c
 */
static int daObjStone_Create(fopAc_ac_c* param_0) {
    return static_cast<daObjStone_c*>(param_0)->create();
}

/* 80CECD24-80CECD44 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjStone_Method */
static actor_method_class l_daObjStone_Method = {
    (process_method_func)daObjStone_Create,
    (process_method_func)daObjStone_Delete,
    (process_method_func)daObjStone_Execute,
    (process_method_func)NULL,
    (process_method_func)daObjStone_Draw,
};

/* 80CECD44-80CECD74 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Stone */
extern actor_process_profile_definition g_profile_Obj_Stone = {
    fpcLy_CURRENT_e,        // mLayerID
    8,                      // mListID
    fpcPi_CURRENT_e,        // mListPrio
    PROC_Obj_Stone,         // mProcName
    &g_fpcLf_Method.base,  // sub_method
    sizeof(daObjStone_c),   // mSize
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // sub_method
    511,                    // mPriority
    &l_daObjStone_Method,   // sub_method
    0x40100,                // mStatus
    fopAc_ACTOR_e,          // mActorType
    fopAc_CULLSPHERE_8_e,   // cullType
};

/* 80CECC3C-80CECC3C 000188 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
