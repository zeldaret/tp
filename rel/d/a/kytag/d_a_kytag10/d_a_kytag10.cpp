/**
 * d_a_kytag10.cpp
 * Sparks Particle Emitter on a Path
 */

#include "rel/d/a/kytag/d_a_kytag10/d_a_kytag10.h"
#include "d/com/d_com_inf_game.h"
#include "d/d_path.h"
#include "d/d_procname.h"
#include "d/kankyo/d_kankyo_rain.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" static void get_rail_ratio_pos__FP5dPathifPsPs();
extern "C" static void set_path_info__FP10fopAc_ac_c();
extern "C" static void get_Extent_pos_start_get__FP13kytag10_classP5dPathP4cXyzfPi();
extern "C" static void get_Extent_pos_end_get__FP13kytag10_classP5dPathP4cXyzfPi();
extern "C" static void sparks_move__FP13kytag10_class();
extern "C" static bool daKytag10_Draw__FP13kytag10_class();
extern "C" static void daKytag10_Execute__FP13kytag10_class();
extern "C" static bool daKytag10_IsDelete__FP13kytag10_class();
extern "C" static void daKytag10_Delete__FP13kytag10_class();
extern "C" static void daKytag10_Create__FP10fopAc_ac_c();

//
// External References:
//

extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void dPath_GetRoomPath__Fii();
extern "C" void dKyr_get_vectle_calc__FP4cXyzP4cXyzP4cXyz();
extern "C" void cM_atan2s__Fff();
extern "C" void deleteAllParticle__14JPABaseEmitterFv();
extern "C" void _savegpr_27();
extern "C" void _savegpr_29();
extern "C" void _restgpr_27();
extern "C" void _restgpr_29();

//
// Declarations:
//

/* ############################################################################################## */
/* 80529400-80529404 000000 0004+00 3/3 0/0 0/0 .rodata          @3788 */
SECTION_RODATA static u8 const lit_3788[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80529400, &lit_3788);

/* 80528BF8-80528D0C 000078 0114+00 1/1 0/0 0/0 .text            get_rail_ratio_pos__FP5dPathifPsPs
 */
// matches with literals
#ifdef NONMATCHING
static cXyz get_rail_ratio_pos(dPath* i_path, int i_pointIdx, f32 param_2, s16* param_3,
                               s16* param_4) {
    cXyz point_a;
    cXyz point_b;
    cXyz ret;
    cXyz calc_vec;

    point_a.x = i_path->m_points[i_pointIdx].m_position.x;
    point_a.y = i_path->m_points[i_pointIdx].m_position.y;
    point_a.z = i_path->m_points[i_pointIdx].m_position.z;

    point_b.x = i_path->m_points[i_pointIdx + 1].m_position.x;
    point_b.y = i_path->m_points[i_pointIdx + 1].m_position.y;
    point_b.z = i_path->m_points[i_pointIdx + 1].m_position.z;

    ret.x = point_a.x + param_2 * (point_b.x - point_a.x);
    ret.y = point_a.y + param_2 * (point_b.y - point_a.y);
    ret.z = point_a.z + param_2 * (point_b.z - point_a.z);

    dKyr_get_vectle_calc(&point_a, &point_b, &calc_vec);

    *param_3 =
        cM_atan2s(JMAFastSqrt(calc_vec.x * calc_vec.x + calc_vec.z * calc_vec.z), calc_vec.y);
    *param_4 = cM_atan2s(calc_vec.x, calc_vec.z);

    return ret;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm cXyz get_rail_ratio_pos(dPath* param_0, int param_1, f32 param_2, s16* param_3,
                                   s16* param_4) {
    nofralloc
#include "asm/rel/d/a/kytag/d_a_kytag10/d_a_kytag10/get_rail_ratio_pos__FP5dPathifPsPs.s"
}
#pragma pop
#endif

/* 80528D0C-80528D54 00018C 0048+00 1/1 0/0 0/0 .text            set_path_info__FP10fopAc_ac_c */
static dPath* set_path_info(fopAc_ac_c* i_actor) {
    dPath* path_p = NULL;
    u8 path_id = fopAcM_GetParam(i_actor) >> 0x10;

    if (path_id != 0xFF) {
        path_p = dPath_GetRoomPath(path_id, fopAcM_GetRoomNo(i_actor));
    }

    return path_p;
}

/* 80528D54-80528D64 0001D4 0010+00 1/1 0/0 0/0 .text
 * get_Extent_pos_start_get__FP13kytag10_classP5dPathP4cXyzfPi  */
static dPath* get_Extent_pos_start_get(kytag10_class* i_this, dPath* i_path, cXyz*, f32,
                                       int* param_4) {
    *param_4 = 0;
    return i_path;
}

/* 80528D64-80528D78 0001E4 0014+00 1/1 0/0 0/0 .text
 * get_Extent_pos_end_get__FP13kytag10_classP5dPathP4cXyzfPi    */
static dPath* get_Extent_pos_end_get(kytag10_class* param_0, dPath* i_path, cXyz*, f32,
                                     int* param_4) {
    *param_4 = i_path->m_num - 1;
    return i_path;
}

/* ############################################################################################## */
/* 80529404-80529408 000004 0004+00 0/1 0/0 0/0 .rodata          @3950 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3950 = 1000.0f;
COMPILER_STRIP_GATE(0x80529404, &lit_3950);
#pragma pop

/* 80529408-80529410 000008 0004+04 0/2 0/0 0/0 .rodata          @3951 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3951[1 + 1 /* padding */] = {
    1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80529408, &lit_3951);
