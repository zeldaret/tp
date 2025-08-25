/**
 * d_bg_s.cpp
 * Background (Map) Collision main handler
 */

#include "d/dolzel.h"

#include "d/d_bg_s.h"
#include "d/d_bg_s_sph_chk.h"
#include "d/d_bg_w.h"
#include "d/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"

/* 800740F4-80074110 06EA34 001C+00 2/2 1/1 0/0 .text            Init__11cBgS_ChkElmFv */
void cBgS_ChkElm::Init() {
    m_bgw_base_ptr = NULL;
    m_used = false;
    m_actor_ptr = NULL;
    m_actor_id = 0xFFFFFFFF;
}

/* 80074110-80074128 06EA50 0018+00 1/0 0/0 0/0 .text Regist2__11cBgS_ChkElmFP9dBgW_BaseUiPv */
void cBgS_ChkElm::Regist2(dBgW_Base* p_data, fpc_ProcID actor_id, void* p_actor) {
    m_used = true;
    m_bgw_base_ptr = p_data;
    m_actor_id = actor_id;
    m_actor_ptr = (fopAc_ac_c*)p_actor;
}

/* 80074128-80074144 06EA68 001C+00 2/2 0/0 0/0 .text            Release__11cBgS_ChkElmFv */
void cBgS_ChkElm::Release() {
    m_used = false;
    m_bgw_base_ptr = NULL;
    m_actor_id = 0xFFFFFFFF;
    m_actor_ptr = NULL;
}

/* ############################################################################################## */
/* 80450F60-80450F68 000460 0004+04 2/2 0/0 0/0 .sbss            l_SetCounter */
static int l_SetCounter;

/* 80074144-80074250 06EA84 010C+00 1/1 0/0 0/0 .text            Regist__4cBgSFP9dBgW_BaseUiPv */
bool cBgS::Regist(dBgW_Base* p_data, fpc_ProcID actor_id, void* p_actor) {
    if (p_data == NULL) {
        return true;
    } else if (p_data->ChkUsed()) {
        return true;
    } else if (p_data->ChkMemoryError()) {
        return true;
    } else {
        int i = l_SetCounter;
        do {
            if (!m_chk_element[i].m_used) {
                m_chk_element[i].Regist2(p_data, actor_id, p_actor);
                p_data->Regist(i);

                l_SetCounter = i + 1;
                if (l_SetCounter >= 0x100) {
                    l_SetCounter = 0;
                }
                return false;
            }

            i++;
            if (i >= 0x100) {
                i = 0;
            }
        } while (l_SetCounter != i);
        p_data->Release();
    }
    return true;
}

/* 80074250-800742E4 06EB90 0094+00 0/0 2/2 187/187 .text            Release__4cBgSFP9dBgW_Base */
bool cBgS::Release(dBgW_Base* p_data) {
    if (p_data == NULL) {
        return 1;
    }

    int id = p_data->GetId();
    if (p_data->ChkUsed() && id >= 0 && id < 0x100 && m_chk_element[id].ChkUsed()) {
        m_chk_element[id].Release();
        p_data->Release();
    } else {
        return 1;
    }

    return 0;
}

/* 800742E4-80074338 06EC24 0054+00 2/1 0/0 0/0 .text            Ct__4cBgSFv */
void cBgS::Ct() {
    l_SetCounter = 0;
    for (int i = 0; i < 0x100; i++) {
        m_chk_element[i].Init();
    }
}

/* 80074338-800743B4 06EC78 007C+00 2/1 0/0 0/0 .text            Dt__4cBgSFv */
void cBgS::Dt() {
    for (int i = 0; i < 0x100; i++) {
        if (m_chk_element[i].ChkUsed()) {
            m_chk_element[i].Release();
        }
    }

    for (int i = 0; i < 0x100; i++) {
        m_chk_element[i].Init();
    }
}

/* 800743B4-800744A0 06ECF4 00EC+00 0/0 16/16 305/305 .text LineCross__4cBgSFP11cBgS_LinChk */
bool cBgS::LineCross(cBgS_LinChk* p_line) {
    p_line->ClearPi();
    p_line->ClrHit();
    p_line->PreCalc();

    cBgS_ChkElm* elm = m_chk_element;
    for (int i = 0; i < 0x100; i++) {
        if (elm->ChkUsed() && !elm->m_bgw_base_ptr->ChkNotReady() &&
            !p_line->ChkSameActorPid(elm->m_actor_id) && elm->m_bgw_base_ptr->LineCheck(p_line))
        {
            p_line->SetActorInfo(i, elm->m_bgw_base_ptr, elm->m_actor_id);
            p_line->SetHit();
        }
        elm++;
    }

    return p_line->ChkHit() ? true : false;
}

