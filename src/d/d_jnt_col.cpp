//
// d_jnt_col
//

#include "d/dolzel.h" // IWYU pragma: keep

#include "d/d_jnt_col.h"
#include "SSystem/SComponent/c_math.h"
#include "SSystem/SComponent/c_m3d_g_sph.h"
#include "SSystem/SComponent/c_m3d_g_cyl.h"
#include "f_op/f_op_actor_mng.h"

dJntCol_c::dJntCol_c() {
    mModel = 0;
    mData = 0;
    field_0x8 = 0;
}

int dJntCol_c::init(fopAc_ac_c* i_actorP, dJntColData_c const* i_jntColP, J3DModel* i_modelP,
                    int param_3) {
    mData = i_jntColP;
    mModel = i_modelP;
    field_0x8 = param_3;
    field_0xc = 0;

    if (i_actorP) {
        fopAcM_SetJntCol(i_actorP, this);
    }

    return 1;
}

void dJntCol_c::setNowLine(cM3dGLin* i_line, cXyz const* param_1, csXyz const* param_2,
                           cXyz* param_3) {
    if (param_2 != NULL) {
        mDoMtx_stack_c::ZXYrotS(*param_2);
        mDoMtx_stack_c::multVec(&cXyz::BaseZ, param_3);
    } else {
        *param_3 = cXyz::BaseZ;
    }

    cXyz start_pos = *param_1 - *param_3 * 500.0f;
    cXyz end_pos = *param_1 + *param_3 * 500.0f;
    i_line->SetStartEnd(start_pos, end_pos);
}

