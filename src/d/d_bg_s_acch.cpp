/**
 * d_bg_s_acch.cpp
 * BG collision Actor Check
 */

#include "d/dolzel.h"

#include "d/actor/d_a_player.h"
#include "d/d_bg_s.h"
#include "d/d_bg_s_acch.h"
#include "d/d_com_inf_game.h"
#include "global.h"

/* 80075EAC-80075F14 0707EC 0068+00 0/0 4/4 336/336 .text            __ct__12dBgS_AcchCirFv */
dBgS_AcchCir::dBgS_AcchCir() {
    m_flags = 0;
    m_wall_rr = 0.0f;
    field_0x2c = 0.0f;
    m_wall_h = 0.0f;
    m_wall_r = 0.0f;
    m_wall_angle_y = 0;
    m_wall_h_direct = 0.0f;
}

/* 80075F14-80075F40 070854 002C+00 1/1 0/0 0/0 .text            ClrWallHit__12dBgS_AcchCirFv */
void dBgS_AcchCir::ClrWallHit() {
    m_flags &= ~WALL_HIT;
    ClearPi();
}

/* 80075F40-80075F48 070880 0008+00 1/1 2/2 109/109 .text            SetWallR__12dBgS_AcchCirFf */
void dBgS_AcchCir::SetWallR(f32 i_wall_r) {
    m_wall_r = i_wall_r;
}

/* 80075F48-80075F58 070888 0010+00 1/1 0/0 0/0 .text            CalcWallRR__12dBgS_AcchCirFv */
void dBgS_AcchCir::CalcWallRR() {
    m_wall_rr = m_wall_r * m_wall_r;
}

/* 80075F58-80075F80 070898 0028+00 0/0 3/3 272/272 .text            SetWall__12dBgS_AcchCirFff */
void dBgS_AcchCir::SetWall(f32 i_wall_h, f32 i_wall_r) {
    SetWallH(i_wall_h);
    SetWallR(i_wall_r);
}

/* 80075F80-80075F94 0708C0 0014+00 1/1 0/0 1/1 .text            SetWallHDirect__12dBgS_AcchCirFf */
void dBgS_AcchCir::SetWallHDirect(f32 i_h_direct) {
    m_flags |= WALL_H_DIRECT;
    m_wall_h_direct = i_h_direct;
}

/* 80075F94-800760A0 0708D4 010C+00 3/2 6/6 468/468 .text            __dt__9dBgS_AcchFv */
dBgS_Acch::~dBgS_Acch() {}

/* 800760A0-800761CC 0709E0 012C+00 0/0 4/4 338/338 .text            __ct__9dBgS_AcchFv */
dBgS_Acch::dBgS_Acch() {
    SetPolyPassChk(GetPolyPassChkInfo());
    SetGrpPassChk(GetGrpPassChkInfo());

    m_flags = 0;
    SetRoofNone();

    pm_pos = NULL;
    pm_old_pos = NULL;
    pm_speed = NULL;
    m_ground_h = -1000000000.0f;
    field_0x90 = 0.0f;
    m_gnd_chk_offset = 60.0f;
    field_0x94 = 0.0f;
    field_0xb4 = 0;
    field_0xb8 = 0.0f;
    field_0xbc = 0.0f;

    m_tbl_size = 0;
    pm_acch_cir = NULL;

    m_roof_height = 1000000000.0f;
    m_roof_crr_height = 0.0f;
    field_0xcc = 0.0f;

    m_wtr_mode = 1;
    m_wtr_chk_offset = 1000.0f;

    pm_angle = NULL;
    pm_shape_angle = NULL;
    m_my_ac = NULL;
    pm_out_poly_info = NULL;
    field_0xd8 = -1000000000.0f;
}

/* 800761CC-80076248 070B0C 007C+00 1/1 0/0 0/0 .text            Init__9dBgS_AcchFv */
void dBgS_Acch::Init() {
    ClrWallHit();
    for (int i = 0; i < m_tbl_size; i++) {
        pm_acch_cir[i].ClrWallHit();
        pm_acch_cir[i].ClrWallHDirect();
    }
}

/* 80076248-80076288 070B88 0040+00 0/0 2/2 314/314 .text
 * Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz */
void dBgS_Acch::Set(cXyz* i_pos, cXyz* i_old_pos, fopAc_ac_c* i_actor, int i_tbl_size,
                    dBgS_AcchCir* i_acchcir, cXyz* i_speed, csXyz* i_angle, csXyz* i_shape_angle) {
    pm_pos = i_pos;
    pm_old_pos = i_old_pos;

    JUT_ASSERT(246, pm_pos != 0);
    JUT_ASSERT(247, pm_old_pos != 0);

    m_my_ac = i_actor;
    fpc_ProcID id = fopAcM_GetID(i_actor);
    SetActorPid(id);
    pm_speed = i_speed;
    m_tbl_size = i_tbl_size;
    pm_acch_cir = i_acchcir;
    pm_angle = i_angle;
    pm_shape_angle = i_shape_angle;
}

/* 80076288-800762D8 070BC8 0050+00 0/0 1/1 7/7 .text
 * Set__9dBgS_AcchFP10fopAc_ac_ciP12dBgS_AcchCir                */
void dBgS_Acch::Set(fopAc_ac_c* i_actor, int i_tbl_size, dBgS_AcchCir* i_acchcir) {
    m_tbl_size = i_tbl_size;
    pm_acch_cir = i_acchcir;
    m_my_ac = i_actor;

    SetActorPid(fopAcM_GetID(i_actor));
    pm_pos = fopAcM_GetPosition_p(i_actor);
    pm_old_pos = fopAcM_GetOldPosition_p(i_actor);
    pm_speed = fopAcM_GetSpeed_p(i_actor);
    pm_angle = fopAcM_GetAngle_p(i_actor);
    pm_shape_angle = fopAcM_GetShapeAngle_p(i_actor);
}

/* 800762D8-80076350 070C18 0078+00 1/1 0/0 0/0 .text            GroundCheckInit__9dBgS_AcchFR4dBgS
 */
void dBgS_Acch::GroundCheckInit(dBgS& i_bgs) {
    if (!(m_flags & 2)) {
        i_bgs; // necessary to match

        m_ground_h = -1000000000.0f;
        m_gnd.SetExtChk(*this);
        field_0xb4 = ChkGroundHit();
        ClrGroundHit();
        ClrGroundLanding();
        ClrGroundAway();
    }
}

/* 80076350-8007654C 070C90 01FC+00 2/2 0/0 0/0 .text            GroundCheck__9dBgS_AcchFR4dBgS */
void dBgS_Acch::GroundCheck(dBgS& i_bgs) {
    if (!(m_flags & GRND_NONE)) {
        cXyz grnd_pos;
        grnd_pos = *pm_pos;
        grnd_pos.y += field_0x94 + (m_gnd_chk_offset - field_0x90);

        if (!ChkGndThinCellingOff()) {
            static dBgS_RoofChk tmpRoofChk;
            tmpRoofChk.SetActorPid(m_gnd.GetActorPid());
            tmpRoofChk.SetPos(*pm_pos);

            f32 roof_chk = i_bgs.RoofChk(&tmpRoofChk);
            if (grnd_pos.y > roof_chk) {
                grnd_pos.y = roof_chk;
            }
        }

        field_0x94 = 0.0f;
        m_gnd.SetPos(&grnd_pos);
        m_ground_h = i_bgs.GroundCross(&m_gnd);

        if (m_ground_h != -1000000000.0f) {
            field_0xbc = m_ground_h + field_0x90;
            if (field_0xbc > field_0xb8) {
                pm_pos->y = field_0xbc;

                if (ChkClrSpeedY() && pm_speed != NULL) {
                    pm_speed->y = 0.0f;
                }

                i_bgs.GetTriPla(m_gnd, &field_0xa0);
                SetGroundFind();
                SetGroundHit();

                if (field_0xc0 == 0) {
                    field_0xc0 = 1;
                    i_bgs.RideCallBack(m_gnd, m_my_ac);
                }

                if (field_0xb4 == 0) {
                    SetGroundLanding();
                }
            }
        }

        if (field_0xb4 && !ChkGroundHit()) {
            SetGroundAway();
        }
    }
}

/* 8007654C-80076624 070E8C 00D8+00 1/1 0/0 0/0 .text            GroundRoofProc__9dBgS_AcchFR4dBgS
 */
