/**
 * d_bg_w.cpp
 * DZB Collision handling
 */

#include "d/dolzel.h"

#include "d/d_bg_w.h"
#include "SSystem/SComponent/c_bg_s_shdw_draw.h"
#include "SSystem/SComponent/c_m2d.h"
#include "SSystem/SComponent/c_math.h"
#include "d/d_bg_s_cap_poly.h"
#include "d/d_bg_s_sph_chk.h"
#include "d/d_com_inf_game.h"
#include "d/actor/d_a_horse.h"

/* 800791C4-800791D4 073B04 0010+00 1/1 0/0 0/0 .text            __ct__11cBgW_RwgElmFv */
cBgW_RwgElm::cBgW_RwgElm() {}

/* 800791D4-8007921C 073B14 0048+00 2/1 0/0 0/0 .text            __dt__11cBgW_RwgElmFv */
cBgW_RwgElm::~cBgW_RwgElm() {}

/* 8007921C-80079238 073B5C 001C+00 1/1 0/0 0/0 .text            __ct__13cBgW_NodeTreeFv */
cBgW_NodeTree::cBgW_NodeTree() {}

/* 80079238-80079294 073B78 005C+00 2/1 0/0 0/0 .text            __dt__13cBgW_NodeTreeFv */
cBgW_NodeTree::~cBgW_NodeTree() {}

/* 80079294-8007933C 073BD4 00A8+00 1/1 0/0 0/0 .text            __ct__4cBgWFv */
cBgW::cBgW() {
    pm_bgd = NULL;
    mFlags = GLOBAL_e;
    mNeedsFullTransform = 1;
    mMoveCounter = 0;
    mTransVel.set(0.0f, 0.0f, 0.0f);

    pm_tri = NULL;
    pm_rwg = NULL;
    pm_blk = NULL;
    pm_node_tree = NULL;
    pm_grp = NULL;
    pm_vtx_tbl = NULL;
    pm_base = NULL;

    MTXIdentity(m_inv_mtx);
    MTXIdentity(m_mtx);
    m_rootGrpIdx = 0xFFFF;
    field_0x91 = 0;
}

/* 8007933C-800793A4 073C7C 0068+00 2/1 1/1 5/5 .text            __dt__4cBgWFv */
cBgW::~cBgW() {
    FreeArea();
}

/* 800793A4-800793C4 073CE4 0020+00 2/2 0/0 0/0 .text            FreeArea__4cBgWFv */
void cBgW::FreeArea() {
    pm_tri = NULL;
    pm_rwg = NULL;
    pm_node_tree = NULL;
    pm_blk = NULL;
    pm_grp = NULL;
    pm_vtx_tbl = NULL;
}

/* 800793C4-80079484 073D04 00C0+00 2/2 0/0 1/1 .text            GlobalVtx__4cBgWFv */
void cBgW::GlobalVtx() {
    if (pm_base != NULL) {
        if (!mNeedsFullTransform) {
            for (int i = 0; i < pm_bgd->m_v_num; i++) {
                Vec* vtx = &pm_vtx_tbl[i];
                VECAdd(vtx, &mTransVel, vtx);
            }
        } else {
            for (int i = 0; i < pm_bgd->m_v_num; i++) {
                MTXMultVec(pm_base, &pm_bgd->m_v_tbl[i], &pm_vtx_tbl[i]);
            }
        }
    }
}

/* 80079484-80079564 073DC4 00E0+00 1/1 0/0 0/0 .text            SetVtx__4cBgWFv */
bool cBgW::SetVtx() {
    if (mFlags & NO_VTX_TBL_e) {
        pm_vtx_tbl = NULL;
    } else if (mFlags & MOVE_BG_e) {
        pm_vtx_tbl = (cBgD_Vtx_t*)new Vec[pm_bgd->m_v_num];

        if (pm_vtx_tbl == NULL) {
            return true;
        }

        if (mFlags & CBGW_UNK_FLAG_40) {
            for (int i = 0; i < pm_bgd->m_v_num; i++) {
                pm_vtx_tbl[i].x = 0.0f;
                pm_vtx_tbl[i].y = 0.0f;
                pm_vtx_tbl[i].z = 0.0f;
            }
        }

        GlobalVtx();
    } else {
        pm_vtx_tbl = pm_bgd->m_v_tbl;
    }

    return false;
}

/* 80079564-80079668 073EA4 0104+00 2/0 1/0 0/0 .text            CalcPlane__4cBgWFv */
void cBgW::CalcPlane() {
    cBgD_Tri_t* tri = pm_bgd->m_t_tbl;

    if (pm_vtx_tbl != NULL) {
        if (!mNeedsFullTransform) {
            for (int i = 0; i < pm_bgd->m_t_num; i++) {
                pm_tri[i].m_plane.mD -= VECDotProduct(&pm_tri[i].m_plane.mNormal, &mTransVel);
            }
        } else {
            for (int i = 0; i < pm_bgd->m_t_num; i++) {
                pm_tri[i].m_plane.SetupFrom3Vtx(&pm_vtx_tbl[tri[i].m_vtx_idx0],
                                                &pm_vtx_tbl[tri[i].m_vtx_idx1],
                                                &pm_vtx_tbl[tri[i].m_vtx_idx2]);
            }
        }
    }
}

/* 80079668-800796F8 073FA8 0090+00 1/1 0/0 0/0 .text            SetTri__4cBgWFv */
bool cBgW::SetTri() {
    pm_tri = new cBgW_TriElm[pm_bgd->m_t_num];

    if (pm_tri == NULL) {
        return true;
    }

    CalcPlane();
    return false;
}

/* 800796F8-80079754 074038 005C+00 2/1 0/0 0/0 .text            __dt__11cBgW_TriElmFv */
cBgW_TriElm::~cBgW_TriElm() {}

/* 80079754-80079770 074094 001C+00 1/1 0/0 0/0 .text            __ct__11cBgW_TriElmFv */
cBgW_TriElm::cBgW_TriElm() {}

/* 80079770-800797BC 0740B0 004C+00 1/1 0/0 0/0 .text            BlckConnect__4cBgWFPUsPii */
void cBgW::BlckConnect(u16* i_start_idx, int* i_prev_idx, int i_idx) {
    if (*i_start_idx == 0xFFFF) {
        *i_start_idx = i_idx;
    }

    if (*i_prev_idx != 0xFFFF) {
        pm_rwg[*i_prev_idx].m_next = i_idx;
    }

    *i_prev_idx = i_idx;
    pm_rwg[*i_prev_idx].m_next = 0xFFFF;
}

/* 800797BC-8007998C 0740FC 01D0+00 2/0 1/0 0/0 .text            ClassifyPlane__4cBgWFv */
void cBgW::ClassifyPlane() {
    if (pm_vtx_tbl == NULL) {
        return;
    }

    for (int i = 0; i < pm_bgd->m_b_num; i++) {
        int start_idx = pm_bgd->m_b_tbl[i].field_0x0;
        int end_idx;
        if (i != pm_bgd->m_b_num - 1) {
            end_idx = pm_bgd->m_b_tbl[i + 1].field_0x0 - 1;
        } else {
            end_idx = pm_bgd->m_t_num - 1;
        }
        pm_blk[i].m_roof_idx = 0xFFFF;
        pm_blk[i].m_wall_idx = 0xFFFF;
        pm_blk[i].m_gnd_idx = 0xFFFF;

        int blk_roof_idx, blk_wall_idx, blk_gnd_idx;
        blk_roof_idx = blk_wall_idx = blk_gnd_idx = 0xFFFF;

        for (int j = start_idx; j <= end_idx; j++) {
            f32 norm_y = pm_tri[j].m_plane.GetNP()->y;

            if (!cM3d_IsZero(pm_tri[j].m_plane.GetNP()->x) ||
                !cM3d_IsZero(pm_tri[j].m_plane.GetNP()->y) ||
                !cM3d_IsZero(pm_tri[j].m_plane.GetNP()->z))
            {
                if (cBgW_CheckBGround(norm_y)) {
                    BlckConnect(&pm_blk[i].m_gnd_idx, &blk_gnd_idx, j);
                } else if (cBgW_CheckBRoof(norm_y)) {
                    if (!ChkRoofRegist()) {
                        BlckConnect(&pm_blk[i].m_roof_idx, &blk_roof_idx, j);
                    }
                } else {
                    BlckConnect(&pm_blk[i].m_wall_idx, &blk_wall_idx, j);
                }
            }
        }
    }
}

/* 8007998C-800799E0 0742CC 0054+00 1/1 0/0 0/0 .text MakeBlckTransMinMax__4cBgWFP4cXyzP4cXyz */
void cBgW::MakeBlckTransMinMax(cXyz* i_min, cXyz* i_max) {
    VECAdd(i_min, &mTransVel, i_min);
    VECAdd(i_max, &mTransVel, i_max);
}

/* 800799E0-80079A68 074320 0088+00 1/1 0/0 0/0 .text            MakeBlckMinMax__4cBgWFiP4cXyzP4cXyz
 */
void cBgW::MakeBlckMinMax(int vtx_index, cXyz* i_min, cXyz* i_max) {
    Vec* vtx = &pm_vtx_tbl[vtx_index];

    if (i_min->x > vtx->x) {
        i_min->x = vtx->x;
    }

    if (i_max->x < vtx->x) {
        i_max->x = vtx->x;
    }

    if (i_min->y > vtx->y) {
        i_min->y = vtx->y;
    }

    if (i_max->y < vtx->y) {
        i_max->y = vtx->y;
    }

    if (i_min->z > vtx->z) {
        i_min->z = vtx->z;
    }

    if (i_max->z < vtx->z) {
        i_max->z = vtx->z;
    }
}

/* 80079A68-80079BDC 0743A8 0174+00 1/1 0/0 0/0 .text            MakeBlckBnd__4cBgWFiP4cXyzP4cXyz */
void cBgW::MakeBlckBnd(int i_blk_idx, cXyz* i_min, cXyz* i_max) {
    int start = pm_bgd->m_b_tbl[i_blk_idx].field_0x0;
    int max;

    if (i_blk_idx != pm_bgd->m_b_num - 1) {
        max = pm_bgd->m_b_tbl[i_blk_idx + 1].field_0x0 - 1;
    } else {
        max = pm_bgd->m_t_num - 1;
    }

    if (mNeedsFullTransform == 0) {
        MakeBlckTransMinMax(i_min, i_max);
    } else {
        i_min->z = 1000000000.0f;
        i_min->y = 1000000000.0f;
        i_min->x = 1000000000.0f;
        i_max->z = -1000000000.0f;
        i_max->y = -1000000000.0f;
        i_max->x = -1000000000.0f;

        for (int i = start; i <= max; i++) {
            MakeBlckMinMax(pm_bgd->m_t_tbl[i].m_vtx_idx0, i_min, i_max);
            MakeBlckMinMax(pm_bgd->m_t_tbl[i].m_vtx_idx1, i_min, i_max);
            MakeBlckMinMax(pm_bgd->m_t_tbl[i].m_vtx_idx2, i_min, i_max);
        }

        i_min->x -= 1.0f;
        i_min->y -= 1.0f;
        i_min->z -= 1.0f;
        i_max->x += 1.0f;
        i_max->y += 1.0f;
        i_max->z += 1.0f;
    }
}

/* 80079BDC-80079CC4 07451C 00E8+00 1/1 0/0 0/0 .text            MakeNodeTreeRp__4cBgWFi */
void cBgW::MakeNodeTreeRp(int i_tree_idx) {
    cBgD_Tree_t* tree_data = &pm_bgd->m_tree_tbl[i_tree_idx];

    if (tree_data->m_flag & 1) {
        int child_idx = tree_data->m_id[0];

        if (child_idx != 0xFFFF) {
            cXyz* max = (cXyz*)pm_node_tree[i_tree_idx].GetMaxP();
            cXyz* min = (cXyz*)pm_node_tree[i_tree_idx].GetMinP();

            MakeBlckBnd(child_idx, min, max);
        }
    } else {
        pm_node_tree[i_tree_idx].ClearForMinMax();

        for (int i = 0; i < 8; i++) {
            int child_idx = tree_data->m_id[i];

            if (child_idx != 0xFFFF) {
                MakeNodeTreeRp(child_idx);
                pm_node_tree[i_tree_idx].SetMinMax(*pm_node_tree[child_idx].GetMinP());
                pm_node_tree[i_tree_idx].SetMinMax(*pm_node_tree[child_idx].GetMaxP());
            }
        }
    }
}

/* 80079CC4-80079DF0 074604 012C+00 1/1 0/0 0/0 .text            MakeNodeTreeGrpRp__4cBgWFi */
void cBgW::MakeNodeTreeGrpRp(int i_grp_idx) {
    if (pm_bgd->m_g_tbl[i_grp_idx].m_tree_idx != 0xFFFF) {
        MakeNodeTreeRp(pm_bgd->m_g_tbl[i_grp_idx].m_tree_idx);
        pm_grp[i_grp_idx].m_aab.SetMin(
            *pm_node_tree[pm_bgd->m_g_tbl[i_grp_idx].m_tree_idx].GetMinP());
        pm_grp[i_grp_idx].m_aab.SetMax(
            *pm_node_tree[pm_bgd->m_g_tbl[i_grp_idx].m_tree_idx].GetMaxP());
    }

    s32 child_idx = pm_bgd->m_g_tbl[i_grp_idx].m_first_child;
    while (true) {
        if (child_idx == 0xFFFF)
            break;
        MakeNodeTreeGrpRp(child_idx);
        pm_grp[i_grp_idx].m_aab.SetMin(*pm_grp[child_idx].m_aab.GetMinP());
        pm_grp[i_grp_idx].m_aab.SetMax(*pm_grp[child_idx].m_aab.GetMaxP());
        child_idx = pm_bgd->m_g_tbl[child_idx].m_next_sibling;
    }
}

