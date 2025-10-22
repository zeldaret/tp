/**
 * @file d_a_obj_h_saku.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_h_saku.h"
#include "Z2AudioLib/Z2Instances.h"

/* 80C16540-80C16544 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "H_Saku";

/* 80C1552C-80C157D4 0000EC 02A8+00 0/0 0/0 1/1 .text            BreakSet__13daObjH_Saku_cFv */
void daObjH_Saku_c::BreakSet() {
    cXyz pos(240.0f, 0.0f, -30.0f);
    cLib_offsetPos(&pos, &current.pos, shape_angle.y, &pos);
    dComIfGp_particle_set(dPa_RM(ID_ZF_S_KAKURESAKU1_00), &pos, &tevStr, &shape_angle, NULL);
    dComIfGp_particle_set(dPa_RM(ID_ZF_S_KAKURESAKU1_01), &pos, &tevStr, &shape_angle, NULL);
    dComIfGp_particle_set(dPa_RM(ID_ZF_S_KAKURESAKU1_02), &pos, &tevStr, &shape_angle, NULL);
    Z2GetAudioMgr()->seStart(Z2SE_OBJ_H_SAKU_ORERU, &pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
    field_0x5a0++;
    speedF = 10.0f;
    speed.y = 2.0f;
    field_0x5b0.y = 15.0f;
    field_0x5d0.set(-0x200, cM_rndF(200.0f) + 512.0f, 0);
    field_0x5d6.set(0x200, cM_rndF(200.0f) + -512.0f, 0);

    cXyz vecTrans(0.0f, speed.y, speedF);
    mDoMtx_stack_c::YrotS(current.angle.y);
    mDoMtx_stack_c::multVec(&vecTrans, &vecTrans);
    speed = vecTrans;
    field_0x5b0 = vecTrans;
    field_0x5c8 = 10;

    if (mpBgW != NULL && mpBgW->ChkUsed()) {
        if (dComIfG_Bgsp().Release(mpBgW)) {
            OS_REPORT("Release Error\n");
        }
    }
}

/* 80C15810-80C15A4C 0003D0 023C+00 1/1 0/0 0/0 .text SpeedSet__13daObjH_Saku_cFP4cXyzP4cXyzf */
u8 daObjH_Saku_c::SpeedSet(cXyz* param_1, cXyz* param_2, f32 param_3) {
    field_0x5c4 += 1.0f;
    cXyz spa0(*param_1);
    param_2->y += gravity;
    *param_1 += *param_2;

    if (field_0x5c4 > 10.0f) {
        dBgS_LinChk lin_chk;
        lin_chk.Set(&spa0, param_1, NULL);

        if (dComIfG_Bgsp().LineCross(&lin_chk)) {
            *param_1 = lin_chk.GetCross();
            param_2->y *= -0.4f;

            dComIfGp_particle_set(0x8856, param_1, &tevStr, &shape_angle, NULL);
            dComIfGp_particle_set(0x8857, param_1, &tevStr, &shape_angle, NULL);
            dComIfGp_particle_set(0x8858, param_1, &tevStr, &shape_angle, NULL);
            Z2GetAudioMgr()->seStart(Z2SE_OBJ_H_SAKU_BREAK, param_1, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
            return true;
        }
    }

    return false;
}

/* 80C161E8-80C1629C 000DA8 00B4+00 1/0 0/0 0/0 .text            CreateHeap__13daObjH_Saku_cFv */
int daObjH_Saku_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, "H_Saku.bmd");
    JUT_ASSERT(80, modelData != NULL);

    field_0x628 = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (field_0x628 == NULL) {
        return 0;
    }

    field_0x62c = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (field_0x62c == NULL) {
        return 0;
    }

    return 1;
}

cPhs__Step daObjH_Saku_c::create() {
    fopAcM_ct(this, daObjH_Saku_c);

    cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(&mPhase, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        int dzb_id = dComIfG_getObjctResName2Index(l_arcName, "H_Saku.dzb");
        JUT_ASSERT(113, dzb_id != -1);

        phase = (cPhs__Step)MoveBGCreate(l_arcName, dzb_id, dBgS_MoveBGProc_TypicalRotY, 0x1320, NULL);
        if (phase == cPhs_ERROR_e) {
            return phase;
        }
    }

    field_0x5de = 0;
    gravity = -8.0f;
    cXyz offset(480.0f, 0.0f, -30.0f);
    cLib_offsetPos(&field_0x5a4, &current.pos, shape_angle.y, &offset);
    offset.x *= 0.5f;
    cLib_offsetPos(&field_0x5e0, &current.pos, shape_angle.y, &offset);

    return phase;
}

