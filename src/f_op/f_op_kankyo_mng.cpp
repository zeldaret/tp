/**
 * f_op_kankyo.cpp
 * Environment process manager
 */

#include "f_op/f_op_kankyo_mng.h"
#include "SSystem/SComponent/c_malloc.h"
#include "d/d_com_inf_game.h"

/* 8001F660-8001F6B8 019FA0 0058+00 2/2 0/0 0/0 .text            fopKyM_CreateAppend__Fv */
static fopKyM_prm_class* fopKyM_CreateAppend() {
    fopKyM_prm_class* params =
        static_cast<fopKyM_prm_class*>(cMl::memalignB(-4, sizeof(fopKyM_prm_class)));

    if (params != NULL) {
        cLib_memSet(params, 0, sizeof(fopKyM_prm_class));
        params->mScale.set(1.0f, 1.0f, 1.0f);
    }
    return params;
}

/* 8001F6B8-8001F748 019FF8 0090+00 2/2 0/0 0/0 .text            createAppend__FiP4cXyzP4cXyz */
static fopKyM_prm_class* createAppend(int i_param, cXyz* i_pos, cXyz* i_scale) {
    fopKyM_prm_class* params = fopKyM_CreateAppend();

    if (params == NULL) {
        return NULL;
    }

    if (i_pos != NULL) {
        params->mPos = *i_pos;
    }

    if (i_scale != NULL) {
        params->mScale = *i_scale;
    }
    params->mParam = i_param;

    return params;
}

/* 8001F748-8001F768 01A088 0020+00 0/0 3/3 1/1 .text            fopKyM_Delete__FPv */
void fopKyM_Delete(void* i_process) {
    fpcM_Delete(i_process);
}

/* 8001F768-8001F7B8 01A0A8 0050+00 2/2 0/0 0/0 .text            fopKyM_Create__FsPFPv_iPv */
static int fopKyM_Create(s16 i_procName, fopKyM_CreateFunc i_createFunc, void* i_process) {
    return fpcM_Create(i_procName, i_createFunc, i_process);
}

/* 8001F7B8-8001F818 01A0F8 0060+00 0/0 3/3 1/1 .text fopKyM_create__FsiP4cXyzP4cXyzPFPv_i */
int fopKyM_create(s16 i_procName, int i_param, cXyz* i_pos, cXyz* i_scale,
                  fopKyM_CreateFunc i_createFunc) {
    fopKyM_prm_class* params = createAppend(i_param, i_pos, i_scale);

    if (params == NULL) {
        return -1;
    }

    return fopKyM_Create(i_procName, i_createFunc, params);
}

/* 8001F818-8001F87C 01A158 0064+00 0/0 1/1 0/0 .text fopKyM_fastCreate__FsiP4cXyzP4cXyzPFPv_i */
base_process_class* fopKyM_fastCreate(s16 i_procName, int i_param, cXyz* i_pos, cXyz* i_scale,
                                      fopKyM_CreateFunc i_createFunc) {
    fopKyM_prm_class* params = createAppend(i_param, i_pos, i_scale);

    if (params == NULL) {
        return NULL;
    }

    return fpcM_FastCreate(i_procName, i_createFunc, NULL, params);
}

/* 8001F87C-8001F90C 01A1BC 0090+00 0/0 6/6 37/37 .text            fopKyM_createWpillar__FPC4cXyzfi
 */
int fopKyM_createWpillar(cXyz const* i_pos, f32 scale, int i_param) {
    fopKyM_prm_class* params = fopKyM_CreateAppend();

    if (params == NULL) {
        return -1;
    }

    params->mPos = *i_pos;
    params->mScale.x = scale;
    params->mScale.y = scale;
    params->mScale.z = scale;
    params->mParam = i_param;

    return fopKyM_Create(PROC_WPILLAR, NULL, params);
}

/* 8001F90C-8001F9B4 01A24C 00A8+00 0/0 0/0 3/3 .text            fopKyM_createMpillar__FPC4cXyzf */
int fopKyM_createMpillar(cXyz const* i_pos, f32 i_size) {
    static u16 m_name[2] = {
        0x8757,
        0x8758,
    };

    cXyz scale;
    scale.x = i_size;
    scale.y = i_size;
    scale.z = i_size;

    for (int i = 0; i < 2; i++) {
        dComIfGp_particle_set(m_name[i], i_pos, NULL, &scale);
    }

    return -1;
}