/* 80079DF0-80079EEC 074730 00FC+00 2/2 0/0 0/0 .text            MakeNodeTree__4cBgWFv */
void cBgW::MakeNodeTree() {
    if (pm_vtx_tbl == NULL) {
        for (int i = 0; i < pm_bgd->m_g_num; i++) {
            if (pm_bgd->m_g_tbl[i].m_parent == 0xFFFF) {
                m_rootGrpIdx = i;
                return;
            }
        }
    } else {
        for (int i = 0; i < pm_bgd->m_g_num; i++) {
            pm_grp[i].m_aab.ClearForMinMax();
        }

        for (int i = 0; i < pm_bgd->m_g_num; i++) {
            if (pm_bgd->m_g_tbl[i].m_parent == 0xFFFF) {
                m_rootGrpIdx = i;
                MakeNodeTreeGrpRp(i);
                return;
            }
        }
    }
}

/* 80079EEC-80079F38 07482C 004C+00 2/0 1/0 0/0 .text            ChkMemoryError__4cBgWFv */
bool cBgW::ChkMemoryError() {
    if (pm_tri == NULL || pm_rwg == NULL || pm_blk == NULL || pm_node_tree == NULL ||
        pm_grp == NULL)
    {
        return true;
    }

    return false;
}

/* 80079F38-8007A184 074878 024C+00 1/1 3/3 85/85 .text            Set__4cBgWFP6cBgD_tUlPA3_A4_f */
bool cBgW::Set(cBgD_t* pbgd, u32 flags, Mtx* pbase_mtx) {
    mFlags = GLOBAL_e;
    pm_vtx_tbl = NULL;
    pm_tri = NULL;
    pm_rwg = NULL;
    pm_blk = NULL;
    pm_node_tree = NULL;
    pm_grp = NULL;
    mMoveCounter = cM_rndF(128.0f);

    if (pbgd == NULL) {
        return true;
    }

    mFlags = flags;
    if (mFlags & GLOBAL_e) {
        pm_base = NULL;
        MTXIdentity(m_inv_mtx);
        MTXIdentity(m_mtx);
    } else {
        pm_base = *pbase_mtx;
        MTXCopy(pm_base, m_inv_mtx);
        MTXCopy(pm_base, m_mtx);
    }

    pm_bgd = pbgd;

    if (SetVtx() || SetTri()) {
        FreeArea();
        return true;
    }

    pm_rwg = new cBgW_RwgElm[pm_bgd->m_t_num];
    if (pm_rwg == NULL) {
        FreeArea();
        return true;
    }

    pm_blk = new cBgW_BlkElm[pm_bgd->m_b_num];
    if (pm_blk == NULL) {
        FreeArea();
        return true;
    }

    pm_node_tree = new cBgW_NodeTree[pm_bgd->m_tree_num];
    if (pm_node_tree == NULL) {
        FreeArea();
        return true;
    }

    pm_grp = new cBgW_GrpElm[pm_bgd->m_g_num];
    if (pm_grp == NULL) {
        FreeArea();
        return true;
    }

    ClassifyPlane();
    mNeedsFullTransform = 1;
    MakeNodeTree();
    return false;
}

/* 8007A184-8007A1E4 074AC4 0060+00 2/1 0/0 0/0 .text            __dt__11cBgW_GrpElmFv */
cBgW_GrpElm::~cBgW_GrpElm() {}

/* 8007A1E4-8007A200 074B24 001C+00 1/1 0/0 0/0 .text            __ct__11cBgW_GrpElmFv */
cBgW_GrpElm::cBgW_GrpElm() {}

/* 8007A200-8007A344 074B40 0144+00 1/1 0/0 0/0 .text RwgLineCheck__4cBgWFUsP11cBgS_LinChk */
bool cBgW::RwgLineCheck(u16 i_poly_index, cBgS_LinChk* i_linchk) {
    bool chk = false;
    cM3dGTri tri;

    while (true) {
        cBgD_Tri_t* tri_t = &pm_bgd->m_t_tbl[i_poly_index];

        tri.setBg(&pm_vtx_tbl[tri_t->m_vtx_idx0], &pm_vtx_tbl[tri_t->m_vtx_idx1],
                  &pm_vtx_tbl[tri_t->m_vtx_idx2], &pm_tri[i_poly_index].m_plane);

        cXyz cross_pos;
        if (tri.cross(i_linchk->GetLinP(), &cross_pos, i_linchk->ChkFrontFlag(),
                      i_linchk->ChkBackFlag()))
        {
            if (!ChkPolyThrough(i_poly_index, i_linchk->GetPolyPassChk())) {
                i_linchk->SetCross(cross_pos);
                i_linchk->SetPolyIndex(i_poly_index);
                chk = true;
            }
        }

        if (pm_rwg[i_poly_index].m_next == 0xFFFF) {
            break;
        }
        i_poly_index = pm_rwg[i_poly_index].m_next;
    }

    return chk;
}

/* 8007A3A0-8007A52C 074CE0 018C+00 1/1 0/0 0/0 .text            LineCheckRp__4cBgWFP11cBgS_LinChki
 */
bool cBgW::LineCheckRp(cBgS_LinChk* i_linchk, int i_idx) {
    cBgW_NodeTree* node = &pm_node_tree[i_idx];

    if (!cM3d_Cross_MinMaxBoxLine(node->GetMinP(), node->GetMaxP(),
                                  &i_linchk->GetLinP()->GetStartP(),
                                  &i_linchk->GetLinP()->GetEndP()))
    {
        return false;
    }

    cBgD_Tree_t* tree = &pm_bgd->m_tree_tbl[i_idx];
    bool chk = false;

    if (tree->m_flag & 1) {
        if (i_linchk->GetPreWallChk() && pm_blk[tree->m_id[0]].m_wall_idx != 0xFFFF &&
            RwgLineCheck(pm_blk[tree->m_id[0]].m_wall_idx, i_linchk))
        {
            chk = true;
        }
        if (i_linchk->GetPreGroundChk() && pm_blk[tree->m_id[0]].m_gnd_idx != 0xFFFF &&
            RwgLineCheck(pm_blk[tree->m_id[0]].m_gnd_idx, i_linchk))
        {
            chk = true;
        }
        if (i_linchk->GetPreRoofChk() && pm_blk[tree->m_id[0]].m_roof_idx != 0xFFFF &&
            RwgLineCheck(pm_blk[tree->m_id[0]].m_roof_idx, i_linchk))
        {
            chk = true;
        }

        return chk;
    }

    for (int i = 0; i < 8; i++) {
        if (tree->m_id[i] != 0xFFFF && LineCheckRp(i_linchk, tree->m_id[i])) {
            chk = true;
        }
    }

    return chk;
}

/* 8007A52C-8007A658 074E6C 012C+00 1/1 0/0 0/0 .text LineCheckGrpRp__4cBgWFP11cBgS_LinChkii */
bool cBgW::LineCheckGrpRp(cBgS_LinChk* i_linchk, int i_grp_idx, int depth) {
    cM3dGLin* pline = i_linchk->GetLinP();
    if (!pm_grp[i_grp_idx].m_aab.Cross(pline)) {
        return false;
    }

    if (ChkGrpThrough(i_grp_idx, i_linchk->GetGrpPassChk(), depth)) {
        return false;
    }

    bool chk = false;

    if (pm_bgd->m_g_tbl[i_grp_idx].m_tree_idx != 0xFFFF &&
        LineCheckRp(i_linchk, pm_bgd->m_g_tbl[i_grp_idx].m_tree_idx))
    {
        chk = true;
    }

    s32 child_idx = pm_bgd->m_g_tbl[i_grp_idx].m_first_child;
    while (true) {
        if (child_idx == 0xFFFF)
            break;

        if (LineCheckGrpRp(i_linchk, child_idx, depth + 1)) {
            chk = true;
        }
        child_idx = pm_bgd->m_g_tbl[child_idx].m_next_sibling;
    }

    return chk;
}

/* 8007A658-8007A680 074F98 0028+00 2/0 1/0 0/0 .text            LineCheck__4cBgWFP11cBgS_LinChk */
bool cBgW::LineCheck(cBgS_LinChk* i_linchk) {
    return LineCheckGrpRp(i_linchk, m_rootGrpIdx, 1);
}

/* 8007A680-8007A774 074FC0 00F4+00 2/2 0/0 0/0 .text
 * RwgGroundCheckCommon__4cBgWFfUsP11cBgS_GndChk                */
bool cBgW::RwgGroundCheckCommon(f32 i_yPos, u16 i_poly_idx, cBgS_GndChk* i_gndchk) {
    if (i_yPos < i_gndchk->GetPointP().y && i_yPos > i_gndchk->GetNowY()) {
        cBgD_Tri_t* tri = &pm_bgd->m_t_tbl[i_poly_idx];
        if (cM3d_CrossY_Tri_Front(pm_vtx_tbl[tri->m_vtx_idx0], pm_vtx_tbl[tri->m_vtx_idx1],
                                  pm_vtx_tbl[tri->m_vtx_idx2], (const Vec*)&i_gndchk->GetPointP()))
        {
            if (!ChkPolyThrough(i_poly_idx, i_gndchk->GetPolyPassChk())) {
                i_gndchk->SetNowY(i_yPos);
                i_gndchk->SetPolyIndex(i_poly_idx);
                return true;
            }
        }
    }

    return false;
}

/* 8007A774-8007A824 0750B4 00B0+00 1/1 0/0 0/0 .text RwgGroundCheckGnd__4cBgWFUsP11cBgS_GndChk */
bool cBgW::RwgGroundCheckGnd(u16 i_poly_idx, cBgS_GndChk* i_gndchk) {
    bool chk = false;
    while (true) {
        cBgW_RwgElm* rwg = &pm_rwg[i_poly_idx];
        f32 tri_y = pm_tri[i_poly_idx].m_plane.getCrossY_NonIsZero(&i_gndchk->GetPointP());
        if (RwgGroundCheckCommon(tri_y, (u32)i_poly_idx, i_gndchk)) {
            chk = true;
        }

        if (rwg->m_next == 0xFFFF)
            break;

        i_poly_idx = rwg->m_next;
    }
    return chk;
}

/* 8007A824-8007A8F4 075164 00D0+00 1/1 0/0 0/0 .text RwgGroundCheckWall__4cBgWFUsP11cBgS_GndChk
 */
bool cBgW::RwgGroundCheckWall(u16 i_poly_idx, cBgS_GndChk* i_gndchk) {
    bool chk = false;
    while (true) {
        cBgW_TriElm* tri = &pm_tri[i_poly_idx];
        cBgW_RwgElm* rwg = &pm_rwg[i_poly_idx];
        if (tri->m_plane.mNormal.y >= 0.014f) {
            f32 tri_y = tri->m_plane.getCrossY_NonIsZero(&i_gndchk->GetPointP());
            if (RwgGroundCheckCommon(tri_y, (u32)i_poly_idx, i_gndchk)) {
                chk = true;
            }
        }

        if (rwg->m_next == 0xFFFF)
            break;
        i_poly_idx = rwg->m_next;
    }

    return chk;
}

/* 8007A8F4-8007AA50 075234 015C+00 1/1 0/0 0/0 .text GroundCrossRp__4cBgWFP11cBgS_GndChki */
bool cBgW::GroundCrossRp(cBgS_GndChk* i_gndchk, int i_idx) {
    bool chk = false;
    cBgD_Tree_t* tree = &pm_bgd->m_tree_tbl[i_idx];
    if ((tree->m_flag & 1)) {
        if (pm_blk[tree->m_id[0]].m_gnd_idx != 0xFFFF &&
            RwgGroundCheckGnd(pm_blk[tree->m_id[0]].m_gnd_idx, i_gndchk))
        {
            chk = true;
        }

        if (i_gndchk->GetWallPrecheck() && pm_blk[tree->m_id[0]].m_wall_idx != 0xFFFF &&
            RwgGroundCheckWall(pm_blk[tree->m_id[0]].m_wall_idx, i_gndchk))
        {
            chk = true;
        }
        return chk;
    }

    for (int i = 0; i < 8; i++) {
        if (tree->m_id[i] != 0xFFFF) {
            cM3dGAab* aab = &pm_node_tree[tree->m_id[i]];
            if (aab->CrossY(&i_gndchk->GetPointP())) {
                if (aab->UnderPlaneYUnder(i_gndchk->GetPointP().y)) {
                    if (!aab->TopPlaneYUnder(i_gndchk->GetNowY()) &&
                        GroundCrossRp(i_gndchk, tree->m_id[i]))
                    {
                        chk = true;
                    }
                }
            }
        }
    }

    return chk;
}