/* 80C15A4C-80C15E00 00060C 03B4+00 1/1 0/0 0/0 .text            Action__13daObjH_Saku_cFv */
void daObjH_Saku_c::Action() {
    switch (field_0x5a0) {
        case 0:
            break;

        case 1:
            field_0x5c8--;
            if (field_0x5c8 == 0) {
                field_0x5a1++;
                field_0x5a0++;
                field_0x5d6.y *= 0.5f;
                field_0x5d0.y *= 0.5f;
            }

            shape_angle.y += field_0x5d6.y;
            shape_angle.x += field_0x5d6.x;
            shape_angle.z -= (s16)0x100;
            field_0x5bc.y += field_0x5d0.y * 1.5f;
            field_0x5bc.x += field_0x5d0.x;
            field_0x5bc.z -= (s16)0x100;
            break;

        case 2:
            if ((int)(u8)SpeedSet(&current.pos, &speed, speedF)) {
                field_0x5dd++;
                if (field_0x5dd > 2) {
                    field_0x5a0++;
                }

                field_0x5de |= 1;
                if ((int)(u8)field_0x5de == 17) {
                    fopAcM_delete(this);
                }
            }

            cLib_chaseAngleS(&shape_angle.z, 0, 0x200);

            if (field_0x5dd != 0) {
                if (speed.y > 0.0f) {
                    shape_angle.z += (s16)0x400;
                } else {
                    shape_angle.z -= (s16)0x400;
                }

                cLib_chaseAngleS(&shape_angle.x, 0x4000, field_0x5d6.x);
                shape_angle.y += field_0x5d6.y;
            } else {
                shape_angle += field_0x5d6;
            }
            break;

        case 3:
            if (cLib_chaseAngleS(&shape_angle.x, 0x4000, field_0x5d6.x) != 0) {
                field_0x5a0++;
            }
            break;
    }

    switch (field_0x5a1) {
        case 0:
            break;

        case 1:
            if ((int)(u8)SpeedSet(&field_0x5a4, &field_0x5b0, speedF)) {
                field_0x5dc++;
                if (field_0x5dc > 2) {
                    field_0x5a1++;
                }

                field_0x5de |= 17;
                if ((int)(u8)field_0x5de == 1) {
                    fopAcM_delete(this);
                }
            }

            if (field_0x5dc != 0) {
                if (field_0x5b0.y > 0.0f) {
                    field_0x5bc.z += (s16)0x400;
                } else {
                    field_0x5bc.z -= (s16)0x400;
                }

                cLib_chaseAngleS(&field_0x5bc.x, -0x4000, field_0x5d6.x);
                field_0x5bc.y += field_0x5d0.y;
            } else {
                field_0x5bc += field_0x5d0;
            }

            cLib_chaseAngleS(&field_0x5bc.z, 0, 0x200);
            break;

        case 2:
            if (cLib_chaseAngleS(&field_0x5bc.x, -0x4000, field_0x5d6.x) != 0) {
                field_0x5a1++;
            }
            break;
    }
}

/* 80C15E00-80C15E44 0009C0 0044+00 1/1 0/0 0/0 .text            initBaseMtx__13daObjH_Saku_cFv */
void daObjH_Saku_c::initBaseMtx() {
    setBaseMtx();
    fopAcM_SetMtx(this, field_0x628->getBaseTRMtx());
    fopAcM_SetMtx(this, field_0x62c->getBaseTRMtx());
}

