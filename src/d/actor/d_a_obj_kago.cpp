/**
 * @file d_a_obj_kago.cpp
 * 
*/

#include "d/actor/d_a_obj_kago.h"
#include "SSystem/SComponent/c_counter.h"
#include "Z2AudioLib/Z2Instances.h"
#include "d/actor/d_a_npc.h"
#include "d/d_cc_d.h"
#include "d/d_com_inf_game.h"
#include "dol2asm.h"
#include "f_op/f_op_actor_mng.h"

UNK_REL_DATA;

/* 80C33DC0-80C33DD0 000020 0010+00 2/3 0/0 0/0 .data            l_bmdData */
static int l_bmdData[2][2] = {
    { 3, 1 }, { 4, 1 },
};

/* 80C33DD0-80C33DD8 -00001 0008+00 2/4 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[2] = {
    "",
    "uri_kago"
};

/* 80C33DD8-80C33E1C 000038 0044+00 1/2 0/0 0/0 .data            l_ccDCyl */
static dCcD_SrcCyl l_ccDCyl = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        0.0f, // mRadius
        0.0f // mHeight
    } // mCyl
};

/* 80C31AEC-80C31C90 0000EC 01A4+00 1/0 0/0 0/0 .text            __dt__12daObj_Kago_cFv */
daObj_Kago_c::~daObj_Kago_c() {
    // NONMATCHING
    OS_REPORT("|%06d:%x|daObj_Kago_c -> デストラクト\n", g_Counter.mCounter0, this);
    if (mType == 0 && daNpcT_chkTmpBit(7)) {
        daNpcT_onEvtBit(0x92);
    }

    dComIfG_resDelete(&mPhase, l_resNameList[l_bmdData[0][1]]);
}

/* ############################################################################################## */
/* 80C33C80-80C33CAC 000000 002C+00 5/5 0/0 0/0 .rodata          m__18daObj_Kago_Param_c */
daObj_Kago_Param_c::Data const daObj_Kago_Param_c::m = {
    0.0f,
    -5.0f,
    1.0f,
    400.0f,
    73.0f,
    30.0f,
    24.0f,
    30.0f,
    30.0f,
    55.0f,
    10.0f,
};

/* 80C33CAC-80C33CDC 00002C 0030+00 0/0 0/0 0/0 .rodata          l_ccDObjData */
SECTION_RODATA static u8 const l_ccDObjData[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x79, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80C31D5C-80C320FC 00035C 03A0+00 1/1 0/0 0/0 .text            create__12daObj_Kago_cFv */
cPhs__Step daObj_Kago_c::create() {
    // NONMATCHING
    static int const heapSize[5] = {
        0x0820, 0x0820, 0, 0x0820, 0,
    };

    fopAcM_SetupActor(this, daObj_Kago_c);

    mType = getType();

    cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(&mPhase, l_resNameList[l_bmdData[0][1]]);
    if (phase == cPhs_COMPLEATE_e) {
        OS_REPORT("\t(%s:%d) <%08x> -> roomNo.%d", fopAcM_getProcNameString(this), getType(), fopAcM_GetParam(this), fopAcM_GetRoomNo(this));
        if (mType == 0 && isDelete()) {
            OS_REPORT("===>isDelete:TRUE\n");
            return cPhs_ERROR_e;
        }

        OS_REPORT("\n");
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, heapSize[mType])) {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, field_0x574->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -100.0f, -50.0f, -100.0f, 100.0f, 100.0f, 100.0f);
        reset();

        if (mType == 0) {
            setGoalPosAndAngle();
            health = 1;
        }

        mAcchCir.SetWall(daObj_Kago_Param_c::m.mWallH, daObj_Kago_Param_c::m.mWallR);
        mObjAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this), 
                  fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mStts.Init(daObj_Kago_Param_c::m.mWeight, 0, this);
        
        field_0x808[0].Set(l_ccDCyl);
        field_0x808[0].SetStts(&mStts);
        field_0x808[1].Set(l_ccDCyl);
        field_0x808[1].SetStts(&mStts);

        mObjAcch.CrrPos(dComIfG_Bgsp());
        field_0x7cc = mObjAcch.m_gnd;
        mGroundH = mObjAcch.GetGroundH();
        if (mGroundH != -1000000000.0f) {
            setEnvTevColor();
            setRoomNo();
        }

        Execute();
    }

    return phase;
}