/* 8007AA50-8007AB9C 075390 014C+00 1/1 0/0 0/0 .text GroundCrossGrpRp__4cBgWFP11cBgS_GndChkii */
bool cBgW::GroundCrossGrpRp(cBgS_GndChk* i_gndchk, int i_grp_idx, int i_depth) {
    cBgW_GrpElm* grp = &pm_grp[i_grp_idx];
    if (!grp->m_aab.CrossY(&i_gndchk->GetPointP()) ||
        !grp->m_aab.UnderPlaneYUnder(i_gndchk->GetPointP().y) ||
        grp->m_aab.TopPlaneYUnder(i_gndchk->GetNowY()))
    {
        return false;
    }

    if (ChkGrpThrough(i_grp_idx, i_gndchk->GetGrpPassChk(), i_depth)) {
        return false;
    }

    bool chk = false;

    if (pm_bgd->m_g_tbl[i_grp_idx].m_tree_idx != 0xFFFF &&
        GroundCrossRp(i_gndchk, pm_bgd->m_g_tbl[i_grp_idx].m_tree_idx))
    {
        chk = true;
    }

    s32 child_idx = pm_bgd->m_g_tbl[i_grp_idx].m_first_child;
    while (true) {
        if (child_idx == 0xFFFF)
            break;

        if (GroundCrossGrpRp(i_gndchk, child_idx, i_depth + 1)) {
            chk = true;
        }

        child_idx = pm_bgd->m_g_tbl[child_idx].m_next_sibling;
    }

    return chk;
}

/* 8007AB9C-8007ABC4 0754DC 0028+00 2/0 1/0 0/0 .text            GroundCross__4cBgWFP11cBgS_GndChk
 */
bool cBgW::GroundCross(cBgS_GndChk* i_gndchk) {
    return GroundCrossGrpRp(i_gndchk, m_rootGrpIdx, 1);
}

/* 8007ABC4-8007AC10 075504 004C+00 1/1 0/0 0/0 .text            CopyOldMtx__4cBgWFv */
void cBgW::CopyOldMtx() {
    if (pm_base != NULL) {
        MTXCopy(m_mtx, m_inv_mtx);
        MTXCopy(pm_base, m_mtx);
    }
}

/* 8007AC10-8007ADF0 075550 01E0+00 1/1 0/0 0/0 .text            Move__4cBgWFv */
void cBgW::Move() {
    if (!ChkLock() && (mFlags & MOVE_BG_e)) {
        if (!ChkNoCalcVtx()) {
            if (mMoveCounter >= 0xFF || m_mtx[0][0] != pm_base[0][0] ||
                m_mtx[0][1] != pm_base[0][1] || m_mtx[0][2] != pm_base[0][2] ||
                m_mtx[1][0] != pm_base[1][0] || m_mtx[1][1] != pm_base[1][1] ||
                m_mtx[1][2] != pm_base[1][2] || m_mtx[2][0] != pm_base[2][0] ||
                m_mtx[2][1] != pm_base[2][1] || m_mtx[2][2] != pm_base[2][2])
            {
                mNeedsFullTransform = 1;
            } else if (m_mtx[0][3] == pm_base[0][3] && m_mtx[1][3] == pm_base[1][3] &&
                       m_mtx[2][3] == pm_base[2][3])
            {
                MTXCopy(pm_base, m_inv_mtx);
                if (!ChkFlush()) {
                    return;
                }
            } else {
                mTransVel.x = pm_base[0][3] - m_mtx[0][3];
                mTransVel.y = pm_base[1][3] - m_mtx[1][3];
                mTransVel.z = pm_base[2][3] - m_mtx[2][3];
                mNeedsFullTransform = 0;
            }

            if (mMoveCounter >= 0xFF) {
                mMoveCounter = 0;
            } else {
                mMoveCounter++;
            }
            GlobalVtx();
        }

        CopyOldMtx();
        CalcPlane();
        ClassifyPlane();
        MakeNodeTree();
    }
}

/* 8007ADF0-8007AEA4 075730 00B4+00 1/1 0/0 0/0 .text RwgShdwDraw__4cBgWFiP13cBgS_ShdwDraw */
void cBgW::RwgShdwDraw(int i_idx, cBgS_ShdwDraw* i_shdw) {
    while (true) {
        cBgW_RwgElm* rwg = &pm_rwg[i_idx];
        if (!ChkShdwDrawThrough(i_idx, i_shdw->GetPolyPassChk())) {
            (i_shdw->mCallbackFun)(i_shdw, pm_vtx_tbl, pm_bgd->m_t_tbl[i_idx].m_vtx_idx0,
                                   pm_bgd->m_t_tbl[i_idx].m_vtx_idx1,
                                   pm_bgd->m_t_tbl[i_idx].m_vtx_idx2, &pm_tri[i_idx].m_plane);
        }

        if (rwg->m_next == 0xFFFF)
            break;
        i_idx = rwg->m_next;
    }
}

/* 8007AEA4-8007AFC0 0757E4 011C+00 1/1 0/0 0/0 .text            ShdwDrawRp__4cBgWFP13cBgS_ShdwDrawi
 */
void cBgW::ShdwDrawRp(cBgS_ShdwDraw* i_shdw, int i_idx) {
    if (pm_node_tree[i_idx].Cross(i_shdw->GetBndP())) {
        cBgD_Tree_t* tree = &pm_bgd->m_tree_tbl[i_idx];
        if ((tree->m_flag & 1)) {
            if (pm_blk[tree->m_id[0]].m_wall_idx != 0xFFFF) {
                RwgShdwDraw(pm_blk[tree->m_id[0]].m_wall_idx, i_shdw);
            }
            if (pm_blk[tree->m_id[0]].m_roof_idx != 0xFFFF) {
                RwgShdwDraw(pm_blk[tree->m_id[0]].m_roof_idx, i_shdw);
            }
            if (pm_blk[tree->m_id[0]].m_gnd_idx != 0xFFFF) {
                RwgShdwDraw(pm_blk[tree->m_id[0]].m_gnd_idx, i_shdw);
            }
        } else {
            for (int i = 0; i < 8; i++) {
                if (tree->m_id[i] != 0xFFFF) {
                    ShdwDrawRp(i_shdw, tree->m_id[i]);
                }
            }
        }
    }
}

/* 8007AFC0-8007B084 075900 00C4+00 1/1 0/0 0/0 .text ShdwDrawGrpRp__4cBgWFP13cBgS_ShdwDrawi */
void cBgW::ShdwDrawGrpRp(cBgS_ShdwDraw* i_shdw, int i_idx) {
    if (pm_grp[i_idx].m_aab.Cross(i_shdw->GetBndP())) {
        if (pm_bgd->m_g_tbl[i_idx].m_tree_idx != 0xFFFF) {
            ShdwDrawRp(i_shdw, pm_bgd->m_g_tbl[i_idx].m_tree_idx);
        }

        s32 child_idx = pm_bgd->m_g_tbl[i_idx].m_first_child;
        while (true) {
            if (child_idx == 0xFFFF) {
                break;
            }
            ShdwDrawGrpRp(i_shdw, child_idx);
            child_idx = pm_bgd->m_g_tbl[child_idx].m_next_sibling;
        }
    }
}

/* 8007B084-8007B0A8 0759C4 0024+00 2/0 1/0 0/0 .text            ShdwDraw__4cBgWFP13cBgS_ShdwDraw */
void cBgW::ShdwDraw(cBgS_ShdwDraw* i_shdw) {
    ShdwDrawGrpRp(i_shdw, m_rootGrpIdx);
}

/* 8007B0A8-8007B0B0 0759E8 0008+00 1/0 0/0 0/0 .text ChkPolyThrough__4cBgWFiP16cBgS_PolyPassChk
 */
bool cBgW::ChkPolyThrough(int param_0, cBgS_PolyPassChk* param_1) {
    return false;
}

/* 8007B0B0-8007B0DC 0759F0 002C+00 1/0 0/0 0/0 .text
 * ChkShdwDrawThrough__4cBgWFiP16cBgS_PolyPassChk               */
bool cBgW::ChkShdwDrawThrough(int param_0, cBgS_PolyPassChk* param_1) {
    return ChkPolyThrough(param_0, param_1);
}

/* 8007B0DC-8007B0E4 075A1C 0008+00 1/0 0/0 0/0 .text ChkGrpThrough__4cBgWFiP15cBgS_GrpPassChki */
bool cBgW::ChkGrpThrough(int param_0, cBgS_GrpPassChk* param_1, int param_2) {
    return false;
}

/* 8007B0E4-8007B164 075A24 0080+00 2/0 1/0 0/0 .text GetGrpRoomIndex__4cBgWCFRC13cBgS_PolyInfo */
s32 cBgW::GetGrpRoomIndex(cBgS_PolyInfo const& poly) const {
    int grp_index = GetTriGrp(poly.GetPolyIndex());

    u16 parent_idx = pm_bgd->m_g_tbl[grp_index].m_parent;

    if (parent_idx == 0xFFFF || pm_bgd->m_g_tbl[parent_idx].m_parent == 0xFFFF) {
        return 0xFF;
    }

    int room_index = pm_bgd->m_g_tbl[pm_bgd->m_g_tbl[parent_idx].m_parent].m_room_id;
    if (room_index >= 0xFF) {
        room_index = 0xFF;
    }

    return room_index;
}

/* 8007B164-8007B17C 075AA4 0018+00 2/0 1/0 0/0 .text            GetBnd__4cBgWCFv */
cM3dGAab* cBgW::GetBnd() const {
    return &pm_grp[m_rootGrpIdx].m_aab;
}

/* 8007B17C-8007B1B4 075ABC 0038+00 0/0 1/1 0/0 .text            GetTrans__4cBgWCFP4cXyz */
void cBgW::GetTrans(cXyz* o_trans) const {
    MtxP base = pm_base;
    o_trans->x = base[0][3] - m_inv_mtx[0][3];
    o_trans->y = base[1][3] - m_inv_mtx[1][3];
    o_trans->z = base[2][3] - m_inv_mtx[2][3];
}

/* 8007B1B4-8007B240 075AF4 008C+00 2/0 1/0 0/0 .text
 * GetTriPnt__4cBgWCFRC13cBgS_PolyInfoP4cXyzP4cXyzP4cXyz        */
bool cBgW::GetTriPnt(cBgS_PolyInfo const& poly, cXyz* o_pntA, cXyz* o_pntB, cXyz* o_pntC) const {
    u16 poly_index = poly.GetPolyIndex();
    cBgD_Tri_t* tri = &pm_bgd->m_t_tbl[poly_index];

    o_pntA->set(pm_vtx_tbl[tri->m_vtx_idx0]);
    o_pntB->set(pm_vtx_tbl[tri->m_vtx_idx1]);
    o_pntC->set(pm_vtx_tbl[tri->m_vtx_idx2]);
    return true;
}

/* 8007B240-8007B270 075B80 0030+00 2/0 1/0 0/0 .text            GetTopUnder__4cBgWCFPfPf */
void cBgW::GetTopUnder(f32* o_top, f32* o_under) const {
    *o_under = pm_grp[m_rootGrpIdx].m_aab.GetMinP()->y;
    *o_top = pm_grp[m_rootGrpIdx].m_aab.GetMaxP()->y;
}

/* 8007B270-8007B2B0 075BB0 0040+00 2/0 1/0 0/0 .text            GetTriPla__4cBgWCFRC13cBgS_PolyInfo
 */
cM3dGPla cBgW::GetTriPla(cBgS_PolyInfo const& poly) const {
    u16 poly_index = poly.GetPolyIndex();
    return pm_tri[poly_index].m_plane;
}

/* 8007B2B0-8007B2F4 075BF0 0044+00 2/0 1/0 0/0 .text            GetGrpInf__4cBgWCFRC13cBgS_PolyInfo
 */
u32 cBgW::GetGrpInf(cBgS_PolyInfo const& poly) const {
    int grp = GetTriGrp(poly.GetPolyIndex());
    return pm_bgd->m_g_tbl[grp].m_info;
}

/* 8007B2F4-8007B30C 075C34 0018+00 5/5 0/0 0/0 .text            GetPolyInfId__4cBgWCFi */
int cBgW::GetPolyInfId(int poly_index) const {
    return pm_bgd->m_t_tbl[poly_index].m_id;
}

/* 8007B30C-8007B360 075C4C 0054+00 6/6 0/0 0/0 .text            GetPolyInf0__4cBgWCFiUlUl */
u32 cBgW::GetPolyInf0(int poly_index, u32 mask, u32 shift) const {
    int id = GetPolyInfId(poly_index);
    return (pm_bgd->m_ti_tbl[id].m_info0 & mask) >> shift;
}

/* 8007B360-8007B3AC 075CA0 004C+00 10/10 0/0 0/0 .text GetMaskPolyInf0_NoShift__4cBgWCFiUl */
u32 cBgW::GetMaskPolyInf0_NoShift(int poly_index, u32 mask) const {
    int id = GetPolyInfId(poly_index);
    return (pm_bgd->m_ti_tbl[id].m_info0 & mask);
}

/* 8007B3AC-8007B3D8 075CEC 002C+00 1/0 1/0 0/0 .text            GetExitId__4dBgWFRC13cBgS_PolyInfo
 */
s32 dBgW::GetExitId(cBgS_PolyInfo const& poly) {
    return GetPolyInf0(poly.GetPolyIndex(), 0x3F, 0);
}

/* 8007B3D8-8007B404 075D18 002C+00 1/0 1/0 0/0 .text GetPolyColor__4dBgWFRC13cBgS_PolyInfo */
s32 dBgW::GetPolyColor(cBgS_PolyInfo const& poly) {
    return GetPolyInf0(poly.GetPolyIndex(), 0x3FC0, 6);
}