#pragma pop

/* 80529410-80529418 000010 0008+00 0/1 0/0 0/0 .rodata          @3952 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3952[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80529410, &lit_3952);
#pragma pop

/* 80529418-80529420 000018 0008+00 0/1 0/0 0/0 .rodata          @3953 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3953[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80529418, &lit_3953);
#pragma pop

/* 80529420-80529428 000020 0008+00 0/1 0/0 0/0 .rodata          @3954 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3954[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80529420, &lit_3954);
#pragma pop

/* 80529428-8052942C 000028 0004+00 0/1 0/0 0/0 .rodata          @3955 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3955 = 250.0f;
COMPILER_STRIP_GATE(0x80529428, &lit_3955);
#pragma pop

/* 8052942C-80529430 00002C 0004+00 0/1 0/0 0/0 .rodata          @3956 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3956 = 100.0f;
COMPILER_STRIP_GATE(0x8052942C, &lit_3956);
#pragma pop

/* 80529430-80529438 000030 0004+04 0/1 0/0 0/0 .rodata          @3957 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3957[1 + 1 /* padding */] = {
    1.5f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80529430, &lit_3957);
#pragma pop

/* 80529438-80529440 000038 0008+00 0/2 0/0 0/0 .rodata          @3959 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3959[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80529438, &lit_3959);
#pragma pop

/* 80528D78-80529148 0001F8 03D0+00 1/1 0/0 0/0 .text            sparks_move__FP13kytag10_class */
// TVec3<f32> constructors need to be setup
#ifdef NONMATCHING
static void sparks_move(kytag10_class* i_this) {
    camera_class* camera_p = dComIfGp_getCamera(0);

    cXyz ratio_pos_1;
    cXyz ratio_pos_2;
    cXyz ratio_pos_5;
    cXyz ratio_pos_3;
    cXyz ratio_pos_4;

    dPath* path_p = i_this->mpPath;

    if (path_p != NULL) {
        int start_point_idx;
        dPath* path_start = get_Extent_pos_start_get(i_this, path_p, &camera_p->mLookat.mEye,
                                                     1000.0f, &start_point_idx);

        int end_point_idx;
        dPath* path_end = get_Extent_pos_end_get(i_this, path_p, &camera_p->mLookat.mEye, 1000.0f,
                                                 &end_point_idx);

        s16 spD6;
        s16 spD8;
        ratio_pos_1 = get_rail_ratio_pos(path_start, 0, 0.0f, &spD6, &spD8);
        ratio_pos_2 = get_rail_ratio_pos(path_end, end_point_idx - 1, 1.0f, &spD6, &spD8);
        ratio_pos_3 = get_rail_ratio_pos(path_start, i_this->mPathPoint, 0.0f, &spD6, &spD8);
        ratio_pos_4 = get_rail_ratio_pos(path_start, i_this->mPathPoint, 1.0f, &spD6, &spD8);

        f32 temp_f = 250.0f / ratio_pos_3.abs(ratio_pos_4);

        ratio_pos_5 =
            get_rail_ratio_pos(path_start, i_this->mPathPoint, i_this->field_0x594, &spD6, &spD8);
        i_this->field_0x588 = ratio_pos_5;

        i_this->mpEmitter1->setGlobalTranslation(ratio_pos_5.x, ratio_pos_5.y, ratio_pos_5.z);
        i_this->mpEmitter2->setGlobalTranslation(ratio_pos_5.x, ratio_pos_5.y, ratio_pos_5.z);

        i_this->mpEmitter1->setVolumeSize(i_this->mEmitterVolSize);
        i_this->mpEmitter1->setLifeTime(i_this->mEmitterLifeTime);

        i_this->mpEmitter2->setVolumeSize(i_this->mEmitterVolSize);
        i_this->mpEmitter2->setLifeTime(i_this->mEmitterLifeTime);

        i_this->mpEmitter1->setGlobalParticleScale(i_this->mEmitterPtclScale);
        i_this->mpEmitter2->setGlobalParticleScale(i_this->mEmitterPtclScale);

        if (i_this->field_0x584 != 0xFF) {
            f32 rate = i_this->field_0x584 / 100.0f;
            i_this->mpEmitter1->setRate(rate);
            i_this->mpEmitter2->setRate(rate);
        }

        if (i_this->field_0x594 <= 1.0f - (250.0f * temp_f)) {
            i_this->field_0x594 += temp_f;
            return;
        } else if (i_this->mPathPoint >= end_point_idx - 1) {
            i_this->mPathPoint = start_point_idx;
        } else {
            i_this->mPathPoint++;
        }

        i_this->field_0x594 = 0.0f;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void sparks_move(kytag10_class* param_0) {
    nofralloc
#include "asm/rel/d/a/kytag/d_a_kytag10/d_a_kytag10/sparks_move__FP13kytag10_class.s"
}
#pragma pop
#endif

/* 80529148-80529150 0005C8 0008+00 1/0 0/0 0/0 .text            daKytag10_Draw__FP13kytag10_class
 */
static int daKytag10_Draw(kytag10_class* i_this) {
    return 1;
}

/* 80529150-80529174 0005D0 0024+00 1/0 0/0 0/0 .text daKytag10_Execute__FP13kytag10_class */
static int daKytag10_Execute(kytag10_class* i_this) {
    sparks_move(i_this);
    return 1;
}

/* 80529174-8052917C 0005F4 0008+00 1/0 0/0 0/0 .text daKytag10_IsDelete__FP13kytag10_class */
static int daKytag10_IsDelete(kytag10_class* i_this) {
    return 1;
}

/* 8052917C-80529248 0005FC 00CC+00 1/0 0/0 0/0 .text            daKytag10_Delete__FP13kytag10_class
 */
static int daKytag10_Delete(kytag10_class* i_this) {
    g_env_light.field_0xf21 = 0;

    if (i_this->mpEmitter1 != NULL) {
        i_this->mpEmitter1->deleteAllParticle();
        i_this->mpEmitter1->becomeInvalidEmitter();
        i_this->mpEmitter1->quitImmortalEmitter();
        i_this->mpEmitter1->setEmitterCallBackPtr(NULL);
        i_this->mpEmitter1 = NULL;
    }

    if (i_this->mpEmitter2 != NULL) {
        i_this->mpEmitter2->deleteAllParticle();
        i_this->mpEmitter2->becomeInvalidEmitter();
        i_this->mpEmitter2->quitImmortalEmitter();
        i_this->mpEmitter2->setEmitterCallBackPtr(NULL);
        i_this->mpEmitter2 = NULL;
    }

    return 1;
}

/* ############################################################################################## */
/* 80529440-80529444 000040 0004+00 0/0 0/0 0/0 .rodata          @3971 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_3971 = 0xFFFFFFFF;
COMPILER_STRIP_GATE(0x80529440, &lit_3971);
#pragma pop

/* 80529444-80529448 000044 0004+00 0/1 0/0 0/0 .rodata          @4058 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4058 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80529444, &lit_4058);
#pragma pop

/* 80529248-805293F8 0006C8 01B0+00 1/0 0/0 0/0 .text            daKytag10_Create__FP10fopAc_ac_c */
// matches with literals
#ifdef NONMATCHING
static int daKytag10_Create(fopAc_ac_c* i_this) {
    SETUP_ACTOR(i_this, kytag10_class);

    u8 prm0 = fopAcM_GetParam(i_this);
    if (prm0 == 0xFF) {
        prm0 = 10;
    }

    ((kytag10_class*)i_this)->mEmitterPtclScale.z = prm0 * 0.1f;
    ((kytag10_class*)i_this)->mEmitterPtclScale.y = prm0 * 0.1f;
    ((kytag10_class*)i_this)->mEmitterPtclScale.x = prm0 * 0.1f;

    s16 prm1 = (fopAcM_GetParam(i_this) >> 8) & 0xFF;
    if (prm1 == 0xFF) {
        prm1 = 0;
    }

    ((kytag10_class*)i_this)->mEmitterVolSize = prm1 * 10;

    s16 prm3 = (fopAcM_GetParam(i_this) >> 0x18) & 0xFF;
    if (prm3 == 0xFF) {
        prm3 = 15;
    }

    ((kytag10_class*)i_this)->mEmitterLifeTime = prm3 * 10;
    ((kytag10_class*)i_this)->field_0x584 = i_this->current.angle.x & 0xFF;
    ((kytag10_class*)i_this)->mpEmitter1 = NULL;
    ((kytag10_class*)i_this)->mpEmitter2 = NULL;
    ((kytag10_class*)i_this)->field_0x594 = 0.0f;
    ((kytag10_class*)i_this)->mPathPoint = 0;
    ((kytag10_class*)i_this)->mpPath = set_path_info(i_this);
    ((kytag10_class*)i_this)->mpEmitter1 =
        dComIfGp_particle_set(0x852B, &i_this->current.pos, NULL, NULL);
    ((kytag10_class*)i_this)->mpEmitter2 =
        dComIfGp_particle_set(0x852C, &i_this->current.pos, NULL, NULL);

    return cPhs_COMPLEATE_e;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daKytag10_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/kytag/d_a_kytag10/d_a_kytag10/daKytag10_Create__FP10fopAc_ac_c.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80529448-80529468 -00001 0020+00 1/0 0/0 0/0 .data            l_daKytag10_Method */
static actor_method_class l_daKytag10_Method = {
    (process_method_func)daKytag10_Create,  (process_method_func)daKytag10_Delete,
    (process_method_func)daKytag10_Execute, (process_method_func)daKytag10_IsDelete,
    (process_method_func)daKytag10_Draw,
};

/* 80529468-80529498 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_KYTAG10 */
extern actor_process_profile_definition g_profile_KYTAG10 = {
    -3,
    7,
    -3,
    PROC_KYTAG10,
    &g_fpcLf_Method.mBase,
    sizeof(kytag10_class),
    0,
    0,
    &g_fopAc_Method.base,
    104,
    &l_daKytag10_Method,
    0x44000,
    0,
    0,
};
