/**
 * d_a_tag_hjump.cpp
 * Epona fence jump trigger / object
 */

#include "rel/d/a/tag/d_a_tag_hjump/d_a_tag_hjump.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "SSystem/SComponent/c_math.h"
#include "d/bg/d_bg_w.h"
#include "d/com/d_com_inf_game.h"
#include "d/d_procname.h"
#include "rel/d/a/d_a_horse/d_a_horse.h"

/* 805A4238-805A4240 000000 0007+01 4/4 0/0 0/0 .rodata          l_arcName */
static char const l_arcName[] = "Hfence";

/* 805A3AB8-805A3B24 000078 006C+00 1/0 0/0 0/0 .text            CreateHeap__12daTagHjump_cFv */
int daTagHjump_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 4);
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    return 1;
}

/* 805A3B24-805A3D80 0000E4 025C+00 1/1 0/0 0/0 .text            create__12daTagHjump_cFv */
int daTagHjump_c::create() {
    fopAcM_SetupActor(this, daTagHjump_c);

    mType = (fopAcM_GetParam(this) >> 4) & 0xF;
    field_0x5ad = fopAcM_GetParam(this) & 0xF;
    mOnFlagID = (fopAcM_GetParam(this) >> 8) & 0xFFF;
    mOffFlagID = fopAcM_GetParam(this) >> 0x14;

    if (field_0x5ad == 15) {
        field_0x5ad = 0;
    }

    int phase;
    if (mType != TYPE_TRIGGER_e) {
        phase = dComIfG_resLoad(&mPhase, l_arcName);
        if (phase == cPhs_COMPLEATE_e) {
            phase = MoveBGCreate(l_arcName, 7, NULL, 0xCA0, NULL);

            if (phase == cPhs_COMPLEATE_e) {
                fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
                mTevStr.mRoomNo = fopAcM_GetRoomNo(this);

                mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
                mDoMtx_stack_c::YrotM(shape_angle.y);
                mpModel->i_setBaseTRMtx(mDoMtx_stack_c::get());

                mDoMtx_stack_c::get()[1][3] -= 100.0f;
                current.pos.y -= 100.0f;

                field_0x568->SetLock();
                mScale.x = 250.0f;
                mScale.y = 350.0f;
                mScale.z = 400.0f;
                field_0x5b8 = 200.0f;

                fopAcM_SetMin(this, -mScale.x, 0.0f, -50.0f);
                fopAcM_SetMax(this, mScale.x, 200.0f, 50.0f);

                field_0x5ae = 0x2000;
                fopAcM_setCullSizeFar(this, 5.0f);
                field_0x5ad = 4;
            }
        }
    } else {
        phase = cPhs_COMPLEATE_e;
        mScale.x *= 100.0f;
        mScale.z *= 100.0f;
        mScale.y *= 100.0f;

        if (field_0x5ad == 0 || field_0x5ad == 1) {
            field_0x5b8 = 50.0f;
            field_0x5ae = 0x1000;
        } else {
            field_0x5b8 = 200.0f;
            field_0x5ae = 0x2000;
        }
    }

    field_0x5b4 = current.pos.y + mScale.y;
    return phase;
}

/* 805A3D80-805A3DA0 000340 0020+00 1/0 0/0 0/0 .text            daTagHjump_Create__FP10fopAc_ac_c
 */
static int daTagHjump_Create(fopAc_ac_c* i_this) {
    return static_cast<daTagHjump_c*>(i_this)->create();
}

/* 805A3DA0-805A3E34 000360 0094+00 1/1 0/0 0/0 .text            __dt__12daTagHjump_cFv */
daTagHjump_c::~daTagHjump_c() {
    if (mType != TYPE_TRIGGER_e) {
        dComIfG_resDelete(&mPhase, l_arcName);
    }
}

/* 805A3E34-805A3E70 0003F4 003C+00 1/0 0/0 0/0 .text            daTagHjump_Delete__FP12daTagHjump_c
 */
static int daTagHjump_Delete(daTagHjump_c* i_this) {
    i_this->MoveBGDelete();
    i_this->~daTagHjump_c();
    return 1;
}