/* 8007B404-8007B430 075D44 002C+00 1/0 1/0 0/0 .text GetHorseNoEntry__4dBgWFRC13cBgS_PolyInfo */
BOOL dBgW::GetHorseNoEntry(cBgS_PolyInfo const& poly) {
    return GetPolyInf0(poly.GetPolyIndex(), 0x200000, 21);
}

/* 8007B430-8007B460 075D70 0030+00 1/0 1/0 0/0 .text GetSpecialCode__4dBgWFRC13cBgS_PolyInfo */
int dBgW::GetSpecialCode(cBgS_PolyInfo const& poly) {
    return GetSpecialCode(poly.GetPolyIndex());
}

/* 8007B460-8007B488 075DA0 0028+00 1/0 1/0 0/0 .text            GetSpecialCode__4dBgWFi */
int dBgW::GetSpecialCode(int poly_index) {
    return GetPolyInf0(poly_index, 0xF000000, 24);
}

/* 8007B488-8007B4B4 075DC8 002C+00 1/0 1/0 0/0 .text GetMagnetCode__4dBgWFRC13cBgS_PolyInfo */
int dBgW::GetMagnetCode(cBgS_PolyInfo const& poly) {
    return GetPolyInf0(poly.GetPolyIndex(), 0x30000000, 28);
}

/* 8007B4B4-8007B4E0 075DF4 002C+00 1/0 1/0 0/0 .text GetMonkeyBarsCode__4dBgWFRC13cBgS_PolyInfo
 */
int dBgW::GetMonkeyBarsCode(cBgS_PolyInfo const& poly) {
    return GetPolyInf0(poly.GetPolyIndex(), 0x80000000, 31);
}

/* 8007B4E0-8007B504 075E20 0024+00 1/0 1/0 0/0 .text            GetPolyObjThrough__4dBgWFi */
u32 dBgW::GetPolyObjThrough(int poly_index) {
    return GetMaskPolyInf0_NoShift(poly_index, 0x4000);
}

/* 8007B504-8007B52C 075E44 0028+00 1/0 1/0 0/0 .text            GetPolyCamThrough__4dBgWFi */
u32 dBgW::GetPolyCamThrough(int poly_index) {
    return GetMaskPolyInf0_NoShift(poly_index, 0x8000);
}

/* 8007B52C-8007B550 075E6C 0024+00 1/0 1/0 0/0 .text            GetPolyLinkThrough__4dBgWFi */
u32 dBgW::GetPolyLinkThrough(int poly_index) {
    return GetMaskPolyInf0_NoShift(poly_index, 0x10000);
}

/* 8007B550-8007B574 075E90 0024+00 1/0 1/0 0/0 .text            GetPolyArrowThrough__4dBgWFi */
u32 dBgW::GetPolyArrowThrough(int poly_index) {
    return GetMaskPolyInf0_NoShift(poly_index, 0x20000);
}

/* 8007B574-8007B598 075EB4 0024+00 1/0 1/0 0/0 .text            GetPolyHSStick__4dBgWFi */
u32 dBgW::GetPolyHSStick(int poly_index) {
    return GetMaskPolyInf0_NoShift(poly_index, 0x40000);
}

/* 8007B598-8007B5BC 075ED8 0024+00 1/0 1/0 0/0 .text            GetPolyBoomerangThrough__4dBgWFi */
u32 dBgW::GetPolyBoomerangThrough(int poly_index) {
    return GetMaskPolyInf0_NoShift(poly_index, 0x80000);
}

/* 8007B5BC-8007B5E0 075EFC 0024+00 1/0 1/0 0/0 .text            GetPolyRopeThrough__4dBgWFi */
u32 dBgW::GetPolyRopeThrough(int poly_index) {
    return GetMaskPolyInf0_NoShift(poly_index, 0x100000);
}

/* 8007B5E0-8007B604 075F20 0024+00 1/0 1/0 0/0 .text            GetPolyBombThrough__4dBgWFi */
u32 dBgW::GetPolyBombThrough(int poly_index) {
    return GetMaskPolyInf0_NoShift(poly_index, 0x800000);
}

/* 8007B604-8007B630 075F44 002C+00 1/0 1/0 0/0 .text            GetShdwThrough__4dBgWFi */
bool dBgW::GetShdwThrough(int poly_index) {
    return GetMaskPolyInf0_NoShift(poly_index, 0x400000) != 0;
}

/* 8007B630-8007B654 075F70 0024+00 1/0 1/0 0/0 .text            GetUnderwaterRoofCode__4dBgWFi */
u32 dBgW::GetUnderwaterRoofCode(int poly_index) {
    return GetMaskPolyInf0_NoShift(poly_index, 0x40000000);
}

/* 8007B654-8007B6AC 075F94 0058+00 6/6 0/0 0/0 .text            GetPolyInf1__4cBgWCFiUlUl */
u32 cBgW::GetPolyInf1(int poly_index, u32 mask, u32 shift) const {
    int id = GetPolyInfId(poly_index);
    return (pm_bgd->m_ti_tbl[id].m_info1 & mask) >> shift;
}

/* 8007B6AC-8007B6D8 075FEC 002C+00 1/0 1/0 0/0 .text            GetLinkNo__4dBgWFRC13cBgS_PolyInfo
 */
int dBgW::GetLinkNo(cBgS_PolyInfo const& poly) {
    return GetPolyInf1(poly.GetPolyIndex(), 0xFF, 0);
}

/* 8007B6D8-8007B704 076018 002C+00 1/0 1/0 0/0 .text GetWallCode__4dBgWFRC13cBgS_PolyInfo */
s32 dBgW::GetWallCode(cBgS_PolyInfo const& poly) {
    return GetPolyInf1(poly.GetPolyIndex(), 0xF00, 8);
}

/* 8007B704-8007B734 076044 0030+00 1/0 1/0 0/0 .text GetPolyAtt0__4dBgWFRC13cBgS_PolyInfo */
int dBgW::GetPolyAtt0(cBgS_PolyInfo const& poly) {
    return GetPolyInf1(poly.GetPolyIndex(), 0xF000, 12);
}

/* 8007B734-8007B760 076074 002C+00 1/0 1/0 0/0 .text GetPolyAtt1__4dBgWFRC13cBgS_PolyInfo */
int dBgW::GetPolyAtt1(cBgS_PolyInfo const& poly) {
    return GetPolyInf1(poly.GetPolyIndex(), 0x70000, 16);
}

/* 8007B760-8007B78C 0760A0 002C+00 1/0 1/0 0/0 .text GetGroundCode__4dBgWFRC13cBgS_PolyInfo */
int dBgW::GetGroundCode(cBgS_PolyInfo const& poly) {
    return GetPolyInf1(poly.GetPolyIndex(), 0xF80000, 19);
}

/* 8007B78C-8007B7DC 0760CC 0050+00 2/2 0/0 0/0 .text            GetMaskPolyInf1_NoShift__4cBgWCFiUl
 */
u32 cBgW::GetMaskPolyInf1_NoShift(int poly_index, u32 mask) const {
    int id = GetPolyInfId(poly_index);
    return (pm_bgd->m_ti_tbl[id].m_info1 & mask);
}

/* 8007B7DC-8007B800 07611C 0024+00 1/0 1/0 0/0 .text            GetIronBallThrough__4dBgWFi */
u32 dBgW::GetIronBallThrough(int poly_index) {
    return GetMaskPolyInf1_NoShift(poly_index, 0x1000000);
}

/* 8007B800-8007B824 076140 0024+00 1/0 1/0 0/0 .text            GetAttackThrough__4dBgWFi */
u32 dBgW::GetAttackThrough(int poly_index) {
    return GetMaskPolyInf1_NoShift(poly_index, 0x2000000);
}

/* 8007B824-8007B87C 076164 0058+00 4/4 0/0 0/0 .text            GetPolyInf2__4cBgWCFiUlUl */
u32 cBgW::GetPolyInf2(int poly_index, u32 mask, u32 shift) const {
    int id = GetPolyInfId(poly_index);
    return (pm_bgd->m_ti_tbl[id].m_info2 & mask) >> shift;
}

/* 8007B87C-8007B8A8 0761BC 002C+00 1/0 1/0 0/0 .text GetCamMoveBG__4dBgWFRC13cBgS_PolyInfo */
s32 dBgW::GetCamMoveBG(cBgS_PolyInfo const& poly) {
    return GetPolyInf2(poly.GetPolyIndex(), 0xFF, 0);
}

/* 8007B8A8-8007B8D8 0761E8 0030+00 1/0 1/0 0/0 .text GetRoomCamId__4dBgWFRC13cBgS_PolyInfo */
s32 dBgW::GetRoomCamId(cBgS_PolyInfo const& poly) {
    return GetPolyInf2(poly.GetPolyIndex(), 0xFF00, 8);
}

/* 8007B8D8-8007B904 076218 002C+00 1/0 1/0 0/0 .text GetRoomPathId__4dBgWFRC13cBgS_PolyInfo */
s32 dBgW::GetRoomPathId(cBgS_PolyInfo const& poly) {
    return GetPolyInf2(poly.GetPolyIndex(), 0xFF0000, 16);
}

/* 8007B904-8007B930 076244 002C+00 1/0 1/0 0/0 .text GetRoomPathPntNo__4dBgWFRC13cBgS_PolyInfo */
s32 dBgW::GetRoomPathPntNo(cBgS_PolyInfo const& poly) {
    return GetPolyInf2(poly.GetPolyIndex(), 0xFF000000, 24);
}

/* 8007B930-8007B948 076270 0018+00 2/2 0/0 0/0 .text            GetTriGrp__4cBgWCFi */
int cBgW::GetTriGrp(int poly_index) const {
    return pm_bgd->m_t_tbl[poly_index].m_grp;
}

/* 8007B948-8007B958 076288 0010+00 2/0 1/0 0/0 .text            ChkNotReady__4cBgWCFv */
bool cBgW::ChkNotReady() const {
    return pm_vtx_tbl == NULL;
}

/* 8007B958-8007B964 076298 000C+00 2/0 1/0 0/0 .text            ChkLock__4cBgWCFv */
bool cBgW::ChkLock() const {
    return mFlags & LOCK_e;
}

/* 8007B964-8007B970 0762A4 000C+00 2/0 1/0 0/0 .text            ChkMoveBg__4cBgWCFv */
bool cBgW::ChkMoveBg() const {
    return mFlags & MOVE_BG_e;
}

/* 8007B970-8007B9C0 0762B0 0050+00 1/1 2/2 87/87 .text            __ct__4dBgWFv */
dBgW::dBgW() {
    m_crr_func = NULL;
    m_ride_callback = NULL;
    m_arrow_stick_callback = NULL;
    m_flags = 0;
}

/* 8007B9C0-8007B9EC 076300 002C+00 0/0 2/2 115/115 .text            Move__4dBgWFv */
void dBgW::Move() {
    OnMoveFlag();
    cBgW::Move();
}

/* 8007B9EC-8007BA40 07632C 0054+00 2/2 0/0 0/0 .text
 * positionWallCorrect__4dBgWFP9dBgS_AcchfR8cM3dGPlaP4cXyzf     */
void dBgW::positionWallCorrect(dBgS_Acch* i_acch, f32 i_dist, cM3dGPla& plane, cXyz* pupper_pos,
                               f32 speed) {
    i_acch->SetWallHit();

    f32 speed_correct = speed - 1.0f;
    if (speed_correct < 0.0f) {
        speed_correct = 0.0f;
    }

    f32 move = speed_correct * i_dist;
    pupper_pos->x += move * plane.mNormal.x;
    pupper_pos->z += move * plane.mNormal.z;
}

/* 8007BA40-8007C234 076380 07F4+00 1/1 0/0 0/0 .text            RwgWallCorrect__4dBgWFP9dBgS_AcchUs
 */
