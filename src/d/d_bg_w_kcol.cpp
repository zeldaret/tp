#include "d/dolzel.h"

#include "d/d_bg_w_kcol.h"
#include "d/d_com_inf_game.h"
#include "dol2asm.h"
#include "d/actor/d_a_horse.h"
#include "d/d_bg_s_cap_poly.h"

#include <algorithm.h>
#include <cmath.h>

#include "SSystem/SComponent/c_bg_s_shdw_draw.h"
#include "SSystem/SComponent/c_m2d.h"

#define MAX_DRAW_BIT 0x200

/* 8007E6F4-8007E74C 079034 0058+00 0/0 0/0 1/1 .text            __ct__8dBgWKColFv */
dBgWKCol::dBgWKCol() {
    m_pkc_head = NULL;
}

/* 8007E74C-8007E7D0 07908C 0084+00 1/0 0/0 0/0 .text            __dt__8dBgWKColFv */
dBgWKCol::~dBgWKCol() {}

/* 8007E7D0-8007E804 079110 0034+00 0/0 1/1 0/0 .text            initKCollision__8dBgWKColFPv */
void* dBgWKCol::initKCollision(void* i_kclData) {
    ((KC_Header*)i_kclData)->m_pos_data = (Vec*)((u32)((KC_Header*)i_kclData) + (u32)((KC_Header*)i_kclData)->m_pos_data);
    ((KC_Header*)i_kclData)->m_nrm_data = (Vec*)((u32)((KC_Header*)i_kclData) + (u32)((KC_Header*)i_kclData)->m_nrm_data);
    ((KC_Header*)i_kclData)->m_prism_data = (KC_PrismData*)((u32)((KC_Header*)i_kclData) + (u32)((KC_Header*)i_kclData)->m_prism_data);
    ((KC_Header*)i_kclData)->m_block_data = (KC_PrismData*)((u32)((KC_Header*)i_kclData) + (u32)((KC_Header*)i_kclData)->m_block_data);

    return i_kclData;
}

/* 8007E804-8007E850 079144 004C+00 0/0 0/0 1/1 .text            create__8dBgWKColFPvPv */
void dBgWKCol::create(void* pprism, void* plc) {
    JUT_ASSERT(0x43, pprism != 0);
    JUT_ASSERT(0x44, plc != 0);

    ClrDBgWBase();
    m_pkc_head = (KC_Header*)pprism;

    u32 poly_num = ((u32)m_pkc_head->m_block_data - (u32)m_pkc_head->m_prism_data) / 0xC;
    poly_num++;
    JUT_ASSERT(0x50, poly_num <= 0x4000);

    m_code.setBase(plc);
}

/* 8007E850-8007E86C 079190 001C+00 1/1 0/0 0/0 .text getTriNrm__8dBgWKColCFP12KC_PrismDataPP3Vec
 */
void dBgWKCol::getTriNrm(KC_PrismData* pkc, Vec** nrm) const {
    Vec* var_r31 = &m_pkc_head->m_nrm_data[pkc->fnrm_i];
    *nrm = var_r31;
}

/* 8007E86C-8007E87C 0791AC 0010+00 1/0 0/0 0/0 .text            ChkNotReady__8dBgWKColCFv */
bool dBgWKCol::ChkNotReady() const {
    return m_pkc_head == NULL;
}

/* 8007E87C-8007E884 0791BC 0008+00 1/0 0/0 0/0 .text            ChkLock__8dBgWKColCFv */
bool dBgWKCol::ChkLock() const {
    return false;
}

/* 8007E884-8007E88C 0791C4 0008+00 1/0 0/0 0/0 .text            ChkMoveBg__8dBgWKColCFv */
bool dBgWKCol::ChkMoveBg() const {
    return false;
}

/* 8007E88C-8007E894 0791CC 0008+00 1/0 0/0 0/0 .text            ChkMoveFlag__8dBgWKColCFv */
u32 dBgWKCol::ChkMoveFlag() const {
    return 0;
}

/* 8007E894-8007E8C0 0791D4 002C+00 1/0 0/0 0/0 .text GetTriPla__8dBgWKColCFRC13cBgS_PolyInfo */
cM3dGPla dBgWKCol::GetTriPla(const cBgS_PolyInfo& poly) const {
    int poly_index = poly.GetPolyIndex();
    return GetTriPla(poly_index);
}

/* 8007E8C0-8007E980 079200 00C0+00 3/3 0/0 0/0 .text            GetTriPla__8dBgWKColCFi */
cM3dGPla dBgWKCol::GetTriPla(int poly_index) const {
    KC_PrismData* pd = getPrismData(poly_index);

    Vec* tri_nrm;
    getTriNrm(pd, &tri_nrm);

    Vec* tri_pos;
    getTri1Pos(pd, &tri_pos);
    f32 ndot = -PSVECDotProduct(tri_nrm, tri_pos);

    cM3dGPla plane;
    plane.SetupNP(*tri_nrm, *tri_pos);

    return plane;
}

/* 8007E980-8007E9A4 0792C0 0024+00 1/0 0/0 0/0 .text
 * GetTriPnt__8dBgWKColCFRC13cBgS_PolyInfoP4cXyzP4cXyzP4cXyz    */
bool dBgWKCol::GetTriPnt(const cBgS_PolyInfo& poly, cXyz* ppos, cXyz* param_2,
                         cXyz* param_3) const {
    int poly_index = poly.GetPolyIndex();
    return GetTriPnt(poly_index, ppos, param_2, param_3);
}

/* 8007E9A4-8007E9D4 0792E4 0030+00 3/3 0/0 0/0 .text GetTriPnt__8dBgWKColCFiP3VecP3VecP3Vec */
bool dBgWKCol::GetTriPnt(int poly_index, Vec* ppos, Vec* param_2, Vec* param_3) const {
    KC_PrismData* pd = getPrismData(poly_index);
    return GetTriPnt(pd, ppos, param_2, param_3);
}

/* 8007E9D4-8007EB28 079314 0154+00 3/3 0/0 0/0 .text
 * GetTriPnt__8dBgWKColCFPC12KC_PrismDataP3VecP3VecP3Vec        */
bool dBgWKCol::GetTriPnt(KC_PrismData const* pd, Vec* ppos, Vec* param_3,
                         Vec* param_4) const {
    *ppos = m_pkc_head->m_pos_data[pd->pos_i];

    Vec* face_nrm = &m_pkc_head->m_nrm_data[pd->fnrm_i];
    Vec* edge_nrm1 = &m_pkc_head->m_nrm_data[pd->enrm1_i];
    Vec* edge_nrm2 = &m_pkc_head->m_nrm_data[pd->enrm2_i];
    Vec* edge_nrm3 = &m_pkc_head->m_nrm_data[pd->enrm3_i];

    Vec sp64;
    PSVECCrossProduct(face_nrm, edge_nrm1, &sp64);

    Vec sp70;
    PSVECCrossProduct(edge_nrm2, face_nrm, &sp70);

    f32 var_f30 = PSVECDotProduct(&sp64, edge_nrm3);
    if (cM3d_IsZero(var_f30)) {
        return false;
    }

    f32 var_f31 = pd->height / var_f30;
    PSVECScale(&sp64, &sp64, var_f31);
    PSVECAdd(&sp64, ppos, param_4);
    f32 var_f29 = PSVECDotProduct(&sp70, edge_nrm3);
    if (cM3d_IsZero(var_f29)) {
        return false;
    }

    var_f31 = pd->height / var_f29;
    PSVECScale(&sp70, &sp70, var_f31);
    PSVECAdd(&sp70, ppos, param_3);
    return true;
}

/* 8007EB28-8007EB30 079468 0008+00 1/0 0/0 0/0 .text            GetBnd__8dBgWKColCFv */
cM3dGAab* dBgWKCol::GetBnd() const {
    return (cM3dGAab*)&m_bnd;
}

/* 8007EB30-8007EB6C 079470 003C+00 1/0 0/0 0/0 .text GetGrpInf__8dBgWKColCFRC13cBgS_PolyInfo */
u32 dBgWKCol::GetGrpInf(const cBgS_PolyInfo& poly) const {
    u16 poly_index = poly.GetPolyIndex();
    KC_PrismData* pd = getPrismData(poly_index);

    return m_code.getGrpCode(pd->attribute);
}

/* 8007EB6C-8007EB70 0794AC 0004+00 1/0 0/0 0/0 .text            OffMoveFlag__8dBgWKColFv */
void dBgWKCol::OffMoveFlag() {}

/* 8007EB70-8007EBC4 0794B0 0054+00 39/39 0/0 0/0 .text            getPolyCode__8dBgWKColCFiP5dBgPc
 */
void dBgWKCol::getPolyCode(int poly_index, dBgPc* ppoly) const {
    KC_PrismData* pd = getPrismData(poly_index);

    sBgPc* code;
    m_code.getCode(pd->attribute, &code);
    ppoly->setCode(*code);
}

/* 8007EBC4-8007EE34 079504 0270+00 8/8 0/0 0/0 .text
 * chkPolyThrough__8dBgWKColCFP5dBgPcP16cBgS_PolyPassChkP15cBgS_GrpPassChkR4cXyz */
bool dBgWKCol::chkPolyThrough(dBgPc* ppoly, cBgS_PolyPassChk* ppolypasschk,
                                  cBgS_GrpPassChk* pgrppasschk, cXyz& param_4) const {
    JUT_ASSERT(279, ppoly != 0);

    if (pgrppasschk != NULL) {
        dBgS_GrpPassChk* var_r28 = (dBgS_GrpPassChk*)pgrppasschk;
        if (ppoly->maskNrm() == 0) {
            if (var_r28->MaskNormalGrp() == 0) {
                return true;
            }
        } else if (ppoly->getWtr() != 0 && var_r28->MaskWaterGrp() == 0) {
            return true;
        }
    }

    if (ppolypasschk != NULL) {
        dBgS_PolyPassChk* polypass = (dBgS_PolyPassChk*)ppolypasschk;
        if (polypass->ChkObj() && ppoly->getObjThrough()) {
            return true;
        }

        if (polypass->ChkCam() && ppoly->getCamThrough()) {
            return true;
        }

        if ((polypass->ChkLink() && ppoly->getLinkThrough()) ||
            (polypass->ChkHorse() && ppoly->getLinkThrough()))
        {
            return true;
        }

        if (polypass->ChkArrow() && ppoly->getArrowThrough()) {
            return true;
        }

        if (polypass->ChkBomb() && ppoly->getBombThrough()) {
            return true;
        }

        if (polypass->ChkBoomerang() && ppoly->getBoomerangThrough()) {
            return true;
        }

        if (polypass->ChkRope() && ppoly->getRopeThrough()) {
            return true;
        }

        if (polypass->ChkUnderwaterRoof() && ppoly->getUnderwaterRoof()) {
            return true;
        }

        if (ppoly->getWallCode() == 8 && polypass->ChkNoHorse()) {
            return true;
        }

        if (ppoly->getWallCode() == 9) {
            if (polypass->ChkNoHorse()) {
                return true;
            }

            if (polypass->ChkHorse() && dComIfGp_getHorseActor() != NULL) {
                daHorse_c* horse_p = dComIfGp_getHorseActor();
                if (!horse_p->checkSpecialWallHit(param_4)) {
                    return true;
                }
            }
        }

        if (polypass->ChkStatue() && ppoly->getSpl() == 7) {
            return true;
        }

        if (polypass->ChkIronBall() && ppoly->getIronBallThrough()) {
            return true;
        }
    }

    return false;
}