void dBgS_Acch::GroundRoofProc(dBgS& i_bgs) {
    if (m_ground_h != -1000000000.0f) {
        if (field_0xbc < field_0xcc && field_0xcc < pm_pos->y) {
            pm_pos->y = field_0xcc;
        }

        if (!(m_flags & ROOF_NONE) && m_ground_h >= m_roof_height) {
            m_roof.SetExtChk(*this);
            ClrRoofHit();
            cXyz roof_pos(*pm_pos);
            m_roof.SetPos(roof_pos);
            m_roof_height = i_bgs.RoofChk(&m_roof);
        }
    }
}

/* 80076624-80076AAC 070F64 0488+00 1/1 0/0 0/0 .text            LineCheck__9dBgS_AcchFR4dBgS */
void dBgS_Acch::LineCheck(dBgS& i_bgs) {
    dBgS_RoofChk roof_chk;
    roof_chk.SetActorPid(m_gnd.GetActorPid());
    roof_chk.SetPos(*GetOldPos());

    f32 temp_f31 = dComIfG_Bgsp().RoofChk(&roof_chk);

    f32 var_f30 = 1000000000.0f;
    bool var_r30 = false;
    bool var_r29 = false;

    for (int i = 0; i < GetTblSize(); i++) {
        cBgS_LinChk lin_chk;
        cXyz old_pos;
        cXyz pos;

        old_pos = *GetOldPos();
        pos = *GetPos();

        f32 var_f2 = GetWallH(i);
        if (temp_f31 < old_pos.y + var_f2) {
            if (var_r29) {
                continue;
            } else {
                var_f2 = (temp_f31 - old_pos.y) - 1.0f;
                var_r29 = true;
            }
        }

        if (var_f30 > var_f2) {
            var_f30 = var_f2;
        }

        old_pos.y += var_f2;
        pos.y += var_f2;

        if (GetSpeedY() < 0.0f) {
            if (m_my_ac != NULL && fopAcM_GetName(m_my_ac) == PROC_ALINK &&
                !static_cast<daPy_py_c*>(m_my_ac)->checkPlayerFly() && ChkLink())
            {
                pos.y -= GetSpeedY();
            }
        }

        lin_chk.Set2(&old_pos, &pos, GetActorPid());
        lin_chk.SetExtChk(*this);

        if (i_bgs.LineCross(&lin_chk)) {
            *GetPos() = lin_chk.GetCross();
            OnLineCheckHit();

            if (pm_out_poly_info != NULL)
                *pm_out_poly_info = lin_chk;

            cM3dGPla plane;
            i_bgs.GetTriPla(lin_chk, &plane);
            if (!cBgW_CheckBGround(plane.mNormal.y)) {
                PSVECAdd(GetPos(), &plane.mNormal, GetPos());
                f32 var_f28 = JMAFastSqrt(plane.mNormal.x * plane.mNormal.x + plane.mNormal.z * plane.mNormal.z);
                if (!cM3d_IsZero(var_f28)) {
                    pm_acch_cir[i].SetWallHDirect(GetPos()->y);
                }

                GetPos()->y -= GetWallH(i);
            } else {
                GetPos()->y -= 1.0f;
                GroundCheck(i_bgs);
                var_r30 = true;
            }
        }
    }

    if (ChkLineDown()) {
        f32 temp_f1 = GetOldPos()->y - GetPos()->y;

        if (var_f30 != 1000000000.0f && !var_r30 && !cM3d_IsZero(temp_f1)) {
            cBgS_LinChk lin_chk;
            cXyz old_pos;
            cXyz pos;

            old_pos = *GetPos();
            pos = old_pos;

            old_pos.y += var_f30;

            lin_chk.Set2(&old_pos, &pos, GetActorPid());
            lin_chk.SetExtChk(*this);

            if (i_bgs.LineCross(&lin_chk)) {
                *GetPos() = lin_chk.GetCross();
                OnLineCheckHit();

                if (pm_out_poly_info != NULL)
                    *pm_out_poly_info = lin_chk;

                GetPos()->y -= 1.0f;
                GroundCheck(i_bgs);
            }
        }
    }
}