bool dBgW::RwgWallCorrect(dBgS_Acch* pwi, u16 i_poly_idx) {
    bool correct = false;

    while (true) {
        cBgW_RwgElm* rwg_elm = &pm_rwg[i_poly_idx];

        if (!ChkPolyThrough(i_poly_idx, pwi->GetPolyPassChk())) {
            cBgW_TriElm* tri = &pm_tri[i_poly_idx];

            f32 sp68 = JMAFastSqrt(tri->m_plane.GetNP()->x * tri->m_plane.GetNP()->x +
                                   tri->m_plane.GetNP()->z * tri->m_plane.GetNP()->z);
            if (cM3d_IsZero(sp68)) {
                if (rwg_elm->m_next != 0xFFFF) {
                    i_poly_idx = rwg_elm->m_next;
                    continue;
                }
                break;
            }

            f32 sp6C = 1.0f / sp68;
            cBgD_Tri_t* tri_data = &pm_bgd->m_t_tbl[i_poly_idx];
            int cir_index = 0;

            while (cir_index < pwi->GetTblSize()) {
                f32 sp78 = sp6C * pwi->GetWallR(cir_index);
                Vec sp50;
                sp50.x = sp78 * tri->m_plane.GetNP()->x;
                sp50.y = 0.0f;
                sp50.z = sp78 * tri->m_plane.GetNP()->z;

                f32 sp7C;
                if (!pwi->ChkWallHDirect(cir_index)) {
                    sp7C =
                        (pwi->GetWallAddY(sp50) + (pwi->GetPos()->y + pwi->GetWallH(cir_index))) -
                        pwi->GetSpeedY();
                } else {
                    sp7C = pwi->GetWallHDirect(cir_index);
                }

                f32 sp5C[3];
                sp5C[0] = pm_vtx_tbl[tri_data->m_vtx_idx0].y - sp7C;
                sp5C[1] = pm_vtx_tbl[tri_data->m_vtx_idx1].y - sp7C;
                sp5C[2] = pm_vtx_tbl[tri_data->m_vtx_idx2].y - sp7C;

                if ((!(sp5C[0] > 0.0f) || !(sp5C[1] > 0.0f) || !(sp5C[2] > 0.0f)) &&
                    (!(sp5C[0] < 0.0f) || !(sp5C[1] < 0.0f) || !(sp5C[2] < 0.0f)))
                {
                    int sp8C = 0;
                    if (cM3d_IsZero(sp5C[0])) {
                        sp8C++;
                    }
                    if (cM3d_IsZero(sp5C[1])) {
                        sp8C++;
                    }
                    if (cM3d_IsZero(sp5C[2])) {
                        sp8C++;
                    }

                    int sp80, sp84, sp88;
                    if (sp8C != 1) {
                        if ((sp5C[0] > 0.0f && (sp5C[1] <= 0.0f) && (sp5C[2] <= 0.0f)) ||
                            (sp5C[0] < 0.0f && (sp5C[1] >= 0.0f) && (sp5C[2] >= 0.0f)))
                        {
                            sp80 = 0;
                            sp84 = 1;
                            sp88 = 2;
                        } else if ((sp5C[1] > 0.0f && (sp5C[0] <= 0.0f) && (sp5C[2] <= 0.0f)) ||
                                   (sp5C[1] < 0.0f && (sp5C[0] >= 0.0f) && (sp5C[2] >= 0.0f)))
                        {
                            sp80 = 1;
                            sp84 = 0;
                            sp88 = 2;
                        } else {
                            sp80 = 2;
                            sp84 = 0;
                            sp88 = 1;
                        }

                        f32 sp90 = sp5C[sp80] - sp5C[sp84];
                        f32 sp94 = sp5C[sp80] - sp5C[sp88];
                        if (!cM3d_IsZero(sp90) && !cM3d_IsZero(sp94)) {
                            f32 sp98 = -sp5C[sp84] / sp90;
                            f32 sp9C = -sp5C[sp88] / sp94;

                            f32 vtx0_x = pm_vtx_tbl[tri_data->m_vtx_idx0].x;
                            f32 vtx0_z = pm_vtx_tbl[tri_data->m_vtx_idx0].z;
                            f32 vtx1_x = pm_vtx_tbl[tri_data->m_vtx_idx1].x;
                            f32 vtx1_z = pm_vtx_tbl[tri_data->m_vtx_idx1].z;
                            f32 vtx2_x = pm_vtx_tbl[tri_data->m_vtx_idx2].x;
                            f32 vtx2_z = pm_vtx_tbl[tri_data->m_vtx_idx2].z;

                            f32 cx0, cy0, cx1, cy1;
                            if (sp80 == 0) {
                                cx0 = vtx1_x + sp98 * (vtx0_x - vtx1_x);
                                cy0 = vtx1_z + sp98 * (vtx0_z - vtx1_z);
                                cx1 = vtx2_x + sp9C * (vtx0_x - vtx2_x);
                                cy1 = vtx2_z + sp9C * (vtx0_z - vtx2_z);
                            } else if (sp80 == 1) {
                                cx0 = vtx0_x + sp98 * (vtx1_x - vtx0_x);
                                cy0 = vtx0_z + sp98 * (vtx1_z - vtx0_z);
                                cx1 = vtx2_x + sp9C * (vtx1_x - vtx2_x);
                                cy1 = vtx2_z + sp9C * (vtx1_z - vtx2_z);
                            } else {
                                cx0 = vtx0_x + sp98 * (vtx2_x - vtx0_x);
                                cy0 = vtx0_z + sp98 * (vtx2_z - vtx0_z);
                                cx1 = vtx1_x + sp9C * (vtx2_x - vtx1_x);
                                cy1 = vtx1_z + sp9C * (vtx2_z - vtx1_z);
                            }

                            cx0 += sp50.x;
                            cy0 += sp50.z;
                            cx1 += sp50.x;
                            cy1 += sp50.z;

                            f32 spC8, spCC, spD0;
                            bool sp107 =
                                cM3d_Len2dSqPntAndSegLine(pwi->GetCx(), pwi->GetCz(), cx0, cy0, cx1,
                                                          cy1, &spCC, &spD0, &spC8);

                            f32 spD4 = spCC - pwi->GetCx();
                            f32 spD8 = spD0 - pwi->GetCz();
                            f32 spDC = pwi->GetWallRR(cir_index);

                            if (!(spC8 > spDC) && !(spD4 * sp50.x + spD8 * sp50.z < 0.0f)) {
                                if (sp107 == 1) {
                                    positionWallCorrect(pwi, sp6C, tri->m_plane, pwi->GetPos(),
                                                        JMAFastSqrt(spC8));
                                    pwi->CalcMovePosWork();
                                    pwi->SetWallCirHit(cir_index);
                                    pwi->SetWallPolyIndex(cir_index, i_poly_idx);
                                    pwi->SetWallAngleY(cir_index,
                                                       cM_atan2s(tri->m_plane.GetNP()->x,
                                                                 tri->m_plane.GetNP()->z));
                                    correct = true;
                                } else {
                                    cx0 -= sp50.x;
                                    cy0 -= sp50.z;
                                    cx1 -= sp50.x;
                                    cy1 -= sp50.z;

                                    JUT_ASSERT(0, pwi->GetPos()->x ==
                                               pwi->GetWallCirP(cir_index)->GetCx());
                                    JUT_ASSERT(0, pwi->GetPos()->z ==
                                               pwi->GetWallCirP(cir_index)->GetCy());

                                    f32 spE0 =
                                        cM3d_Len2dSq(cx0, cy0, pwi->GetPos()->x, pwi->GetPos()->z);
                                    f32 spE4 =
                                        cM3d_Len2dSq(cx1, cy1, pwi->GetPos()->x, pwi->GetPos()->z);

                                    f32 onx = -tri->m_plane.GetNP()->x;
                                    f32 ony = -tri->m_plane.GetNP()->z;

                                    JUT_ASSERT(0, !(cM3d_IsZero(onx) && cM3d_IsZero(ony)));

                                    if (spE0 < spE4) {
                                        if (!(spE0 > spDC) && !(fabsf(spE0 - spDC) < 0.008f)) {
                                            JUT_ASSERT(0, !(fpclassify(cx0) == 1));
                                            JUT_ASSERT(0, !(fpclassify(cy0) == 1));

                                            f32 spF0, spF4;
                                            cM2d_CrossCirLin(*pwi->GetWallCirP(cir_index), cx0, cy0,
                                                             onx, ony, &spF0, &spF4);
                                            pwi->GetPos()->x += cx0 - spF0;
                                            pwi->GetPos()->z += cy0 - spF4;

                                            JUT_ASSERT(0, !(fpclassify(pwi->GetPos()->x) == 1));
                                            JUT_ASSERT(0, !(fpclassify(pwi->GetPos()->z) == 1));

                                            pwi->CalcMovePosWork();
                                            pwi->SetWallCirHit(cir_index);
                                            pwi->SetWallPolyIndex(cir_index, i_poly_idx);
                                            pwi->SetWallAngleY(cir_index,
                                                               cM_atan2s(tri->m_plane.GetNP()->x,
                                                                         tri->m_plane.GetNP()->z));
                                            correct = true;
                                            pwi->SetWallHit();
                                        }
                                    } else if (!(spE4 > spDC) && !(fabsf(spE4 - spDC) < 0.008f)) {
                                        JUT_ASSERT(0, !(fpclassify(cx1) == 1));
                                        JUT_ASSERT(0, !(fpclassify(cy1) == 1));

                                        f32 spF8, spFC;
                                        cM2d_CrossCirLin(*pwi->GetWallCirP(cir_index), cx1, cy1,
                                                         onx, ony, &spF8, &spFC);
                                        pwi->GetPos()->x += cx1 - spF8;
                                        pwi->GetPos()->z += cy1 - spFC;

                                        JUT_ASSERT(0, !(fpclassify(pwi->GetPos()->x) == 1));
                                        JUT_ASSERT(0, !(fpclassify(pwi->GetPos()->z) == 1));

                                        pwi->CalcMovePosWork();
                                        pwi->SetWallCirHit(cir_index);
                                        pwi->SetWallPolyIndex(cir_index, i_poly_idx);
                                        pwi->SetWallAngleY(cir_index,
                                                           cM_atan2s(tri->m_plane.GetNP()->x,
                                                                     tri->m_plane.GetNP()->z));
                                        correct = true;
                                        pwi->SetWallHit();
                                    }
                                }
                            }
                        }
                    }
                }

                cir_index++;
            }
        }

        if (rwg_elm->m_next == 0xFFFF) {
            break;
        }

        i_poly_idx = rwg_elm->m_next;
    }

    return correct;
}

/* 8007C234-8007C360 076B74 012C+00 1/1 0/0 0/0 .text            WallCorrectRp__4dBgWFP9dBgS_Acchi
 */
bool dBgW::WallCorrectRp(dBgS_Acch* i_acch, int i_idx) {
    if (!pm_node_tree[i_idx].Cross(i_acch->GetWallBmdCylP())) {
        return false;
    }

    cBgD_Tree_t* tree = &pm_bgd->m_tree_tbl[i_idx];
    bool chk = false;
    if ((tree->m_flag & 1)) {
        if (pm_blk[tree->m_id[0]].m_wall_idx != 0xFFFF &&
            RwgWallCorrect(i_acch, pm_blk[tree->m_id[0]].m_wall_idx))
        {
            chk = true;
        }
        if (pm_blk[tree->m_id[0]].m_roof_idx != 0xFFFF &&
            RwgWallCorrect(i_acch, pm_blk[tree->m_id[0]].m_roof_idx))
        {
            chk = true;
        }
        return chk;
    }

    for (int i = 0; i < 8; i++) {
        if (tree->m_id[i] != 0xFFFF && WallCorrectRp(i_acch, tree->m_id[i])) {
            chk = true;
        }
    }

    return chk;
}

/* 8007C360-8007C484 076CA0 0124+00 1/1 0/0 0/0 .text WallCorrectGrpRp__4dBgWFP9dBgS_Acchii */
bool dBgW::WallCorrectGrpRp(dBgS_Acch* i_acch, int i_idx, int i_depth) {
    if (!pm_grp[i_idx].m_aab.Cross(i_acch->GetWallBmdCylP())) {
        return false;
    }

    if (ChkGrpThrough(i_idx, i_acch->GetGrpPassChk(), i_depth)) {
        return false;
    }

    bool chk = false;
    if (pm_bgd->m_g_tbl[i_idx].m_tree_idx != 0xFFFF &&
        WallCorrectRp(i_acch, pm_bgd->m_g_tbl[i_idx].m_tree_idx))
    {
        chk = true;
    }

    s32 child_idx = pm_bgd->m_g_tbl[i_idx].m_first_child;
    while (true) {
        if (child_idx == 0xFFFF) {
            break;
        }
        if (WallCorrectGrpRp(i_acch, child_idx, i_depth + 1)) {
            chk = true;
        }
        child_idx = pm_bgd->m_g_tbl[child_idx].m_next_sibling;
    }

    return chk;
}

/* 8007C484-8007C4AC 076DC4 0028+00 1/0 1/0 0/0 .text            WallCorrect__4dBgWFP9dBgS_Acch */
bool dBgW::WallCorrect(dBgS_Acch* pacch) {
    return WallCorrectGrpRp(pacch, m_rootGrpIdx, 1);
}

struct wcs_data {
    /* 0x0 */ f32 field_0x0;
    /* 0x4 */ u16 poly_idx;
    /* 0x8 */ wcs_data* next;
};

/* 80424B80-80424F70 0518A0 03F0+00 1/1 0/0 0/0 .bss             l_wcsbuf */
static wcs_data l_wcsbuf[84];

/* 80450F80-80450F84 000480 0004+00 2/2 0/0 0/0 .sbss            l_start */
static wcs_data* l_start;

/* 80450F84-80450F88 000484 0004+00 2/2 0/0 0/0 .sbss            l_wcsbuf_num */
static int l_wcsbuf_num;

