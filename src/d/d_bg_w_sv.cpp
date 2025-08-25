/**
 * d_bg_w_sv.cpp
 *
 */

#include "d/dolzel.h"

#include "d/d_bg_w_sv.h"
#include "SSystem/SComponent/c_bg_s_chk.h"

/* 80082F98-80083020 07D8D8 0088+00 0/0 0/0 2/2 .text            Set__6dBgWSvFP6cBgD_tUl */
u8 dBgWSv::Set(cBgD_t* pbgd, u32 param_1) {
    if (cBgW::Set(pbgd, 99, NULL)) {
        return 1;
    }

    field_0xc4 = param_1;
    if (field_0xc4 & 1) {
        return 0;
    }

    field_0xc0 = new Vec[pm_bgd->m_v_num];
    return field_0xc0 == NULL;
}

/* 80083020-8008308C 07D960 006C+00 0/0 0/0 3/3 .text            CopyBackVtx__6dBgWSvFv */
void dBgWSv::CopyBackVtx() {
    if (field_0xc0 == NULL || pm_vtx_tbl == NULL) {
        return;
    }

    for (int i = 0; i < pm_bgd->m_v_num; i++) {
        field_0xc0[i] = pm_vtx_tbl[i];
    }
}

/* 8008308C-80083244 07D9CC 01B8+00 1/1 0/0 0/0 .text            CrrPosWork__6dBgWSvFP4cXyziii */
bool dBgWSv::CrrPosWork(cXyz* i_pos, int i_vtx0, int i_vtx1, int i_vtx2) {
    cXyz sp34;
    cXyz sp28;

    sp34.x = field_0xc0[i_vtx1].x - field_0xc0[i_vtx0].x;
    sp34.y = field_0xc0[i_vtx1].y - field_0xc0[i_vtx0].y;
    sp34.z = field_0xc0[i_vtx1].z - field_0xc0[i_vtx0].z;

    sp28.x = field_0xc0[i_vtx2].x - field_0xc0[i_vtx0].x;
    sp28.y = field_0xc0[i_vtx2].y - field_0xc0[i_vtx0].y;
    sp28.z = field_0xc0[i_vtx2].z - field_0xc0[i_vtx0].z;

    if (cM3d_IsZero(sp34.z) || cM3d_IsZero(sp28.z)) {
        return 1;
    }

    f32 temp_f8 = sp34.x - (sp34.z * (sp28.x / sp28.z));
    f32 temp_f5_2 = sp28.x - (sp28.z * (sp34.x / sp34.z));

    if (cM3d_IsZero(temp_f8) || cM3d_IsZero(temp_f5_2)) {
        return 1;
    }

    i_pos->x -= field_0xc0[i_vtx0].x;
    i_pos->z -= field_0xc0[i_vtx0].z;

    cXyz sp14;
    cXyz sp8;

    f32 temp_f6_2 = (i_pos->x - (i_pos->z * (sp28.x / sp28.z))) / temp_f8;
    f32 temp_f7_2 = (i_pos->x - (i_pos->z * (sp34.x / sp34.z))) / temp_f5_2;

    sp14.x = pm_vtx_tbl[i_vtx1].x - pm_vtx_tbl[i_vtx0].x;
    sp14.z = pm_vtx_tbl[i_vtx1].z - pm_vtx_tbl[i_vtx0].z;

    sp8.x = pm_vtx_tbl[i_vtx2].x - pm_vtx_tbl[i_vtx0].x;
    sp8.z = pm_vtx_tbl[i_vtx2].z - pm_vtx_tbl[i_vtx0].z;

    i_pos->x = (temp_f6_2 * sp14.x) + (temp_f7_2 * sp8.x);
    i_pos->z = (temp_f6_2 * sp14.z) + (temp_f7_2 * sp8.z);

    i_pos->x += pm_vtx_tbl[i_vtx0].x;
    i_pos->z += pm_vtx_tbl[i_vtx0].z;

    return 0;
}

/* 80083244-80083300 07DB84 00BC+00 1/0 0/0 0/0 .text
 * CrrPos__6dBgWSvFRC13cBgS_PolyInfoPvbP4cXyzP5csXyzP5csXyz     */
void dBgWSv::CrrPos(cBgS_PolyInfo const& i_poly, void* i_actor_ptr, bool param_2, cXyz* i_pos,
                    csXyz* i_angle, csXyz* i_shapeAngle) {
    if (!(field_0xc4 & 1) && param_2) {
        int poly_idx = i_poly.GetPolyIndex();
        int vtx0 = pm_bgd->m_t_tbl[poly_idx].m_vtx_idx0;
        int vtx1 = pm_bgd->m_t_tbl[poly_idx].m_vtx_idx1;
        int vtx2 = pm_bgd->m_t_tbl[poly_idx].m_vtx_idx2;

        if (CrrPosWork(i_pos, vtx0, vtx1, vtx2) && CrrPosWork(i_pos, vtx1, vtx2, vtx0)) {
            CrrPosWork(i_pos, vtx2, vtx0, vtx1);
        }
    }
}