/* 8007EE34-8007F628 079774 07F4+00 1/0 0/0 0/0 .text            LineCheck__8dBgWKColFP11cBgS_LinChk
 */
// NONMATCHING
bool dBgWKCol::LineCheck(cBgS_LinChk* plinchk) {
    cXyz* pstart = plinchk->GetStartP();
    cXyz* pcross = plinchk->GetCrossP();
    f32 var_f31 = JMAFastSqrt(VECSquareDistance(pstart, pcross));
    if (cM3d_IsZero(var_f31)) {
        return 0;
    }

    f32 var_f25 = 500.0f / var_f31;
    f32 var_f29 = 0.0f;

    cXyz sp144;
    PSVECSubtract(pcross, pstart, &sp144);
    PSVECScale(&sp144, &sp144, var_f25);

    cXyz sp138;
    cXyz sp12C;
    sp12C = *pstart;

    bool spB = false;

    do {
        sp138 = sp12C;
        if (var_f29 + 500.0f <= var_f31) {
            PSVECAdd(&sp12C, &sp144, &sp12C);
        } else {
            sp12C = *pcross;
        }

        cXyz sp120(sp12C);
        cXyz sp114;
        cXyz sp108;

        PSVECSubtract(&sp138, &m_pkc_head->m_area_min_pos, &sp114);
        sp108 = sp114;

        cXyz spFC;
        PSVECSubtract(&sp12C, &m_pkc_head->m_area_min_pos, &spFC);

        if (sp114.x > spFC.x) {
            sp114.x = spFC.x;
        } else {
            sp108.x = spFC.x;
        }

        if (sp114.y > spFC.y) {
            sp114.y = spFC.y;
        } else {
            sp108.y = spFC.y;
        }

        if (sp114.z > spFC.z) {
            sp114.z = spFC.z;
        } else {
            sp108.z = spFC.z;
        }

        sp114.x -= 1.0f;
        sp114.y -= 1.0f;
        sp114.z -= 1.0f;
        sp108.x += 1.0f;
        sp108.y += 1.0f;
        sp108.z += 1.0f;

        int sp90 = (u32)sp114.x;
        if (sp90 < 0) {
            sp90 = 0;
        }

        int sp8C;
        int sp88;
        int sp84 = (u32)sp108.x;
        if (sp84 > (s32)~m_pkc_head->m_area_x_width_mask) {
            sp84 = (s32)~m_pkc_head->m_area_x_width_mask;
        }

        if (sp90 < sp84) {
            sp8C = (u32)sp114.y;
            if (sp8C < 0) {
                sp8C = 0;
            }

            int sp80 = (u32)sp108.y;
            if (sp80 > (int)~m_pkc_head->m_area_y_width_mask) {
                sp80 = (int)~m_pkc_head->m_area_y_width_mask;
            }

            if (sp8C < sp80) {
                sp88 = (u32)sp114.z;
                if (sp88 < 0) {
                    sp88 = 0;
                }

                int sp7C = (u32)sp108.z;
                if (sp7C > (int)~m_pkc_head->m_area_z_width_mask) {
                    sp7C = (int)~m_pkc_head->m_area_z_width_mask;
                }

                if (sp88 < sp7C) {
                    cXyz spF0;
                    int sp78;
                    int sp74;
                    int sp70;
                    int sp6C;
                    int sp68;
                    int sp64;
                    int sp60;
                    int sp5C;
                    u16* sp58 = NULL;
                    u16* sp54 = NULL;
                    u16* sp50 = NULL;
                    u16* sp4C = NULL;
                    u16* sp48 = NULL;
                    u16* sp44 = NULL;
                    int z_sp40 = sp88;

                    do {
                        sp68 = 1000000;
                        int y_sp3C = sp8C;
                        do {
                            sp6C = 1000000;
                            sp64 = 0;
                            sp60 = 0;
                            sp5C = 0;
                            int x_sp38 = sp90;

                            do {
                                u32 block = (u32)m_pkc_head->m_block_data;
                                u32 shift = m_pkc_head->m_block_width_shift;
                                s32 offset = (((u32)z_sp40 >> shift) << m_pkc_head->m_area_xy_blocks_shift |
                                            ((u32)y_sp3C >> shift) << m_pkc_head->m_area_x_blocks_shift |
                                            (u32)x_sp38 >> shift) << 2;

                                while (offset = *(u32*)(block + offset), offset >= 0) {
                                    block += offset;
                                    shift--;
                                    offset = (((u32)z_sp40 >> shift & 1) << 2 |
                                              ((u32)y_sp3C >> shift & 1) << 1 |
                                              ((u32)x_sp38 >> shift & 1) << 0) << 2;
                                }

                                u16* sp28 = (u16*)(block + (offset & 0x7FFFFFFF));

                                shift = 1 << shift;
                                int cellSize = shift - 1;
                                sp78 = shift - (x_sp38 & cellSize);
                                sp74 = shift - (y_sp3C & cellSize);
                                sp70 = shift - (z_sp40 & cellSize);

                                if (sp70 < sp68) {
                                    sp68 = sp70;
                                }

                                if (sp74 < sp6C) {
                                    sp6C = sp74;
                                }

                                if (sp28[1] != 0 && sp74 > sp5C) {
                                    if (sp74 > sp60) {
                                        if (sp74 > sp64) {
                                            sp5C = sp60;
                                            sp60 = sp64;
                                            sp64 = sp74;
                                            sp50 = sp54;
                                            sp54 = sp58;
                                            sp58 = sp28;
                                        } else {
                                            sp5C = sp60;
                                            sp60 = sp74;
                                            sp50 = sp54;
                                            sp54 = sp28;
                                        }
                                    } else {
                                        sp5C = sp74;
                                        sp50 = sp28;
                                    }
                                }

                                if (sp28 != sp4C && sp28 != sp48) {
                                    if (sp28 == sp44) {
                                        continue;
                                    }

                                    while (*(++sp28) != 0) {
                                        KC_PrismData* sp20 = getPrismData(sp28[0]);
                                        Vec* sp1C = &m_pkc_head->m_nrm_data[sp20->fnrm_i];
                                        Vec* sp18 = &m_pkc_head->m_pos_data[sp20->pos_i];

                                        cXyz spE4;
                                        VECSubtract(&sp138, sp18, &spE4);
                                        f32 temp_f30 = VECDotProduct(sp1C, &spE4);

                                        cXyz spD8;
                                        VECSubtract(&sp120, sp18, &spD8);
                                        f32 temp_f28 = VECDotProduct(sp1C, &spD8);

                                        if (temp_f30 >= 0.0f && temp_f28 <= 0.0f) {
                                            if (!plinchk->ChkFrontFlag()) {
                                                continue;
                                            }
                                        } else if (!(temp_f30 <= 0.0f && temp_f28 >= 0.0f && plinchk->ChkBackFlag())) {
                                            continue;
                                        }

                                        f32 temp_f27 = temp_f30 - temp_f28;
                                        if (!cM3d_IsZero(fabsf(temp_f27))) {
                                            f32 temp_f24 = temp_f30 / temp_f27;
                                            Vec spCC, spC0;
                                            VECSubtract(&spD8, &spE4, &spCC);
                                            VECScale(&spCC, &spC0, temp_f24);

                                            cXyz spB4;
                                            VECAdd(&spE4, &spC0, &spB4);

                                            Vec* sp14 = &m_pkc_head->m_nrm_data[sp20->enrm1_i];

                                            if (VECDotProduct(&spB4, sp14) <= 0.0075f) {
                                                Vec* sp10 = &m_pkc_head->m_nrm_data[sp20->enrm2_i];
                                                if (VECDotProduct(&spB4, sp10) <= 0.0075f) {
                                                    Vec* spC =
                                                        &m_pkc_head->m_nrm_data[sp20->enrm3_i];
                                                    f32 var_f26 = VECDotProduct(&spB4, spC);
                                                    if (var_f26 >= -0.0075f &&
                                                        var_f26 <= sp20->height + 0.0075f)
                                                    {
                                                        if (cBgW_CheckBGround(sp1C->y)) {
                                                            if (!plinchk->GetPreGroundChk()) {
                                                                continue;
                                                            }
                                                        } else if (cBgW_CheckBRoof(sp1C->y)) {
                                                            if (!plinchk->GetPreRoofChk()) {
                                                                continue;
                                                            }
                                                        } else if (!plinchk->GetPreWallChk()) {
                                                            continue;
                                                        }

                                                        dBgPc sp150;
                                                        getPolyCode(sp28[0], &sp150);

                                                        cXyz spA8(*sp1C);
                                                        if (!chkPolyThrough(
                                                                &sp150,
                                                                plinchk->GetPolyPassChk(),
                                                                plinchk->GetGrpPassChk(), spA8))
                                                        {
                                                            cXyz sp9C;
                                                            VECAdd(&spB4, sp18, &sp9C);
                                                            spB = 1;
                                                            *pcross = sp9C;
                                                            sp120 = sp9C;

                                                            JUT_ASSERT(0x2e2,
                                                                       fpclassify(pcross->x) !=
                                                                           FP_QNAN);
                                                            JUT_ASSERT(0x2e3,
                                                                       fpclassify(pcross->y) !=
                                                                           FP_QNAN);
                                                            JUT_ASSERT(0x2e4,
                                                                       fpclassify(pcross->z) !=
                                                                           FP_QNAN);
                                                            JUT_ASSERT(
                                                                0x2e9,
                                                                -FP_INFINITE < pcross->x &&
                                                                    pcross->x < FP_INFINITE);
                                                            JUT_ASSERT(
                                                                0x2eb,
                                                                -FP_INFINITE < pcross->y &&
                                                                    pcross->y < FP_INFINITE);
                                                            // JUT_ASSERT(0x2ed, -FP_INFINITE <
                                                            // pcross->z && pcross->z <
                                                            // FP_INFINITE);

                                                            plinchk->SetPolyIndex(sp28[0]);
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            } while ((u32)(x_sp38 += sp78) <= sp84);

                            sp4C = sp58;
                            sp48 = sp54;
                            sp44 = sp50;
                        } while ((u32)(y_sp3C += sp6C) <= sp80);
                    } while ((u32)(z_sp40 += sp68) <= sp7C);

                    if (spB)
                        break;
                }
            }
        }

        var_f29 += 500.0f;
    } while (var_f29 <= var_f31);

    return spB;
}

/* 8007F628-8007F9A4 079F68 037C+00 1/0 0/0 0/0 .text GroundCross__8dBgWKColFP11cBgS_GndChk */
// NONMATCHING
bool dBgWKCol::GroundCross(cBgS_GndChk* i_chk) {
    KC_PrismData* sp18;
    cXyz* point_p = (cXyz*)&i_chk->GetPointP();
    cXyz sp58;


    VECSubtract(point_p, &m_pkc_head->m_area_min_pos, &sp58);

    int sp38 = (u32)sp58.x;
    if (sp38 < 0) {
        return 0;
    } else if (sp38 > (int)~m_pkc_head->m_area_x_width_mask) {
        return 0;
    }

    int sp34 = (u32)sp58.z;
    if (sp34 < 0) {
        return 0;
    } else if (sp34 > (int)~m_pkc_head->m_area_z_width_mask) {
        return 0;
    }

    int sp30 = (u32)sp58.y;
    if (sp30 < 0) {
        return 0;
    } else if (sp30 > (int)~m_pkc_head->m_area_y_width_mask) {
        sp30 = (int)~m_pkc_head->m_area_y_width_mask;
    }

    bool var_r24 = 0;

    cXyz sp4C;
    int sp2C = 0;
    do {
        u32 block = (u32)m_pkc_head->m_block_data;
        u32 shift = m_pkc_head->m_block_width_shift;
        int sp20 = 4 * (((u32)sp34 >> shift) << m_pkc_head->m_area_xy_blocks_shift |
                       ((u32)sp30 >> shift) << m_pkc_head->m_area_x_blocks_shift |
                       (u32)sp38 >> shift);
        while ((sp20 = (*(s32*)(block + sp20))), sp20 >= 0) {
            block += sp20;
            shift--;
            sp20 = 4 * ((4 * ((u32)sp34 >> shift)) & 4 |
                    (2 * ((u32)sp30 >> shift)) & 2 |
                    (1 * ((u32)sp38 >> shift)) & 1);
        }

        u16* sp1C = (u16*)(block + (sp20 & 0x7FFFFFFF));

        while (*++sp1C != 0) {
            sp18 = &m_pkc_head->m_prism_data[sp1C[0]];
            Vec* sp14 = &m_pkc_head->m_nrm_data[sp18->fnrm_i];

            if (!(sp14->y < 0.014f) && !cM3d_IsZero(sp14->y) && (!cBgW_CheckBWall(sp14->y) || i_chk->GetWallPrecheck())) {
                Vec* sp10 = &m_pkc_head->m_pos_data[sp18->pos_i];
                sp4C.x = point_p->x - sp10->x;
                sp4C.z = point_p->z - sp10->z;
                sp4C.y = -(sp4C.x * sp14->x + sp4C.z * sp14->z) / sp14->y;

                if (!(VECDotProduct(&sp4C, &m_pkc_head->m_nrm_data[sp18->enrm1_i]) > 0.0075f) &&
                    !(VECDotProduct(&sp4C, &m_pkc_head->m_nrm_data[sp18->enrm2_i]) > 0.0075f))
                {
                    f32 var_f30 = VECDotProduct(&sp4C, &m_pkc_head->m_nrm_data[sp18->enrm3_i]);
                    if (!(var_f30 > 0.0075f + sp18->height) && !(var_f30 < -0.0075f)) {
                        dBgPc sp64;
                        getPolyCode(sp1C[0], &sp64);
                        cXyz sp40(*sp14);

                        if (!chkPolyThrough(&sp64, i_chk->GetPolyPassChk(), i_chk->GetGrpPassChk(), sp40)) {
                            f32 tmp_height_kcw = sp4C.y + sp10->y;
                            f32 now_y = i_chk->GetNowY();

                            if (now_y < tmp_height_kcw && point_p->y > tmp_height_kcw) {
                                i_chk->SetPolyIndex(sp1C[0]);
                                i_chk->SetNowY(tmp_height_kcw);
                                var_r24 = 1;
                                sp2C = (u32)(tmp_height_kcw - m_pkc_head->m_area_min_pos.y);
                            }
                        }
                    }
                }
            }
        }

        sp30 &= ~((1 << shift) - 1);
        sp30--;
    } while (sp30 >= sp2C);

    return var_r24;
}

/* 8007F9A4-8007FF00 07A2E4 055C+00 1/0 0/0 0/0 .text ShdwDraw__8dBgWKColFP13cBgS_ShdwDraw */
// NONMATCHING
void dBgWKCol::ShdwDraw(cBgS_ShdwDraw* param_0) {
    dBgPc polyCode_sp108;

    cM3dGAab* bnd_spAC = param_0->GetBndP();
    cXyz* minP_spA8 = bnd_spAC->GetMinP();
    cXyz* maxP_spA4 = bnd_spAC->GetMaxP();

    Vec offset1_sp134;
    Vec offset2_sp128;
    Vec prismPos_sp11C;

    cXyz localMin_spD4;
    cXyz localMax_spC8;
    PSVECSubtract(minP_spA8, &m_pkc_head->m_area_min_pos, &localMin_spD4);
    PSVECSubtract(maxP_spA4, &m_pkc_head->m_area_min_pos, &localMax_spC8);

    localMin_spD4.x -= 1.0f;
    localMin_spD4.y -= 1.0f;
    localMin_spD4.z -= 1.0f;
    localMax_spC8.x += 1.0f;
    localMax_spC8.y += 1.0f;
    localMax_spC8.z += 1.0f;

    s32 minX_spA0 = (u32)localMin_spD4.x;
    if (minX_spA0 < 0) {
        minX_spA0 = 0;
    }
    s32 maxX_sp9C = (u32)localMax_spC8.x;
    if (maxX_sp9C > (s32)~m_pkc_head->m_area_x_width_mask) {
        maxX_sp9C = ~m_pkc_head->m_area_x_width_mask;
    }

    if (minX_spA0 < maxX_sp9C) {
        s32 minY_sp98 = (u32)localMin_spD4.y;
        if (minY_sp98 < 0) {
            minY_sp98 = 0;
        }
        s32 maxY_sp94 = (u32)localMax_spC8.y;
        if (maxY_sp94 > (s32)~m_pkc_head->m_area_y_width_mask) {
            maxY_sp94 = ~m_pkc_head->m_area_y_width_mask;
        }

        if (minY_sp98 < maxY_sp94) {
            s32 minZ_sp90 = (u32)localMin_spD4.z;
            if (minZ_sp90 < 0) {
                minZ_sp90 = 0;
            }
            s32 maxZ_sp8C = (u32)localMax_spC8.z;
            if (maxZ_sp8C > (s32)~m_pkc_head->m_area_z_width_mask) {
                maxZ_sp8C = ~m_pkc_head->m_area_z_width_mask;
            }

            if (minZ_sp90 < maxZ_sp8C) {
                u32 drawBits_sp140[512];
                for (u32* el_sp88 = drawBits_sp140; el_sp88 < drawBits_sp140 + 512; el_sp88++) {
                    *el_sp88 = 0;
                }

                s32 remX_sp84;
                s32 remY_sp80;
                s32 remZ_sp7C;

                s32 stepY_sp78;
                s32 stepZ_sp74;

                s32 best1_sp70;
                s32 best2_sp6C;
                s32 best3_sp68;

                u16* topPrism1_sp64 = NULL;
                u16* topPrism2_sp60 = NULL;
                u16* topPrism3_sp5C = NULL;

                u16* prev1_sp58 = NULL;
                u16* prev2_sp54 = NULL;
                u16* prev3_sp50;

                prev3_sp50 = NULL;
                s32 z_sp4C = minZ_sp90;
                do {
                    stepZ_sp74 = 1000000;
                    s32 y_sp48 = minY_sp98;

                    do {
                        stepY_sp78 = 1000000;
                        best1_sp70 = NULL;
                        best2_sp6C = NULL;
                        best3_sp68 = NULL;

                        s32 x_sp44 = minX_spA0;
                        do {
                            u32 block_sp40 = (u32)m_pkc_head->m_block_data;
                            u32 shift_sp3C = m_pkc_head->m_block_width_shift;
                            s32 offset_sp38 = 4 * (((u32)z_sp4C >> shift_sp3C) << m_pkc_head->m_area_xy_blocks_shift |
                                        ((u32)y_sp48 >> shift_sp3C) << m_pkc_head->m_area_x_blocks_shift |
                                        (u32)x_sp44 >> shift_sp3C);

                            while ((offset_sp38 = *(u32*)(block_sp40 + offset_sp38)) >= 0) {
                                block_sp40 += offset_sp38;
                                shift_sp3C--;
                                offset_sp38 = (((u32)z_sp4C >> shift_sp3C & 1) << 2 |
                                               ((u32)y_sp48 >> shift_sp3C & 1) << 1 |
                                               ((u32)x_sp44 >> shift_sp3C & 1) << 0) << 2;
                            }

                            u16* prism_sp34 = (u16*)(block_sp40 + (offset_sp38 & 0x7fffffff));

                            shift_sp3C = 1 << shift_sp3C;
                            u32 mask_sp30 = shift_sp3C - 1;
                            remX_sp84 = shift_sp3C - (x_sp44 & mask_sp30);
                            remY_sp80 = shift_sp3C - (y_sp48 & mask_sp30);
                            remZ_sp7C = shift_sp3C - (z_sp4C & mask_sp30);

                            if (remZ_sp7C < stepZ_sp74) {
                                stepZ_sp74 = remZ_sp7C;
                            }
                            if (remY_sp80 < stepY_sp78) {
                                stepY_sp78 = remY_sp80;
                            }

                            if (prism_sp34[1] != 0 && remY_sp80 > best3_sp68) {
                                if (remY_sp80 > best2_sp6C) {
                                    if (remY_sp80 > best1_sp70) {
                                        best3_sp68 = best2_sp6C;
                                        best2_sp6C = best1_sp70;
                                        best1_sp70 = remY_sp80;
                                        topPrism3_sp5C = topPrism2_sp60;
                                        topPrism2_sp60 = topPrism1_sp64;
                                        topPrism1_sp64 = prism_sp34;
                                    } else {
                                        best3_sp68 = best2_sp6C;
                                        best2_sp6C = remY_sp80;
                                        topPrism3_sp5C = topPrism2_sp60;
                                        topPrism2_sp60 = prism_sp34;
                                    }
                                } else {
                                    best3_sp68 = remY_sp80;
                                    topPrism3_sp5C = prism_sp34;
                                }
                            }

                            if (prism_sp34 == prev1_sp58 || prism_sp34 == prev2_sp54 || prism_sp34 == prev3_sp50) {
                            } else {
                                while (*++prism_sp34 != 0) {
                                    u32 bitMask_sp28 = 1 << (prism_sp34[0] & 0x1f);
                                    void* unk_sp24;

                                    KC_PrismData* prismData_sp20;
                                    Vec* nrm1_sp1C;
                                    Vec* nrm2_sp18;
                                    Vec* unk_sp14;
                                    Vec* temp_sp10;

                                    u32 temp_sp0C;
                                    bool temp2_sp08 = true;

                                    if ((s32)(prism_sp34[0] >> 5) > (s32)MAX_DRAW_BIT) {
                                        OS_PANIC(0x47c,
                                                 "Failed assertion shift <= MAX_DRAW_BIT");

                                        temp_sp0C = 0;
                                        if (temp_sp0C == 0) {
                                            temp2_sp08 = false;
                                        }
                                    }

                                    unk_sp24 = drawBits_sp140 + (prism_sp34[0] >> 5);
                                    if ((*(u32*)((u32)unk_sp24 + 0) & bitMask_sp28) == 0) {
                                        *(u32*)((u32)unk_sp24 + 0) |= bitMask_sp28;

                                        getPolyCode(prism_sp34[0], &polyCode_sp108);

                                        Vec cross1_spBC;
                                        Vec cross2_spB0;

                                        if (!ChkShdwDrawThrough(&polyCode_sp108)) {
                                            prismData_sp20 = getPrismData(prism_sp34[0]);

                                            prismPos_sp11C =
                                                m_pkc_head->m_pos_data[prismData_sp20->pos_i];

                                            nrm1_sp1C =
                                                m_pkc_head->m_nrm_data + prismData_sp20->fnrm_i;
                                            nrm2_sp18 = m_pkc_head->m_nrm_data +
                                                        prismData_sp20->enrm1_i;

                                            unk_sp14 = m_pkc_head->m_nrm_data +
                                                       prismData_sp20->enrm3_i;
                                            PSVECCrossProduct(nrm1_sp1C, nrm2_sp18,
                                                              &cross1_spBC);
                                            f32 dot = PSVECDotProduct(&cross1_spBC, unk_sp14);
                                            if (!cM3d_IsZero(dot)) {
                                                PSVECScale(&cross1_spBC, &cross1_spBC,
                                                           prismData_sp20->height / dot);
                                                PSVECAdd(&cross1_spBC, &prismPos_sp11C,
                                                         &offset1_sp134);

                                                // Second edge direction
                                                temp_sp10 = m_pkc_head->m_nrm_data +
                                                            prismData_sp20->enrm2_i;
                                                PSVECCrossProduct(temp_sp10, nrm1_sp1C,
                                                                  &cross2_spB0);
                                                f32 dot2 =
                                                    PSVECDotProduct(&cross2_spB0, unk_sp14);
                                                if (!cM3d_IsZero(dot2)) {
                                                    PSVECScale(&cross2_spB0, &cross2_spB0,
                                                               prismData_sp20->height / dot2);
                                                    PSVECAdd(&cross2_spB0, &prismPos_sp11C,
                                                             &offset2_sp128);

                                                    cM3dGPla pla_spF4;
                                                    pla_spF4 = GetTriPla(prism_sp34[0]);
                                                    (param_0->mCallbackFun)(
                                                        param_0, (cBgD_Vtx_t*)&prismPos_sp11C,
                                                        0, 1, 2, &pla_spF4);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        } while ((x_sp44 += remX_sp84) <= (u32)maxX_sp9C);

                        prev1_sp58 = topPrism1_sp64;
                        prev2_sp54 = topPrism2_sp60;
                        prev3_sp50 = topPrism3_sp5C;
                    } while ((y_sp48 += stepY_sp78) <= (u32)maxY_sp94);
                } while ((z_sp4C += stepZ_sp74) <= (u32)maxZ_sp8C);
            }
        }
    }
}


/* 8007FF00-8007FF1C 07A840 001C+00 1/1 0/0 0/0 .text ChkShdwDrawThrough__8dBgWKColFP5dBgPc */
bool dBgWKCol::ChkShdwDrawThrough(dBgPc* pcode) {
    if (pcode->getShdwThrough()) {
        return true;
    }

    return pcode->getArrowThrough();
}

/* 8007FF1C-80080330 07A85C 0414+00 1/0 0/0 0/0 .text CaptPoly__8dBgWKColFR13dBgS_CaptPoly */
// NONMATCHING
void dBgWKCol::CaptPoly(dBgS_CaptPoly& i_captpoly) {
    cM3dGAab* pbounds = i_captpoly.GetBndP();
    cXyz min(*pbounds->GetMinP());
    cXyz max(*pbounds->GetMaxP());

    min.x -= 1.0f;
    min.y -= 1.0f;
    min.z -= 1.0f;
    max.x += 1.0f;
    max.y += 1.0f;
    max.z += 1.0f;

    Vec* area_min = &m_pkc_head->m_area_min_pos;

    int sp5C = (u32)(min.x - area_min->x);
    if (sp5C < 0) {
        sp5C = 0;
    }

    int sp58 = (u32)(max.x - area_min->x);
    if (sp5C > (int)~m_pkc_head->m_area_x_width_mask) {
        sp5C = (int)~m_pkc_head->m_area_x_width_mask;
    }

    if (sp5C < sp58) {
        int sp54 = (u32)(min.y - area_min->y);
        if (sp54 < 0) {
            sp54 = 0;
        }

        int sp50 = (u32)(max.y - area_min->y);
        if (sp50 > (int)~m_pkc_head->m_area_y_width_mask) {
            sp50 = (int)~m_pkc_head->m_area_y_width_mask;
        }

        if (sp54 < sp50) {
            int sp4C = (u32)(min.z - area_min->z);
            if (sp4C < 0) {
                sp4C = 0;
            }

            int sp48 = (u32)(max.z - area_min->z);
            if (sp48 > (int)~m_pkc_head->m_area_z_width_mask) {
                sp48 = (int)~m_pkc_head->m_area_z_width_mask;
            }

            s32 sp44;
            s32 sp40;
            s32 sp3C;
            s32 sp38;
            s32 sp34;
            s32 sp30;
            if (sp4C < sp48) {
                u16* sp2C = 0;
                u16* sp28 = 0;
                s32 sp24 = sp4C;

                do {
                    sp34 = 1000000;
                    s32 sp20 = sp4C;

                    do {
                        sp38 = 1000000;
                        sp30 = 0;
                        s32 sp1C = sp5C;

                        do {
                            u16* block_18 = (u16*)m_pkc_head->m_block_data;
                            sp20 = m_pkc_head->m_block_width_shift;
                            s32 sp14 =
                                4 * (((u32)sp24 >> sp20) << m_pkc_head->m_area_xy_blocks_shift |
                                     ((u32)sp20 >> sp20) << m_pkc_head->m_area_x_blocks_shift |
                                     (u32)sp1C >> sp20);
                            while ((sp14 = (*(s32*)((s32)block_18 + sp14))), sp14 >= 0) {
                                block_18 = (u16*)((s32)block_18 + sp14);
                                sp20--;

                                sp14 = 4 * ((4 * ((u32)sp24 >> sp20)) & 4 |
                                            (2 * ((u32)sp20 >> sp20)) & 2 |
                                            (1 * ((u32)sp1C >> sp20)) & 1);
                            }

                            block_18 = (u16*)((s32)block_18 + (sp14 & 0x7FFFFFFF));

                            sp20 = 1 << sp20;
                            int sp10 = sp20 - 1;
                            sp44 = (sp1C & sp10) - sp20;
                            sp40 = (sp20 & sp10) - sp20;
                            sp3C = (sp24 & sp10) - sp20;

                            if (sp3C < sp34) {
                                sp34 = sp3C;
                            }

                            if (sp40 < sp38) {
                                sp38 = sp40;
                            }

                            if (sp40 > sp30 && block_18[1] != 0) {
                                sp30 = sp40;
                                sp2C = block_18;
                            }

                            if (block_18 != sp28) {
                                while ((block_18++)[1] != 0) {
                                    KC_PrismData* spC = getPrismData(block_18[0]);
                                    Vec* sp8 = &m_pkc_head->m_nrm_data[spC->fnrm_i];

                                    dBgPc spD8;
                                    getPolyCode(block_18[0], &spD8);

                                    cXyz sp8C(*sp8);
                                    if (!chkPolyThrough(&spD8, i_captpoly.GetPolyPassChk(), i_captpoly.GetGrpPassChk(), sp8C)) {
                                        cXyz sp80;
                                        cXyz sp74;
                                        cXyz sp68;
                                        if (GetTriPnt(block_18[0], &sp80, &sp74, &sp68)) {
                                            static Vec vtx_tbl[3];
                                            vtx_tbl[0] = sp80;
                                            vtx_tbl[1] = sp74;
                                            vtx_tbl[2] = sp68;

                                            cM3dGPla plane;
                                            plane = GetTriPla(block_18[0]);

                                            i_captpoly.m_callback(i_captpoly, (cBgD_Vtx_t*)&vtx_tbl, 0, 1, 2, &plane);
                                        }
                                    }
                                }
                            }

                            sp1C += sp44;
                        } while ((u32)sp1C <= sp58);

                        sp28 = sp2C;
                        sp20 += sp38;
                    } while ((u32)sp20 <= sp50);

                    sp24 += sp34;
                } while ((u32)sp24 <= sp48);
            }
        }
    }
}

/* 80424F94-80425384 051CB4 03F0+00 1/1 0/0 0/0 .bss             l_wcsbuf */
struct wcs_data {
    /* 0x0 */ f32 _0;
    /* 0x4 */ u16 _4;
    /* 0x8 */ wcs_data* next;
};

static wcs_data l_wcsbuf[84];

/* 80452730-80452738 000D30 0008+00 2/2 0/0 0/0 .sdata2          @5298 */
SECTION_SDATA2 static f64 lit_5298 = 0.5f;

/* 80452738-80452740 000D38 0008+00 2/2 0/0 0/0 .sdata2          @5299 */
SECTION_SDATA2 static f64 lit_5299 = 3.0f;

/* 80452740-80452748 000D40 0008+00 2/2 0/0 0/0 .sdata2          @5300 */
SECTION_SDATA2 static u8 lit_5300[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80452748-80452750 000D48 0004+04 2/2 0/0 0/0 .sdata2          @5301 */
SECTION_SDATA2 static f32 lit_5301[1 + 1 /* padding */] = {
    1.0f / 125.0f,
    /* padding */
    0.0f,
};

/* 80080330-800811A0 07AC70 0E70+00 1/0 0/0 0/0 .text WallCorrectSort__8dBgWKColFP9dBgS_Acch */
bool dBgWKCol::WallCorrectSort(dBgS_Acch* pwi) {
    bool sp_10 = false;

    cM3dGCyl* sp_140 = pwi->GetWallBmdCylP();
    cXyz sp_1a4;
    cXyz sp_198;
    sp_140->calcMinMax(&sp_1a4, &sp_198);
    sp_1a4.x -= 1.0f;
    sp_1a4.y -= 1.0f;
    sp_1a4.z -= 1.0f;
    sp_198.x += 1.0f;
    sp_198.y += 1.0f;
    sp_198.z += 1.0f;
    Vec sp_18c;
    Vec* sp_13c = &m_pkc_head->m_area_min_pos;
    VECSubtract(&sp_1a4, sp_13c, &sp_1a4);
    VECSubtract(&sp_198, sp_13c, &sp_198);
    u32 sp_138 = sp_1a4.x;
    if ((s32)sp_138 < 0) {
        sp_138 = 0;
    }
    u32 sp_134 = sp_198.x;
    if ((s32)sp_134 > (s32)~m_pkc_head->m_area_x_width_mask) {
        sp_134 = ~m_pkc_head->m_area_x_width_mask;
    }
    if ((s32)sp_138 >= (s32)sp_134) {
        return false;
    }

    u32 sp_130 = sp_1a4.y;
    if ((s32)sp_130 < 0) {
        sp_130 = 0;
    }
    u32 sp_12c = sp_198.y;
    if ((s32)sp_12c > (s32)~m_pkc_head->m_area_y_width_mask) {
        sp_12c = ~m_pkc_head->m_area_y_width_mask;
    }
    if ((s32)sp_130 >= (s32)sp_12c) {
        return false;
    }

    u32 sp_128 = sp_1a4.z;
    if ((s32)sp_128 < 0) {
        sp_128 = 0;
    }
    u32 sp_124 = sp_198.z;
    if (sp_124 > ~m_pkc_head->m_area_z_width_mask) {
        sp_124 = ~m_pkc_head->m_area_z_width_mask;
    }

    if ((s32)sp_128 >= (s32)sp_124) {
        return false;
    }

    u16* sp_120 = NULL;
    u16* sp_11c = NULL;
    u16* sp_118 = NULL;
    u16* sp_114 = NULL;
    u16* sp_110 = NULL;
    u16* sp_10c = NULL;
    s32 sp_108;
    s32 sp_104;
    s32 sp_100;
    sp_18c.y = 0.0f;
    s32 sp_fc;
    s32 sp_f8;
    s32 sp_f4;
    s32 sp_f0;
    s32 sp_ec;
    wcs_data* sp_e8 = NULL;
    s32 wcsIndex_e4 = 0;
    u32 sp_e0 = sp_128;
    do {
        sp_f8 = 1000000;
        u32 sp_dc = sp_130;
        do {
            sp_fc = 1000000;
            sp_f4 = 0;
            sp_f0 = 0;
            sp_ec = 0;
            u32 sp_d8 = sp_138;
            do {
                KC_PrismData* block_d4 = m_pkc_head->m_block_data;
                u32 shift_d0 = m_pkc_head->m_block_width_shift;
                s32 sp_cc = 4 * (
                    (sp_e0 >> shift_d0) << m_pkc_head->m_area_xy_blocks_shift |
                    (sp_dc >> shift_d0) << m_pkc_head->m_area_x_blocks_shift |
                    (sp_d8 >> shift_d0));
                for (; sp_cc >= 0; sp_cc = *(s32*)((int)block_d4 + sp_cc)) {
                    block_d4 = (KC_PrismData*)((int)block_d4 + sp_cc);
                    shift_d0--;
                    sp_cc = (
                        (((sp_e0 >> shift_d0) & 1) << 2) |
                        (((sp_dc >> shift_d0) & 1) << 1) |
                        (((sp_d8 >> shift_d0) & 1) << 0)
                    ) << 2;
                }
                u16* sp_c8 = (u16*)((int)block_d4 + (sp_cc & 0x7fffffff));
                shift_d0 = 1 << shift_d0;
                u32 sp_c4 = shift_d0 - 1;
                sp_108 = shift_d0 - (sp_d8 & sp_c4);
                sp_104 = shift_d0 - (sp_dc & sp_c4);
                sp_100 = shift_d0 - (sp_e0 & sp_c4);
                if (sp_100 < sp_f8) {
                    sp_f8 = sp_100;
                }
                if (sp_104 < sp_fc) {
                    sp_fc = sp_104;
                }
                if (sp_c8[1] != 0 && (sp_104 > sp_ec)) {
                    if (sp_104 > sp_f0) {
                        if (sp_104 > sp_f4) {
                            sp_ec = sp_f0;
                            sp_f0 = sp_f4;
                            sp_f4 = sp_104;
                            sp_10c = sp_110;
                            sp_110 = sp_114;
                            sp_114 = sp_c8;
                        } else {
                            sp_ec = sp_f0;
                            sp_f0 = sp_104;
                            sp_10c = sp_110;
                            sp_110 = sp_c8;
                        }
                    } else {
                        sp_ec = sp_104;
                        sp_10c = sp_c8;
                    }
                }

                if (sp_c8 == sp_120 || sp_c8 == sp_11c || sp_c8 == sp_118) {
                } else {
                    while (*++sp_c8 != 0) {
                        KC_PrismData* sp_c0 = getPrismData(*sp_c8);
                        Vec* sp_bc = m_pkc_head->m_nrm_data + sp_c0->fnrm_i;
                        if (!cBgW_CheckBGround(sp_bc->y)) {
                            f32 sp_b8 = JMAFastSqrt(sp_bc->x * sp_bc->x + sp_bc->z * sp_bc->z);
                            if (!cM3d_IsZero(sp_b8)) {
                                dBgPc sp_1b0;
                                getPolyCode(*sp_c8, &sp_1b0);
                                cXyz sp_180 = *sp_bc;
                                if (!chkPolyThrough(&sp_1b0, pwi->GetPolyPassChk(),
                                                    pwi->GetGrpPassChk(), sp_180))
                                {
                                    fopAc_ac_c* sp_b4 = pwi->getMyAc();
                                    cXyz sp_174;
                                    sp_174.x = cM_ssin(sp_b4->current.angle.y);
                                    sp_174.z = cM_scos(sp_b4->current.angle.y);
                                    f32 sp_b0 = 1.0f / sp_b8;
                                    f32 sp_ac = sp_b0 * (sp_174.x * sp_bc->x + sp_174.z * sp_bc->z);
                                    if (sp_e8 == NULL) {
                                        if (wcsIndex_e4 < 84) {
                                            l_wcsbuf[wcsIndex_e4]._0 = sp_ac;
                                            l_wcsbuf[wcsIndex_e4]._4 = *sp_c8;
                                            l_wcsbuf[wcsIndex_e4].next = NULL;
                                            sp_e8 = &l_wcsbuf[wcsIndex_e4];
                                            wcsIndex_e4++;
                                        } else {
#ifdef DEBUG
                                            lit_5300[0] = 1;
#endif
                                        }
                                    } else if (*sp_c8 != sp_e8->_4) {
                                        if (sp_ac > sp_e8->_0) {
                                            if (wcsIndex_e4 < 84) {
                                                l_wcsbuf[wcsIndex_e4]._0 = sp_ac;
                                                l_wcsbuf[wcsIndex_e4]._4 = *sp_c8;
                                                l_wcsbuf[wcsIndex_e4].next = sp_e8;
                                                sp_e8 = &l_wcsbuf[wcsIndex_e4];
                                                // local_118->_0 = l_wcsbuf[local_11c]._0;
                                                wcsIndex_e4++;
                                            } else {
#ifdef DEBUG
                                                lit_5300[0] = 1;
#endif
                                            }
                                        } else {
                                            wcs_data* sp_a8 = sp_e8;
                                            while (true) {
                                                if (sp_a8->next == NULL) {
                                                    if (wcsIndex_e4 < 84) {
                                                        l_wcsbuf[wcsIndex_e4]._0 = sp_ac;
                                                        l_wcsbuf[wcsIndex_e4]._4 = *sp_c8;
                                                        l_wcsbuf[wcsIndex_e4].next = NULL;
                                                        sp_a8->next = &l_wcsbuf[wcsIndex_e4];
                                                        wcsIndex_e4++;
                                                    } else {
#ifdef DEBUG
                                                        lit_5300[0] = 0;
#endif
                                                    }

                                                    break;
                                                }

                                                if (*sp_c8 == sp_a8->next->_4) {
                                                    break;
                                                }

                                                if (sp_ac > sp_a8->next->_0) {
                                                    if (wcsIndex_e4 < 84) {
                                                        l_wcsbuf[wcsIndex_e4]._0 = sp_ac;
                                                        l_wcsbuf[wcsIndex_e4]._4 = *sp_c8;
                                                        l_wcsbuf[wcsIndex_e4].next = sp_a8->next;
                                                        sp_a8->next = &l_wcsbuf[wcsIndex_e4];
                                                        wcsIndex_e4++;
                                                    } else {
#ifdef DEBUG
                                                        lit_5300[0] = 1;
#endif
                                                    }

                                                    break;
                                                }
                                                sp_a8 = sp_a8->next;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

                sp_d8 += sp_108;
            } while (sp_d8 <= sp_134);
            sp_120 = sp_114;
            sp_11c = sp_110;
            sp_118 = sp_10c;

            sp_dc += sp_fc;
        } while (sp_dc <= sp_12c);

        sp_e0 += sp_f8;
    } while (sp_e0 <= sp_124);
    wcs_data* sp_a4 = sp_e8;
    while (true) {
        if (sp_a4 == NULL) {
            break;
        }
        u32 sp_a0 = (u16)sp_a4->_4;
        KC_PrismData* sp_9c = getPrismData(sp_a0);
        Vec* sp_98 = m_pkc_head->m_nrm_data + sp_9c->fnrm_i;
        f32 sp_94 = JMAFastSqrt(sp_98->x * sp_98->x + sp_98->z * sp_98->z);
        cXyz sp_168;
        cXyz sp_15c;
        cXyz sp_150;
        if (GetTriPnt(sp_9c, &sp_168, &sp_15c, &sp_150)) {
            f32 sp_90 = 1.0f / sp_94;
            for (s32 cir_index_8c = 0; cir_index_8c < pwi->GetTblSize(); cir_index_8c++) {
                f32 sp_88 = sp_90 * pwi->GetWallR(cir_index_8c);
                sp_18c.x = sp_98->x * sp_88;
                sp_18c.z = sp_98->z * sp_88;
                f32 sp_84;
                if (!pwi->ChkWallHDirect(cir_index_8c)) {
                    sp_84 = pwi->GetPos()->y + pwi->GetWallH(cir_index_8c) + pwi->GetWallAddY(sp_18c) - pwi->GetSpeedY();
                } else {
                    sp_84 = pwi->GetWallHDirect(cir_index_8c);
                }
                f32 sp_144[3];
                sp_144[0] = sp_168.y - sp_84;
                sp_144[1] = sp_15c.y - sp_84;
                sp_144[2] = sp_150.y - sp_84;
                if (sp_144[0] > 0.0f && sp_144[1] > 0.0f && sp_144[2] > 0.0f ||
                    sp_144[0] < 0.0f && sp_144[1] < 0.0f && sp_144[2] < 0.0f)
                {
                    continue;
                }

                s32 sp_80;
                s32 sp_7c;
                s32 sp_78;
                s32 sp_74 = 0;

                if (cM3d_IsZero(sp_144[0])) {
                    sp_74++;
                }
                if (cM3d_IsZero(sp_144[1])) {
                    sp_74++;
                }
                if (cM3d_IsZero(sp_144[2])) {
                    sp_74++;
                }
                if (sp_74 != 1) {
                    if (((sp_144[0] > 0.0f) && (sp_144[1] <= 0.0f) && (sp_144[2] <= 0.0f)) ||
                        (sp_144[0] < 0.0f && (sp_144[1] >= 0.0f) && (sp_144[2] >= 0.0f)))
                    {
                        sp_80 = 0;
                        sp_7c = 1;
                        sp_78 = 2;
                    } else if (((sp_144[1] > 0.0f) && (sp_144[0] <= 0.0f) &&
                                (sp_144[2] <= 0.0f)) ||
                               (sp_144[1] < 0.0f && (sp_144[0] >= 0.0f) &&
                                (sp_144[2] >= 0.0f)))
                    {
                        sp_80 = 1;
                        sp_7c = 0;
                        sp_78 = 2;
                    } else {
                        sp_80 = 2;
                        sp_7c = 0;
                        sp_78 = 1;
                    }
                    f32 sp_70 = sp_144[sp_80] - sp_144[sp_7c];
                    if (!cM3d_IsZero(sp_70)) {
                        f32 sp_6c = sp_144[sp_80] - sp_144[sp_78];
                        if (!cM3d_IsZero(sp_6c)) {
                            f32 sp_68 = -sp_144[sp_7c] / sp_70;
                            f32 sp_64 = -sp_144[sp_78] / sp_6c;
                            f32 cx0_60;
                            f32 cy0_5c;
                            f32 cx1_58;
                            f32 cy1_54;
                            if (sp_80 == 0) {
                                cx0_60 = sp_15c.x + sp_68 * (sp_168.x - sp_15c.x);
                                cy0_5c = sp_15c.z + sp_68 * (sp_168.z - sp_15c.z);
                                cx1_58 = sp_150.x + sp_64 * (sp_168.x - sp_150.x);
                                cy1_54 = sp_150.z + sp_64 * (sp_168.z - sp_150.z);
                            } else if (sp_80 == 1) {
                                cx0_60 = sp_168.x + sp_68 * (sp_15c.x - sp_168.x);
                                cy0_5c = sp_168.z + sp_68 * (sp_15c.z - sp_168.z);
                                cx1_58 = sp_150.x + sp_64 * (sp_15c.x - sp_150.x);
                                cy1_54 = sp_150.z + sp_64 * (sp_15c.z - sp_150.z);
                            } else {
                                cx0_60 = sp_168.x + sp_68 * (sp_150.x - sp_168.x);
                                cy0_5c = sp_168.z + sp_68 * (sp_150.z - sp_168.z);
                                cx1_58 = sp_15c.x + sp_64 * (sp_150.x - sp_15c.x);
                                cy1_54 = sp_15c.z + sp_64 * (sp_150.z - sp_15c.z);
                            }
                            cx0_60 += sp_18c.x;
                            cy0_5c += sp_18c.z;
                            cx1_58 += sp_18c.x;
                            cy1_54 += sp_18c.z;
                            f32 sp_50;
                            f32 sp_4c;
                            f32 sp_48;
                            bool sp_0f =
                                cM3d_Len2dSqPntAndSegLine(pwi->GetCx(), pwi->GetCz(), cx0_60, cy0_5c, cx1_58,
                                                          cy1_54, &sp_4c, &sp_48, &sp_50);
                            f32 sp_44 = sp_4c - pwi->GetCx();
                            f32 sp_40 = sp_48 - pwi->GetCz();
                            f32 sp_3c = pwi->GetWallRR(cir_index_8c);
                            if (sp_50 > sp_3c || sp_44 * sp_18c.x + sp_40 * sp_18c.z < 0.0f)
                            {
                                continue;
                            }

                            if (sp_0f == true) {
                                pwi->SetWallHit();
                                f32 sp_38 = sp_90 * std::sqrt(sp_50);
                                sp_38 -= 1.0f;
                                if (sp_38 < 0.0f) {
                                    sp_38 = 0.0f;
                                }

                                pwi->GetPos()->x += sp_38 * sp_98->x;
                                pwi->GetPos()->z += sp_38 * sp_98->z;

                                JUT_ASSERT(0x77e, !(fpclassify(pwi->GetPos()->x) == FP_QNAN));
                                JUT_ASSERT(0x77f, !(fpclassify(pwi->GetPos()->z) == FP_QNAN));
                                JUT_ASSERT(0x782, -INFINITY < pwi->GetPos()->x &&
                                                      pwi->GetPos()->x < INFINITY);
                                JUT_ASSERT(0x784, -INFINITY < pwi->GetPos()->z &&
                                                      pwi->GetPos()->z < INFINITY);

                                pwi->CalcMovePosWork();
                                pwi->SetWallCirHit(cir_index_8c);
                                pwi->SetWallPolyIndex(cir_index_8c, sp_a0);
                                s16 sp_16 = cM_atan2s(sp_98->x, sp_98->z);
                                pwi->SetWallAngleY(cir_index_8c, sp_16);
                                sp_10 = true;
                            } else {
                                cx0_60 -= sp_18c.x;
                                cy0_5c -= sp_18c.z;
                                cx1_58 -= sp_18c.x;
                                cy1_54 -= sp_18c.z;

                                JUT_ASSERT(0x797,
                                           pwi->GetPos()->x == pwi->GetWallCirP(cir_index_8c)->GetCx())
                                JUT_ASSERT(0x799, pwi->GetPos()->z ==
                                                      pwi->GetWallCirP(cir_index_8c)->GetCy());

                                f32 sp_34 =
                                    cM3d_Len2dSq(cx0_60, cy0_5c, pwi->GetPos()->x, pwi->GetPos()->z);
                                f32 sp_30 =
                                    cM3d_Len2dSq(cx1_58, cy1_54, pwi->GetPos()->x, pwi->GetPos()->z);
                                f32 onx_2c = -sp_98->x;
                                f32 ony_28 = -sp_98->z;

                                JUT_ASSERT(0x7a8, !(cM3d_IsZero(onx_2c) && cM3d_IsZero(ony_28)));

                                if (sp_34 < sp_30) {
                                    if (sp_34 > sp_3c) {
                                        continue;
                                    }

                                    if (fabsf(sp_34 - sp_3c) < 0.008f) {
                                        continue;
                                    }

                                    f32 sp_1c;
                                    f32 sp_18;
                                    JUT_ASSERT(0x7b3, !(fpclassify(cx0_60) == FP_QNAN));
                                    JUT_ASSERT(0x7b4, !(fpclassify(cy0_5c) == FP_QNAN));

                                    cM2d_CrossCirLin(*pwi->GetWallCirP(cir_index_8c), cx1_58,
                                                     cy1_54, onx_2c, ony_28, &sp_1c, &sp_18);

                                    pwi->GetPos()->x += (cx0_60 - sp_1c);
                                    pwi->GetPos()->z += (cy0_5c - sp_18);

                                    JUT_ASSERT(0x7bf, !(fpclassify(pwi->GetPos()->x) == FP_QNAN));
                                    JUT_ASSERT(0x7c0, !(fpclassify(pwi->GetPos()->z) == FP_QNAN));
                                    JUT_ASSERT(0x7c3, -INFINITY < pwi->GetPos()->x &&
                                                          pwi->GetPos()->x < INFINITY)
                                    JUT_ASSERT(0x7c5, -INFINITY < pwi->GetPos()->z &&
                                                          pwi->GetPos()->z < INFINITY)

                                    pwi->CalcMovePosWork();
                                    pwi->SetWallCirHit(cir_index_8c);
                                    pwi->SetWallPolyIndex(cir_index_8c, sp_a0);
                                    s16 sp_14 = cM_atan2s(sp_98->x, sp_98->z);
                                    pwi->SetWallAngleY(cir_index_8c, sp_14);
                                    sp_10 = true;
                                    pwi->SetWallHit();
                                } else {
                                    if (sp_30 > sp_3c) {
                                        break;
                                    }

                                    if (fabsf(sp_30 - sp_3c) < 0.008f) {
                                        break;
                                    }

                                    f32 sp_1c;
                                    f32 sp_18;
                                    JUT_ASSERT(0x7e2, !(fpclassify(cx1_58) == FP_QNAN));
                                    JUT_ASSERT(0x7e3, !(fpclassify(cy1_54) == FP_QNAN));

                                    cM2d_CrossCirLin(*pwi->GetWallCirP(cir_index_8c), cx1_58, cy1_54, onx_2c, ony_28, &sp_1c, &sp_18);

                                    pwi->GetPos()->x += (cx1_58 - sp_1c);
                                    pwi->GetPos()->z += (cy1_54 - sp_18);

                                    JUT_ASSERT(0x7ed, !(fpclassify(pwi->GetPos()->x) == FP_QNAN));
                                    JUT_ASSERT(0x7ed, !(fpclassify(pwi->GetPos()->z) == FP_QNAN));

                                    JUT_ASSERT(0x7f1, -INFINITY < pwi->GetPos()->x &&
                                                          pwi->GetPos()->x < INFINITY)
                                    JUT_ASSERT(0x7f1, -INFINITY < pwi->GetPos()->z &&
                                                          pwi->GetPos()->z < INFINITY)

                                    pwi->CalcMovePosWork();
                                    pwi->SetWallCirHit(cir_index_8c);
                                    pwi->SetWallPolyIndex(cir_index_8c, sp_a0);
                                    s16 sp_12 = cM_atan2s(sp_98->x, sp_98->z);
                                    pwi->SetWallAngleY(cir_index_8c, sp_12);
                                    sp_10 = true;
                                    pwi->SetWallHit();
                                }
                            }
                        }
                    }
                }
            }
        }
        sp_a4 = sp_a4->next;
    }

    return sp_10;
}

/* 800811A0-80081E18 07BAE0 0C78+00 1/0 0/0 0/0 .text            WallCorrect__8dBgWKColFP9dBgS_Acch
 */
bool dBgWKCol::WallCorrect(dBgS_Acch* param_0) {
    // NONMATCHING
}

/* 80081E18-80082184 07C758 036C+00 1/0 0/0 0/0 .text            RoofChk__8dBgWKColFP12dBgS_RoofChk
 */
bool dBgWKCol::RoofChk(dBgS_RoofChk* param_0) {
    KC_PrismData* local_94;
    dBgPc adStack_4c;

    Vec* sp40 = param_0->GetPosP();
    cXyz sp74;
    PSVECSubtract(sp40, &m_pkc_head->m_area_min_pos, &sp74);

    u32 sp3C = sp74.x;
    if ((s32)sp3C < 0) {
        return false;
    }

    if ((s32)sp3C > (s32)~m_pkc_head->m_area_x_width_mask) {
        return false;
    }

    u32 sp38 = sp74.z;
    if ((s32)sp38 < 0) {
        return false;
    }

    if ((s32)sp38 > (s32)~m_pkc_head->m_area_z_width_mask) {
        return false;
    }

    u32 sp34 = sp74.y;
    if ((int)sp34 < 0) {
        sp34 = 0;
    }
    if ((int)sp34 > (int)~m_pkc_head->m_area_y_width_mask) {
        return false;
    }

    bool sp0A = false;
    u32 sp30 = ~m_pkc_head->m_area_y_width_mask;
    do {
        u32 sp2C = (u32)m_pkc_head->m_block_data;
        u32 sp28 = m_pkc_head->m_block_width_shift;
        s32 sp24 = 4 * (((u32)sp38 >> sp28) << m_pkc_head->m_area_xy_blocks_shift |
                       ((u32)sp34 >> sp28) << m_pkc_head->m_area_x_blocks_shift |
                       (u32)sp3C >> sp28);
        while ((sp24 = (*(s32*)(sp2C + (sp24 & 0x7fffffff)))) >= 0) {
            sp2C += sp24;
            sp28--;
            sp24 = (((u32)sp38 >> sp28 & 1) << 2 |
                    ((u32)sp34 >> sp28 & 1) << 1 |
                    ((u32)sp3C >> sp28 & 1) << 0) << 2;
        }

        u16* sp20 = (u16*)(sp2C + (sp24 & 0x7fffffff));

        KC_PrismData* sp1C;
        Vec* sp18;
        Vec* sp14;
        s32 sp10;
        s32 sp0C;

        while (*++sp20 != 0) {
            sp1C = getPrismData(*sp20);
            sp18 = m_pkc_head->m_nrm_data + sp1C->fnrm_i;
            if (cBgW_CheckBRoof(sp18->y)) {
                sp14 = m_pkc_head->m_pos_data + sp1C->pos_i;

                cXyz sp5C;
                sp5C.x = sp40->x - sp14->x;
                sp5C.z = sp40->z - sp14->z;
                sp5C.y = -(sp5C.x * sp18->x + sp5C.z * sp18->z) / sp18->y;

                if (PSVECDotProduct(&sp5C, &m_pkc_head->m_nrm_data[sp1C->enrm1_i]) >
                    0.0075f)
                {
                    continue;
                }

                if (PSVECDotProduct(&sp5C,
                                    &m_pkc_head->m_nrm_data[sp1C->enrm2_i]) > 0.0075f)
                {
                    continue;
                }

                f32 dot_f30 = PSVECDotProduct(&sp5C, &m_pkc_head->m_nrm_data[sp1C->enrm3_i]);
                if (dot_f30 < -0.0075f || dot_f30 > sp1C->height + 0.0075f) {
                    continue;
                }

                cXyz sp58;
                PSVECSubtract(sp40, sp14, &sp58);
                if (PSVECDotProduct(&sp58, sp18) < 0.0f) {
                    continue;
                }

                getPolyCode(*sp20, &adStack_4c);
                cXyz sp44 = *sp18;
                if (!chkPolyThrough(&adStack_4c, param_0->GetPolyPassChk(), param_0->GetGrpPassChk(), sp44)) {
                    f32 tmp_height_kcw = sp5C.y + sp14->y;
                    if (param_0->GetNowY() > tmp_height_kcw && sp40->y < tmp_height_kcw) {
                        param_0->SetPolyIndex(*sp20);
                        param_0->SetNowY(tmp_height_kcw);
                        sp0A = true;
                        JUT_ASSERT(0xac8, fpclassify(tmp_height_kcw) != FP_QNAN);
                        JUT_ASSERT(0xacb, -FP_INFINITE < tmp_height_kcw && tmp_height_kcw < FP_INFINITE);
                        bool sp08 = true;
                        if (!(tmp_height_kcw - m_pkc_head->m_area_min_pos.y >= 0.0f)) {
                            OS_PANIC(0xacf, "Failed assertion tmp_height_kcw - m_pkc_head->m_area_min_pos.y >= 0.0f");
                            sp0C = 0;
                            if (sp0C == 0) {
                                sp08 = false;
                            }
                        }
                        sp30 = tmp_height_kcw - m_pkc_head->m_area_min_pos.y;
                    }
                }
            }
        }

        sp28 = 1 << sp28;
        sp10 = sp28 - 1;
        sp34 += sp28 - (sp34 & sp10);
    } while ((s32)sp34 <= (s32)sp30);

    return sp0A;
}

/* 80082184-800824EC 07CAC4 0368+00 1/0 0/0 0/0 .text SplGrpChk__8dBgWKColFP14dBgS_SplGrpChk */
// NONMATCHING - regalloc + missing mr
bool dBgWKCol::SplGrpChk(dBgS_SplGrpChk* param_0) {
    Vec* sp3C = &param_0->GetPosP();
    cXyz sp54;
    PSVECSubtract(sp3C, &m_pkc_head->m_area_min_pos, &sp54);

    u32 sp38 = sp54.x;
    if ((s32)sp38 < 0) {
        return false;
    }

    if ((s32)sp38 > (s32)~m_pkc_head->m_area_x_width_mask) {
        return false;
    }

    u32 sp34 = sp54.z;
    if ((s32)sp34 < 0) {
        return false;
    }

    if ((s32)sp34 > (s32)~m_pkc_head->m_area_z_width_mask) {
        return false;
    }

    u32 sp30 = sp54.y;
    if ((s32)sp30 < 0) {
        sp30 = 0;
    }

    u32 sp2C = param_0->GetRoof() - m_pkc_head->m_area_min_pos.y;
    if ((s32)sp2C > (s32)~m_pkc_head->m_area_y_width_mask) {
        sp2C = ~m_pkc_head->m_area_y_width_mask;
    }
    if ((s32)sp30 >= (s32)sp2C) {
        return false;
    }

    bool sp09 = false;
    do {
        u32 sp28 = (u32)m_pkc_head->m_block_data;
        u32 sp24 = m_pkc_head->m_block_width_shift;
        s32 sp20 = 4 * (((u32)sp34 >> sp24) << m_pkc_head->m_area_xy_blocks_shift |
                         ((u32)sp2C >> sp24) << m_pkc_head->m_area_x_blocks_shift |
                         (u32)sp38 >> sp24);
        while ((sp20 = *(s32*)(sp28 + sp20)) >= 0) {
            sp28 += sp20;
            sp24--;
            sp20 = 4 *
                (((u32)sp34 >> sp24 & 1) << 2 |
                 ((u32)sp2C >> sp24 & 1) << 1 |
                 ((u32)sp38 >> sp24 & 1) << 0);
        }

        u16* sp1C = (u16*)(sp28 + (sp20 & 0x7fffffff));
        while (*++sp1C != 0) {
            KC_PrismData* sp18 = getPrismData(*sp1C);
            Vec* sp14 = m_pkc_head->m_nrm_data + sp18->fnrm_i;
            if (!(sp14->y <= 0.0f) && !cM3d_IsZero(sp14->y)) {
                dBgPc sp64;
                getPolyCode(*sp1C, &sp64);
                cXyz sp4C = *sp14;
                if (!chkPolyThrough(&sp64, param_0->GetPolyPassChk(),
                                    param_0->GetGrpPassChk(), sp4C))
                {
                    Vec* sp10 = m_pkc_head->m_pos_data + sp18->pos_i;
                    cXyz sp40;
                    sp40.x = sp3C->x - sp10->x;
                    sp40.z = sp3C->z - sp10->z;
                    sp40.y = -(sp40.x * sp14->x + sp40.z * sp14->z) / sp14->y;
                    if (PSVECDotProduct(&sp40, &m_pkc_head->m_nrm_data[sp18->enrm1_i]) >
                        0.0075f)
                    {
                        continue;
                    }

                    if (PSVECDotProduct(&sp40, &m_pkc_head->m_nrm_data[sp18->enrm2_i]) >
                            0.0075f)
                    {
                        continue;
                    }

                    f32 var_f30 = PSVECDotProduct(&sp40, &m_pkc_head->m_nrm_data[sp18->enrm3_i]);
                    if (var_f30 < -0.0075f || var_f30 > sp18->height + 0.0075f) {
                        continue;
                    }

                    f32 tmp_height_kcw = sp40.y + sp10->y;
                    if (param_0->GetHeight() < tmp_height_kcw && sp3C->y < tmp_height_kcw &&
                        param_0->GetRoof() > tmp_height_kcw)
                    {
                        param_0->SetHeight(tmp_height_kcw);
                        param_0->SetPolyIndex(*sp1C);

                        sp09 = true;

                        JUT_ASSERT(0xb73, fpclassify(tmp_height_kcw) != FP_QNAN);
                        JUT_ASSERT(0xb76,
                                   -FP_INFINITE < tmp_height_kcw && tmp_height_kcw < FP_INFINITE);
                    }
                }
            }
        }

        //sp28 = 1 << sp28;
        //sp10 = sp28 - 1;
        //sp34 += sp28 - (sp34 & sp10);
        sp24 = 1 << sp24;
        u32 sp0C = sp24 - 1;
        sp2C = sp2C & ~sp0C;
        sp2C--;
    } while ((s32)sp2C >= (s32)sp30);

    return sp09;
}

/* 800824EC-800829AC 07CE2C 04C0+00 1/0 0/0 0/0 .text            SphChk__8dBgWKColFP11dBgS_SphChkPv
 */
bool dBgWKCol::SphChk(dBgS_SphChk* param_0, void* param_1) {
    // NONMATCHING
    static Vec vtx_tbl[3];
}

/* 800829AC-800829F0 07D2EC 0044+00 1/0 0/0 0/0 .text            GetTopUnder__8dBgWKColCFPfPf */
void dBgWKCol::GetTopUnder(f32* param_0, f32* param_1) const {
    *param_1 = m_pkc_head->m_area_min_pos.y;
    *param_0 = *param_1 + (f32)~m_pkc_head->m_area_y_width_mask;
}

/* 800829F0-80082A20 07D330 0030+00 1/0 0/0 0/0 .text
 * GetGrpRoomIndex__8dBgWKColCFRC13cBgS_PolyInfo                */
s32 dBgWKCol::GetGrpRoomIndex(const cBgS_PolyInfo& poly) const {
    s32 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getRoom();
}

/* 80082A20-80082A50 07D360 0030+00 1/0 0/0 0/0 .text GetExitId__8dBgWKColFRC13cBgS_PolyInfo */
s32 dBgWKCol::GetExitId(const cBgS_PolyInfo& poly) {
    s32 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getExit();
}

/* 80082A50-80082A80 07D390 0030+00 1/0 0/0 0/0 .text GetPolyColor__8dBgWKColFRC13cBgS_PolyInfo */
s32 dBgWKCol::GetPolyColor(const cBgS_PolyInfo& poly) {
    s32 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getPolyCol();
}

/* 80082A80-80082AB0 07D3C0 0030+00 1/0 0/0 0/0 .text GetHorseNoEntry__8dBgWKColFRC13cBgS_PolyInfo
 */
BOOL dBgWKCol::GetHorseNoEntry(const cBgS_PolyInfo& poly) {
    dBgPc bgpc;

    u32 poly_index = poly.GetPolyIndex();
    getPolyCode(poly_index, &bgpc);
    return bgpc.getHorseNoEntry() != 0;
}

/* 80082AB0-80082AE0 07D3F0 0030+00 1/0 0/0 0/0 .text GetSpecialCode__8dBgWKColFRC13cBgS_PolyInfo
 */
int dBgWKCol::GetSpecialCode(const cBgS_PolyInfo& poly) {
    return GetSpecialCode(poly.GetPolyIndex());
}

/* 80082AE0-80082B0C 07D420 002C+00 1/0 0/0 0/0 .text            GetSpecialCode__8dBgWKColFi */
int dBgWKCol::GetSpecialCode(int poly_index) {
    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);

    return bgpc.getSpl();
}

/* 80082B0C-80082B3C 07D44C 0030+00 1/0 0/0 0/0 .text GetMagnetCode__8dBgWKColFRC13cBgS_PolyInfo
 */
int dBgWKCol::GetMagnetCode(const cBgS_PolyInfo& poly) {
    s32 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getMagnet();
}

/* 80082B3C-80082B6C 07D47C 0030+00 1/0 0/0 0/0 .text
 * GetMonkeyBarsCode__8dBgWKColFRC13cBgS_PolyInfo               */
int dBgWKCol::GetMonkeyBarsCode(const cBgS_PolyInfo& poly) {
    s32 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getMonkeyBars();
}

/* 80082B6C-80082B98 07D4AC 002C+00 1/0 0/0 0/0 .text            GetPolyObjThrough__8dBgWKColFi */
u32 dBgWKCol::GetPolyObjThrough(int poly_index) {
    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);

    return bgpc.getObjThrough();
}

/* 80082B98-80082BC4 07D4D8 002C+00 1/0 0/0 0/0 .text            GetPolyCamThrough__8dBgWKColFi */
u32 dBgWKCol::GetPolyCamThrough(int poly_index) {
    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);

    return bgpc.getCamThrough();
}

/* 80082BC4-80082BF0 07D504 002C+00 1/0 0/0 0/0 .text            GetPolyLinkThrough__8dBgWKColFi */
u32 dBgWKCol::GetPolyLinkThrough(int poly_index) {
    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);

    return bgpc.getLinkThrough();
}

/* 80082BF0-80082C1C 07D530 002C+00 1/0 0/0 0/0 .text            GetPolyArrowThrough__8dBgWKColFi */
u32 dBgWKCol::GetPolyArrowThrough(int poly_index) {
    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);

    return bgpc.getArrowThrough();
}

/* 80082C1C-80082C48 07D55C 002C+00 1/0 0/0 0/0 .text            GetPolyHSStick__8dBgWKColFi */
u32 dBgWKCol::GetPolyHSStick(int poly_index) {
    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);

    return bgpc.getHSStick();
}

/* 80082C48-80082C74 07D588 002C+00 1/0 0/0 0/0 .text GetPolyBoomerangThrough__8dBgWKColFi */
u32 dBgWKCol::GetPolyBoomerangThrough(int poly_index) {
    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);

    return bgpc.getBoomerangThrough();
}

/* 80082C74-80082CA0 07D5B4 002C+00 1/0 0/0 0/0 .text            GetPolyRopeThrough__8dBgWKColFi */
u32 dBgWKCol::GetPolyRopeThrough(int poly_index) {
    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);

    return bgpc.getRopeThrough();
}

/* 80082CA0-80082CCC 07D5E0 002C+00 1/0 0/0 0/0 .text            GetPolyBombThrough__8dBgWKColFi */
u32 dBgWKCol::GetPolyBombThrough(int poly_index) {
    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);

    return bgpc.getBombThrough();
}

/* 80082CCC-80082CF8 07D60C 002C+00 1/0 0/0 0/0 .text            GetUnderwaterRoofCode__8dBgWKColFi
 */
u32 dBgWKCol::GetUnderwaterRoofCode(int poly_index) {
    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);

    return bgpc.getUnderwaterRoof();
}

/* 80082CF8-80082D24 07D638 002C+00 1/0 0/0 0/0 .text            GetShdwThrough__8dBgWKColFi */
bool dBgWKCol::GetShdwThrough(int poly_index) {
    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);

    return bgpc.getShdwThrough();
}

/* 80082D24-80082D54 07D664 0030+00 1/0 0/0 0/0 .text GetLinkNo__8dBgWKColFRC13cBgS_PolyInfo */
int dBgWKCol::GetLinkNo(const cBgS_PolyInfo& poly) {
    s32 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getLinkNo();
}

/* 80082D54-80082D84 07D694 0030+00 1/0 0/0 0/0 .text GetWallCode__8dBgWKColFRC13cBgS_PolyInfo */
s32 dBgWKCol::GetWallCode(const cBgS_PolyInfo& poly) {
    s32 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getWallCode();
}

/* 80082D84-80082DB4 07D6C4 0030+00 1/0 0/0 0/0 .text GetPolyAtt0__8dBgWKColFRC13cBgS_PolyInfo */
int dBgWKCol::GetPolyAtt0(const cBgS_PolyInfo& poly) {
    s32 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getAtt0Code();
}

/* 80082DB4-80082DE4 07D6F4 0030+00 1/0 0/0 0/0 .text GetPolyAtt1__8dBgWKColFRC13cBgS_PolyInfo */
int dBgWKCol::GetPolyAtt1(const cBgS_PolyInfo& poly) {
    s32 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getAtt1Code();
}

/* 80082DE4-80082E14 07D724 0030+00 1/0 0/0 0/0 .text GetGroundCode__8dBgWKColFRC13cBgS_PolyInfo
 */
int dBgWKCol::GetGroundCode(const cBgS_PolyInfo& poly) {
    s32 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getGroundCode();
}

/* 80082E14-80082E40 07D754 002C+00 1/0 0/0 0/0 .text            GetIronBallThrough__8dBgWKColFi */
u32 dBgWKCol::GetIronBallThrough(int poly_index) {
    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);

    return bgpc.getIronBallThrough();
}

/* 80082E40-80082E6C 07D780 002C+00 1/0 0/0 0/0 .text            GetAttackThrough__8dBgWKColFi */
u32 dBgWKCol::GetAttackThrough(int poly_index) {
    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);

    return bgpc.getAttackThrough();
}

/* 80082E6C-80082E9C 07D7AC 0030+00 1/0 0/0 0/0 .text GetCamMoveBG__8dBgWKColFRC13cBgS_PolyInfo */
s32 dBgWKCol::GetCamMoveBG(const cBgS_PolyInfo& poly) {
    s32 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getCamMoveBG();
}

/* 80082E9C-80082ECC 07D7DC 0030+00 1/0 0/0 0/0 .text GetRoomCamId__8dBgWKColFRC13cBgS_PolyInfo */
s32 dBgWKCol::GetRoomCamId(const cBgS_PolyInfo& poly) {
    s32 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getRoomCam();
}

/* 80082ECC-80082EFC 07D80C 0030+00 1/0 0/0 0/0 .text GetRoomPathId__8dBgWKColFRC13cBgS_PolyInfo
 */
s32 dBgWKCol::GetRoomPathId(const cBgS_PolyInfo& poly) {
    s32 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getRoomPath();
}

/* 80082EFC-80082F2C 07D83C 0030+00 1/0 0/0 0/0 .text
 * GetRoomPathPntNo__8dBgWKColFRC13cBgS_PolyInfo                */
s32 dBgWKCol::GetRoomPathPntNo(const cBgS_PolyInfo& poly) {
    s32 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getRoomPathPnt();
}

/* 80082F2C-80082F5C 07D86C 0030+00 1/0 0/0 0/0 .text
 * GetPolyGrpRoomInfId__8dBgWKColFRC13cBgS_PolyInfo             */
u8 dBgWKCol::GetPolyGrpRoomInfId(const cBgS_PolyInfo& poly) {
    s32 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getRoomInf();
}

/* 80082F5C-80082F8C 07D89C 0030+00 1/0 0/0 0/0 .text GetGrpSoundId__8dBgWKColFRC13cBgS_PolyInfo
 */
int dBgWKCol::GetGrpSoundId(const cBgS_PolyInfo& poly) {
    s32 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getSnd();
}

/* 80082F8C-80082F90 07D8CC 0004+00 1/0 0/0 0/0 .text
 * CrrPos__8dBgWKColFRC13cBgS_PolyInfoPvbP4cXyzP5csXyzP5csXyz   */
void dBgWKCol::CrrPos(const cBgS_PolyInfo& param_0, void* param_1, bool param_2, cXyz* param_3,
                      csXyz* param_4, csXyz* param_5) {}

/* 80082F90-80082F94 07D8D0 0004+00 1/0 0/0 0/0 .text
 * TransPos__8dBgWKColFRC13cBgS_PolyInfoPvbP4cXyzP5csXyzP5csXyz */
void dBgWKCol::TransPos(const cBgS_PolyInfo& param_0, void* param_1, bool param_2, cXyz* param_3,
                        csXyz* param_4, csXyz* param_5) {}

/* 80082F94-80082F98 07D8D4 0004+00 1/0 0/0 0/0 .text
 * MatrixCrrPos__8dBgWKColFRC13cBgS_PolyInfoPvbP4cXyzP5csXyzP5csXyz */
void dBgWKCol::MatrixCrrPos(const cBgS_PolyInfo& param_0, void* param_1, bool param_2,
                            cXyz* param_3, csXyz* param_4, csXyz* param_5) {}