/* 8007C4AC-8007C714 076DEC 0268+00 1/1 0/0 0/0 .text RwgWallCorrectSort__4dBgWFP9dBgS_AcchUs */
void dBgW::RwgWallCorrectSort(dBgS_Acch* i_acch, u16 i_poly_idx) {
    while (true) {
        cBgW_RwgElm* rwg_elm = &pm_rwg[i_poly_idx];

        if (!ChkPolyThrough(i_poly_idx, i_acch->GetPolyPassChk())) {
            cBgW_TriElm* tri_elm = &pm_tri[i_poly_idx];

            f32 var_f30 = JMAFastSqrt(tri_elm->m_plane.GetNP()->x * tri_elm->m_plane.GetNP()->x +
                                      tri_elm->m_plane.GetNP()->z * tri_elm->m_plane.GetNP()->z);
            if (cM3d_IsZero(var_f30)) {
                if (rwg_elm->m_next != 0xFFFF) {
                    i_poly_idx = rwg_elm->m_next;
                    continue;
                }
                break;
            }

            fopAc_ac_c* actor = i_acch->getMyAc();
            cXyz sp88;
            sp88.x = cM_ssin(actor->current.angle.y);
            sp88.z = cM_scos(actor->current.angle.y);

            f32 var_f29 = 1.0f / var_f30;
            f32 var_f31 = var_f29 * ((sp88.x * tri_elm->m_plane.GetNP()->x) +
                                     (sp88.z * tri_elm->m_plane.GetNP()->z));

            wcs_data* data = l_start;
            if (data == NULL) {
                if (l_wcsbuf_num < 84) {
                    l_wcsbuf[l_wcsbuf_num].field_0x0 = var_f31;
                    l_wcsbuf[l_wcsbuf_num].poly_idx = i_poly_idx;
                    l_wcsbuf[l_wcsbuf_num].next = NULL;
                    l_start = &l_wcsbuf[l_wcsbuf_num];
                    l_wcsbuf_num++;
                }
            } else if (i_poly_idx != l_start->poly_idx) {
                if (var_f31 > l_start->field_0x0) {
                    if (l_wcsbuf_num < 84) {
                        l_wcsbuf[l_wcsbuf_num].field_0x0 = var_f31;
                        l_wcsbuf[l_wcsbuf_num].poly_idx = i_poly_idx;
                        l_wcsbuf[l_wcsbuf_num].next = l_start;
                        l_start = &l_wcsbuf[l_wcsbuf_num];
                        l_wcsbuf_num++;
                    }
                } else {
                    while (true) {
                        wcs_data* tmp_data = data->next;
                        if (tmp_data == NULL) {
                            if (l_wcsbuf_num < 84) {
                                l_wcsbuf[l_wcsbuf_num].field_0x0 = var_f31;
                                l_wcsbuf[l_wcsbuf_num].poly_idx = i_poly_idx;
                                l_wcsbuf[l_wcsbuf_num].next = NULL;
                                data->next = &l_wcsbuf[l_wcsbuf_num];
                                l_wcsbuf_num++;
                            }
                            break;
                        } else if (i_poly_idx == tmp_data->poly_idx) {
                            break;
                        }

                        if (var_f31 > tmp_data->field_0x0) {
                            if (l_wcsbuf_num < 84) {
                                l_wcsbuf[l_wcsbuf_num].field_0x0 = var_f31;
                                l_wcsbuf[l_wcsbuf_num].poly_idx = i_poly_idx;
                                l_wcsbuf[l_wcsbuf_num].next = data->next;
                                data->next = &l_wcsbuf[l_wcsbuf_num];
                                l_wcsbuf_num++;
                            }
                            break;
                        }

                        data = tmp_data;
                    }
                }
            }
        }

        if (rwg_elm->m_next == 0xFFFF) {
            return;
        }

        i_poly_idx = rwg_elm->m_next;
    }
}

/* 8007C714-8007C808 077054 00F4+00 1/1 0/0 0/0 .text WallCorrectRpSort__4dBgWFP9dBgS_Acchi */
void dBgW::WallCorrectRpSort(dBgS_Acch* i_acch, int i_idx) {
    if (!pm_node_tree[i_idx].Cross(i_acch->GetWallBmdCylP())) {
        return;
    }

    cBgD_Tree_t* tree = &pm_bgd->m_tree_tbl[i_idx];
    if ((tree->m_flag & 1)) {
        if (pm_blk[tree->m_id[0]].m_wall_idx != 0xFFFF) {
            RwgWallCorrectSort(i_acch, pm_blk[tree->m_id[0]].m_wall_idx);
        }
        if (pm_blk[tree->m_id[0]].m_roof_idx != 0xFFFF) {
            RwgWallCorrectSort(i_acch, pm_blk[tree->m_id[0]].m_roof_idx);
        }
        return;
    }

    for (int i = 0; i < 8; i++) {
        if (tree->m_id[i] != 0xFFFF) {
            WallCorrectRpSort(i_acch, tree->m_id[i]);
        }
    }
}

/* 8007C808-8007C910 077148 0108+00 1/1 0/0 0/0 .text WallCorrectGrpRpSort__4dBgWFP9dBgS_Acchii */
bool dBgW::WallCorrectGrpRpSort(dBgS_Acch* i_acch, int i_idx, int i_depth) {
    if (!pm_grp[i_idx].m_aab.Cross(i_acch->GetWallBmdCylP())) {
        return false;
    }

    if (ChkGrpThrough(i_idx, i_acch->GetGrpPassChk(), i_depth)) {
        return false;
    }

    if (pm_bgd->m_g_tbl[i_idx].m_tree_idx != 0xFFFF) {
        WallCorrectRpSort(i_acch, pm_bgd->m_g_tbl[i_idx].m_tree_idx);
    }

    s32 child_idx = pm_bgd->m_g_tbl[i_idx].m_first_child;
    while (true) {
        if (child_idx == 0xFFFF) {
            break;
        }
        WallCorrectGrpRpSort(i_acch, child_idx, i_depth + 1);
        child_idx = pm_bgd->m_g_tbl[child_idx].m_next_sibling;
    }

    return false;
}

/* 8007C910-8007D0DC 077250 07CC+00 1/0 1/0 0/0 .text            WallCorrectSort__4dBgWFP9dBgS_Acch
 */
bool dBgW::WallCorrectSort(dBgS_Acch* pwi) {
    l_start = NULL;
    l_wcsbuf_num = 0;

    WallCorrectGrpRpSort(pwi, m_rootGrpIdx, 1);
    bool correct = false;

    wcs_data* data = l_start;
    while (true) {
        if (data == NULL) {
            break;
        }

        int poly_index = data->poly_idx;
        cBgW_TriElm* tri = &pm_tri[poly_index];
        f32 sp68 = JMAFastSqrt(tri->m_plane.GetNP()->x * tri->m_plane.GetNP()->x +
                               tri->m_plane.GetNP()->z * tri->m_plane.GetNP()->z);

        f32 sp6C = 1.0f / sp68;
        cBgD_Tri_t* tri_data = &pm_bgd->m_t_tbl[poly_index];
        int cir_index = 0;

        while (cir_index < pwi->GetTblSize()) {
            f32 sp78 = sp6C * pwi->GetWallR(cir_index);
            Vec sp50;
            sp50.x = sp78 * tri->m_plane.GetNP()->x;
            sp50.y = 0.0f;
            sp50.z = sp78 * tri->m_plane.GetNP()->z;

            f32 sp7C;
            if (!pwi->ChkWallHDirect(cir_index)) {
                sp7C = (pwi->GetWallAddY(sp50) + (pwi->GetPos()->y + pwi->GetWallH(cir_index))) -
                       pwi->GetSpeedY();
            } else {
                sp7C = pwi->GetWallHDirect(cir_index);
            }

            f32 sp5C[3];
            sp5C[0] = pm_vtx_tbl[tri_data->m_vtx_idx0].y - sp7C;
            sp5C[1] = pm_vtx_tbl[tri_data->m_vtx_idx1].y - sp7C;
            sp5C[2] = pm_vtx_tbl[tri_data->m_vtx_idx2].y - sp7C;

            if ((!(sp5C[0] > 0.0f) || !(sp5C[1] > 0.0f) || !(sp5C[2] > 0.0f)) &&
                (!(sp5C[0] < 0.0f) || !(sp5C[1] < 0.0f) || !(sp5C[2] < 0.0f)))
            {
                int sp8C = 0;
                if (cM3d_IsZero(sp5C[0])) {
                    sp8C++;
                }
                if (cM3d_IsZero(sp5C[1])) {
                    sp8C++;
                }
                if (cM3d_IsZero(sp5C[2])) {
                    sp8C++;
                }

                int sp80, sp84, sp88;
                if (sp8C != 1) {
                    if ((sp5C[0] > 0.0f && (sp5C[1] <= 0.0f) && (sp5C[2] <= 0.0f)) ||
                        (sp5C[0] < 0.0f && (sp5C[1] >= 0.0f) && (sp5C[2] >= 0.0f)))
                    {
                        sp80 = 0;
                        sp84 = 1;
                        sp88 = 2;
                    } else if ((sp5C[1] > 0.0f && (sp5C[0] <= 0.0f) && (sp5C[2] <= 0.0f)) ||
                               (sp5C[1] < 0.0f && (sp5C[0] >= 0.0f) && (sp5C[2] >= 0.0f)))
                    {
                        sp80 = 1;
                        sp84 = 0;
                        sp88 = 2;
                    } else {
                        sp80 = 2;
                        sp84 = 0;
                        sp88 = 1;
                    }

                    f32 sp90 = sp5C[sp80] - sp5C[sp84];
                    f32 sp94 = sp5C[sp80] - sp5C[sp88];
                    if (!cM3d_IsZero(sp90) && !cM3d_IsZero(sp94)) {
                        f32 sp98 = -sp5C[sp84] / sp90;
                        f32 sp9C = -sp5C[sp88] / sp94;

                        f32 vtx0_x = pm_vtx_tbl[tri_data->m_vtx_idx0].x;
                        f32 vtx0_z = pm_vtx_tbl[tri_data->m_vtx_idx0].z;
                        f32 vtx1_x = pm_vtx_tbl[tri_data->m_vtx_idx1].x;
                        f32 vtx1_z = pm_vtx_tbl[tri_data->m_vtx_idx1].z;
                        f32 vtx2_x = pm_vtx_tbl[tri_data->m_vtx_idx2].x;
                        f32 vtx2_z = pm_vtx_tbl[tri_data->m_vtx_idx2].z;

                        f32 cx0, cy0, cx1, cy1;
                        if (sp80 == 0) {
                            cx0 = vtx1_x + sp98 * (vtx0_x - vtx1_x);
                            cy0 = vtx1_z + sp98 * (vtx0_z - vtx1_z);
                            cx1 = vtx2_x + sp9C * (vtx0_x - vtx2_x);
                            cy1 = vtx2_z + sp9C * (vtx0_z - vtx2_z);
                        } else if (sp80 == 1) {
                            cx0 = vtx0_x + sp98 * (vtx1_x - vtx0_x);
                            cy0 = vtx0_z + sp98 * (vtx1_z - vtx0_z);
                            cx1 = vtx2_x + sp9C * (vtx1_x - vtx2_x);
                            cy1 = vtx2_z + sp9C * (vtx1_z - vtx2_z);
                        } else {
                            cx0 = vtx0_x + sp98 * (vtx2_x - vtx0_x);
                            cy0 = vtx0_z + sp98 * (vtx2_z - vtx0_z);
                            cx1 = vtx1_x + sp9C * (vtx2_x - vtx1_x);
                            cy1 = vtx1_z + sp9C * (vtx2_z - vtx1_z);
                        }

                        cx0 += sp50.x;
                        cy0 += sp50.z;
                        cx1 += sp50.x;
                        cy1 += sp50.z;

                        f32 spC8, spCC, spD0;
                        bool sp107 = cM3d_Len2dSqPntAndSegLine(pwi->GetCx(), pwi->GetCz(), cx0, cy0,
                                                               cx1, cy1, &spCC, &spD0, &spC8);

                        f32 spD4 = spCC - pwi->GetCx();
                        f32 spD8 = spD0 - pwi->GetCz();
                        f32 spDC = pwi->GetWallRR(cir_index);

                        if (!(spC8 > spDC) && !(spD4 * sp50.x + spD8 * sp50.z < 0.0f)) {
                            if (sp107 == 1) {
                                positionWallCorrect(pwi, sp6C, tri->m_plane, pwi->GetPos(),
                                                    JMAFastSqrt(spC8));
                                pwi->CalcMovePosWork();
                                pwi->SetWallCirHit(cir_index);
                                pwi->SetWallPolyIndex(cir_index, poly_index);
                                pwi->SetWallAngleY(cir_index, cM_atan2s(tri->m_plane.GetNP()->x,
                                                                        tri->m_plane.GetNP()->z));
                                correct = true;
                            } else {
                                cx0 -= sp50.x;
                                cy0 -= sp50.z;
                                cx1 -= sp50.x;
                                cy1 -= sp50.z;

                                JUT_ASSERT(0, pwi->GetPos()->x ==
                                           pwi->GetWallCirP(cir_index)->GetCx());
                                JUT_ASSERT(0, pwi->GetPos()->z ==
                                           pwi->GetWallCirP(cir_index)->GetCy());

                                f32 spE0 =
                                    cM3d_Len2dSq(cx0, cy0, pwi->GetPos()->x, pwi->GetPos()->z);
                                f32 spE4 =
                                    cM3d_Len2dSq(cx1, cy1, pwi->GetPos()->x, pwi->GetPos()->z);

                                f32 onx = -tri->m_plane.GetNP()->x;
                                f32 ony = -tri->m_plane.GetNP()->z;

                                JUT_ASSERT(0, !(cM3d_IsZero(onx) && cM3d_IsZero(ony)));

                                if (spE0 < spE4) {
                                    if (!(spE0 > spDC) && !(fabsf(spE0 - spDC) < 0.008f)) {
                                        JUT_ASSERT(0, !(fpclassify(cx0) == 1));
                                        JUT_ASSERT(0, !(fpclassify(cy0) == 1));

                                        f32 spF0, spF4;
                                        cM2d_CrossCirLin(*pwi->GetWallCirP(cir_index), cx0, cy0,
                                                         onx, ony, &spF0, &spF4);
                                        pwi->GetPos()->x += cx0 - spF0;
                                        pwi->GetPos()->z += cy0 - spF4;

                                        JUT_ASSERT(0, !(fpclassify(pwi->GetPos()->x) == 1));
                                        JUT_ASSERT(0, !(fpclassify(pwi->GetPos()->z) == 1));

                                        pwi->CalcMovePosWork();
                                        pwi->SetWallCirHit(cir_index);
                                        pwi->SetWallPolyIndex(cir_index, poly_index);
                                        pwi->SetWallAngleY(cir_index,
                                                           cM_atan2s(tri->m_plane.GetNP()->x,
                                                                     tri->m_plane.GetNP()->z));
                                        correct = true;
                                        pwi->SetWallHit();
                                    }
                                } else if (!(spE4 > spDC) && !(fabsf(spE4 - spDC) < 0.008f)) {
                                    JUT_ASSERT(0, !(fpclassify(cx1) == 1));
                                    JUT_ASSERT(0, !(fpclassify(cy1) == 1));

                                    f32 spF8, spFC;
                                    cM2d_CrossCirLin(*pwi->GetWallCirP(cir_index), cx1, cy1, onx,
                                                     ony, &spF8, &spFC);
                                    pwi->GetPos()->x += cx1 - spF8;
                                    pwi->GetPos()->z += cy1 - spFC;

                                    JUT_ASSERT(0, !(fpclassify(pwi->GetPos()->x) == 1));
                                    JUT_ASSERT(0, !(fpclassify(pwi->GetPos()->z) == 1));

                                    pwi->CalcMovePosWork();
                                    pwi->SetWallCirHit(cir_index);
                                    pwi->SetWallPolyIndex(cir_index, poly_index);
                                    pwi->SetWallAngleY(cir_index,
                                                       cM_atan2s(tri->m_plane.GetNP()->x,
                                                                 tri->m_plane.GetNP()->z));
                                    correct = true;
                                    pwi->SetWallHit();
                                }
                            }
                        }
                    }
                }
            }

            cir_index++;
        }

        data = data->next;
    }

    return correct;
}

