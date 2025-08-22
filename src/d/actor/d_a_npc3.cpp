#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc.h"
#include "d/d_bg_w.h"

static BOOL daBaseNpc_incIdx(int i_pathNo, u16* i_pathIdx, BOOL i_pathClosed, int i_pathDirection);
static void daBaseNpc_decIdx(int i_pathNo, u16* i_pathIdx, int i_pathClosed, int i_pathDirection);
static f32 daNpcBase_BBasis(int i_deg, int i_pntNo, int i_knotNo, int* i_knotVector_p);

/* 8014F4B4-8014F4F8 149DF4 0044+00 0/0 0/0 1/1 .text            __ct__23daBaseNpc_moveBgActor_cFv
 */
daBaseNpc_moveBgActor_c::daBaseNpc_moveBgActor_c() {
    mpBgw = 0;
}

/* 8014F4F8-8014F518 149E38 0020+00 1/1 0/0 0/0 .text            CheckCreateHeap__FP10fopAc_ac_c */
static int CheckCreateHeap(fopAc_ac_c* i_this) {
    return ((daBaseNpc_moveBgActor_c*)i_this)->MoveBGCreateHeap();
}

/* 80450FE0-80450FE4 0004E0 0004+00 2/2 0/0 0/0 .sbss            m_name__23daBaseNpc_moveBgActor_c
 */
const char* daBaseNpc_moveBgActor_c::m_name;

/* 80450FE4-80450FE8 0004E4 0004+00 2/2 0/0 0/0 .sbss            m_dzb_id__23daBaseNpc_moveBgActor_c
 */
int daBaseNpc_moveBgActor_c::m_dzb_id;

/* 80450FE8-80450FEC 0004E8 0004+00 2/2 0/0 0/0 .sbss m_set_func__23daBaseNpc_moveBgActor_c */
MoveBGActor_SetFunc daBaseNpc_moveBgActor_c::m_set_func;

/* 8014F518-8014F60C 149E58 00F4+00 1/1 0/0 0/0 .text
 * MoveBGCreateHeap__23daBaseNpc_moveBgActor_cFv                */
int daBaseNpc_moveBgActor_c::MoveBGCreateHeap() {
    if (!CreateHeap()) {
        return 0;
    }

    if (m_dzb_id == -1) {
        mpBgw = NULL;
        return 1;
    }

    mpBgw = new dBgW();

    if (mpBgw != NULL && !mpBgw->Set((cBgD_t*)dComIfG_getObjectRes(m_name, m_dzb_id), 1, &mBgMtx)) {
        if (m_set_func != NULL) {
            mpBgw->SetCrrFunc(m_set_func);
        }
    } else {
        mpBgw = NULL;
        return 0;
    }

    return 1;
}

/* 8014F60C-8014F6FC 149F4C 00F0+00 0/0 0/0 1/1 .text
 * MoveBGCreate__23daBaseNpc_moveBgActor_cFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUl
 */
int daBaseNpc_moveBgActor_c::MoveBGCreate(char const* i_arcName, int i_dzbId, MoveBGActor_SetFunc i_setFunc,
                                          u32 i_heapSize) {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mDoMtx_stack_c::scaleM(scale);
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);

    m_name = i_arcName;
    m_dzb_id = i_dzbId;
    m_set_func = i_setFunc;

    if (!fopAcM_entrySolidHeap(this, CheckCreateHeap, i_heapSize)) {
        return cPhs_ERROR_e;
    }

#ifdef DEBUG
    if (mpBgw != NULL && mpBgw->ChkUsed() && mDoCPd_c::isConnect(PAD_3)) {
        JUT_WARN(2019, "%s", "dBgS_MoveBgActor::MoveBGCreate() Don't Regist CreateHeap\n");
    }
#endif

    if (mpBgw != NULL && dComIfG_Bgsp().Regist(mpBgw, this)) {
        return cPhs_ERROR_e;
    }

    // return Create() ? cPhs_COMPLEATE_e : cPhs_ERROR_e;  // using enums here changes code gen
    return Create() ? 4 : 5;
}

/* 8014F6FC-8014F770 14A03C 0074+00 0/0 0/0 1/1 .text MoveBGDelete__23daBaseNpc_moveBgActor_cFv */
int daBaseNpc_moveBgActor_c::MoveBGDelete() {
    int rt = Delete();
    if (mpBgw != NULL && mpBgw->ChkUsed() && dComIfG_Bgsp().Release(mpBgw)) {
        OS_REPORT("Release Error\n");
    }

    return rt;
}

/* 8014F770-8014F81C 14A0B0 00AC+00 0/0 0/0 2/2 .text MoveBGExecute__23daBaseNpc_moveBgActor_cFv
 */