/* 800744A0-80074578 06EDE0 00D8+00 0/0 51/51 231/231 .text GroundCross__4cBgSFP11cBgS_GndChk */
f32 cBgS::GroundCross(cBgS_GndChk* p_gnd) {
    p_gnd->SetNowY(-1000000000.0f);
    p_gnd->ClearPi();
    p_gnd->PreCheck();

    cBgS_ChkElm* elm = m_chk_element;
    for (int i = 0; i < 0x100; i++) {
        if (elm->ChkUsed() && !elm->m_bgw_base_ptr->ChkNotReady() &&
            !p_gnd->ChkSameActorPid(elm->m_actor_id) && elm->m_bgw_base_ptr->GroundCross(p_gnd))
        {
            p_gnd->SetActorInfo(i, elm->m_bgw_base_ptr, elm->m_actor_id);
        }
        elm++;
    }

    return p_gnd->GetNowY();
}

// this is identical to cBgD_t except using u32's for the table offsets.
// u32 is needed to match in ConvDzb ?
struct cBgD_t_ {
    // Vertex Info
    /* 0x00 */ int m_v_num;
    /* 0x04 */ u32 m_v_tbl;

    // Triangle Info
    /* 0x08 */ int m_t_num;
    /* 0x0C */ u32 m_t_tbl;

    // Spatial List Info
    /* 0x10 */ int m_b_num;
    /* 0x14 */ u32 m_b_tbl;

    // Face Group Data Info
    /* 0x18 */ int m_tree_num;
    /* 0x1C */ u32 m_tree_tbl;

    // String Group Info
    /* 0x20 */ int m_g_num;
    /* 0x24 */ u32 m_g_tbl;

    // Surface Property Info
    /* 0x28 */ int m_ti_num;
    /* 0x2C */ u32 m_ti_tbl;

    /* 0x30 */ u32 m_flags;
};  // Size: 0x34

struct cBgD_Grp_t_ {
    u32 strOffset;
    u8 data[0x30];
};

/* 80074578-80074618 06EEB8 00A0+00 0/0 1/1 0/0 .text            ConvDzb__4cBgSFPv */
void* cBgS::ConvDzb(void* p_dzb) {
    cBgD_t_* pbgd = (cBgD_t_*)p_dzb;

    if (((pbgd->m_flags & 0x80000000) == 0)) {
        pbgd->m_flags |= 0x80000000;
    } else {
        return p_dzb;
    }

    if (pbgd->m_v_tbl != 0) {
        pbgd->m_v_tbl += (u32)p_dzb;
    }

    pbgd->m_t_tbl += (u32)p_dzb;
    pbgd->m_b_tbl += (u32)p_dzb;
    pbgd->m_tree_tbl += (u32)p_dzb;
    pbgd->m_g_tbl += (u32)p_dzb;
    pbgd->m_ti_tbl += (u32)p_dzb;

    for (int i = 0; i < pbgd->m_g_num; i++) {
        ((cBgD_Grp_t_*)pbgd->m_g_tbl)[i].strOffset =
            (u32)p_dzb + ((cBgD_Grp_t_*)pbgd->m_g_tbl)[i].strOffset;
    }

    return p_dzb;
}

/* 80074618-80074628 06EF58 0010+00 0/0 9/9 13/13 .text            GetActorPointer__4cBgSCFi */
fopAc_ac_c* cBgS::GetActorPointer(int actor_index) const {
    return m_chk_element[actor_index].m_actor_ptr;
}

/* 80074628-80074660 06EF68 0038+00 2/2 3/3 0/0 .text GetBgWBasePointer__4cBgSCFRC13cBgS_PolyInfo
 */
dBgW_Base* cBgS::GetBgWBasePointer(cBgS_PolyInfo const& poly) const {
    int bg_index = poly.GetBgIndex();

    if (bg_index < 0 || bg_index >= 0x100 || !m_chk_element[bg_index].ChkUsed()) {
        return NULL;
    }
    return m_chk_element[bg_index].m_bgw_base_ptr;
}

/* 80074660-800746F4 06EFA0 0094+00 3/3 35/35 9/9 .text ChkPolySafe__4cBgSFRC13cBgS_PolyInfo */
bool cBgS::ChkPolySafe(cBgS_PolyInfo const& poly) {
    if (!poly.ChkSetInfo()) {
        return false;
    }

    int bg_index = poly.GetBgIndex();
    if (bg_index < 0 || bg_index >= 0x100) {
        return false;
    } else {
        if (m_chk_element[bg_index].ChkUsed()) {
            return poly.ChkSafe(m_chk_element[bg_index].m_bgw_base_ptr,
                                m_chk_element[bg_index].m_actor_id);
        } else {
            return false;
        }
    }
}

/* 800746F4-80074744 06F034 0050+00 1/1 0/0 0/0 .text GetGrpRoomId__4cBgSCFRC13cBgS_PolyInfo */
s32 cBgS::GetGrpRoomId(cBgS_PolyInfo const& poly) const {
    int bg_index = poly.GetBgIndex();
    if (m_chk_element[bg_index].ChkUsed()) {
        return m_chk_element[bg_index].m_bgw_base_ptr->GetGrpRoomIndex(poly);
    } else {
        return 0xFF;
    }
}

/* 80074744-800747F0 06F084 00AC+00 4/4 62/62 142/142 .text
 * GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla                */