/* 80076AAC-80076F84 0713EC 04D8+00 0/0 15/15 414/414 .text            CrrPos__9dBgS_AcchFR4dBgS */
void dBgS_Acch::CrrPos(dBgS& i_bgs) {
    bool bvar9;
    if (!(m_flags & 1)) {
        JUT_ASSERT(792, pm_pos != 0);
        JUT_ASSERT(793, pm_old_pos != 0);

        JUT_ASSERT(833, fpclassify(pm_pos->x) == 1);
        JUT_ASSERT(834, fpclassify(pm_pos->y) == 1);
        JUT_ASSERT(835, fpclassify(pm_pos->z) == 1);

        JUT_ASSERT(837, -1.0e32f < pm_pos->x && pm_pos->x < 1.0e32f);
        JUT_ASSERT(838, -1.0e32f < pm_pos->y);
        JUT_ASSERT(839, pm_pos->y < 1.0e32f);
        JUT_ASSERT(840, -1.0e32f < pm_pos->z && pm_pos->z < 1.0e32f);

        i_bgs.MoveBgCrrPos(m_gnd, ChkGroundHit(), pm_pos, pm_angle, pm_shape_angle, false, false);

        if (!ChkGroundHit()) {
            bvar9 = false;

            if (ChkWallHit()) {
                for (int i = 0; i < m_tbl_size; i++) {
                    if (pm_acch_cir[i].ChkWallHit()) {
                        i_bgs.MoveBgCrrPos(pm_acch_cir[i], true, pm_pos, pm_angle, pm_shape_angle,
                                           true, false);
                        bvar9 = true;
                        break;
                    }
                }
            }

            if (!bvar9 && ChkRoofHit()) {
                i_bgs.MoveBgCrrPos(m_roof, true, pm_pos, pm_angle, pm_shape_angle, false, true);
            }
        }

        GroundCheckInit(i_bgs);
        Init();

        f32 tmp = GetWallAllLowH_R();
        f32 dvar10 = GetOldPos()->abs2XZ(*GetPos());
        f32 dvar11 = GetOldPos()->y - GetPos()->y;
        f32 tmp2 = GetWallAllLowH();

        field_0xb8 = GetPos()->y;
        field_0xc0 = 0;
        f32 fvar12 = tmp2 + GetOldPos()->y;
        f32 fvar1 = m_gnd_chk_offset + GetPos()->y;
        bool bvar2 = false;

        OffLineCheckHit();
        if (!ChkLineCheckNone() && !cM3d_IsZero(tmp) &&
            (dvar10 > (tmp * tmp) || fvar12 > fvar1 || dvar11 > m_gnd_chk_offset || ChkLineCheck()))
        {
            bvar2 = true;
            LineCheck(i_bgs);
        }

        if (!(m_flags & WALL_NONE)) {
            if (ChkWallSort()) {
                i_bgs.WallCorrectSort(this);
            } else {
                i_bgs.WallCorrect(this);
            }
        }

        if (ChkWallHit() && bvar2) {
            LineCheck(i_bgs);
        }
        field_0xcc = 1000000000.0f;

        if (!(m_flags & ROOF_NONE)) {
            m_roof.SetExtChk(*this);
            ClrRoofHit();
            cXyz roof_pos;
            roof_pos.x = pm_pos->x;
            roof_pos.y = pm_pos->y;
            roof_pos.z = pm_pos->z;

            m_roof.SetPos(roof_pos);
            m_roof_height = i_bgs.RoofChk(&m_roof);

            if (m_roof_height != 1000000000.0f) {
                f32 y = GetPos()->y;

                if (y + m_roof_crr_height > m_roof_height) {
                    field_0xcc = m_roof_height - m_roof_crr_height;
                    SetRoofHit();
                }
            }
        }

        if (!(m_flags & GRND_NONE)) {
            ClrGroundFind();
            GroundCheck(i_bgs);
            GroundRoofProc(i_bgs);
        } else {
            if (field_0xcc < GetPos()->y) {
                GetPos()->y = field_0xcc;
            }
        }

        if (!(m_flags & 0x400)) {
            ClrWaterHit();
            ClrWaterIn();
            m_wtr.SetHeight(-1000000000.0f);

            f32 var_f29;
            f32 var_f30;

            f32 temp_f1_5 = m_ground_h;
            if (temp_f1_5 == -1000000000.0f) {
                var_f29 = GetPos()->y - 50.0f;
            } else {
                var_f29 = temp_f1_5;
            }

            if (m_wtr_mode == 1) {
                var_f30 = var_f29 + m_wtr_chk_offset;
            } else {
                dBgS_RoofChk roof_chk;
                roof_chk.SetUnderwaterRoof();
                roof_chk.SetPos(*pm_pos);

                var_f30 = i_bgs.RoofChk(&roof_chk);
                if (var_f30 == 1000000000.0f) {
                    var_f30 = GetPos()->y + 1000000.0f;
                }
            }

            cXyz wtr_pos;
            wtr_pos = *pm_pos;
            wtr_pos.y = var_f29;

            m_wtr.Set(wtr_pos, var_f30);
            m_wtr.SetPassChkInfo(*this);

            if (i_bgs.WaterChk(&m_wtr)) {
                SetWaterHit();
                if (m_wtr.GetHeight() > GetPos()->y) {
                    SetWaterIn();
                }
            }
        }
    }
}