int daBaseNpc_moveBgActor_c::MoveBGExecute() {
    Mtx* sp8 = NULL;
    int rt = Execute(&sp8);

    if (sp8 == NULL) {
        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::YrotM(shape_angle.y);
        mDoMtx_stack_c::scaleM(scale);
        MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
    } else {
        MTXCopy(*sp8, mBgMtx);
    }

    if (mpBgw != NULL) {
        mpBgw->Move();
    }

    return rt;
}

/* 8014F81C-8014F8C4 14A15C 00A8+00 1/1 0/0 0/0 .text
 * daBaseNpc_PntVsLineSegmentLengthSquare2D__FffffffPfPfPf      */
static int daBaseNpc_PntVsLineSegmentLengthSquare2D(f32 param_0, f32 param_1, f32 param_2,
                                                    f32 param_3, f32 param_4, f32 param_5,
                                                    f32* param_6, f32* param_7, f32* param_8) {
    int var_r31 = 0;

    f32 temp_f31 = param_4 - param_2;
    f32 temp_f30 = param_5 - param_3;
    f32 temp_f28 = (temp_f31 * temp_f31) + (temp_f30 * temp_f30);
    if (temp_f28 == 0.0f) {
        *param_8 = 0.0f;
        return 0;
    }

    f32 temp_f29 = ((temp_f31 * (param_0 - param_2)) + (temp_f30 * (param_1 - param_3))) / temp_f28;
    if (0.0f <= temp_f29 && temp_f29 <= 1.0f) {
        var_r31 = 1;
    }

    *param_6 = param_2 + (temp_f31 * temp_f29);
    *param_7 = param_3 + (temp_f30 * temp_f29);
    *param_8 = ((*param_6 - param_0) * (*param_6 - param_0)) + ((*param_7 - param_1) * (*param_7 - param_1));
    return var_r31;
}

/* 8014F8C4-8014FB28 14A204 0264+00 1/1 0/0 0/0 .text daBaseNpc_putNurbs__FP4dPntiiP4dPnti */
static u16 daBaseNpc_putNurbs(dPnt* i_CPnts, int i_CPntNum, int i_maxPntNum, dPnt* o_curve_p, BOOL i_isClosed) {
    int knotVector[daBaseNpc_path_c::MAXNUMCONTROLPNT_e + 4];
    int weights[daBaseNpc_path_c::MAXNUMCONTROLPNT_e];

    int i;
    int aDeg = 2;  // curve degree
    int aMaxNumCPnt;  // max control points
    if (i_isClosed) {
        aMaxNumCPnt = i_CPntNum + 1;
    } else {
        aMaxNumCPnt = i_CPntNum;
    }

    JUT_ASSERT(2190, aDeg < aMaxNumCPnt && aMaxNumCPnt < daBaseNpc_path_c::MAXNUMCONTROLPNT_e);
    JUT_ASSERT(2191, aDeg == 2 || aDeg == 3);

    // create knot vector
    for (i = 0; i < aDeg + aMaxNumCPnt + 1; i++) {
        if (aMaxNumCPnt < i) {
            knotVector[i] = knotVector[i - 1];
        } else if (aDeg < i) {
            knotVector[i] = knotVector[i - 1] + 10;
        } else {
            knotVector[i] = 0;
        }
    }

    // initialize weights
    for (i = 0; i < aMaxNumCPnt; i++) {
        weights[i] = 1;
    }

    int cur_knot;
    u16 out_pnt_no;
    for (out_pnt_no = 0, cur_knot = knotVector[aDeg]; cur_knot < knotVector[aDeg + aMaxNumCPnt]; cur_knot += 2, out_pnt_no++) {
        if (i_maxPntNum <= out_pnt_no) {
            break;
        }

        o_curve_p[out_pnt_no].m_position.x = 0.0f;
        o_curve_p[out_pnt_no].m_position.z = 0.0f;

        f32 total_weight = 0.0f;
        for (i = 0; i < aMaxNumCPnt; i++) {
            f32 basis = daNpcBase_BBasis(aDeg, i, cur_knot, knotVector);
            if (i == i_CPntNum) {
                o_curve_p[out_pnt_no].m_position.x += i_CPnts[0].m_position.x * basis;
                o_curve_p[out_pnt_no].m_position.z += i_CPnts[0].m_position.z * basis;
            } else {
                o_curve_p[out_pnt_no].m_position.x += i_CPnts[i].m_position.x * basis;
                o_curve_p[out_pnt_no].m_position.z += i_CPnts[i].m_position.z * basis;
            }

            total_weight += basis * weights[i];
        }

        o_curve_p[out_pnt_no].m_position.x /= total_weight;
        o_curve_p[out_pnt_no].m_position.z /= total_weight;
    }

    // add final point for open curves
    if (!i_isClosed) {
        o_curve_p[out_pnt_no].m_position.x = i_CPnts[i_CPntNum - 1].m_position.x;
        o_curve_p[out_pnt_no].m_position.z = i_CPnts[i_CPntNum - 1].m_position.z;
        out_pnt_no++;
    }

    return out_pnt_no;
}