bool cBgS::GetTriPla(cBgS_PolyInfo const& poly, cM3dGPla* p_pla) const {
    int bg_index = poly.GetBgIndex();
    if (bg_index < 0 || bg_index >= 0x100 || !m_chk_element[bg_index].ChkUsed()) {
        return false;
    }

    *p_pla = m_chk_element[bg_index].m_bgw_base_ptr->GetTriPla(poly);
    return true;
}

/* 800747F0-80074840 06F130 0050+00 0/0 1/1 0/0 .text
 * GetTriPnt__4cBgSCFRC13cBgS_PolyInfoP4cXyzP4cXyzP4cXyz        */
bool cBgS::GetTriPnt(cBgS_PolyInfo const& poly, cXyz* param_1, cXyz* param_2, cXyz* param_3) const {
    int id = poly.GetBgIndex();
    if (!m_chk_element[id].ChkUsed()) {
        return false;
    }

    return m_chk_element[id].m_bgw_base_ptr->GetTriPnt(poly, param_1, param_2, param_3);
}

/* 80074840-800748AC 06F180 006C+00 0/0 1/1 0/0 .text            ShdwDraw__4cBgSFP13cBgS_ShdwDraw */
void cBgS::ShdwDraw(cBgS_ShdwDraw* p_shdw) {
    cBgS_ChkElm* elm = m_chk_element;
    for (int i = 0; i < 0x100; i++) {
        if (elm->ChkUsed()) {
            elm->m_bgw_base_ptr->ShdwDraw(p_shdw);
        }
        elm++;
    }
}

/* 800748AC-800748FC 06F1EC 0050+00 1/1 0/0 0/0 .text            GetGrpInf__4cBgSCFRC13cBgS_PolyInfo
 */
u32 cBgS::GetGrpInf(cBgS_PolyInfo const& poly) const {
    int id = poly.GetBgIndex();
    if (!m_chk_element[id].ChkUsed()) {
        return -1;
    }

    return m_chk_element[id].m_bgw_base_ptr->GetGrpInf(poly);
}

/* 800748FC-8007491C 06F23C 0020+00 1/0 0/0 0/0 .text            Ct__4dBgSFv */
void dBgS::Ct() {
    cBgS::Ct();
}

/* 8007491C-8007493C 06F25C 0020+00 1/0 0/0 0/0 .text            Dt__4dBgSFv */
void dBgS::Dt() {
    cBgS::Dt();
}

/* 8007493C-800749A8 06F27C 006C+00 0/0 1/1 0/0 .text            ClrMoveFlag__4dBgSFv */
void dBgS::ClrMoveFlag() {
    for (int i = 0; i < 0x100; i++) {
        if (m_chk_element[i].ChkUsed()) {
            m_chk_element[i].m_bgw_base_ptr->OffMoveFlag();
        }
    }
}

/* 800749A8-80074A08 06F2E8 0060+00 0/0 1/1 0/0 .text            Move__4dBgSFv */
void dBgS::Move() {
    cBgS_ChkElm* elm = m_chk_element;
    for (int i = 0; i < 0x100; i++) {
        if (elm->ChkUsed()) {
            elm->m_bgw_base_ptr->CalcDiffShapeAngleY(elm->m_actor_ptr->shape_angle.y);
        }
        elm++;
    }
}

/* 80074A08-80074AB4 06F348 00AC+00 0/0 2/2 127/127 .text Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
 */
bool dBgS::Regist(dBgW_Base* pbgw, fopAc_ac_c* p_actor) {
    if (pbgw == NULL) {
        return true;
    }

    if (p_actor != NULL && pbgw->ChkMoveBg()) {
        pbgw->SetOldShapeAngleY(p_actor->shape_angle.y);
        pbgw->SetRoomId(fopAcM_GetRoomNo(p_actor));
    }

    return cBgS::Regist(pbgw, fopAcM_GetID(p_actor), p_actor);
}

/* 80074AB4-80074ABC -00001 0008+00 0/0 0/0 0/0 .text            SetOldShapeAngleY__9dBgW_BaseFs */
void dBgW_Base::SetOldShapeAngleY(s16 shape_angle) {
    m_old_ShapeAngleY = shape_angle;
}

/* 80074ABC-80074B40 06F3FC 0084+00 0/0 11/11 5/5 .text ChkMoveBG__4dBgSFRC13cBgS_PolyInfo */
bool dBgS::ChkMoveBG(cBgS_PolyInfo const& poly) {
    dBgW_Base* base = dComIfG_Bgsp().GetBgWBasePointer(poly);
    if (base != NULL) {
        if (base->ChkLock()) {
            return false;
        }

        if (base->ChkMoveBg()) {
            return true;
        }
    }

    return false;
}

/* 80074B40-80074B98 06F480 0058+00 0/0 4/4 4/4 .text ChkMoveBG_NoDABg__4dBgSFRC13cBgS_PolyInfo */
bool dBgS::ChkMoveBG_NoDABg(cBgS_PolyInfo const& poly) {
    dBgW_Base* base = dComIfG_Bgsp().GetBgWBasePointer(poly);
    if (base != NULL && base->ChkMoveBg()) {
        return true;
    }

    return false;
}