/* 80083300-8008351C 07DC40 021C+00 1/1 0/0 0/0 .text            TransPosWork__6dBgWSvFP4cXyziii */
bool dBgWSv::TransPosWork(cXyz* i_pos, int i_vtx0, int i_vtx1, int i_vtx2) {
    cXyz sp34;
    cXyz sp28;

    sp34.x = field_0xc0[i_vtx1].x - field_0xc0[i_vtx0].x;
    sp34.y = field_0xc0[i_vtx1].y - field_0xc0[i_vtx0].y;
    sp34.z = field_0xc0[i_vtx1].z - field_0xc0[i_vtx0].z;

    sp28.x = field_0xc0[i_vtx2].x - field_0xc0[i_vtx0].x;
    sp28.y = field_0xc0[i_vtx2].y - field_0xc0[i_vtx0].y;
    sp28.z = field_0xc0[i_vtx2].z - field_0xc0[i_vtx0].z;

    if (cM3d_IsZero(sp34.z) || cM3d_IsZero(sp28.z)) {
        return 1;
    }

    f32 temp_f8 = sp34.x - (sp34.z * (sp28.x / sp28.z));
    f32 temp_f5_2 = sp28.x - (sp28.z * (sp34.x / sp34.z));

    if (cM3d_IsZero(temp_f8) || cM3d_IsZero(temp_f5_2)) {
        return 1;
    }

    f32 temp_f3 = i_pos->x - field_0xc0[i_vtx0].x;
    f32 temp_f4 = i_pos->z - field_0xc0[i_vtx0].z;

    f32 temp_f6_2 = (temp_f3 - (temp_f4 * (sp28.x / sp28.z))) / temp_f8;
    f32 temp_f7_2 = (temp_f3 - (temp_f4 * (sp34.x / sp34.z))) / temp_f5_2;

    if (temp_f6_2 < 0.0f || temp_f6_2 > 1.0f || temp_f7_2 < 0.0f || temp_f7_2 > 1.0f) {
        return 1;
    }

    cXyz sp14;
    cXyz sp8;

    sp14.x = pm_vtx_tbl[i_vtx1].x - pm_vtx_tbl[i_vtx0].x;
    sp14.y = pm_vtx_tbl[i_vtx1].y - pm_vtx_tbl[i_vtx0].y;
    sp14.z = pm_vtx_tbl[i_vtx1].z - pm_vtx_tbl[i_vtx0].z;

    sp8.x = pm_vtx_tbl[i_vtx2].x - pm_vtx_tbl[i_vtx0].x;
    sp8.y = pm_vtx_tbl[i_vtx2].y - pm_vtx_tbl[i_vtx0].y;
    sp8.z = pm_vtx_tbl[i_vtx2].z - pm_vtx_tbl[i_vtx0].z;

    i_pos->x = (temp_f6_2 * sp14.x) + (temp_f7_2 * sp8.x);
    i_pos->y = (temp_f6_2 * sp14.y) + (temp_f7_2 * sp8.y);
    i_pos->z = (temp_f6_2 * sp14.z) + (temp_f7_2 * sp8.z);

    i_pos->x += pm_vtx_tbl[i_vtx0].x;
    i_pos->y += pm_vtx_tbl[i_vtx0].y;
    i_pos->z += pm_vtx_tbl[i_vtx0].z;

    return 0;
}

/* 8008351C-800835D8 07DE5C 00BC+00 1/0 0/0 0/0 .text
 * TransPos__6dBgWSvFRC13cBgS_PolyInfoPvbP4cXyzP5csXyzP5csXyz   */
void dBgWSv::TransPos(cBgS_PolyInfo const& i_poly, void* i_actor_ptr, bool param_2, cXyz* i_pos,
                      csXyz* i_angle, csXyz* i_shapeAngle) {
    if (!(field_0xc4 & 1) && param_2) {
        int poly_idx = i_poly.GetPolyIndex();
        int vtx0 = pm_bgd->m_t_tbl[poly_idx].m_vtx_idx0;
        int vtx1 = pm_bgd->m_t_tbl[poly_idx].m_vtx_idx1;
        int vtx2 = pm_bgd->m_t_tbl[poly_idx].m_vtx_idx2;

        if (TransPosWork(i_pos, vtx0, vtx1, vtx2) && TransPosWork(i_pos, vtx1, vtx2, vtx0)) {
            TransPosWork(i_pos, vtx2, vtx0, vtx1);
        }
    }
}

/* 800835D8-800835DC 07DF18 0004+00 1/0 0/0 0/0 .text
 * MatrixCrrPos__6dBgWSvFRC13cBgS_PolyInfoPvbP4cXyzP5csXyzP5csXyz */
void dBgWSv::MatrixCrrPos(cBgS_PolyInfo const& i_poly, void* i_actor_ptr, bool param_2, cXyz* i_pos,
                          csXyz* i_angle, csXyz* i_shapeAngle) {}