int dJntCol_c::searchNearPos(cM3dGLin const* param_1, cXyz const* param_2, cXyz* param_3,
                              int param_4) const {
    const dJntColData_c* r30 = mData;
    cM3dGSph sp210;
    cM3dGCyl sp1F8;
    cM3dGPla sp1E0;
    cXyz sp1B8;
    cXyz sp1AC;
    cXyz sp1A0;
    cXyz sp194;
    cXyz sp188;
    cXyz sp17C;
    cM3dGLin sp1C4;
    cXyz sp170;
    cXyz sp164;
    f32 f28;
    f32 f27;
    int sp1C;
    int sp18;
    int rv;
    f28 = FLT_MAX;
    sp18 = FALSE;
    rv = -1;
    f27 = -10000000.0f;
    for (int i = 0; i < field_0x8; i++, r30++) {
        if ((field_0xc & (1 << i)) == 0 &&
#if DEBUG
            r30->mJntNum >= 0 &&
#endif
            (param_4 == 0 || r30->mType == 3))
        {
            mDoMtx_stack_c::copy(mModel->getAnmMtx(r30->mJntNum));
            mDoMtx_stack_c::multVec(r30->field_0x8, &sp188);
            f32 cross;
            f32 len;
            f32 inprod;
            if (r30->field_0x0 == 0) {
                sp210.Set(sp188, r30->field_0x4);
                int sp10 = cM3d_Cross_LinSph_CrossPos(sp210, *param_1, &sp1A0,
                                                                &sp194);
                if (sp10 != 0) {
                    if (sp10 == 1) {
                        sp1B8 = sp1A0;
                    } else if (sp1A0.abs2(param_1->GetStart()) < sp194.abs2(param_1->GetStart())) {
                        sp1B8 = sp1A0;
                    } else {
                        sp1B8 = sp194;
                    }
                } else {
                    sp1AC = *param_2 - sp188;
                    sp1AC.normalizeZP();
                    sp1B8 = sp188 + sp1AC * r30->field_0x4;
                }
            } else if (r30->field_0x0 == 1) {
                mDoMtx_stack_c::multVec(r30->field_0x8 + 1, &sp17C);
                sp1AC = sp17C - sp188;
                if (sp1AC.absXZ() > 0.01f) {
                    mDoMtx_stack_c::transS(sp188);
                    mDoMtx_stack_c::XrotM(cM_atan2s(-sp1AC.absXZ(), sp1AC.y));
                    mDoMtx_stack_c::YrotM(cM_atan2s(-sp1AC.x, sp1AC.z));
                    mDoMtx_stack_c::transM(-sp188.x, -sp188.y, -sp188.z);
                    mDoMtx_stack_c::multVec(&sp17C, &sp194);
                    mDoMtx_stack_c::multVec(&param_1->GetStartP(), &sp170);
                    mDoMtx_stack_c::multVec(&param_1->GetEndP(), &sp164);
                    sp1C4.SetStartEnd(sp170, sp164);
                    sp1C = 1;
                } else {
                    sp194 = sp17C;
                    sp1C4.SetStartEnd(param_1->GetStart(), param_1->GetEnd());
                    sp1C = 0;
                }
                sp1F8.Set(sp188, r30->field_0x4,
                              sp194.y - sp188.y);
                if (cM3d_Cross_CylLin(&sp1F8, &sp1C4, &sp1A0, &sp194)) {
                    if (sp1C) {
                        mDoMtx_stack_c::inverse();
                        mDoMtx_stack_c::multVec(&sp1A0, &sp1B8);
                    } else {
                        sp1B8 = sp1A0;
                    }
                } else {
                    sp1C4.SetStartEnd(sp188, sp17C);
                    cross = cM3d_lineVsPosSuisenCross(&sp1C4, param_2, &sp1A0);
                    sp1AC =  *param_2 - sp1A0;
                    len = sp1AC.abs2();
                    if (len < 0.0001f) {
                        sp1A0 = sp1C4.GetStart() - sp1C4.GetEnd();
                        sp194 = param_1->GetStart() - param_1->GetEnd();
                        inprod = sp1A0.inprod(sp194);
                        if (inprod > 0.0f) {
                            sp1B8 = sp1C4.GetEnd();
                        } else if (inprod < 0.0f) {
                            sp1B8 = sp1C4.GetStart();
                        } else if (cross < 0.5f) {
                            sp1B8 = sp1C4.GetStart();
                        } else {
                            sp1B8 = sp1C4.GetEnd();
                        }
                    } else {
                        if (cross >= 0.0f && cross <= 1.0f) {
                            sp1B8 = sp1A0 + (sp1AC / JMAFastSqrt(len)) * r30->field_0x4;
                        } else {
                            sp1A0 = sp1C4.GetStart() - sp1C4.GetEnd();
                            sp194 = param_1->GetStart() - param_1->GetEnd();
                            inprod = sp1A0.inprod(sp194);
                            if (inprod > 0.0f) {
                                sp1A0 = sp1C4.GetEnd();
                            } else {
                                if (inprod < 0.0f) {
                                    sp1A0 = sp1C4.GetStart();
                                } else {
                                    if (cross < 0.5f) {
                                        sp1A0 = sp1C4.GetStart();
                                    } else {
                                        sp1A0 = sp1C4.GetEnd();
                                    }
                                }
                            }
                            sp1B8 = sp1A0 + (sp1AC / JMAFastSqrt(len)) * r30->field_0x4;
                        }
                    }
                }
            } else {
                mDoMtx_stack_c::multVecSR(r30->field_0x8 + 1, &sp1AC);
                sp1E0.SetupNP0(sp1AC, sp188);
                if (cM3d_Cross_LinPla(param_1, &sp1E0, &sp1B8, true, true)) {
                    if (!(sp188.abs(sp1B8) < r30->field_0x4)) {
                        sp1AC = sp1B8 - sp188;
                        sp1AC.normalizeZP();
                        sp1B8 = sp188 + sp1AC * r30->field_0x4;
                    }
                } else {
                    if (sp1E0.crossInfLin(*param_2, param_1->GetEnd(), sp1B8)) {
                        sp1AC = sp1B8 - sp188;
                        sp1AC.normalizeZP();
                        sp1B8 = sp188 + sp1AC * r30->field_0x4;
                    } else {
                        len = cM3d_SignedLenPlaAndPos(&sp1E0, param_2);
                        sp1AC.normalizeZP();
                        sp1B8 = *param_2 - sp1AC * len;
                    }
                }
            }
            cross = cM3d_lineVsPosSuisenCross(param_1, &sp1B8, &sp1A0);
            len = sp1B8.abs2(sp1A0);
            if (len < 9.999999747378752e-05f) {
                if (!sp18 || f27 < cross) {
                    f27 = cross;
                    *param_3 = sp1B8;
                    rv = i;
                    sp18 = TRUE;
                }
            } else {
                if (!sp18 && (f28 >= len)) {
                    f28 = len;
                    *param_3 = sp1B8;
                    rv = i;
                }
            }
        }
        ;
    }
    return rv;
}