/* 80074B98-80074BE8 06F4D8 0050+00 0/0 4/4 1/1 .text            GetExitId__4dBgSFRC13cBgS_PolyInfo
 */
s32 dBgS::GetExitId(cBgS_PolyInfo const& poly) {
    int bg_index = poly.GetBgIndex();
    if (m_chk_element[bg_index].ChkUsed()) {
        return m_chk_element[bg_index].m_bgw_base_ptr->GetExitId(poly);
    } else {
        return 0x3F;
    }
}

/* 80074BE8-80074C6C 06F528 0084+00 0/0 7/7 35/35 .text GetPolyColor__4dBgSFRC13cBgS_PolyInfo */
s32 dBgS::GetPolyColor(cBgS_PolyInfo const& poly) {
    if (!poly.ChkSetInfo()) {
        return 0xFF;
    }

    int bg_index = poly.GetBgIndex();
    if (m_chk_element[bg_index].ChkUsed()) {
        return m_chk_element[bg_index].m_bgw_base_ptr->GetPolyColor(poly);
    }

    return 0xFF;
}

/* 80074C6C-80074CBC 06F5AC 0050+00 0/0 1/1 2/2 .text GetHorseNoEntry__4dBgSFRC13cBgS_PolyInfo */
BOOL dBgS::GetHorseNoEntry(cBgS_PolyInfo const& poly) {
    int bg_index = poly.GetBgIndex();
    if (m_chk_element[bg_index].ChkUsed()) {
        return m_chk_element[bg_index].m_bgw_base_ptr->GetHorseNoEntry(poly);
    }

    return false;
}

/* 80074CBC-80074D0C 06F5FC 0050+00 0/0 4/4 9/9 .text GetSpecialCode__4dBgSFRC13cBgS_PolyInfo */
int dBgS::GetSpecialCode(cBgS_PolyInfo const& poly) {
    int bg_index = poly.GetBgIndex();
    if (m_chk_element[bg_index].ChkUsed()) {
        return m_chk_element[bg_index].m_bgw_base_ptr->GetSpecialCode(poly);
    }

    return 0;
}

/* 80074D0C-80074D5C 06F64C 0050+00 0/0 2/2 2/2 .text GetMagnetCode__4dBgSFRC13cBgS_PolyInfo */
int dBgS::GetMagnetCode(cBgS_PolyInfo const& poly) {
    int bg_index = poly.GetBgIndex();
    if (m_chk_element[bg_index].ChkUsed()) {
        return m_chk_element[bg_index].m_bgw_base_ptr->GetMagnetCode(poly);
    }

    return 0;
}

/* 80074D5C-80074DAC 06F69C 0050+00 0/0 5/5 0/0 .text GetMonkeyBarsCode__4dBgSFRC13cBgS_PolyInfo
 */
int dBgS::GetMonkeyBarsCode(cBgS_PolyInfo const& poly) {
    int bg_index = poly.GetBgIndex();
    if (m_chk_element[bg_index].ChkUsed()) {
        return m_chk_element[bg_index].m_bgw_base_ptr->GetMonkeyBarsCode(poly);
    }

    return 0;
}

/* 80074DAC-80074E00 06F6EC 0054+00 0/0 0/0 1/1 .text
 * GetUnderwaterRoofCode__4dBgSFRC13cBgS_PolyInfo               */
u32 dBgS::GetUnderwaterRoofCode(cBgS_PolyInfo const& poly) {
    int bg_index = poly.GetBgIndex();
    if (m_chk_element[bg_index].ChkUsed()) {
        return m_chk_element[bg_index].m_bgw_base_ptr->GetUnderwaterRoofCode(poly.GetPolyIndex());
    }

    return 0;
}

/* 80074E00-80074E50 06F740 0050+00 0/0 13/13 5/5 .text GetWallCode__4dBgSFRC13cBgS_PolyInfo */
s32 dBgS::GetWallCode(cBgS_PolyInfo const& poly) {
    int bg_index = poly.GetBgIndex();
    if (m_chk_element[bg_index].ChkUsed()) {
        return m_chk_element[bg_index].m_bgw_base_ptr->GetWallCode(poly);
    }

    return 0;
}

/* 80074E50-80074EA0 06F790 0050+00 0/0 29/29 28/28 .text GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo */
int dBgS::GetPolyAtt0(cBgS_PolyInfo const& poly) {
    int bg_index = poly.GetBgIndex();
    if (m_chk_element[bg_index].ChkUsed()) {
        return m_chk_element[bg_index].m_bgw_base_ptr->GetPolyAtt0(poly);
    }

    return 0;
}

/* 80074EA0-80074EF0 06F7E0 0050+00 0/0 13/13 0/0 .text GetPolyAtt1__4dBgSFRC13cBgS_PolyInfo */
int dBgS::GetPolyAtt1(cBgS_PolyInfo const& poly) {
    int bg_index = poly.GetBgIndex();
    if (m_chk_element[bg_index].ChkUsed()) {
        return m_chk_element[bg_index].m_bgw_base_ptr->GetPolyAtt1(poly);
    }

    return 0;
}