/* 8007D0DC-8007D208 077A1C 012C+00 1/1 0/0 0/0 .text            RwgRoofChk__4dBgWFUsP12dBgS_RoofChk
 */
bool dBgW::RwgRoofChk(u16 i_poly_idx, dBgS_RoofChk* i_roofchk) {
    bool chk = false;
    f32 crossY;
    while (true) {
        if (pm_tri[i_poly_idx].m_plane.getCrossY(*i_roofchk->GetPosP(), &crossY) &&
            crossY > i_roofchk->GetPosP()->y && crossY < i_roofchk->GetNowY())
        {
            cBgD_Tri_t* tri = &pm_bgd->m_t_tbl[i_poly_idx];
            if (cM3d_CrossY_Tri(pm_vtx_tbl[tri->m_vtx_idx0], pm_vtx_tbl[tri->m_vtx_idx1],
                                pm_vtx_tbl[tri->m_vtx_idx2], pm_tri[i_poly_idx].m_plane,
                                (const Vec*)i_roofchk->GetPosP()))
            {
                if (!ChkPolyThrough(i_poly_idx, i_roofchk->GetPolyPassChk())) {
                    i_roofchk->SetNowY(crossY);
                    i_roofchk->SetPolyIndex(i_poly_idx);
                    chk = true;
                }
            }
        }

        if (pm_rwg[i_poly_idx].m_next == 0xFFFF)
            break;
        i_poly_idx = pm_rwg[i_poly_idx].m_next;
    }

    return chk;
}

/* 8007D208-8007D330 077B48 0128+00 1/1 0/0 0/0 .text            RoofChkRp__4dBgWFP12dBgS_RoofChki
 */
bool dBgW::RoofChkRp(dBgS_RoofChk* i_roofchk, int i_idx) {
    cBgW_NodeTree* node = &pm_node_tree[i_idx];
    if (!node->CrossY(i_roofchk->GetPosP()) || !node->UnderPlaneYUnder(i_roofchk->GetNowY()) ||
        node->TopPlaneYUnder(i_roofchk->GetPosP()->y))
    {
        return false;
    }

    cBgD_Tree_t* tree = &pm_bgd->m_tree_tbl[i_idx];
    if ((tree->m_flag & 1)) {
        if (pm_blk[tree->m_id[0]].m_roof_idx != 0xFFFF &&
            RwgRoofChk(pm_blk[tree->m_id[0]].m_roof_idx, i_roofchk))
        {
            return true;
        }
        return false;
    }

    bool chk = false;
    for (int i = 0; i < 8; i++) {
        if (tree->m_id[i] != 0xFFFF && RoofChkRp(i_roofchk, tree->m_id[i])) {
            chk = true;
        }
    }

    return chk;
}

/* 8007D330-8007D470 077C70 0140+00 1/1 0/0 0/0 .text RoofChkGrpRp__4dBgWFP12dBgS_RoofChkii */
bool dBgW::RoofChkGrpRp(dBgS_RoofChk* i_roofchk, int i_idx, int i_depth) {
    cBgW_GrpElm* grp = &pm_grp[i_idx];
    if (!grp->m_aab.CrossY(i_roofchk->GetPosP()) ||
        !grp->m_aab.UnderPlaneYUnder(i_roofchk->GetNowY()) ||
        grp->m_aab.TopPlaneYUnder(i_roofchk->GetPosP()->y))
    {
        return false;
    }

    if (ChkGrpThrough(i_idx, i_roofchk->GetGrpPassChk(), i_depth)) {
        return false;
    }

    bool chk = false;
    cBgD_Grp_t* data = &pm_bgd->m_g_tbl[i_idx];
    if (data->m_tree_idx != 0xFFFF && RoofChkRp(i_roofchk, data->m_tree_idx)) {
        chk = true;
    }

    s32 child_idx = data->m_first_child;
    while (true) {
        if (child_idx == 0xFFFF) {
            break;
        }
        if (RoofChkGrpRp(i_roofchk, child_idx, i_depth + 1)) {
            chk = true;
        }
        child_idx = pm_bgd->m_g_tbl[child_idx].m_next_sibling;
    }

    return chk;
}

/* 8007D470-8007D498 077DB0 0028+00 1/0 1/0 0/0 .text            RoofChk__4dBgWFP12dBgS_RoofChk */
bool dBgW::RoofChk(dBgS_RoofChk* pchk) {
    return RoofChkGrpRp(pchk, m_rootGrpIdx, 1);
}

/* 8007D498-8007D5C4 077DD8 012C+00 1/1 0/0 0/0 .text RwgSplGrpChk__4dBgWFUsP14dBgS_SplGrpChk */
bool dBgW::RwgSplGrpChk(u16 i_poly_idx, dBgS_SplGrpChk* i_splchk) {
    bool chk = false;
    f32 crossY;
    while (true) {
        if (pm_tri[i_poly_idx].m_plane.getCrossY(i_splchk->GetPosP(), &crossY) &&
            crossY < i_splchk->GetRoof() && crossY > i_splchk->GetHeight())
        {
            cBgD_Tri_t* tri = &pm_bgd->m_t_tbl[i_poly_idx];
            if (cM3d_CrossY_Tri(pm_vtx_tbl[tri->m_vtx_idx0], pm_vtx_tbl[tri->m_vtx_idx1],
                                pm_vtx_tbl[tri->m_vtx_idx2], pm_tri[i_poly_idx].m_plane,
                                (const Vec*)&i_splchk->GetPosP()))
            {
                if (!ChkPolyThrough(i_poly_idx, i_splchk->GetPolyPassChk())) {
                    i_splchk->SetHeight(crossY);
                    i_splchk->SetPolyIndex(i_poly_idx);
                    chk = true;
                }
            }
        }

        if (pm_rwg[i_poly_idx].m_next == 0xFFFF)
            break;
        i_poly_idx = pm_rwg[i_poly_idx].m_next;
    }

    return chk;
}

/* 8007D5C4-8007D6F0 077F04 012C+00 1/1 0/0 0/0 .text SplGrpChkRp__4dBgWFP14dBgS_SplGrpChki */
bool dBgW::SplGrpChkRp(dBgS_SplGrpChk* i_splchk, int i_idx) {
    cBgW_NodeTree* node = &pm_node_tree[i_idx];
    if (!node->CrossY(&i_splchk->GetPosP()) || !node->UnderPlaneYUnder(i_splchk->GetRoof()) ||
        node->TopPlaneYUnder(i_splchk->GetHeight()))
    {
        return false;
    }

    cBgD_Tree_t* tree = &pm_bgd->m_tree_tbl[i_idx];
    if ((tree->m_flag & 1)) {
        if (pm_blk[tree->m_id[0]].m_gnd_idx != 0xFFFF &&
            RwgSplGrpChk(pm_blk[tree->m_id[0]].m_gnd_idx, i_splchk))
        {
            return true;
        }
        return false;
    }

    bool chk = false;
    for (int i = 0; i < 8; i++) {
        if (tree->m_id[i] != 0xFFFF && SplGrpChkRp(i_splchk, tree->m_id[i])) {
            chk = true;
        }
    }

    return chk;
}

/* 8007D6F0-8007D830 078030 0140+00 1/1 0/0 0/0 .text SplGrpChkGrpRp__4dBgWFP14dBgS_SplGrpChkii */
bool dBgW::SplGrpChkGrpRp(dBgS_SplGrpChk* i_splchk, int i_idx, int i_depth) {
    cBgW_GrpElm* grp = &pm_grp[i_idx];
    if (!grp->m_aab.CrossY(&i_splchk->GetPosP()) ||
        !grp->m_aab.UnderPlaneYUnder(i_splchk->GetRoof()) ||
        grp->m_aab.TopPlaneYUnder(i_splchk->GetHeight()))
    {
        return false;
    }

    if (ChkGrpThrough(i_idx, i_splchk->GetGrpPassChk(), i_depth)) {
        return false;
    }

    bool chk = false;
    cBgD_Grp_t* data = &pm_bgd->m_g_tbl[i_idx];
    if (data->m_tree_idx != 0xFFFF && SplGrpChkRp(i_splchk, data->m_tree_idx)) {
        chk = true;
    }

    s32 child_idx = data->m_first_child;
    while (true) {
        if (child_idx == 0xFFFF) {
            break;
        }
        if (SplGrpChkGrpRp(i_splchk, child_idx, i_depth + 1)) {
            chk = true;
        }
        child_idx = pm_bgd->m_g_tbl[child_idx].m_next_sibling;
    }

    return chk;
}

/* 8007D830-8007D858 078170 0028+00 1/0 1/0 0/0 .text            SplGrpChk__4dBgWFP14dBgS_SplGrpChk
 */
bool dBgW::SplGrpChk(dBgS_SplGrpChk* pchk) {
    return SplGrpChkGrpRp(pchk, m_rootGrpIdx, 1);
}

/* 8007D858-8007D8E8 078198 0090+00 1/1 0/0 0/0 .text RwgCaptPoly__4dBgWFiR13dBgS_CaptPoly */
void dBgW::RwgCaptPoly(int i_idx, dBgS_CaptPoly& i_captpoly) {
    while (true) {
        cBgW_RwgElm* rwg = &pm_rwg[i_idx];
        i_captpoly.m_callback(i_captpoly, pm_vtx_tbl, pm_bgd->m_t_tbl[i_idx].m_vtx_idx0,
                              pm_bgd->m_t_tbl[i_idx].m_vtx_idx1, pm_bgd->m_t_tbl[i_idx].m_vtx_idx2,
                              &pm_tri[i_idx].m_plane);

        if (rwg->m_next == 0xFFFF)
            break;
        i_idx = rwg->m_next;
    }
}

/* 8007D8E8-8007DA04 078228 011C+00 1/1 0/0 0/0 .text            CaptPolyRp__4dBgWFR13dBgS_CaptPolyi
 */
void dBgW::CaptPolyRp(dBgS_CaptPoly& i_captpoly, int i_idx) {
    if (!pm_node_tree[i_idx].Cross(i_captpoly.GetBndP())) {
        return;
    }

    cBgD_Tree_t* tree_data = &pm_bgd->m_tree_tbl[i_idx];
    if (tree_data->m_flag & 1) {
        if (pm_blk[tree_data->m_id[0]].m_wall_idx != 0xFFFF) {
            RwgCaptPoly(pm_blk[tree_data->m_id[0]].m_wall_idx, i_captpoly);
        }
        if (pm_blk[tree_data->m_id[0]].m_roof_idx != 0xFFFF) {
            RwgCaptPoly(pm_blk[tree_data->m_id[0]].m_roof_idx, i_captpoly);
        }
        if (pm_blk[tree_data->m_id[0]].m_gnd_idx != 0xFFFF) {
            RwgCaptPoly(pm_blk[tree_data->m_id[0]].m_gnd_idx, i_captpoly);
        }
        return;
    }

    for (int i = 0; i < 8; i++) {
        if (tree_data->m_id[i] == 0xFFFF) {
            continue;
        }
        CaptPolyRp(i_captpoly, tree_data->m_id[i]);
    }
}

/* 8007DA04-8007DAF8 078344 00F4+00 1/1 0/0 0/0 .text CaptPolyGrpRp__4dBgWFR13dBgS_CaptPolyii */
void dBgW::CaptPolyGrpRp(dBgS_CaptPoly& i_captpoly, int i_idx, int i_depth) {
    cBgW_GrpElm* grp = &pm_grp[i_idx];
    if (!grp->m_aab.Cross(i_captpoly.GetBndP())) {
        return;
    }

    if (ChkGrpThrough(i_idx, i_captpoly.GetGrpPassChk(), i_depth)) {
        return;
    }

    cBgD_Grp_t* data = &pm_bgd->m_g_tbl[i_idx];
    if (pm_bgd->m_g_tbl[i_idx].m_tree_idx != 0xFFFF) {
        CaptPolyRp(i_captpoly, pm_bgd->m_g_tbl[i_idx].m_tree_idx);
    }

    s32 child_idx = pm_bgd->m_g_tbl[i_idx].m_first_child;
    while (true) {
        if (child_idx == 0xFFFF) {
            break;
        }
        CaptPolyGrpRp(i_captpoly, child_idx, i_depth + 1);
        child_idx = pm_bgd->m_g_tbl[child_idx].m_next_sibling;
    }
}