int dJntCol_c::getArrowOffsetPosAndAngle(cXyz const* param_1, csXyz const* param_2,
                                              cXyz* param_3, cXyz* param_4) const {
    cM3dGLin acStack_34;
    cXyz cStack_40;
    setNowLine(&acStack_34, param_1, param_2, &cStack_40);
    cXyz cStack_4c;
    int iVar1 = searchNearPos(&acStack_34, param_1, &cStack_4c, 0);
    if (iVar1 < 0) {
        return -3;
    }
    const dJntColData_c* jntColData = &mData[iVar1];
    if (jntColData->mType == 0) {
        return -3;
    }
    if (jntColData->mType == 2) {
        return -1;
    }
    if (jntColData->mType == 3) {
        return -2;
    }
    mDoMtx_stack_c::copy(mModel->getAnmMtx(jntColData->mJntNum));
    mDoMtx_stack_c::inverse();
    mDoMtx_stack_c::multVecSR(&cStack_40, param_4);
    mDoMtx_stack_c::multVec(&cStack_4c, param_3);
    return jntColData->mJntNum;
}

int dJntCol_c::getHitmarkPosAndAngle(cXyz const* param_1, csXyz const* param_2, cXyz* param_3,
                                         csXyz* param_4, int param_5) const {
    cM3dGLin acStack_54;
    cXyz cStack_60;
    setNowLine(&acStack_54, param_1, param_2, &cStack_60);
    int iVar3 = searchNearPos(&acStack_54, param_1, param_3, param_5);
    if (iVar3 < 0) {
        return -1;
    }
    const dJntColData_c* jntColData = &mData[iVar3];
    cXyz cStack_6c;
    cXyz local_78;
    mDoMtx_stack_c::copy(mModel->getAnmMtx(jntColData->mJntNum));
    mDoMtx_stack_c::multVec(jntColData->field_0x8, &cStack_6c);
    if (jntColData->field_0x0 == 0) {
        local_78 = *param_3 - cStack_6c;
    } else if (jntColData->field_0x0 == 1) {
        cXyz cStack_84;
        cXyz cStack_90;
        mDoMtx_stack_c::multVec(jntColData->field_0x8 + 1, &cStack_84);
        cM3d_lineVsPosSuisenCross(cStack_6c, cStack_84, *param_3, &cStack_90);
        local_78 = *param_3 - cStack_90;
        if (local_78.abs2() < 9.999999747378752e-05f) {
            if (param_3->abs2(cStack_6c) < param_3->abs2(cStack_84)) {
                local_78 = cStack_6c - cStack_84;
            } else {
                local_78 = cStack_84 - cStack_6c;
            }
        }
    } else {
        mDoMtx_stack_c::multVecSR(jntColData->field_0x8 + 1, &local_78);
    }
    param_4->x = cM_atan2s(local_78.y, local_78.absXZ());
    param_4->y = cM_atan2s(-local_78.x, -local_78.z);
    param_4->z = 0;
    return iVar3;
}

void dJntCol_c::setArrowPosAndAngle(cXyz const* param_0, cXyz const* i_srcPos, int i_anmMtxIdx,
                                    cXyz* param_3, csXyz* i_arrowPosP) {
    cXyz dst_pos;
    mDoMtx_multVecSR(mModel->getAnmMtx(i_anmMtxIdx), i_srcPos, &dst_pos);

    i_arrowPosP->x = dst_pos.atan2sY_XZ();
    i_arrowPosP->y = dst_pos.atan2sX_Z();
    mDoMtx_multVec(mModel->getAnmMtx(i_anmMtxIdx), param_0, param_3);
}