/* 80C323D0-80C324B0 0009D0 00E0+00 1/1 0/0 0/0 .text            CreateHeap__12daObj_Kago_cFv */
int daObj_Kago_c::CreateHeap() {
    J3DModelData* modelData;
    if (mType == 2 || mType == 3) {
        modelData = (J3DModelData*)dComIfG_getObjectRes(l_resNameList[l_bmdData[1][1]], l_bmdData[1][0]);
    } else {
        modelData = (J3DModelData*)dComIfG_getObjectRes(l_resNameList[l_bmdData[0][1]], l_bmdData[0][0]);
    }

    if (modelData == NULL) {
        return 0;
    }

    field_0x574 = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (field_0x574 == NULL) {
        return 0;
    }

    return 1;
}

/* 80C324B0-80C324E4 000AB0 0034+00 1/1 0/0 0/0 .text            Delete__12daObj_Kago_cFv */
int daObj_Kago_c::Delete() {
    // NONMATCHING
    fopAcM_GetID(this);
    this->~daObj_Kago_c();
    return 1;
}

/* 80C324E4-80C332D0 000AE4 0DEC+00 2/2 0/0 0/0 .text            Execute__12daObj_Kago_cFv */
int daObj_Kago_c::Execute() {
    // NONMATCHING
    int iVar4;
    int iVar1 = 0;
    f32 fVar1 = daObj_Kago_Param_c::m.field_0x28;
    s16 sVar1 = 0;
    s16 sVar2 = 0;

    scale.set(daObj_Kago_Param_c::m.field_0x08 * field_0xb0c, daObj_Kago_Param_c::m.field_0x08 * field_0xb0c, daObj_Kago_Param_c::m.field_0x08 * field_0xb0c);
    attention_info.flags = 0;
    fopAcM_OffCarryType(this, fopAcM_CARRY_CHICKEN);
    attention_info.distances[4] = 13;

    if (mType == 0) {
        mStts.SetWeight(daObj_Kago_Param_c::m.mWeight);
        mAcchCir.SetWall(daObj_Kago_Param_c::m.mWallH, 50.0f);
    } else {
        mStts.SetWeight(0xFF);
        mAcchCir.SetWall(daObj_Kago_Param_c::m.mWallH, daObj_Kago_Param_c::m.mWallR);
    }

    gravity = daObj_Kago_Param_c::m.mGravity;
    iVar1 = 0;
    if ((fopAcM_checkCarryNow(this) != 0 || fopAcM_checkHawkCarryNow(this) != 0) || field_0xba2 != 0) {
        iVar1 = 1;
    }

    field_0xb9f = isDelete();

    if (iVar1 != 0) {
        if (mType == 0) {
            daObj_Kago_c* basket_p = NULL;
            fopAcM_SearchByID(daPy_getPlayerActorClass()->getGrabActorID(), (fopAc_ac_c**)basket_p);
            if (basket_p == this) {
                daNpcT_onTmpBit(23);
            } else {
                cLib_onBit(attention_info.flags, 0x10UL);
                fopAcM_OnCarryType(this, fopAcM_CARRY_CHICKEN);
            }
        }

        cLib_addCalcAngleS2(&field_0xb74, 0x4000, 4, 0x2000);
        mObjAcch.ClrWallHit();
        mObjAcch.ClrGroundHit();
        mObjAcch.SetWallNone();
        mObjAcch.SetGrndNone();
        mGroundH = 0.0f;
        mStts.SetWeight(0);
        speed.setall(0.0f);
        speedF = 0.0f;
        field_0xb14.setall(0.0f);
        field_0xb2c.setall(0);
        gravity = 0.0f;
        field_0xb9c = 0;
        field_0xb9d = 0;
        field_0xb9e = 0;
        field_0xba1 = 0;
    } else {
        if (mType == 0) {
            daNpcT_offTmpBit(23);
        }

        mObjAcch.ClrWallNone();
        mObjAcch.ClrGrndNone();

        if (field_0xba0 != 0 && cM3d_IsZero(speedF) == 0) {
            popup(daObj_Kago_Param_c::m.field_0x20, daObj_Kago_Param_c::m.field_0x24, NULL);
            if (fopAcM_carryOffRevise(this) != 0) {
                speed.setall(0.0f);
            }
        } else {
            int iVar3 = 0;
            cXyz sp80;
            fopAcM_getWaterY(&current.pos, &mWaterY);
            if (mWaterY != -1000000000.0f && fVar1 < (mWaterY - mGroundH) && current.pos.y <= mWaterY) {
                if (field_0xb9d == 0) {
                    speedF *= 0.3f;
                    speed.y *= 0.5f;
                    field_0xb9c = 0;
                    field_0xb9d = 1;

                    if ((field_0xb9e != 0 || field_0xba1 != 0) || field_0xba0 != 0) {
                        setWaterPrtcl();
                        iVar3 = 1;

                        if ((field_0xb9e != 0 || field_0xba1 != 0) && speed.y < 0.0f) {
                            field_0xb64 = 3000.0f;
                        }
                    }

                    field_0xb9e = 0;
                    field_0xba1 = 0;
                }

                if (fopAcM_getWaterStream(&current.pos, field_0x7cc, &sp80, &iVar4, 0) != 0) {
                    sp80.normalizeZP();
                    cLib_addCalcAngleS2(&current.angle.y, cM_atan2s(sp80.x, sp80.z), 4, 0x200);
                    if (iVar3 != 0) {
                        current.angle.y = cM_atan2s(sp80.x, sp80.z);
                    }

                    int iVar5;
                    s16 sVar3 = iVar4 * 0x80;
                    if (field_0xb2c.y < 0) {
                        iVar5 = -sVar3;
                    } else {
                        iVar5 = sVar3;
                    }
                    cLib_chaseAngleS(&field_0xb2c.y, iVar5, 16);

                    if (field_0xb9c != 0) {
                        cLib_addCalc2(&speedF, iVar4 * 0.75f, 0.15f, 1.0f);
                    } else {
                        cLib_addCalc2(&speedF, iVar4 * 1.55f, 0.15f, 1.0f);
                    }
                } else {
                    cLib_chaseF(&speedF, 0.0f, 0.3f);
                }

                if (field_0xb48 == 0 && mObjAcch.ChkWallHit() != 0) {
                    if (getWallAngle(current.angle.y, &sVar2) == 0) {
                        current.angle.y = sVar2;
                        current.angle.y += (s16)cM_rndFX(2000.0f);
                    } else {
                        current.angle.y += (s16)cM_rndFX(2000.0f);
                        current.angle.y += -0x8000;
                    }

                    field_0xb2c.y = -field_0xb2c.y / 2;
                    field_0xb48 = 10;
                }

                if (field_0xb9c != 0) {
                    cLib_addCalc2(&current.pos.y, mWaterY - fVar1, 0.5f, 2.0f);
                    speed.y = 0.0f;
                    setHamonPrtcl();
                } else {
                    if ((current.pos.y + fVar1) < mWaterY) {
                        if (speed.y < 0.0f) {
                            cLib_addCalc(&speed.y, 2.0f, 0.8f, 11.0f, 0.1f);
                        } else {
                            cLib_addCalc(&speed.y, 2.0f, 0.5f, 0.5f, 0.1f);
                        }

                        field_0xb2c.y = 0x100;
                        mObjAcch.ClrGroundHit();
                        field_0xb9c= 1;
                    }
                }

                gravity = 0.0f;
            }
        }

        if (field_0xb9c != 0) {
            if (mObjAcch.ChkGroundHit()) {
                field_0xb9c = 0;
                field_0xb9d = 0;
                field_0xb2c.setall(0);
                speedF = 0.0f;
                speed.setall(0.0f);
            }
        } else if (field_0xb9d == 0) {
            if (field_0xb9e != 0) {
                if (mObjAcch.ChkWallHit() != 0) {
                    if (getWallAngle(current.angle.y, &sVar2) != 0) {
                        sVar1 = current.angle.y - sVar2;
                    } else {
                        sVar1 = current.angle.y;
                    }

                    current.angle.y += (0x8000 - (sVar1 << 1) + (s16)cM_rndFX(1000.0f));
                    speedF *= 0.5f;
                    field_0xb9e = 0;
                    field_0xba1 = 0;
                } else if (mObjAcch.ChkGroundHit()) {
                    if (field_0xb14.y < -30.0f) {
                        speedF *= 0.7f;
                        speed.y = field_0xb14.y * -0.4f;
                        setSmokePrtcl();
                    } else {
                        speedF = 0.0f;
                        speed.setall(0.0f);
                        field_0xb9e = 0;
                    }
                }
            } else if (field_0xba1 != 0) {
                if (mObjAcch.ChkGroundHit()) {
                    if (field_0xb14.y < -30.0f) {
                        speedF *= 0.7f;
                        speed.y = field_0xb14.y * -0.4f;
                        setSmokePrtcl();
                    } else {
                        speedF = 0.0f;
                        speed.setall(0.0f);
                        field_0xba1 = 0;
                    }
                }
            } else if (field_0xba0 == 0 && !mObjAcch.ChkGroundHit()) {
                field_0xb68 = mGroundH - current.pos.y;
                field_0xba1 = 1;
            }
        }

        if (mType == 0 && field_0xb9f == 0 && field_0xb9e == 0 && field_0xba1 == 0) {
            cLib_onBit(attention_info.flags, 0x10UL);
            fopAcM_OnCarryType(this, fopAcM_CARRY_CHICKEN);
        }

        field_0xb14 = speed;

        if (field_0xb9d != 0) {
            f32 fVar2;
            if (mStts.GetCCMoveP() != NULL) {
                fVar2 = 900.0f;
            } else {
                fVar2 = 1200.0f;
            }
            cLib_addCalc2(&field_0xb64, fVar2, 0.05f, 100.0f);
        } else {
            cLib_addCalc2(&field_0xb64, 0.0f, 0.25f, 100.0f);
        }

        shape_angle.x = field_0xb64 * cM_ssin(field_0xb6c * 1000);
        shape_angle.z = field_0xb64 * cM_scos(field_0xb6c * 1000);
        cLib_chaseAngleS(&field_0xb2c.y, 0, 10);
        shape_angle.y += field_0xb2c.y;
        field_0xb6c++;

        if (field_0xb9c != 0) {
            fVar1 = JMAFastSqrt(mStts.GetCCMoveP()->x * mStts.GetCCMoveP()->x + mStts.GetCCMoveP()->z * mStts.GetCCMoveP()->z);
            if (1.0f < fVar1) {
                fopAc_ac_c* actor_p = NULL;
                for (int i = 0; i < 2; i++) {
                    if (field_0x808[i].ChkCoHit() != 0) {
                        actor_p = field_0x808[i].GetCoHitAc();
                        if (actor_p != NULL && fopAcM_GetName(actor_p) == PROC_ALINK) break;
                        actor_p = NULL;
                    }
                }

                if (actor_p != NULL) {
                    field_0xb76 = actor_p->current.angle.y;
                } else {
                    field_0xb76 = cM_atan2s(mStts.GetCCMoveP()->x, mStts.GetCCMoveP()->z);
                }

                if (actor_p != NULL || field_0xb4c == 0) {
                    if (fVar1 < 30.0f) {
                        fVar1 = 30.0f;
                    } else if (fVar1 < 0.0f) {
                        fVar1 = 0.0f;
                    }

                    field_0xb50 = fVar1;
                    field_0xb2c.y = 0x200;
                    field_0xb4c = 10;
                }
            }
        } else {
            field_0xb50 = 0;
        }

        cLib_addCalc2(&field_0xb50, 0.0f, 0.33f, 100.0f);
        fopAcM_calcSpeed(this);

        if (field_0xb9c != 0) {
            field_0xb20.x = field_0xb50 * cM_ssin(field_0xb76);
            field_0xb20.z = field_0xb50 * cM_scos(field_0xb76);
            field_0xb20.y = 0.0f;
            speed += field_0xb20;
            fopAcM_posMove(this, NULL);
        } else {
            fopAcM_posMove(this, mStts.GetCCMoveP());
        }

        mObjAcch.CrrPos(dComIfG_Bgsp());
        field_0x7cc = mObjAcch.m_gnd;
        mGroundH = mObjAcch.GetGroundH();
        if (mGroundH != -1000000000.0f) {
            field_0xb6e = daNpcF_getGroundAngle(&field_0x7cc, shape_angle.y);
            setEnvTevColor();
            setRoomNo();
        }
    }

    attention_info.position = current.pos;
    eyePos = current.pos;

    if (field_0xba2 == 0) {
        setMtx();
    }

    if (field_0xb9f == 0) {
        if (mType == 0 || mType == 1) {
            cXyz sp8c, sp98;
            sp8c.set(-14.0f, 0.0f, 0.0f);
            mDoMtx_stack_c::copy(field_0x574->getBaseTRMtx());
            mDoMtx_stack_c::multVec(&sp8c, &sp98);
            field_0x808[0].SetR(30.0f);
            field_0x808[0].SetH(30.0f);
            field_0x808[0].SetC(sp98);
            dComIfG_Ccsp()->Set(&field_0x808[0]);

            sp8c.set(24.0f, 0.0f, 0.0f);
            mDoMtx_stack_c::multVec(&sp8c, &sp98);
            field_0x808[1].SetR(30.0f);
            field_0x808[1].SetH(30.0f);
            field_0x808[1].SetC(sp98);
            dComIfG_Ccsp()->Set(&field_0x808[1]);
        } else {
            field_0x808[0].ClrCoHit();
            field_0x808[0].SetR(daObj_Kago_Param_c::m.mWallR);
            field_0x808[0].SetH(daObj_Kago_Param_c::m.field_0x14);
            field_0x808[0].SetC(current.pos);
            dComIfG_Ccsp()->Set(&field_0x808[0]);
        }
    }

    field_0x808[0].ClrCoHit();
    field_0x808[1].ClrCoHit();
    field_0xba0 = ((-iVar1 >> 24) | (iVar1 >> 24)) >> 7;
    cLib_calcTimer(&field_0xb48);
    cLib_calcTimer(&field_0xb4c);
    field_0xba2 = 0;

    return 1;
}