/* 80C15E44-80C15F4C 000A04 0108+00 2/2 0/0 0/0 .text            setBaseMtx__13daObjH_Saku_cFv */
void daObjH_Saku_c::setBaseMtx() {
    csXyz angle(field_0x5bc.x, field_0x5bc.y, field_0x5bc.z);
    mDoMtx_stack_c::transS(field_0x5a4);
    mDoMtx_stack_c::YrotM(current.angle.y + 0x8000);
    mDoMtx_stack_c::transM(0.0f, 0.0f, -30.0f);
    mDoMtx_stack_c::ZXYrotM(angle);
    mDoMtx_stack_c::transM(0.0f, 0.0f, 30.0f);
    field_0x628->setBaseTRMtx(mDoMtx_stack_c::get());

    angle.set(shape_angle.x, shape_angle.y, shape_angle.z);
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(angle);
    field_0x62c->setBaseTRMtx(mDoMtx_stack_c::get());
    mDoMtx_stack_c::scaleM(2.0f, 1.0f, 1.0f);
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 80C15F4C-80C15F78 000B0C 002C+00 1/0 0/0 0/0 .text            daObjH_Saku_Draw__FP13daObjH_Saku_c */
static int daObjH_Saku_Draw(daObjH_Saku_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C15F78-80C15F98 000B38 0020+00 1/0 0/0 0/0 .text daObjH_Saku_Execute__FP13daObjH_Saku_c */
static int daObjH_Saku_Execute(daObjH_Saku_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C15F98-80C15FA0 000B58 0008+00 1/0 0/0 0/0 .text daObjH_Saku_IsDelete__FP13daObjH_Saku_c */
static int daObjH_Saku_IsDelete(daObjH_Saku_c* i_this) {
    return 1;
}

/* 80C15FA0-80C15FC4 000B60 0024+00 1/0 0/0 0/0 .text daObjH_Saku_Delete__FP13daObjH_Saku_c */
static int daObjH_Saku_Delete(daObjH_Saku_c* i_this) {
    fpc_ProcID id = fopAcM_GetID(i_this);
    i_this->MoveBGDelete();
    return 1;
}

/* 80C15FC4-80C16178 000B84 01B4+00 1/0 0/0 0/0 .text            daObjH_Saku_Create__FP10fopAc_ac_c */
static int daObjH_Saku_Create(fopAc_ac_c* a_this) {
    daObjH_Saku_c* i_this = (daObjH_Saku_c*)a_this;
    fpc_ProcID id = fopAcM_GetID(a_this);
    return i_this->create();
}

/* 80C1629C-80C162F4 000E5C 0058+00 1/0 0/0 0/0 .text            Create__13daObjH_Saku_cFv */
int daObjH_Saku_c::Create() {
    fopAcM_setCullSizeBox(this, -700.0f, -700.0f, -700.0f, 700.0f, 700.0f, 7000.0f);
    initBaseMtx();
    return cPhs_COMPLEATE_e;
}

/* 80C162F4-80C16340 000EB4 004C+00 1/0 0/0 0/0 .text            Execute__13daObjH_Saku_cFPPA3_A4_f */
int daObjH_Saku_c::Execute(Mtx** mtx) {
    Action();
    *mtx = &mBgMtx;
    setBaseMtx();
    return 1;
}

/* 80C16340-80C1641C 000F00 00DC+00 1/0 0/0 0/0 .text            Draw__13daObjH_Saku_cFv */
int daObjH_Saku_c::Draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(field_0x628, &tevStr);
    g_env_light.setLightTevColorType_MAJI(field_0x62c, &tevStr);
    dComIfGd_setListBG();

    if ((int)(u8)field_0x5de != 1) {
        mDoExt_modelUpdateDL(field_0x62c);
    }

    if ((int)(u8)field_0x5de != 17) {
        mDoExt_modelUpdateDL(field_0x628);
    }

    dComIfGd_setList();
    return 1;
}

/* 80C1641C-80C16450 000FDC 0034+00 1/0 0/0 0/0 .text            Delete__13daObjH_Saku_cFv */
int daObjH_Saku_c::Delete() {
    dComIfG_resDelete(&mPhase, l_arcName);
    return 1;
}

namespace {
/* 80C16634-80C16640 000054 000C+00 0/1 0/0 0/0 .bss s_pos_l__28@unnamed@d_a_obj_h_saku_cpp@ */
static cXyz s_pos_l;

/* 80C1664C-80C16658 00006C 000C+00 0/1 0/0 0/0 .bss s_pos_r__28@unnamed@d_a_obj_h_saku_cpp@ */
static cXyz s_pos_r;
} // namespace

AUDIO_INSTANCES;

/* 80C16544-80C16564 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjH_Saku_Method */
static actor_method_class l_daObjH_Saku_Method = {
    (process_method_func)daObjH_Saku_Create,
    (process_method_func)daObjH_Saku_Delete,
    (process_method_func)daObjH_Saku_Execute,
    (process_method_func)daObjH_Saku_IsDelete,
    (process_method_func)daObjH_Saku_Draw,
};

/* 80C16564-80C16594 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_H_Saku */
extern actor_process_profile_definition g_profile_Obj_H_Saku = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_H_Saku,        // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjH_Saku_c),  // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  464,                    // mPriority
  &l_daObjH_Saku_Method,  // sub_method
  0x00040180,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