/* 8007DAF8-8007DB20 078438 0028+00 1/0 1/0 0/0 .text            CaptPoly__4dBgWFR13dBgS_CaptPoly */
void dBgW::CaptPoly(dBgS_CaptPoly& i_captpoly) {
    CaptPolyGrpRp(i_captpoly, m_rootGrpIdx, 1);
}

/* 8007DB20-8007DC70 078460 0150+00 1/1 0/0 0/0 .text            RwgSphChk__4dBgWFUsP11dBgS_SphChkPv
 */
bool dBgW::RwgSphChk(u16 i_poly_idx, dBgS_SphChk* i_sphchk, void* i_data) {
    cM3dGTri tri;
    cBgW_RwgElm* rwg;
    cBgD_Tri_t* tri_t;

    bool chk = false;
    while (true) {
        rwg = &pm_rwg[i_poly_idx];
        if (!ChkPolyThrough(i_poly_idx, i_sphchk->GetPolyPassChk())) {
            tri_t = &pm_bgd->m_t_tbl[i_poly_idx];
            tri.setBg(&pm_vtx_tbl[tri_t->m_vtx_idx0], &pm_vtx_tbl[tri_t->m_vtx_idx1],
                      &pm_vtx_tbl[tri_t->m_vtx_idx2], &pm_tri[i_poly_idx].m_plane);

            if (i_sphchk->cross(&tri)) {
                i_sphchk->mCallback(i_sphchk, pm_vtx_tbl, tri_t->m_vtx_idx0, tri_t->m_vtx_idx1,
                                    tri_t->m_vtx_idx2, &pm_tri[i_poly_idx].m_plane, i_data);
                i_sphchk->SetPolyIndex(i_poly_idx);
                chk = true;
            }
        }

        if (rwg->m_next == 0xFFFF)
            break;
        i_poly_idx = rwg->m_next;
    }

    return chk;
}

/* 8007DC70-8007DDE0 0785B0 0170+00 1/1 0/0 0/0 .text            SphChkRp__4dBgWFP11dBgS_SphChkPvi
 */
bool dBgW::SphChkRp(dBgS_SphChk* i_sphchk, void* i_data, int i_idx) {
    if (!pm_node_tree[i_idx].Cross(i_sphchk)) {
        return false;
    }

    cBgD_Tree_t* tree_data = &pm_bgd->m_tree_tbl[i_idx];
    bool chk = false;
    if (tree_data->m_flag & 1) {
        if (pm_blk[tree_data->m_id[0]].m_gnd_idx != 0xFFFF &&
            RwgSphChk(pm_blk[tree_data->m_id[0]].m_gnd_idx, i_sphchk, i_data))
        {
            chk = true;
        }

        if (pm_blk[tree_data->m_id[0]].m_roof_idx != 0xFFFF &&
            RwgSphChk(pm_blk[tree_data->m_id[0]].m_roof_idx, i_sphchk, i_data))
        {
            chk = true;
        }

        if (pm_blk[tree_data->m_id[0]].m_wall_idx != 0xFFFF &&
            RwgSphChk(pm_blk[tree_data->m_id[0]].m_wall_idx, i_sphchk, i_data))
        {
            chk = true;
        }

        return chk;
    }

    for (int i = 0; i < 8; i++) {
        if (tree_data->m_id[i] == 0xFFFF) {
            continue;
        }
        if (SphChkRp(i_sphchk, i_data, tree_data->m_id[i])) {
            chk = true;
        }
    }
    return chk;
}

/* 8007DDE0-8007DF00 078720 0120+00 1/1 0/0 0/0 .text SphChkGrpRp__4dBgWFP11dBgS_SphChkPvii */
bool dBgW::SphChkGrpRp(dBgS_SphChk* i_sphchk, void* i_data, int i_idx, int i_depth) {
    if (!pm_grp[i_idx].m_aab.Cross(i_sphchk)) {
        return false;
    }

    if (ChkGrpThrough(i_idx, i_sphchk->GetGrpPassChk(), i_depth)) {
        return false;
    }

    bool chk = false;
    cBgD_Grp_t* data = &pm_bgd->m_g_tbl[i_idx];
    if (data->m_tree_idx != 0xFFFF && SphChkRp(i_sphchk, i_data, data->m_tree_idx)) {
        chk = true;
    }

    s32 child_idx = data->m_first_child;
    while (true) {
        if (child_idx == 0xFFFF) {
            break;
        }
        if (SphChkGrpRp(i_sphchk, i_data, child_idx, i_depth + 1)) {
            chk = true;
        }
        child_idx = pm_bgd->m_g_tbl[child_idx].m_next_sibling;
    }

    return chk;
}

/* 8007DF00-8007DF28 078840 0028+00 1/0 1/0 0/0 .text            SphChk__4dBgWFP11dBgS_SphChkPv */
bool dBgW::SphChk(dBgS_SphChk* pchk, void* i_data) {
    return SphChkGrpRp(pchk, i_data, m_rootGrpIdx, 1);
}

/* 8007DF28-8007DF58 078868 0030+00 1/0 1/0 0/0 .text GetPolyGrpRoomInfId__4dBgWFRC13cBgS_PolyInfo
 */
u8 dBgW::GetPolyGrpRoomInfId(cBgS_PolyInfo const& poly) {
    return GetGrpInf(poly) & 0xFF;
}

/* 8007DF58-8007DF88 078898 0030+00 1/0 1/0 0/0 .text GetGrpSoundId__4dBgWFRC13cBgS_PolyInfo */
int dBgW::GetGrpSoundId(cBgS_PolyInfo const& poly) {
    return (GetGrpInf(poly) >> 11) & 0xFF;
}

/* 8007DF88-8007DFC4 0788C8 003C+00 1/0 0/0 0/0 .text
 * CrrPos__4dBgWFRC13cBgS_PolyInfoPvbP4cXyzP5csXyzP5csXyz       */
void dBgW::CrrPos(cBgS_PolyInfo const& i_poly, void* i_actor_ptr, bool param_2, cXyz* i_pos,
                  csXyz* i_angle, csXyz* i_shapeAngle) {
    if (m_crr_func) {
        m_crr_func(this, i_actor_ptr, i_poly, param_2, i_pos, i_angle, i_shapeAngle);
    }
}

/* 8007DFC4-8007E000 078904 003C+00 1/0 0/0 0/0 .text
 * TransPos__4dBgWFRC13cBgS_PolyInfoPvbP4cXyzP5csXyzP5csXyz     */
void dBgW::TransPos(cBgS_PolyInfo const& i_poly, void* i_actor_ptr, bool param_2, cXyz* i_pos,
                    csXyz* i_angle, csXyz* i_shapeAngle) {
    if (m_crr_func) {
        m_crr_func(this, i_actor_ptr, i_poly, param_2, i_pos, i_angle, i_shapeAngle);
    }
}

/* 8007E000-8007E02C 078940 002C+00 1/0 0/0 0/0 .text
 * MatrixCrrPos__4dBgWFRC13cBgS_PolyInfoPvbP4cXyzP5csXyzP5csXyz */
void dBgW::MatrixCrrPos(cBgS_PolyInfo const& i_poly, void* i_actor_ptr, bool param_2, cXyz* i_pos,
                        csXyz* i_angle, csXyz* i_shapeAngle) {
    CrrPos(i_poly, i_actor_ptr, param_2, i_pos, i_angle, i_shapeAngle);
}

/* 8007E02C-8007E360 07896C 0334+00 1/0 1/0 0/0 .text ChkPolyThrough__4dBgWFiP16cBgS_PolyPassChk
 */
bool dBgW::ChkPolyThrough(int poly_index, cBgS_PolyPassChk* ppass_chk) {
    if (ppass_chk == NULL) {
        return false;
    }
    dBgS_PolyPassChk* chk = (dBgS_PolyPassChk*)ppass_chk;

    if (chk->ChkObj() && GetPolyObjThrough(poly_index)) {
        return true;
    }

    if (chk->ChkCam() && GetPolyCamThrough(poly_index)) {
        return true;
    }

    if ((chk->ChkLink() && GetPolyLinkThrough(poly_index)) ||
        (chk->ChkHorse() && GetPolyLinkThrough(poly_index)))
    {
        return true;
    }

    if (chk->ChkArrow() && GetPolyArrowThrough(poly_index)) {
        return true;
    }

    if (chk->ChkBomb() && GetPolyBombThrough(poly_index)) {
        return true;
    }

    if (chk->ChkBoomerang() && GetPolyBoomerangThrough(poly_index)) {
        return true;
    }

    if (chk->ChkRope() && GetPolyRopeThrough(poly_index)) {
        return true;
    }

    if (chk->ChkUnderwaterRoof() && GetUnderwaterRoofCode(poly_index)) {
        return true;
    }

    int info_f00 = GetPolyInf1(poly_index, 0xF00, 8);
    if (info_f00 == 8 && chk->ChkNoHorse()) {
        return true;
    }

    if (info_f00 == 9) {
        if (chk->ChkNoHorse()) {
            return true;
        }

        cXyz pos(pm_tri[poly_index].m_plane.mNormal);
        if (chk->ChkHorse() && dComIfGp_getHorseActor() != NULL) {
            if (!dComIfGp_getHorseActor()->checkSpecialWallHit(pos)) {
                return true;
            }
        }
    }

    if (chk->ChkStatue() && GetSpecialCode(poly_index) == 7) {
        return true;
    }

    if (chk->ChkIronBall() && GetIronBallThrough(poly_index)) {
        return true;
    }

    return false;
}

/* 8007E360-8007E3D8 078CA0 0078+00 1/0 1/0 0/0 .text
 * ChkShdwDrawThrough__4dBgWFiP16cBgS_PolyPassChk               */
bool dBgW::ChkShdwDrawThrough(int poly_index, cBgS_PolyPassChk*) {
    if (GetShdwThrough(poly_index)) {
        return true;
    }

    return GetPolyArrowThrough(poly_index);
}

/* 8007E3D8-8007E444 078D18 006C+00 1/0 1/0 0/0 .text ChkGrpThrough__4dBgWFiP15cBgS_GrpPassChki */
bool dBgW::ChkGrpThrough(int i_grp_idx, cBgS_GrpPassChk* i_passChk, int i_depth) {
    if (i_depth != 2 || i_passChk == NULL) {
        return false;
    }
    if ((pm_bgd->m_g_tbl[i_grp_idx].m_info & 0x100) == 0 &&
        ((dBgS_GrpPassChk*)i_passChk)->MaskNormalGrp())
    {
        return false;
    }

    if ((pm_bgd->m_g_tbl[i_grp_idx].m_info & 0x100) &&
        ((dBgS_GrpPassChk*)i_passChk)->MaskWaterGrp())
    {
        return false;
    }

    return true;
}

/* 8007E444-8007E474 078D84 0030+00 1/0 1/0 0/0 .text
 * CallRideCallBack__4dBgWFP10fopAc_ac_cP10fopAc_ac_c           */
void dBgW::CallRideCallBack(fopAc_ac_c* param_0, fopAc_ac_c* param_1) {
    if (m_ride_callback != NULL) {
        m_ride_callback(this, param_0, param_1);
    }
}

/* 8007E474-8007E4A4 078DB4 0030+00 1/0 1/0 0/0 .text
 * CallArrowStickCallBack__4dBgWFP10fopAc_ac_cP10fopAc_ac_cR4cXyz */
void dBgW::CallArrowStickCallBack(fopAc_ac_c* param_0, fopAc_ac_c* param_1, cXyz& param_2) {
    if (m_arrow_stick_callback) {
        m_arrow_stick_callback(this, param_0, param_1, param_2);
    }
}

/* 8007E4A4-8007E4B4 078DE4 0010+00 1/0 1/0 0/0 .text            OffMoveFlag__4dBgWFv */
void dBgW::OffMoveFlag() {
    m_flags &= ~1;
}

/* 8007E4B4-8007E4C0 078DF4 000C+00 1/0 1/0 0/0 .text            ChkMoveFlag__4dBgWCFv */
u32 dBgW::ChkMoveFlag() const {
    return m_flags & 1;
}

/* 8007E4C0-8007E548 078E00 0088+00 0/0 0/0 1/1 .text            dBgW_NewSet__FP6cBgD_tUlPA3_A4_f */
dBgW* dBgW_NewSet(cBgD_t* pbgd, u32 flags, Mtx* pbase_mtx) {
    dBgW* nw = new dBgW();

    if (nw == NULL) {
        return NULL;
    }

    if (nw->Set(pbgd, flags, pbase_mtx)) {
        return NULL;
    }

    return nw;
}

/* ############################################################################################## */
/* 80450F88-80450F90 -00001 0008+00 0/0 4/4 0/0 .sbss            None */
/* 80450F88 0001+00 data_80450F88 None */
/* 80450F89 0001+00 data_80450F89 None */
/* 80450F8A 0001+00 data_80450F8A None */
/* 80450F8B 0005+00 data_80450F8B None */
extern u8 struct_80450F88[8];
u8 struct_80450F88[8];