/* 80C332D0-80C333F0 0018D0 0120+00 1/1 0/0 0/0 .text            Draw__12daObj_Kago_cFv */
int daObj_Kago_c::Draw() {
    // NONMATCHING
    if(field_0xb9f == 0 && health != 3) {
        g_env_light.settingTevStruct(0, &current.pos, &tevStr);
        g_env_light.setLightTevColorType_MAJI(field_0x574, &tevStr);
        mDoExt_modelUpdateDL(field_0x574);

        fopAc_ac_c* basket_p = NULL;
        fopAcM_SearchByID(daPy_getPlayerActorClass()->getGrabActorID(), &basket_p);
        if (this == basket_p) {
            model = field_0x574;
        } else if (mGroundH != -1000000000.0f) {
            field_0xb78 = dComIfGd_setShadow(field_0xb78, 1, field_0x574, &current.pos, daObj_Kago_Param_c::m.field_0x0c, mGroundH,
                                             20.0f, current.pos.y, field_0x7cc, &tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
        }
    }

    return 1;
}

/* 80C333F0-80C33410 0019F0 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__12daObj_Kago_cFP10fopAc_ac_c */
int daObj_Kago_c::createHeapCallBack(fopAc_ac_c* actor) {
    daObj_Kago_c* i_this = (daObj_Kago_c*)actor;
    return i_this->CreateHeap();
}

/* 80C33410-80C334B4 001A10 00A4+00 2/2 0/0 0/0 .text            isDelete__12daObj_Kago_cFv */
BOOL daObj_Kago_c::isDelete() {
    u8 rv;
    switch (mType) {
        case 0:
            rv = 0;
            if (daNpcT_chkEvtBit(0x1E) || daNpcT_chkEvtBit(0x92)) {
                rv = 1;
            }

            return rv;

        case 1:
        case 2:
        case 3:
            rv = 0;
            if (!daNpcT_chkEvtBit(0x1E) && !daNpcT_chkEvtBit(0x92)) {
                rv = 1;
            }

            return rv;

        default:
            return FALSE;
    }
}

/* 80C334B4-80C33510 001AB4 005C+00 2/2 0/0 0/0 .text            setEnvTevColor__12daObj_Kago_cFv */
void daObj_Kago_c::setEnvTevColor() {
    tevStr.YukaCol = dComIfG_Bgsp().GetPolyColor(field_0x7cc);
    tevStr.room_no = dComIfG_Bgsp().GetRoomId(field_0x7cc);
}

/* 80C33510-80C33554 001B10 0044+00 2/2 0/0 0/0 .text            setRoomNo__12daObj_Kago_cFv */
void daObj_Kago_c::setRoomNo() {
    int room_id = dComIfG_Bgsp().GetRoomId(field_0x7cc);
    fopAcM_SetRoomNo(this, room_id);
    mStts.SetRoomId(room_id);
}

/* 80C33554-80C3359C 001B54 0048+00 1/1 0/0 0/0 .text            reset__12daObj_Kago_cFv */
void daObj_Kago_c::reset() {
    memset(&field_0xb14, 0, (u8*)&field_0xba3 - (u8*)&field_0xb14);
    field_0xb0c = 1.0f;
}

/* 80C3359C-80C33620 001B9C 0084+00 1/1 0/0 0/0 .text            setMtx__12daObj_Kago_cFv */
void daObj_Kago_c::setMtx() {
    csXyz acStack_18(shape_angle);
    acStack_18.y += field_0xb74;
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(acStack_18);
    mDoMtx_stack_c::scaleM(scale);
    field_0x574->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80C33620-80C337B0 001C20 0190+00 1/1 0/0 0/0 .text            getWallAngle__12daObj_Kago_cFsPs */
int daObj_Kago_c::getWallAngle(s16 param_1, s16* param_2) {
    cXyz sp40[2];
    cXyz sp50, sp5c;
    mDoMtx_stack_c::YrotS(param_1);
    sp5c.set(0.0f, 0.0f, -50.0f);
    mDoMtx_stack_c::multVec(&sp5c, &sp50);
    sp50 += current.pos;
    sp5c.set(5.0f, 0.0f, 200.0f);

    int i = 0;
    for (; i < 2; i++) {
        mDoMtx_stack_c::multVec(&sp5c, &sp40[i]);
        sp5c.x = sp5c.x * -1.0f;
        sp40[i] += sp50;
        field_0xa9c.Set(&sp50, &sp40[i], this);
        if (dComIfG_Bgsp().LineCross(&field_0xa9c)) {
            sp40[i] = field_0xa9c.GetCross();
        } else {
            return 0;
        }
    }

    sp5c = sp40[1] - sp40[0];
    *param_2 = cM_atan2s(sp5c.x, sp5c.z) + 0x4000;
    return 1;
}

UNK_REL_BSS;

/* 80C33F4C-80C33F50 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daObj_Kago_Param_c l_HIO;

/* 80C337B0-80C338D0 001DB0 0120+00 1/1 0/0 0/0 .text setGoalPosAndAngle__12daObj_Kago_cFv */
void daObj_Kago_c::setGoalPosAndAngle() {
    static cXyz pos(1593.0f, 659.0f, -334.0f);
    static s16 angle = 0x471C;

    home.angle.y = angle;
    current.angle = home.angle;
    shape_angle = current.angle;
    old.angle = current.angle;
    current.pos = pos;
    old.pos = current.pos;
}

/* 80C338D0-80C33958 001ED0 0088+00 1/1 0/0 0/0 .text            setSmokePrtcl__12daObj_Kago_cFv */
void daObj_Kago_c::setSmokePrtcl() {
    if (field_0xb9f == 0) {
        fopAcM_effSmokeSet1(&field_0xb94, &field_0xb98, &current.pos, NULL, 0.7f, &tevStr, 1);
        dComIfGp_particle_levelEmitterOnEventMove(field_0xb94);
        dComIfGp_particle_levelEmitterOnEventMove(field_0xb98);
    }
}

/* 80C33958-80C33A58 001F58 0100+00 1/1 0/0 0/0 .text            setWaterPrtcl__12daObj_Kago_cFv */
void daObj_Kago_c::setWaterPrtcl() {
    // NONMATCHING
    static u16 emttrId[4] = {
        0x01B8, 0x01B9, 0x01BA, 0x01BB,
    };

    if (field_0xb9f == 0) {
        cXyz sp1c(1.0f, 1.0f, 1.0f);
        cXyz sp28(current.pos.x, mWaterY, current.pos.z);

        for (int i = 0; i < 4; i++) {
            mWaterPrtcls[i] = dComIfGp_particle_set(mWaterPrtcls[i], emttrId[i], &sp28, &tevStr, 0, &sp1c, 0xFF, 0, -1, NULL, NULL, NULL);
            dComIfGp_particle_levelEmitterOnEventMove(mWaterPrtcls[i]);
        }
    }
}

/* 80C33A58-80C33AB4 002058 005C+00 1/1 0/0 0/0 .text            setHamonPrtcl__12daObj_Kago_cFv */
void daObj_Kago_c::setHamonPrtcl() {
    if (field_0xb9f == 0) {
        cXyz sp18(current.pos.x, mWaterY, current.pos.z);
        fopAcM_effHamonSet(&mHamonPrtcl, &sp18, 1.0f, 0.05f);
    }
}

/* 80C33AB4-80C33AD4 0020B4 0020+00 1/0 0/0 0/0 .text            daObj_Kago_Create__FPv */
static int daObj_Kago_Create(void* param_1) {
    daObj_Kago_c* i_this = (daObj_Kago_c*)param_1;
    return i_this->create();
}

/* 80C33AD4-80C33AF4 0020D4 0020+00 1/0 0/0 0/0 .text            daObj_Kago_Delete__FPv */
static int daObj_Kago_Delete(void* param_1) {
    daObj_Kago_c* i_this = (daObj_Kago_c*)param_1;
    return i_this->Delete();
}

/* 80C33AF4-80C33B14 0020F4 0020+00 1/0 0/0 0/0 .text            daObj_Kago_Execute__FPv */
static int daObj_Kago_Execute(void* param_1) {
    daObj_Kago_c* i_this = (daObj_Kago_c*)param_1;
    return i_this->Execute();
}

/* 80C33B14-80C33B34 002114 0020+00 1/0 0/0 0/0 .text            daObj_Kago_Draw__FPv */
static int daObj_Kago_Draw(void* param_1) {
    daObj_Kago_c* i_this = (daObj_Kago_c*)param_1;
    return i_this->Draw();
}

/* 80C33B34-80C33B3C 002134 0008+00 1/0 0/0 0/0 .text            daObj_Kago_IsDelete__FPv */
static int daObj_Kago_IsDelete(void* param_1) {
    return 1;
}

AUDIO_INSTANCES;

/* 80C33D94-80C33D94 000114 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/* 80C33E24-80C33E44 -00001 0020+00 1/0 0/0 0/0 .data            daObj_Kago_MethodTable */
static actor_method_class daObj_Kago_MethodTable = {
    (process_method_func)daObj_Kago_Create,
    (process_method_func)daObj_Kago_Delete,
    (process_method_func)daObj_Kago_Execute,
    (process_method_func)daObj_Kago_IsDelete,
    (process_method_func)daObj_Kago_Draw,
};

/* 80C33E44-80C33E74 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_KAGO */
extern actor_process_profile_definition g_profile_OBJ_KAGO = {
  fpcLy_CURRENT_e,         // mLayerID
  8,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_OBJ_KAGO,           // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daObj_Kago_c),    // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  717,                     // mPriority
  &daObj_Kago_MethodTable, // sub_method
  0x00044100,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};