/* 80074EF0-80074F40 06F830 0050+00 0/0 7/7 8/8 .text GetGroundCode__4dBgSFRC13cBgS_PolyInfo */
int dBgS::GetGroundCode(cBgS_PolyInfo const& poly) {
    int bg_index = poly.GetBgIndex();
    if (m_chk_element[bg_index].ChkUsed()) {
        return m_chk_element[bg_index].m_bgw_base_ptr->GetGroundCode(poly);
    }

    return 0;
}

/* 80074F40-80074F90 06F880 0050+00 0/0 1/1 0/0 .text GetCamMoveBG__4dBgSFRC13cBgS_PolyInfo */
s32 dBgS::GetCamMoveBG(cBgS_PolyInfo const& poly) {
    int bg_index = poly.GetBgIndex();
    if (m_chk_element[bg_index].ChkUsed()) {
        return m_chk_element[bg_index].m_bgw_base_ptr->GetCamMoveBG(poly);
    }

    return 0xFF;
}

/* 80074F90-80074FE0 06F8D0 0050+00 0/0 1/1 0/0 .text GetRoomCamId__4dBgSFRC13cBgS_PolyInfo */
s32 dBgS::GetRoomCamId(cBgS_PolyInfo const& poly) {
    int bg_index = poly.GetBgIndex();
    if (m_chk_element[bg_index].ChkUsed()) {
        return m_chk_element[bg_index].m_bgw_base_ptr->GetRoomCamId(poly);
    }

    return 0xFF;
}

/* 80074FE0-80075030 06F920 0050+00 0/0 2/2 0/0 .text GetRoomPathId__4dBgSFRC13cBgS_PolyInfo */
s32 dBgS::GetRoomPathId(cBgS_PolyInfo const& poly) {
    int bg_index = poly.GetBgIndex();
    if (m_chk_element[bg_index].ChkUsed()) {
        return m_chk_element[bg_index].m_bgw_base_ptr->GetRoomPathId(poly);
    }

    return 0xFF;
}

/* 80075030-80075080 06F970 0050+00 0/0 1/1 0/0 .text GetRoomPathPntNo__4dBgSFRC13cBgS_PolyInfo */
s32 dBgS::GetRoomPathPntNo(cBgS_PolyInfo const& poly) {
    int bg_index = poly.GetBgIndex();
    if (m_chk_element[bg_index].ChkUsed()) {
        return m_chk_element[bg_index].m_bgw_base_ptr->GetRoomPathPntNo(poly);
    }

    return 0xFF;
}

/* 80075080-800750D0 06F9C0 0050+00 0/0 2/2 0/0 .text GetGrpSoundId__4dBgSFRC13cBgS_PolyInfo */
int dBgS::GetGrpSoundId(cBgS_PolyInfo const& poly) {
    int bg_index = poly.GetBgIndex();
    if (m_chk_element[bg_index].ChkUsed()) {
        return m_chk_element[bg_index].m_bgw_base_ptr->GetGrpSoundId(poly);
    }

    return 0xFF;
}

/* 800750D0-80075100 06FA10 0030+00 0/0 1/1 0/0 .text ChkGrpInf__4dBgSFRC13cBgS_PolyInfoUl */
u32 dBgS::ChkGrpInf(cBgS_PolyInfo const& poly, u32 param_1) {
    u32 grp_inf = GetGrpInf(poly);
    return grp_inf & param_1;
}

/* 80075100-8007519C 06FA40 009C+00 0/0 16/16 60/60 .text GetRoomId__4dBgSFRC13cBgS_PolyInfo */
s32 dBgS::GetRoomId(cBgS_PolyInfo const& poly) {
    if (!poly.ChkSetInfo()) {
        return -1;
    }

    int id = poly.GetBgIndex();
    if (!ChkPolySafe(poly)) {
        return -1;
    }

    s32 roomId = m_chk_element[id].m_bgw_base_ptr->GetRoomId();
    if (roomId == 0xFF) {
        roomId = GetGrpRoomId(poly);
        if (roomId == 0xFF) {
            roomId = -1;
        }
    }

    return roomId;
}

/* 8007519C-800751F8 06FADC 005C+00 0/0 3/3 0/0 .text
 * GetPolyAttackThrough__4dBgSFRC13cBgS_PolyInfo                */
bool dBgS::GetPolyAttackThrough(cBgS_PolyInfo const& poly) {
    int bg_index = poly.GetBgIndex();
    if (m_chk_element[bg_index].ChkUsed()) {
        return m_chk_element[bg_index].m_bgw_base_ptr->GetAttackThrough(poly.GetPolyIndex()) != 0;
    }

    return false;
}

/* 800751F8-8007524C 06FB38 0054+00 0/0 1/1 0/0 .text ChkPolyHSStick__4dBgSFRC13cBgS_PolyInfo */
u32 dBgS::ChkPolyHSStick(cBgS_PolyInfo const& poly) {
    int bg_index = poly.GetBgIndex();
    if (m_chk_element[bg_index].ChkUsed()) {
        return m_chk_element[bg_index].m_bgw_base_ptr->GetPolyHSStick(poly.GetPolyIndex());
    }

    return 0;
}