/* 80076F84-80076FC0 0718C4 003C+00 1/1 0/0 0/0 .text            GetWallAllR__9dBgS_AcchFv */
f32 dBgS_Acch::GetWallAllR() {
    f32 ret = 0.0f;

    for (int i = 0; i < m_tbl_size; i++) {
        f32 wall_r = pm_acch_cir[i].GetWallR();
        if (ret < wall_r) {
            ret = wall_r;
        }
    }
    return ret;
}

/* 80076FC0-8007703C 071900 007C+00 1/1 0/0 0/0 .text            SetWallCir__9dBgS_AcchFv */
void dBgS_Acch::SetWallCir() {
    for (int i = 0; i < m_tbl_size; i++) {
        pm_acch_cir[i].SetCir(*pm_pos);
    }
}

/* 8007703C-80077114 07197C 00D8+00 1/1 0/0 0/0 .text            CalcWallBmdCyl__9dBgS_AcchFv */
void dBgS_Acch::CalcWallBmdCyl() {
    if (m_tbl_size <= 0) {
        m_wall_cyl.Set(*pm_pos, 0.0f, 0.0f);
    } else {
        f32 dvar8 = GetWallAllR();
        f32 dvar9 = pm_acch_cir->GetWallH();
        f32 dvar10 = pm_acch_cir->GetWallH();

        if (m_tbl_size >= 1) {
            for (int i = 0; i < m_tbl_size; i++) {
                f32 tmp = pm_acch_cir[i].GetWallH();
                if (dvar9 > tmp) {
                    dvar9 = pm_acch_cir[i].GetWallH();
                }

                f32 tmp2 = pm_acch_cir[i].GetWallH();
                if (dvar10 < tmp2) {
                    dvar10 = pm_acch_cir[i].GetWallH();
                }
            }
        }

        cXyz xyz;
        xyz.x = pm_pos->x;
        xyz.y = pm_pos->y;
        xyz.z = pm_pos->z;
        xyz.y += dvar9;

        m_wall_cyl.Set(xyz, dvar8, dvar10 - dvar9);
    }
}

/* 80077114-80077128 071A54 0014+00 0/0 0/0 24/24 .text            SetGroundUpY__9dBgS_AcchFf */
void dBgS_Acch::SetGroundUpY(f32 param_0) {
    field_0x94 = param_0 - field_0x90;
    field_0x90 = param_0;
}

/* 80077128-80077178 071A68 0050+00 1/1 0/0 0/0 .text            GetWallAllLowH__9dBgS_AcchFv */
f32 dBgS_Acch::GetWallAllLowH() {
    if (m_tbl_size <= 0) {
        return 0.0f;
    }

    f32 tmp = pm_acch_cir->GetWallH();
    for (int i = 1; i < m_tbl_size; i++) {
        f32 tmp2 = pm_acch_cir[i].GetWallH();
        if (tmp > tmp2) {
            tmp = pm_acch_cir[i].GetWallH();
        }
    }

    return tmp;
}

/* 80077178-800771E4 071AB8 006C+00 1/1 0/0 0/0 .text            GetWallAllLowH_R__9dBgS_AcchFv */
f32 dBgS_Acch::GetWallAllLowH_R() {
    if (m_tbl_size <= 0) {
        return 0.0f;
    }

    int index = 0;
    f32 tmp = pm_acch_cir->GetWallH();
    for (int i = 1; i < m_tbl_size; i++) {
        f32 tmp2 = pm_acch_cir[i].GetWallH();
        if (tmp > tmp2) {
            tmp = pm_acch_cir[i].GetWallH();
            index = i;
        }
    }

    return pm_acch_cir[index].GetWallR();
}

/* 800771E4-80077200 071B24 001C+00 1/1 4/4 0/0 .text            GetSpeedY__9dBgS_AcchFv */
f32 dBgS_Acch::GetSpeedY() {
    if (pm_speed != NULL) {
        return pm_speed->y;
    }

    return 0.0f;
}