/* 805A3E70-805A4134 000430 02C4+00 1/1 0/0 0/0 .text            execute__12daTagHjump_cFv */
int daTagHjump_c::execute() {
    daHorse_c* horse_p = i_dComIfGp_getHorseActor();

    if (horse_p != NULL &&
        (mType != TYPE_TRIGGER_e ||
         ((mOnFlagID == 0xFFF ||
           i_dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[mOnFlagID])) &&
          (mOffFlagID == 0xFFF ||
           !i_dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[mOffFlagID])))))
    {
        s16 angle_diff = horse_p->shape_angle.y - shape_angle.y;
        int abs_angle = abs(angle_diff);
        f32 min_jump_speed;

        if (field_0x5ad == 0 || field_0x5ad == 2) {
            min_jump_speed = horse_p->getLashMaxSpeedF() * 0.8f;
        } else if (field_0x5ad == 1 || field_0x5ad == 3) {
            min_jump_speed = horse_p->getNormalMaxSpeedF() * 0.8f;
        } else {
            min_jump_speed = horse_p->getNormalMaxSpeedF() +
                             (horse_p->getLashMaxSpeedF() - horse_p->getNormalMaxSpeedF()) * 0.5f;
        }

        if (min_jump_speed < horse_p->speedF &&
            (abs_angle < field_0x5ae || abs_angle > 0x8000 - field_0x5ae))
        {
            cXyz rel_pos;
            fpoAcM_relativePos(this, &horse_p->current.pos, &rel_pos);

            f32 temp_f3 = fabsf(rel_pos.z);
            if (rel_pos.y >= 0.0f && rel_pos.y <= mScale.y && fabsf(rel_pos.x) <= mScale.x) {
                if (temp_f3 >= (mScale.z - field_0x5b8) && temp_f3 <= (mScale.z + field_0x5b8) &&
                    ((rel_pos.z > 0.0f && abs_angle > 0x8000 - field_0x5ae) ||
                     (rel_pos.z < 0.0f && abs_angle < field_0x5ae)))
                {
                    f32 temp_f3_2 = fabsf(rel_pos.z / cM_scos(angle_diff));
                    f32 var_f4;

                    if (temp_f3_2 < field_0x5b8) {
                        var_f4 = field_0x5b8;
                    } else {
                        var_f4 = temp_f3_2;
                    }

                    rel_pos.x += (temp_f3_2 * cM_ssin(angle_diff)) + (var_f4 * cM_ssin(angle_diff));
                    if (fabsf(rel_pos.x) <= mScale.x ||
                        (mType == TYPE_TRIGGER_e && field_0x5ad == 4))
                    {
                        horse_p->onTagJump(temp_f3_2, field_0x5b4, var_f4);
                    }
                }
            }
        }
    }

    return 1;
}

/* 805A4134-805A4154 0006F4 0020+00 1/0 0/0 0/0 .text daTagHjump_Execute__FP12daTagHjump_c */
static int daTagHjump_Execute(daTagHjump_c* i_this) {
    return i_this->execute();
}

/* 805A4154-805A4204 000714 00B0+00 1/0 0/0 0/0 .text            Draw__12daTagHjump_cFv */
int daTagHjump_c::Draw() {
    if (mType != TYPE_TRIGGER_e) {
        g_env_light.settingTevStruct(0x10, &current.pos, &mTevStr);
        g_env_light.setLightTevColorType_MAJI(mpModel, &mTevStr);

        dComIfGd_setListBG();
        mDoExt_modelUpdateDL(mpModel);
        dComIfGd_setList();
    }

    return 1;
}

/* 805A4204-805A4230 0007C4 002C+00 1/0 0/0 0/0 .text            daTagHjump_Draw__FP12daTagHjump_c
 */
static int daTagHjump_Draw(daTagHjump_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 805A426C-805A428C -00001 0020+00 1/0 0/0 0/0 .data            l_daTagHjump_Method */
static actor_method_class l_daTagHjump_Method = {
    (process_method_func)daTagHjump_Create,  (process_method_func)daTagHjump_Delete,
    (process_method_func)daTagHjump_Execute, (process_method_func)NULL,
    (process_method_func)daTagHjump_Draw,
};

/* 805A428C-805A42BC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_Hjump */
extern actor_process_profile_definition g_profile_Tag_Hjump = {
    -3,
    3,
    -3,
    PROC_Tag_Hjump,
    &g_fpcLf_Method.mBase,
    sizeof(daTagHjump_c),
    0,
    0,
    &g_fopAc_Method.base,
    434,
    &l_daTagHjump_Method,
    0x44100,
    3,
    14,
};