/* 8014FB28-80150230 14A468 0708+00 1/1 0/0 0/0 .text daBaseNpc_chkPnt__F4cXyzP4dPntUsUsii */
static s32 daBaseNpc_chkPnt(cXyz param_0, dPnt* param_1, u16 param_2, u16 param_3, int param_4,
                            int param_5) {
    u16 sp12, sp10;
    sp10 = param_2;
    sp12 = param_2;
    daBaseNpc_incIdx(param_3, &sp10, param_4, 1);
    daBaseNpc_decIdx(param_3, &sp12, param_4, 1);

    cXyz sp70;
    cXyz sp64(param_1[sp12].m_position.x, param_1[sp12].m_position.y, param_1[sp12].m_position.z);
    cXyz sp58(param_1[param_2].m_position.x, param_1[param_2].m_position.y, param_1[param_2].m_position.z);
    cXyz sp4C(param_1[sp10].m_position.x, param_1[sp10].m_position.y, param_1[sp10].m_position.z);

    f32 sp24;
    if (sp12 == param_2 && param_2 == sp10) {
        JUT_ASSERT(2288, 0);
    } else if (sp12 < param_2 && param_2 < sp10) {
        sp24 = (sp4C - sp64).absXZ();
        s16 temp_r31 = cM_atan2s(sp4C.x - sp64.x, sp4C.z - sp64.z);

        sp70 = sp64;
        sp64.x = sp70.x + (-1.0f * sp24 * cM_ssin(temp_r31));
        sp64.z = sp70.z + (-1.0f * sp24 * cM_scos(temp_r31));
        sp4C.x = sp70.x + (2.0f * sp24 * cM_ssin(temp_r31));
        sp4C.z = sp70.z + (2.0f * sp24 * cM_scos(temp_r31));
    } else if (sp12 < param_2) {
        sp24 = (sp58 - sp64).absXZ();
        s16 temp_r31_2 = cM_atan2s(sp58.x - sp64.x, sp58.z - sp64.z);

        sp70 = sp58;
        sp64.x = sp70.x + (-2.0f * sp24 * cM_ssin(temp_r31_2));
        sp64.z = sp70.z + (-2.0f * sp24 * cM_scos(temp_r31_2));
        sp4C.x = sp70.x + (2.0f * sp24 * cM_ssin(temp_r31_2));
        sp4C.z = sp70.z + (2.0f * sp24 * cM_scos(temp_r31_2));
    } else if (param_2 < sp10) {
        sp24 = (sp4C - sp58).absXZ();
        s16 temp_r31_3 = cM_atan2s(sp4C.x - sp58.x, sp4C.z - sp58.z);

        sp70 = sp58;
        sp64.x = sp70.x + (-2.0f * sp24 * cM_ssin(temp_r31_3));
        sp64.z = sp70.z + (-2.0f * sp24 * cM_scos(temp_r31_3));
        sp4C.x = sp70.x + (2.0f * sp24 * cM_ssin(temp_r31_3));
        sp4C.z = sp70.z + (2.0f * sp24 * cM_scos(temp_r31_3));
    } else {
        JUT_ASSERT(2322, 0);
    }

    f32 sp20;
    f32 sp1C;
    f32 sp18;
    f32 sp14;

    daBaseNpc_PntVsLineSegmentLengthSquare2D(param_0.x, param_0.z, sp64.x, sp64.z, sp4C.x, sp4C.z, &sp20, &sp1C, &sp24);

    if (cM3d_IsZero(sp24)) {
        return 0;
    }

    daBaseNpc_PntVsLineSegmentLengthSquare2D(sp58.x, sp58.z, sp64.x, sp64.z, sp4C.x, sp4C.z, &sp18, &sp14, &sp24);

    s16 var_r31;
    if (param_5 < 0) {
        var_r31 = cM_atan2s(sp64.x - sp4C.x, sp64.z - sp4C.z);
    } else {
        var_r31 = cM_atan2s(sp4C.x - sp64.x, sp4C.z - sp64.z);
    }

    return 0x4000 - (u16)abs((s16)(var_r31 - cM_atan2s(sp18 - sp20, sp14 - sp1C))) < 0;
}

/* 80150230-801502EC 14AB70 00BC+00 1/1 0/0 0/0 .text daBaseNpc_getGroundAngle__FP13cBgS_PolyInfos
 */
static s16 daBaseNpc_getGroundAngle(cBgS_PolyInfo* param_0, s16 param_1) {
    if (dComIfG_Bgsp().ChkPolySafe(*param_0)) {
        cM3dGPla spC;
        if (!dComIfG_Bgsp().GetTriPla(*param_0, &spC) || !cBgW_CheckBGround(spC.mNormal.y)) {
            return 0;
        }
    
        return fopAcM_getPolygonAngle(&spC, param_1);
    }

    return 0;
}