/* 8007524C-80075374 06FB8C 0128+00 0/0 1/1 0/0 .text            WallCorrect__4dBgSFP9dBgS_Acch */
void dBgS::WallCorrect(dBgS_Acch* p_acch) {
    p_acch->CalcWallRR();
    p_acch->CalcMovePosWork();

    for (int i = 0; i < 3; i++) {
        cBgS_ChkElm* elm = m_chk_element;

        for (int j = 0; j < 0x100; j++) {
            if (elm->ChkUsed() && !elm->m_bgw_base_ptr->ChkNotReady()) {
                dBgW_Base* pbgw = elm->m_bgw_base_ptr;

                if (pbgw->ChkPriority(i) && !p_acch->ChkSameActorPid(elm->m_actor_id)) {
                    if (!p_acch->ChkMoveBGOnly() || (pbgw->ChkMoveBg() && !pbgw->ChkLock())) {
                        p_acch->SetNowActorInfo(j, elm->m_bgw_base_ptr, elm->m_actor_id);
                        pbgw->WallCorrect(p_acch);
                    }
                }
            }
            elm++;
        }
    }
}

/* 80075374-8007549C 06FCB4 0128+00 0/0 1/1 0/0 .text            WallCorrectSort__4dBgSFP9dBgS_Acch
 */
void dBgS::WallCorrectSort(dBgS_Acch* p_acch) {
    p_acch->CalcWallRR();
    p_acch->CalcMovePosWork();

    for (int i = 0; i < 3; i++) {
        cBgS_ChkElm* elm = m_chk_element;

        for (int j = 0; j < 0x100; j++) {
            if (elm->ChkUsed() && !elm->m_bgw_base_ptr->ChkNotReady()) {
                dBgW_Base* pbgw = elm->m_bgw_base_ptr;

                if (pbgw->ChkPriority(i) && !p_acch->ChkSameActorPid(elm->m_actor_id)) {
                    if (!p_acch->ChkMoveBGOnly() || (pbgw->ChkMoveBg() && !pbgw->ChkLock())) {
                        p_acch->SetNowActorInfo(j, elm->m_bgw_base_ptr, elm->m_actor_id);
                        pbgw->WallCorrectSort(p_acch);
                    }
                }
            }
            elm++;
        }
    }
}

/* 8007549C-80075564 06FDDC 00C8+00 0/0 17/17 1/1 .text            RoofChk__4dBgSFP12dBgS_RoofChk */
f32 dBgS::RoofChk(dBgS_RoofChk* p_roof) {
    p_roof->Init();

    cBgS_ChkElm* elm = m_chk_element;
    for (int i = 0; i < 0x100; i++) {
        if (elm->ChkUsed() && !elm->m_bgw_base_ptr->ChkNotReady()) {
            if (!p_roof->ChkSameActorPid(elm->m_actor_id)) {
                dBgW_Base* pbgw = elm->m_bgw_base_ptr;

                if (pbgw->RoofChk(p_roof)) {
                    p_roof->SetActorInfo(i, elm->m_bgw_base_ptr, elm->m_actor_id);
                }
            }
        }
        elm++;
    }

    return p_roof->GetNowY();
}

/* 80075564-80075688 06FEA4 0124+00 0/0 2/2 3/3 .text            SplGrpChk__4dBgSFP14dBgS_SplGrpChk
 */
bool dBgS::SplGrpChk(dBgS_SplGrpChk* p_grp) {
    bool ret = false;
    p_grp->Init();

    cBgS_ChkElm* elm = m_chk_element;
    for (int i = 0; i < 0x100; i++) {
        if (elm->ChkUsed() && !elm->m_bgw_base_ptr->ChkNotReady()) {
            if (!p_grp->ChkSameActorPid(elm->m_actor_id)) {
                dBgW_Base* pbgw = elm->m_bgw_base_ptr;

                if (!p_grp->ChkMoveBGOnly() || (pbgw->ChkMoveBg() && !pbgw->ChkLock())) {
                    if (pbgw->SplGrpChk(p_grp)) {
                        ret = true;
                        p_grp->SetActorInfo(i, elm->m_bgw_base_ptr, elm->m_actor_id);
                        p_grp->OnFind();
                    }
                }
            }
        }
        elm++;
    }

    return ret;
}

/* 80075688-80075774 06FFC8 00EC+00 0/0 1/1 1/1 .text            SphChk__4dBgSFP11dBgS_SphChkPv */
bool dBgS::SphChk(dBgS_SphChk* p_sph, void* param_1) {
    if (p_sph->mCallback == NULL) {
        return false;
    }

    bool ret = false;
    p_sph->ClearPi();

    cBgS_ChkElm* elm = m_chk_element;
    for (int i = 0; i < 0x100; i++) {
        if (elm->ChkUsed() && !elm->m_bgw_base_ptr->ChkNotReady()) {
            if (!p_sph->ChkSameActorPid(elm->m_actor_id)) {
                dBgW_Base* pbgw = elm->m_bgw_base_ptr;

                if (pbgw->SphChk(p_sph, param_1)) {
                    p_sph->SetActorInfo(i, elm->m_bgw_base_ptr, elm->m_actor_id);
                    ret = true;
                }
            }
        }
        elm++;
    }

    return ret;
}

