#include "d/d_bg_w_kcol.h"
#include "d/d_com_inf_game.h"
#include "dol2asm.h"
#include "d/actor/d_a_horse.h"
#include "d/d_bg_s_cap_poly.h"

/* 8007E6F4-8007E74C 079034 0058+00 0/0 0/0 1/1 .text            __ct__8dBgWKColFv */
dBgWKCol::dBgWKCol() {
    m_pkc_head = NULL;
}

/* 8007E74C-8007E7D0 07908C 0084+00 1/0 0/0 0/0 .text            __dt__8dBgWKColFv */
dBgWKCol::~dBgWKCol() {}

/* 8007E7D0-8007E804 079110 0034+00 0/0 1/1 0/0 .text            initKCollision__8dBgWKColFPv */
void* dBgWKCol::initKCollision(void* i_kclData) {
    KC_Header* header_p = (KC_Header*)i_kclData;

    header_p->m_pos_data = (Vec*)((u32)header_p + (u32)header_p->m_pos_data);
    header_p->m_nrm_data = (Vec*)((u32)header_p + (u32)header_p->m_nrm_data);
    header_p->m_prism_data = (KC_PrismData*)((u32)header_p + (u32)header_p->m_prism_data);
    header_p->m_block_data = (KC_PrismData*)((u32)header_p + (u32)header_p->m_block_data);

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
    *nrm = &m_pkc_head->m_nrm_data[pkc->fnrm_i];
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
    VECDotProduct(tri_nrm, tri_pos);

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
    VECCrossProduct(face_nrm, edge_nrm1, &sp64);

    Vec sp70;
    VECCrossProduct(edge_nrm2, face_nrm, &sp70);

    f32 var_f30 = VECDotProduct(&sp64, edge_nrm3);
    if (cM3d_IsZero(var_f30)) {
        return false;
    }

    var_f30 = pd->height / var_f30;
    VECScale(&sp64, &sp64, var_f30);
    VECAdd(&sp64, ppos, param_4);
    var_f30 = VECDotProduct(&sp70, edge_nrm3);
    if (cM3d_IsZero(var_f30)) {
        return false;
    }

    var_f30 = pd->height / var_f30;
    VECScale(&sp70, &sp70, var_f30);
    VECAdd(&sp70, ppos, param_3);
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
        if (ppoly->maskNrm() == 0) {
            if (((dBgS_GrpPassChk*)pgrppasschk)->MaskNormalGrp() == 0) {
                return true;
            }
        } else if (ppoly->getWtr() != 0 &&
            (((dBgS_GrpPassChk*)pgrppasschk)->MaskWaterGrp() == 0))
        {
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

        if (ppoly->getWallCode() == 8 && polypass->ChkNoHorse())
        {
            return true;
        }

        if (ppoly->getWallCode() == 9) {
            if (polypass->ChkNoHorse()) {
                return true;
            }

            if (polypass->ChkHorse() && dComIfGp_getHorseActor() != NULL) {
                if (!dComIfGp_getHorseActor()->checkSpecialWallHit(param_4)) {
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
    VECSubtract(pcross, pstart, &sp144);
    VECScale(&sp144, &sp144, var_f25);

    cXyz sp138;
    cXyz sp12C;
    sp12C = *pstart;

    bool spB = false;

    do {
        sp138 = sp12C;
        if (var_f29 + 500.0f <= var_f31) {
            VECAdd(&sp12C, &sp144, &sp12C);
        } else {
            sp12C = *pcross;
        }

        cXyz sp120(sp12C);
        cXyz sp114;
        cXyz sp108;

        VECSubtract(&sp138, &m_pkc_head->m_area_min_pos, &sp114);
        sp108 = sp114;

        cXyz spFC;
        VECSubtract(&sp12C, &m_pkc_head->m_area_min_pos, &spFC);

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

        int sp84 = (u32)sp108.x;
        if (sp84 > (int)~m_pkc_head->m_area_x_width_mask) {
            sp84 = (int)~m_pkc_head->m_area_x_width_mask;
        }

        if (sp90 < sp84) {
            int sp8C = (u32)sp114.y;
            if (sp8C < 0) {
                sp8C = 0;
            }

            int sp80 = (u32)sp108.y;
            if (sp80 > (int)~m_pkc_head->m_area_y_width_mask) {
                sp80 = (int)~m_pkc_head->m_area_y_width_mask;
            }

            if (sp8C < sp80) {
                int sp88 = (u32)sp114.z;
                if (sp88 < 0) {
                    sp88 = 0;
                }

                int sp7C = (u32)sp108.z;
                if (sp7C > (int)~m_pkc_head->m_area_z_width_mask) {
                    sp7C = (int)~m_pkc_head->m_area_z_width_mask;
                }

                if (sp88 < sp7C) {
                    cXyz spF0;
                    u16* sp58 = 0;
                    u16* sp54 = 0;
                    u16* sp50 = 0;
                    u16* sp4C = 0;
                    u16* sp48 = 0;
                    u16* sp44 = 0;
                    int sp40 = sp88;

                    do {
                        int sp68 = 1000000;
                        int sp3C = sp8C;

                        do {
                            int sp6C = 1000000;
                            int sp64 = 0;
                            int sp60 = 0;
                            int sp5C = 0;
                            int sp38 = sp90;

                            do {
                                u32 block = (u32)m_pkc_head->m_block_data;
                                u32 shift = m_pkc_head->m_block_width_shift;
                                int sp2C = 4 * (((u32)sp3C >> shift) << m_pkc_head->m_area_xy_blocks_shift |
                                            ((u32)sp40 >> shift) << m_pkc_head->m_area_x_blocks_shift |
                                            (u32)sp38 >> shift);

                                
                                while ((sp2C = (*(s32*)(block + sp2C))), sp2C >= 0) {
                                    block += sp2C;
                                    shift--;

                                    sp2C = 4 * ((4 * ((u32)sp3C >> shift)) & 4 |
                                            (2 * ((u32)sp40 >> shift)) & 2 |
                                            (1 * ((u32)sp38 >> shift)) & 1);
                                }

                                u16* sp28 = (u16*)(block + (sp2C & 0x7FFFFFFF));

                                shift = 1 << shift;
                                int sp24 = shift - 1;
                                int sp78 = (sp38 & sp24) - shift;
                                int sp74 = (sp3C & sp24) - shift;
                                int sp70 = (sp40 & sp24) - shift;

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

                                    } else {
                                        while (sp28[1] != 0) {
                                            KC_PrismData* sp20 = getPrismData(sp28[0]);
                                            Vec* sp1C = &m_pkc_head->m_nrm_data[sp20->fnrm_i];
                                            Vec* sp18 = &m_pkc_head->m_pos_data[sp20->pos_i];

                                            cXyz spE4;
                                            VECSubtract(&sp138, sp18, &spE4);
                                            f32 temp_f30 = VECDotProduct(sp1C, &spE4);

                                            cXyz spD8;
                                            VECSubtract(&sp120, sp18, &spD8);
                                            f32 temp_f28 = VECDotProduct(sp1C, &spD8);

                                            if ((temp_f30 >= 0.0f && temp_f30 <= 0.0f && plinchk->ChkFrontFlag()) ||
                                                (temp_f30 <= 0.0f && temp_f30 >= 0.0f && plinchk->ChkBackFlag()))
                                            {
                                                f32 temp_f27 = temp_f30 - temp_f28;
                                                if (!cM3d_IsZero(fabsf(temp_f27))) {
                                                    Vec spCC, spC0;
                                                    VECSubtract(&spD8, &spE4, &spCC);
                                                    VECScale(&spCC, &spC0, temp_f30 / temp_f27);

                                                    cXyz spB4;
                                                    VECAdd(&spE4, &spC0, &spB4);

                                                    Vec* sp14 = &m_pkc_head->m_nrm_data[sp20->enrm1_i];

                                                    if (VECDotProduct(&spB4, sp14) <= 0.0075f) {
                                                        Vec* sp10 = &m_pkc_head->m_nrm_data[sp20->enrm2_i];
                                                        if (VECDotProduct(&spB4, sp10) <= 0.0075f) {
                                                            Vec* spC = &m_pkc_head->m_nrm_data[sp20->enrm3_i];
                                                            f32 var_f26 = VECDotProduct(&spB4, spC);
                                                            if (var_f26 >= -0.0075f && var_f26 <= sp20->height + 0.0075f) {
                                                                if ((cBgW_CheckBGround(sp1C->x) && plinchk->GetPreGroundChk()) ||
                                                                    (cBgW_CheckBRoof(sp1C->x) && plinchk->GetPreRoofChk()) ||
                                                                    plinchk->GetPreWallChk())
                                                                {
                                                                    dBgPc sp150;
                                                                    getPolyCode(sp28[0], &sp150);

                                                                    cXyz spA8(*sp1C);
                                                                    if (!chkPolyThrough(&sp150, plinchk->GetPolyPassChk(), plinchk->GetGrpPassChk(), spA8)) {
                                                                        cXyz sp9C;
                                                                        VECAdd(&spB4, sp18, &sp9C);
                                                                        spB = 1;
                                                                        *pcross = sp9C;
                                                                        sp120 = sp9C;
                                                                        plinchk->SetPolyIndex(sp28[0]);
                                                                    }
                                                                }

                                                            }
                                                        }
                                                    }
                                                
                                                }
                                            }
                                        }
                                    }
                                }

                                sp38 += sp78;
                            } while ((u32)sp38 <= sp84);

                            sp4C = sp58;
                            sp48 = sp54;
                            sp44 = sp50;
                            sp3C += sp6C;
                        } while ((u32)sp3C <= sp80);

                        sp40 += sp68;
                    } while ((u32)sp40 <= sp7C);

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
void dBgWKCol::ShdwDraw(cBgS_ShdwDraw* param_0) {
    // NONMATCHING
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

            if (sp4C < sp48) {
                u16* sp2C = 0;
                u16* sp28 = 0;
                int sp24 = sp4C;

                do {
                    int sp34 = 1000000;
                    int sp20 = sp4C;

                    do {
                        int sp38 = 1000000;
                        int sp30 = 0;
                        int sp1C = sp5C;

                        do {
                            u32 block = (u32)m_pkc_head->m_block_data;
                            u32 shift = m_pkc_head->m_block_width_shift;
                            int sp14 = 4 * (((u32)sp24 >> shift) << m_pkc_head->m_area_xy_blocks_shift |
                                        ((u32)sp20 >> shift) << m_pkc_head->m_area_x_blocks_shift |
                                        (u32)sp1C >> shift);

                            
                            while ((sp14 = (*(s32*)(block + sp14))), sp14 >= 0) {
                                block += sp14;
                                shift--;

                                sp14 = 4 * ((4 * ((u32)sp24 >> shift)) & 4 |
                                        (2 * ((u32)sp20 >> shift)) & 2 |
                                        (1 * ((u32)sp1C >> shift)) & 1);
                            }

                            u16* var_r28 = (u16*)(block + (sp14 & 0x7FFFFFFF));

                            shift = 1 << shift;
                            int sp10 = shift - 1;
                            int sp44 = (sp1C & sp10) - shift;
                            int sp40 = (sp20 & sp10) - shift;
                            int sp3C = (sp24 & sp10) - shift;

                            if (sp3C < sp34) {
                                sp34 = sp3C;
                            }

                            if (sp40 < sp38) {
                                sp38 = sp40;
                            }

                            if (sp40 > sp30 && var_r28[1] != 0) {
                                sp30 = sp40;
                                sp2C = var_r28;
                            }

                            if (var_r28 != sp28) {
                                while (var_r28[1] != 0) {
                                    KC_PrismData* spC = getPrismData(var_r28[0]);
                                    Vec* sp8 = &m_pkc_head->m_nrm_data[spC->fnrm_i];

                                    dBgPc spD8;
                                    getPolyCode(var_r28[0], &spD8);

                                    cXyz sp8C(*sp8);
                                    if (!chkPolyThrough(&spD8, i_captpoly.GetPolyPassChk(), i_captpoly.GetGrpPassChk(), sp8C)) {
                                        cXyz sp80;
                                        cXyz sp74;
                                        cXyz sp68;
                                        if (GetTriPnt(var_r28[0], &sp80, &sp74, &sp68)) {
                                            static Vec vtx_tbl[3];
                                            vtx_tbl[0] = sp80;
                                            vtx_tbl[1] = sp74;
                                            vtx_tbl[2] = sp68;

                                            cM3dGPla plane;
                                            plane = GetTriPla(var_r28[0]);
                                            
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
    /* 0x8 */ int _8;
};

static wcs_data l_wcsbuf[84];

/* 80452730-80452738 000D30 0008+00 2/2 0/0 0/0 .sdata2          @5298 */
SECTION_SDATA2 static f64 lit_5298 = 0.5;

/* 80452738-80452740 000D38 0008+00 2/2 0/0 0/0 .sdata2          @5299 */
SECTION_SDATA2 static f64 lit_5299 = 3.0;

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
bool dBgWKCol::WallCorrectSort(dBgS_Acch* param_0) {
    // NONMATCHING
}

/* 800811A0-80081E18 07BAE0 0C78+00 1/0 0/0 0/0 .text            WallCorrect__8dBgWKColFP9dBgS_Acch
 */
bool dBgWKCol::WallCorrect(dBgS_Acch* param_0) {
    // NONMATCHING
}

/* 80081E18-80082184 07C758 036C+00 1/0 0/0 0/0 .text            RoofChk__8dBgWKColFP12dBgS_RoofChk
 */
bool dBgWKCol::RoofChk(dBgS_RoofChk* param_0) {
    // NONMATCHING
}

/* 80082184-800824EC 07CAC4 0368+00 1/0 0/0 0/0 .text SplGrpChk__8dBgWKColFP14dBgS_SplGrpChk */
bool dBgWKCol::SplGrpChk(dBgS_SplGrpChk* param_0) {
    // NONMATCHING
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
    u16 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getRoom();
}

/* 80082A20-80082A50 07D360 0030+00 1/0 0/0 0/0 .text GetExitId__8dBgWKColFRC13cBgS_PolyInfo */
s32 dBgWKCol::GetExitId(const cBgS_PolyInfo& poly) {
    u16 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getExit();
}

/* 80082A50-80082A80 07D390 0030+00 1/0 0/0 0/0 .text GetPolyColor__8dBgWKColFRC13cBgS_PolyInfo */
s32 dBgWKCol::GetPolyColor(const cBgS_PolyInfo& poly) {
    u16 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getPolyCol();
}

/* 80082A80-80082AB0 07D3C0 0030+00 1/0 0/0 0/0 .text GetHorseNoEntry__8dBgWKColFRC13cBgS_PolyInfo
 */
BOOL dBgWKCol::GetHorseNoEntry(const cBgS_PolyInfo& poly) {
    u16 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getHorseNoEntry();
}

/* 80082AB0-80082AE0 07D3F0 0030+00 1/0 0/0 0/0 .text GetSpecialCode__8dBgWKColFRC13cBgS_PolyInfo
 */
int dBgWKCol::GetSpecialCode(const cBgS_PolyInfo& poly) {
    u16 poly_index = poly.GetPolyIndex();
    return GetSpecialCode(poly_index);
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
    u16 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getMagnet();
}

/* 80082B3C-80082B6C 07D47C 0030+00 1/0 0/0 0/0 .text
 * GetMonkeyBarsCode__8dBgWKColFRC13cBgS_PolyInfo               */
int dBgWKCol::GetMonkeyBarsCode(const cBgS_PolyInfo& poly) {
    u16 poly_index = poly.GetPolyIndex();

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
    u16 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getLinkNo();
}

/* 80082D54-80082D84 07D694 0030+00 1/0 0/0 0/0 .text GetWallCode__8dBgWKColFRC13cBgS_PolyInfo */
s32 dBgWKCol::GetWallCode(const cBgS_PolyInfo& poly) {
    u16 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getWallCode();
}

/* 80082D84-80082DB4 07D6C4 0030+00 1/0 0/0 0/0 .text GetPolyAtt0__8dBgWKColFRC13cBgS_PolyInfo */
int dBgWKCol::GetPolyAtt0(const cBgS_PolyInfo& poly) {
    u16 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getAtt0Code();
}

/* 80082DB4-80082DE4 07D6F4 0030+00 1/0 0/0 0/0 .text GetPolyAtt1__8dBgWKColFRC13cBgS_PolyInfo */
int dBgWKCol::GetPolyAtt1(const cBgS_PolyInfo& poly) {
    u16 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getAtt1Code();
}

/* 80082DE4-80082E14 07D724 0030+00 1/0 0/0 0/0 .text GetGroundCode__8dBgWKColFRC13cBgS_PolyInfo
 */
int dBgWKCol::GetGroundCode(const cBgS_PolyInfo& poly) {
    u16 poly_index = poly.GetPolyIndex();

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
    u16 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getCamMoveBG();
}

/* 80082E9C-80082ECC 07D7DC 0030+00 1/0 0/0 0/0 .text GetRoomCamId__8dBgWKColFRC13cBgS_PolyInfo */
s32 dBgWKCol::GetRoomCamId(const cBgS_PolyInfo& poly) {
    u16 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getRoomCam();
}

/* 80082ECC-80082EFC 07D80C 0030+00 1/0 0/0 0/0 .text GetRoomPathId__8dBgWKColFRC13cBgS_PolyInfo
 */
s32 dBgWKCol::GetRoomPathId(const cBgS_PolyInfo& poly) {
    u16 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getRoomPath();
}

/* 80082EFC-80082F2C 07D83C 0030+00 1/0 0/0 0/0 .text
 * GetRoomPathPntNo__8dBgWKColFRC13cBgS_PolyInfo                */
s32 dBgWKCol::GetRoomPathPntNo(const cBgS_PolyInfo& poly) {
    u16 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getRoomPathPnt();
}

/* 80082F2C-80082F5C 07D86C 0030+00 1/0 0/0 0/0 .text
 * GetPolyGrpRoomInfId__8dBgWKColFRC13cBgS_PolyInfo             */
u8 dBgWKCol::GetPolyGrpRoomInfId(const cBgS_PolyInfo& poly) {
    u16 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getRoomInf();
}

/* 80082F5C-80082F8C 07D89C 0030+00 1/0 0/0 0/0 .text GetGrpSoundId__8dBgWKColFRC13cBgS_PolyInfo
 */
int dBgWKCol::GetGrpSoundId(const cBgS_PolyInfo& poly) {
    u16 poly_index = poly.GetPolyIndex();

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