/* 80077200-80077278 071B40 0078+00 0/0 4/4 0/0 .text            GetWallAddY__9dBgS_AcchFR3Vec */
f32 dBgS_Acch::GetWallAddY(Vec& param_0) {
    if (!ChkGroundFind() || field_0xa0.mNormal.y < 0.5f) {
        return 0.0f;
    }

    f32 tmp;
    if (field_0xa0.getCrossYLessD(param_0, &tmp)) {
        if (tmp > 0.0f) {
            tmp = 0.0f;
        }
        return -tmp;
    }

    return 0.0f;
}

/* 80077278-80077288 071BB8 0010+00 0/0 2/2 0/0 .text            SetNowActorInfo__9dBgS_AcchFiPvUi
 */
void dBgS_Acch::SetNowActorInfo(int bg_index, void* param_1, fpc_ProcID param_2) {
    m_bg_index = bg_index;
    field_0x7c = param_1;
    field_0x80 = param_2;
}

/* 80077288-800772E8 071BC8 0060+00 0/0 4/4 0/0 .text            SetWallPolyIndex__9dBgS_AcchFii */
void dBgS_Acch::SetWallPolyIndex(int index, int poly_index) {
    pm_acch_cir[index].SetActorInfo(m_bg_index, field_0x7c, field_0x80);
    pm_acch_cir[index].SetPolyIndex(poly_index);
}

/* 800772E8-8007732C 071C28 0044+00 0/0 6/6 0/0 .text            CalcMovePosWork__9dBgS_AcchFv */
void dBgS_Acch::CalcMovePosWork() {
    SetWallCir();
    SetLin();
    CalcWallBmdCyl();
}

/* 8007732C-80077388 071C6C 005C+00 0/0 2/2 0/0 .text            CalcWallRR__9dBgS_AcchFv */
void dBgS_Acch::CalcWallRR() {
    for (int i = 0; i < m_tbl_size; i++) {
        pm_acch_cir[i].CalcWallRR();
    }
}

/* 80077388-800773A4 071CC8 001C+00 0/0 1/1 0/0 .text            SetMoveBGOnly__9dBgS_AcchFv */
void dBgS_Acch::SetMoveBGOnly() {
    m_flags |= MOVE_BG_ONLY;
    m_wtr.OnMoveBGOnly();
}

/* 800773A4-800773C0 071CE4 001C+00 0/0 4/4 17/17 .text            ClrMoveBGOnly__9dBgS_AcchFv */
void dBgS_Acch::ClrMoveBGOnly() {
    m_flags &= ~MOVE_BG_ONLY;
    m_wtr.OffMoveBGOnly();
}

/* 800773C0-800773D0 071D00 0010+00 0/0 1/1 2/2 .text            SetGndThinCellingOff__9dBgS_AcchFv
 */
void dBgS_Acch::SetGndThinCellingOff() {
    m_flags |= GND_THIN_CELLING_OFF;
}

/* 800773D0-800773E0 071D10 0010+00 0/0 1/1 0/0 .text            ClrGndThinCellingOff__9dBgS_AcchFv
 */
void dBgS_Acch::ClrGndThinCellingOff() {
    m_flags &= ~GND_THIN_CELLING_OFF;
}

/* 800773E0-800773EC 071D20 000C+00 1/1 0/0 0/0 .text            ChkGndThinCellingOff__9dBgS_AcchFv
 */
bool dBgS_Acch::ChkGndThinCellingOff() {
    return m_flags & GND_THIN_CELLING_OFF;
}

/* 800773EC-800773FC 071D2C 0010+00 0/0 1/1 1/1 .text            OnWallSort__9dBgS_AcchFv */
void dBgS_Acch::OnWallSort() {
    m_flags |= WALL_SORT;
}

/* 800773FC-80077408 071D3C 000C+00 1/1 0/0 0/0 .text            ChkWallSort__9dBgS_AcchFv */
bool dBgS_Acch::ChkWallSort() {
    return m_flags & WALL_SORT;
}

/* 80077408-80077414 071D48 000C+00 1/1 0/0 0/0 .text            ChkLineDown__9dBgS_AcchFv */
bool dBgS_Acch::ChkLineDown() {
    return m_flags & LINE_DOWN;
}