/* 80075774-80075880 0700B4 010C+00 0/0 3/3 0/0 .text
 * MoveBgCrrPos__4dBgSFRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyzbb */
void dBgS::MoveBgCrrPos(cBgS_PolyInfo const& i_poly, bool param_1, cXyz* i_pos, csXyz* i_angle,
                        csXyz* i_shapeAngle, bool param_5, bool param_6) {
    if (!param_1 || !i_poly.ChkBgIndex()) {
        return;
    }

    int bg_index = i_poly.GetBgIndex();
    if (m_chk_element[bg_index].ChkUsed()) {
        dBgW_Base* bgw_p = m_chk_element[bg_index].m_bgw_base_ptr;

        if ((!param_5 || bgw_p->chkStickWall()) && (!param_6 || bgw_p->chkStickRoof()) &&
            bgw_p->ChkMoveFlag() && ChkPolySafe(i_poly))
        {
            bgw_p->CrrPos(i_poly, m_chk_element[bg_index].m_actor_ptr, param_1, i_pos, i_angle,
                          i_shapeAngle);
        }
    }
}

/* 80075880-8007595C 0701C0 00DC+00 0/0 7/7 2/2 .text
 * MoveBgTransPos__4dBgSFRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz */
void dBgS::MoveBgTransPos(cBgS_PolyInfo const& i_poly, bool param_1, cXyz* i_pos, csXyz* i_angle,
                          csXyz* i_shapeAngle) {
    if (!param_1 || !i_poly.ChkBgIndex()) {
        return;
    }

    int bg_index = i_poly.GetBgIndex();
    if (m_chk_element[bg_index].ChkUsed()) {
        dBgW_Base* bgw_p = m_chk_element[bg_index].m_bgw_base_ptr;

        if (bgw_p->ChkMoveFlag() && ChkPolySafe(i_poly)) {
            bgw_p->TransPos(i_poly, m_chk_element[bg_index].m_actor_ptr, param_1, i_pos, i_angle,
                            i_shapeAngle);
        }
    }
}

/* 8007595C-80075A24 07029C 00C8+00 0/0 6/6 0/0 .text
 * MoveBgMatrixCrrPos__4dBgSFRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz */
void dBgS::MoveBgMatrixCrrPos(cBgS_PolyInfo const& i_poly, bool param_1, cXyz* i_pos,
                              csXyz* i_angle, csXyz* i_shapeAngle) {
    if (!param_1 || !i_poly.ChkBgIndex()) {
        return;
    }

    int bg_index = i_poly.GetBgIndex();
    if (m_chk_element[bg_index].ChkUsed()) {
        dBgW_Base* bgw_p = m_chk_element[bg_index].m_bgw_base_ptr;

        if (bgw_p->ChkMoveFlag()) {
            bgw_p->MatrixCrrPos(i_poly, m_chk_element[bg_index].m_actor_ptr, param_1, i_pos,
                                i_angle, i_shapeAngle);
        }
    }
}

/* 80075A24-80075AA4 070364 0080+00 1/1 0/0 46/46 .text
 * dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz */
void dBgS_MoveBGProc_Typical(dBgW* i_bgw, void* i_actor_ptr, cBgS_PolyInfo const& i_poly,
                             bool param_3, cXyz* i_pos, csXyz* i_angle, csXyz* i_shapeAngle) {
    Mtx m;
    if (i_bgw->GetOldInvMtx(m) != NULL) {
        cXyz move_old;
        MTXMultVec(m, i_pos, &move_old);

        cXyz move_pos;
        MTXMultVec(i_bgw->GetBaseMtxP(), &move_old, &move_pos);
        i_pos->x = move_pos.x;
        i_pos->y = move_pos.y;
        i_pos->z = move_pos.z;
    }
}

/* 80075AA4-80075AD8 0703E4 0034+00 1/1 0/0 0/0 .text
 * dBgS_MoveBGProc_RotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz */
static void dBgS_MoveBGProc_RotY(dBgW* i_bgw, void* i_actor_ptr, cBgS_PolyInfo const& i_poly,
                                 bool param_3, cXyz* i_pos, csXyz* i_angle, csXyz* i_shapeAngle) {
    if (i_shapeAngle != NULL) {
        s16 y = i_bgw->GetDiffShapeAngleY();

        if (i_shapeAngle != NULL) {
            i_shapeAngle->y += y;
        }

        if (i_angle != NULL) {
            i_angle->y += y;
        }
    }
}

/* 80075AD8-80075B44 070418 006C+00 0/0 0/0 124/124 .text
 * dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz */
void dBgS_MoveBGProc_TypicalRotY(dBgW* i_bgw, void* i_actor_ptr, cBgS_PolyInfo const& i_poly,
                                 bool param_3, cXyz* i_pos, csXyz* i_angle, csXyz* i_shapeAngle) {
    dBgS_MoveBGProc_Typical(i_bgw, i_actor_ptr, i_poly, param_3, i_pos, i_angle, i_shapeAngle);
    dBgS_MoveBGProc_RotY(i_bgw, i_actor_ptr, i_poly, param_3, i_pos, i_angle, i_shapeAngle);
}

/* 80075B44-80075B84 070484 0040+00 0/0 0/0 10/10 .text
 * dBgS_MoveBGProc_Trans__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz */
void dBgS_MoveBGProc_Trans(dBgW* i_bgw, void* i_actor_ptr, cBgS_PolyInfo const& i_poly,
                           bool param_3, cXyz* i_pos, csXyz* i_angle, csXyz* i_shapeAngle) {
    cXyz trans;
    i_bgw->GetTrans(&trans);

    VECAdd(i_pos, &trans, i_pos);
}

/* 80075B84-80075BF4 0704C4 0070+00 0/0 1/1 2/2 .text
 * RideCallBack__4dBgSFRC13cBgS_PolyInfoP10fopAc_ac_c           */
void dBgS::RideCallBack(cBgS_PolyInfo const& poly, fopAc_ac_c* param_1) {
    u16 bg_index = poly.GetBgIndex();
    dBgW_Base* base = m_chk_element[bg_index].m_bgw_base_ptr;
    if (base->ChkUsed()) {
        base->CallRideCallBack(m_chk_element[bg_index].m_actor_ptr, param_1);
    }
}

/* 80075BF4-80075C6C 070534 0078+00 0/0 0/0 2/2 .text
 * ArrowStickCallBack__4dBgSFRC13cBgS_PolyInfoP10fopAc_ac_cR4cXyz */
void dBgS::ArrowStickCallBack(cBgS_PolyInfo const& poly, fopAc_ac_c* param_1, cXyz& param_2) {
    u16 bg_index = poly.GetBgIndex();
    dBgW_Base* base = m_chk_element[bg_index].m_bgw_base_ptr;
    if (base->ChkUsed()) {
        base->CallArrowStickCallBack(m_chk_element[bg_index].m_actor_ptr, param_1, param_2);
    }
}

/* 80075C6C-80075D0C 0705AC 00A0+00 0/0 1/1 0/0 .text
 * PushPullCallBack__4dBgSFRC13cBgS_PolyInfoP10fopAc_ac_csQ29dBgW_Base13PushPullLabel */
fopAc_ac_c* dBgS::PushPullCallBack(cBgS_PolyInfo const& param_0, fopAc_ac_c* i_pushActor, s16 i_angle,
                            dBgW_Base::PushPullLabel i_label) {
    u16 bg_index = param_0.GetBgIndex();
    dBgW_Base* base = m_chk_element[bg_index].m_bgw_base_ptr;
    if (!base->ChkUsed()) {
        return false;
    }

    if (m_chk_element[bg_index].m_actor_ptr == NULL) {
        return false;
    }

    if (base->GetPushPullCallback() == NULL) {
        return false;
    }

    return base->GetPushPullCallback()(m_chk_element[bg_index].m_actor_ptr, i_pushActor, i_angle,
                                       i_label);
}

/* 80075D0C-80075D7C 07064C 0070+00 0/0 8/8 1/1 .text dBgS_CheckBWallPoly__FRC13cBgS_PolyInfo */
bool dBgS_CheckBWallPoly(cBgS_PolyInfo const& poly) {
    cM3dGPla pla;

    if (!dComIfG_Bgsp().GetTriPla(poly, &pla)) {
        return false;
    }

    return cBgW_CheckBWall(pla.mNormal.y);
}

/* 80075D7C-80075DEC 0706BC 0070+00 0/0 3/3 1/1 .text dBgS_CheckBGroundPoly__FRC13cBgS_PolyInfo */
bool dBgS_CheckBGroundPoly(cBgS_PolyInfo const& poly) {
    cM3dGPla pla;

    if (!dComIfG_Bgsp().GetTriPla(poly, &pla)) {
        return false;
    }

    return cBgW_CheckBGround(pla.mNormal.y);
}

/* 80075DEC-80075E5C 07072C 0070+00 0/0 0/0 1/1 .text dBgS_CheckBRoofPoly__FRC13cBgS_PolyInfo */
bool dBgS_CheckBRoofPoly(cBgS_PolyInfo const& poly) {
    cM3dGPla pla;

    if (!dComIfG_Bgsp().GetTriPla(poly, &pla)) {
        return false;
    }

    return cBgW_CheckBRoof(pla.mNormal.y);
}

/* 80075E5C-80075EAC 07079C 0050+00 0/0 1/1 0/0 .text            dBgS_GetNY__FRC13cBgS_PolyInfo */
f32 dBgS_GetNY(cBgS_PolyInfo const& poly) {
    cM3dGPla pla;

    dComIfG_Bgsp().GetTriPla(poly, &pla);
    return pla.mNormal.y;
}
