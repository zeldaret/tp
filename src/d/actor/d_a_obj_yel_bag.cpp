/**
 * @file d_a_obj_yel_bag.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_yel_bag.h"
#include "d/actor/d_a_npc.h"
#include "d/d_com_inf_game.h"
#include "Z2AudioLib/Z2Instances.h"
#include "SSystem/SComponent/c_lib.h"

/* 80D3DD94-80D3DD9C 000020 0008+00 1/1 0/0 0/0 .data            l_bmdGetParamList */
static int l_bmdGetParamList[2] = {
    3, 0,
};

/* 80D3DD9C-80D3DDA8 000028 000C+00 1/0 0/0 0/0 .data            l_loadRes_YBAG0 */
static int l_loadRes_YBAG0[3] = {
    0, -1, -1,
};

/* 80D3DDA8-80D3DDB0 -00001 0008+00 1/2 0/0 0/0 .data            l_loadRes_list */
static int* l_loadRes_list[2] = {
    l_loadRes_YBAG0,
    l_loadRes_YBAG0,
};

/* 80D3DDB0-80D3DDB4 -00001 0004+00 2/4 0/0 0/0 .data            l_resNames */
static char* l_resNames[] = {"yel_bag"};

/* 80D3DDB4-80D3DDF8 000040 0044+00 1/2 0/0 0/0 .data            mCcDCyl__12daObj_YBag_c */
dCcD_SrcCyl daObj_YBag_c::mCcDCyl = {
    daNpcT_c::mCcDObjData,
    {{0.0f, 0.0f, 0.0f}, 0.0f, 0.0f}
};

/* 80D3DDF8-80D3DE00 000084 0008+00 1/1 0/0 0/0 .data            emttrId$4511 */
static u16 emttrId[4] = {
    0x01B8, 0x01B9, 0x01BA, 0x01BB,
};

/* 80D3C0EC-80D3C200 0000EC 0114+00 1/1 0/0 0/0 .text            __ct__12daObj_YBag_cFv */
daObj_YBag_c::daObj_YBag_c() {
}

/* 80D3C408-80D3C610 000408 0208+00 1/0 0/0 0/0 .text            __dt__12daObj_YBag_cFv */
daObj_YBag_c::~daObj_YBag_c() {
    for (int i = 0; l_loadRes_list[mType][i] >= 0; i++) {
        dComIfG_resDelete(&mPhases[i], l_resNames[l_loadRes_list[mType][i]]);
    }
}

/* 80D3DC8C-80D3DCBC 000000 0030+00 4/4 0/0 0/0 .rodata          mCcDObjInfo__12daObj_YBag_c */
const dCcD_SrcGObjInf daObj_YBag_c::mCcDObjInfo = {
    {0, {{0, 0, 0}, {0, 0x00}, {0x79}}},
    {dCcD_SE_NONE, 0, 0, 0, 0},
    {dCcD_SE_NONE, 0, 0, 0, 0},
    {0},
};

/* 80D3DCBC-80D3DCE8 000030 002C+00 0/3 0/0 0/0 .rodata          m__18daObj_YBag_Param_c */
f32 const daObj_YBag_Param_c::m[11] = {
    0.0f, -4.0f, 1.0f, 400.0f, 255.0f, 10.0f, 4.0f, 10.0f, 
    41.0f, 32.0f, 3.0f,
};

/* 80D3C610-80D3C898 000610 0288+00 1/1 0/0 0/0 .text            create__12daObj_YBag_cFv */
int daObj_YBag_c::create() {
    fopAcM_SetupActor(this, daObj_YBag_c);
    mType = getTypeFromParam();
    int successfulLoads = 0;
    int i = 0;
    for (; l_loadRes_list[mType][i] >= 0; i++) {
        int rv = dComIfG_resLoad(&mPhases[i], l_resNames[l_loadRes_list[mType][i]]);
        if (rv == cPhs_ERROR_e || rv == cPhs_UNK3_e) {
            return cPhs_ERROR_e;
        }
        if (rv == cPhs_COMPLEATE_e) {
            successfulLoads++;
        }
    }
    if (successfulLoads == i) {
        if (fopAcM_entrySolidHeap(this, createHeapCallBack, 0) == 0) {
            return cPhs_ERROR_e;
        }
        if (isDelete()) {
            return cPhs_ERROR_e;
        }
        fopAcM_SetMtx(this, mModel->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -300.0, -50.0f, -300.0, 300.0f, 450.0f, 300.0f);
        mAcchCir.SetWall(daObj_YBag_Param_c::m[7], daObj_YBag_Param_c::m[6]);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                  fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mStts.Init(daObj_YBag_Param_c::m[4], 0, this);
        mCyl.Set(mCcDCyl);
        mCyl.SetStts(&mStts);
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        field_0x9f0 = mAcch.GetGroundH();
        setEnvTevColor();
        setRoomNo();
        reset();
        Execute();
        return cPhs_COMPLEATE_e;
    }
    return cPhs_INIT_e;
}

/* 80D3C898-80D3C93C 000898 00A4+00 1/1 0/0 0/0 .text            CreateHeap__12daObj_YBag_cFv */
int daObj_YBag_c::CreateHeap() {
    J3DModelData* modelData = NULL;
    if (l_bmdGetParamList[0] >= 0) {
        modelData = (J3DModelData*)dComIfG_getObjectRes(l_resNames[l_bmdGetParamList[1]],
                                                 l_bmdGetParamList[0]);
    }
    if (modelData != NULL) {
        mModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    } else {
        mModel = NULL;
    }
    return mModel != NULL;
}

/* 80D3C93C-80D3C970 00093C 0034+00 1/1 0/0 0/0 .text            Delete__12daObj_YBag_cFv */
int daObj_YBag_c::Delete() {
    fopAcM_GetID(this);
    this->~daObj_YBag_c();
    return 1;
}

/* 80D3C970-80D3D32C 000970 09BC+00 2/2 0/0 0/0 .text            Execute__12daObj_YBag_cFv */
int daObj_YBag_c::Execute() {
    int local_8c = fopAcM_checkCarryNow(this) != 0;
    scale.set(daObj_YBag_Param_c::m[2], daObj_YBag_Param_c::m[2], daObj_YBag_Param_c::m[2]);
    attention_info.flags = 0;
    attention_info.distances[4] = 6;
    mAcchCir.SetWallR(daObj_YBag_Param_c::m[7]);
    mAcchCir.SetWallH(daObj_YBag_Param_c::m[6]);
    gravity = daObj_YBag_Param_c::m[1];
    if (local_8c != 0) {
        mAcch.ClrWallHit();
        mAcch.ClrGroundHit();
        mAcch.SetWallNone();
        mAcch.SetGrndNone();
        speed.setall(0.0f);
        speedF = 0.0f;
        gravity = 0.0f;
        field_0x9dc.setall(0);
        field_0xa31 = 0;
        field_0xa32 = 0;
        field_0xa33 = 0;
    } else {
        mAcch.ClrWallNone();
        mAcch.ClrGrndNone();
        if (field_0xa34 != 0 && cM3d_IsZero(speedF) == false) {
            fopAcM_carryOffRevise(this);
            s16 sVar11 = cM_deg2s(daObj_YBag_Param_c::m[9]);
            speed.setall(0.0f);
            speed.y =
                daObj_YBag_Param_c::m[8] * cM_ssin(sVar11);
            speedF =
                daObj_YBag_Param_c::m[8] * cM_scos(sVar11);
            field_0xa04 = 0x4000;
            field_0xa33 = 1;
        } else {
            fopAcM_getWaterY(&current.pos, &field_0x9f4);
            if (field_0x9f4 != -1e9f && daObj_YBag_Param_c::m[10] < field_0x9f4 - field_0x9f0 &&
                current.pos.y <= field_0x9f4 && field_0xa32 == 0)
            {
                if (field_0xa33 != 0) {
                    if (speed.y < 0.0f) {
                        field_0x9fc = 3000.0f;
                    }
                    field_0xa33 = 0;
                    setWaterPrtcl();
                }
                speed.y = 0.0f;
                speedF *= 0.3f;
                field_0xa31 = 0;
                field_0xa32 = 1;
            }
            if (field_0xa32 != 0 && field_0xa31 == 0) {
                if (speed.y < 0.0f) {
                    cLib_addCalc(&speed.y, 2.0f, 0.5f, 5.5f, 0.5f);
                } else {
                    cLib_addCalc(&speed.y, 2.0f, 0.5f, 0.5f, 0.5f);
                }
                if (field_0x9f4 <
                    current.pos.y + daObj_YBag_Param_c::m[10])
                {
                    field_0x9dc.y = 0x100;
                    mAcch.ClrGroundHit();
                    field_0xa31 = 1;
                }
            }
            s16 local_96;
            if (field_0xa31 != 0) {
                if (mAcch.ChkGroundHit()) {
                    field_0xa31 = 0;
                    field_0xa32 = 0;
                    field_0x9dc.setall(0);
                    speedF = 0;
                    speed.setall(0.0f);
                } else {
                    cXyz local_7c;
                    int local_90;
                    if (dPath_GetPolyRoomPathVec(mGndChk, &local_7c, &local_90) != 0) {
                        local_7c.normalizeZP();
                        cLib_addCalcAngleS2(&current.angle.y, cM_atan2s(local_7c.x, local_7c.z), 8, 0x400);
                        cLib_chaseAngleS(&field_0x9dc.y, (field_0x9dc.y < 0) ? -0x80 : 0x80, 0x10);
                        cLib_addCalc2(&speedF,
                            local_90 * 0.75f,
                            0.25f, 1.0f);
                    } else {
                        cLib_chaseF(&speedF, 0.0f, 0.1f);
                    }
                    cLib_addCalc2(&current.pos.y, field_0x9f4 - daObj_YBag_Param_c::m[10], 0.5f,
                                  2.0f);
                    speed.y = 0.0f;
                    setHamonPrtcl();
                    gravity = 0;
                    if (field_0x9e4 == 0 &&
                         mAcch.ChkWallHit() &&
                        getWallAngle(current.angle.y, &local_96) != 0)
                    {
                        field_0x9e4 = 10;
                        s16 temp = current.angle.y - local_96;
                        current.angle.y +=
                            (s16)(0x8000 - ((temp) << 1) + (s16)cM_rndFX(2000.0f));
                        field_0x9dc.y = -field_0x9dc.y / 2;
                        speedF *= 0.3f;
                    }
                }
            } else {
                if (field_0xa32 != 0) {
                    cLib_chaseF(&speedF, 0.0f, 0.3f);
                    gravity = 0;
                } else {
                    if (mAcch.ChkWallHit() &&
                        getWallAngle(current.angle.y, &local_96) != 0)
                    {
                        s16 temp = current.angle.y - local_96;
                        current.angle.y +=
                            (s16)(0x8000 - ((temp) << 1) + (s16)cM_rndFX(1000.0f));
                        speedF *= 0.5f;
                    }
                    if (mAcch.ChkGroundLanding()) {
                        if (field_0x9c4.y < -30.0f) {
                            if (field_0x9f4 != -1e9f && current.pos.y <= field_0x9f4) {
                                setWaterPrtcl();
                            } else {
                                setSmokePrtcl();
                            }
                        }
                        if (field_0xa33 != 0) {
                            field_0xa33 = 0;
                        }
                        speedF = 0;
                        speed.setall(0.0f);
                    }
                }
            }
            if (field_0xa33 == 0) {
                cLib_onBit(attention_info.flags, 0x10UL);
                fopAcM_OnCarryType(this, fopAcM_CARRY_ITEM);
            }
            
        }
    }
    field_0x9c4 = speed;
    if (field_0xa32 != 0) {
        f32 fVar1;
        if (mStts.GetCCMoveP() != 0) {
            fVar1 = 1200.0f;
        } else {
            fVar1 = 900.0f;
        }
        cLib_addCalc2(&field_0x9fc, fVar1, 0.05f, 100.0f);
    } else {
        cLib_addCalc2(&field_0x9fc, 0.0f, 0.25f, 100.0f);
    }
    shape_angle.x = field_0x9fc * cM_ssin(field_0xa00 * 1000);
    shape_angle.z = field_0x9fc * cM_scos(field_0xa00 * 1000);
    cLib_chaseAngleS(&field_0x9dc.y, 0, 10);
    shape_angle.y += field_0x9dc.y;
    field_0xa00++;
    cLib_chaseF(&field_0x9ec, 0.0, 0.1f);
    if (field_0xa31 != 0) {
        if (field_0x9e8 == 0) {
            f32 dVar15 = JMAFastSqrt(
                mStts.GetCCMoveP()->x * mStts.GetCCMoveP()->x + mStts.GetCCMoveP()->z * mStts.GetCCMoveP()->z);
            if (1.0f < dVar15) {
                field_0xa08 = cM_atan2s(mStts.GetCCMoveP()->x, mStts.GetCCMoveP()->z);
                field_0x9ec += dVar15 * 0.45f;
                if (4.0f < field_0x9ec) {
                    field_0x9ec = 4.0f;
                }
                field_0x9dc.y = 0x200;
                field_0x9e8 = 10;
            }
        }
    } else {
        field_0x9ec = 0;
    }
    field_0x9d0.x = (field_0x9ec * cM_ssin(field_0xa08));
    field_0x9d0.z = (field_0x9ec * cM_scos(field_0xa08));
    field_0x9d0.y = 0.0f;
    if (local_8c == 0) {
        fopAcM_calcSpeed(this);
        speed += field_0x9d0;
        fopAcM_posMove(this, mStts.GetCCMoveP());
    }
    if (field_0xa31 != 0) {
        fopAcM_riverStream(&current.pos, &field_0xa06, &field_0x9f8, 0.5f);
    }
    mAcch.CrrPos(dComIfG_Bgsp());
    mGndChk = mAcch.m_gnd;
    field_0x9f0 = mAcch.GetGroundH();
    if (field_0x9f0 != -1e9f) {
        field_0xa02 = daNpcF_getGroundAngle(&mGndChk, shape_angle.y);
        setEnvTevColor();
        setRoomNo();
    }
    attention_info.position = current.pos;
    attention_info.position.y += daObj_YBag_Param_c::m[0];
    eyePos = current.pos;
    setMtx();
    field_0xa04 = calcRollAngle(field_0xa04, 0x10000);
    mCyl.ClrCoHit();
    mCyl.SetR(daObj_YBag_Param_c::m[7]);
    mCyl.SetH(daObj_YBag_Param_c::m[5]);
    mCyl.SetC(current.pos);
    dComIfG_Ccsp()->Set(&mCyl);
    field_0xa34 = local_8c != 0;
    cLib_calcTimer(&field_0x9e4);
    cLib_calcTimer(&field_0x9e8);
    return 1;
}

/* 80D3D32C-80D3D438 00132C 010C+00 1/1 0/0 0/0 .text            Draw__12daObj_YBag_cFv */
int daObj_YBag_c::Draw() {
    g_env_light.settingTevStruct( 0,
                                         &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(
                                                  mModel,
                                                  &tevStr);
    mDoExt_modelUpdateDL(mModel);
    if (field_0x9f0 != -1e9f) {
        fopAc_ac_c* grabActor = NULL;
        s32 grabActorId = daPy_getPlayerActorClass()->getGrabActorID();
        fopAcM_SearchByID(grabActorId, &grabActor);
        if (this == grabActor) {
            model = mModel;
        } else {
            ;
            mShadowId = dComIfGd_setShadow(mShadowId, 1, mModel, &current.pos,
                daObj_YBag_Param_c::m[3], 20.0f,
                current.pos.y, field_0x9f0, mGndChk,
                &tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
        }
    }
    return 1;
}

/* 80D3D438-80D3D458 001438 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__12daObj_YBag_cFP10fopAc_ac_c             */
int daObj_YBag_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return static_cast<daObj_YBag_c*>(i_this)->CreateHeap();
}

/* 80D3D458-80D3D460 001458 0008+00 1/1 0/0 0/0 .text            getTypeFromParam__12daObj_YBag_cFv
 */
int daObj_YBag_c::getTypeFromParam() {
    return 0;
}

/* 80D3D460-80D3D468 001460 0008+00 1/1 0/0 0/0 .text            isDelete__12daObj_YBag_cFv */
int daObj_YBag_c::isDelete() {
    return 0;
}

/* 80D3D468-80D3D4C4 001468 005C+00 2/2 0/0 0/0 .text            setEnvTevColor__12daObj_YBag_cFv */
void daObj_YBag_c::setEnvTevColor() {
    tevStr.YukaCol = dComIfG_Bgsp().GetPolyColor(mGndChk);
    tevStr.room_no = dComIfG_Bgsp().GetRoomId(mGndChk);
}

/* 80D3D4C4-80D3D508 0014C4 0044+00 2/2 0/0 0/0 .text            setRoomNo__12daObj_YBag_cFv */
void daObj_YBag_c::setRoomNo() {
    int roomNo = dComIfG_Bgsp().GetRoomId(mGndChk);
    fopAcM_SetRoomNo(this, roomNo);
    mStts.SetRoomId(roomNo);
}

/* 80D3D508-80D3D5C8 001508 00C0+00 1/1 0/0 0/0 .text            reset__12daObj_YBag_cFv */
void daObj_YBag_c::reset() {
    field_0x9c4.setall(0.0f);
    field_0x9d0.setall(0.0f);
    field_0x9dc.setall(0);
    field_0x9e4 = 0;
    field_0x9e8 = 0;
    field_0x9ec = 0.0f;
    field_0x9f0 = 0.0f;
    field_0x9f4 = 0.0f;
    field_0x9f8 = 0.0f;
    field_0x9fc = 0.0f;
    field_0xa00 = 0;
    field_0xa02 = 0;
    field_0xa04 = 0;
    field_0xa06 = 0;
    field_0xa08 = 0;
    mShadowId = 0;
    field_0xa10 = -1;
    field_0xa14 = -1;
    for (int i = 0; i < 4; i++) {
        mWaterParticles[i] = -1;
    }
    for (int i = 0; i < 2; i++) {
        field_0xa28[i] = -1;
    }
    field_0xa31 = 0;
    field_0xa32 = 0;
    field_0xa33 = 0;
    field_0xa34 = 0;
}

/* 80D3D5C8-80D3D69C 0015C8 00D4+00 1/1 0/0 0/0 .text            setMtx__12daObj_YBag_cFv */
void daObj_YBag_c::setMtx() {
    s16 angleDiff = current.angle.y - shape_angle.y;
    s16 dVar5 = field_0xa04 * cM_scos(angleDiff);
    s16 dVar6 = field_0xa04 * cM_ssin(angleDiff);
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::YrotM(dVar5);
    mDoMtx_stack_c::scaleM(scale);
    mModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80D3D69C-80D3D73C 00169C 00A0+00 1/1 0/0 0/0 .text            calcRollAngle__12daObj_YBag_cFsi */
s16 daObj_YBag_c::calcRollAngle(s16 param_1, int param_2) {
    if (param_1 != 0) {
        int rv;
        int diff = param_2 - (u16)param_1;
        if (abs(diff) > 4) {
            if ((int)diff / 4 > 0x800) {
                rv = (u16)param_1 + 0x800;
            } else {
                if (diff / 4 < -0x800) {
                    rv = (u16)param_1 - 0x800;
                } else {
                    rv = (u16)param_1 + (s32)diff / 4;
                }
            }
        } else {
            rv = param_2;
        }
        return rv;
    }
    return 0;
}

/* 80D3D73C-80D3D8CC 00173C 0190+00 1/1 0/0 0/0 .text            getWallAngle__12daObj_YBag_cFsPs */
int daObj_YBag_c::getWallAngle(s16 param_1, s16* param_2) {
    cXyz cStack_50;
    cXyz acStack_40[2];
    cXyz local_5c;
    mDoMtx_stack_c::YrotS(param_1);
    local_5c.set(0.0f, 0.0f, -50.0f);
    mDoMtx_stack_c::multVec(&local_5c, &cStack_50);
    cStack_50 += current.pos;
    local_5c.set(5.0f, 0.0f, 200.0f);
    for (int i = 0; i < 2; i++) {
        mDoMtx_stack_c::multVec(&local_5c, &acStack_40[i]);
        local_5c.x = -1.0f * local_5c.x;
        acStack_40[i] += cStack_50;
        mLinChk.Set(&cStack_50, &acStack_40[i], this);
        if (dComIfG_Bgsp().LineCross(&mLinChk)) {
            acStack_40[i] = mLinChk.GetCross();
        } else {
            return 0;
        }
    }
    local_5c = acStack_40[1] - acStack_40[0];
    *param_2 = cM_atan2s(local_5c.x, local_5c.z) + 0x4000;
    return 1;
}

/* 80D3D8CC-80D3D948 0018CC 007C+00 1/1 0/0 0/0 .text            setSmokePrtcl__12daObj_YBag_cFv */
void daObj_YBag_c::setSmokePrtcl() {
    fopAcM_effSmokeSet1(&field_0xa10, &field_0xa14, &current.pos, NULL, 0.4f, &tevStr, 1);
    dComIfGp_particle_levelEmitterOnEventMove(field_0xa10);
    dComIfGp_particle_levelEmitterOnEventMove(field_0xa14);
}

/* 80D3DF1C-80D3DF20 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daObj_YBag_Param_c l_HIO;

/* 80D3D948-80D3DA70 001948 0128+00 1/1 0/0 0/0 .text            setWaterPrtcl__12daObj_YBag_cFv */
void daObj_YBag_c::setWaterPrtcl() {
    static const cXyz scl(0.4f, 0.4f, 0.4f);

    cXyz acStack_28(current.pos.x, field_0x9f4, current.pos.z);
    for (int i = 0; i < 4; i++) {
        mWaterParticles[i] = dComIfGp_particle_set(mWaterParticles[i], emttrId[i], &acStack_28, &tevStr,
                                               NULL, &scl, 0xff, 0, -1, NULL, NULL, NULL);
        dComIfGp_particle_levelEmitterOnEventMove(mWaterParticles[i]);
    }
}

/* 80D3DA70-80D3DAC0 001A70 0050+00 1/1 0/0 0/0 .text            setHamonPrtcl__12daObj_YBag_cFv */
void daObj_YBag_c::setHamonPrtcl() {
    cXyz cStack_18(current.pos.x, field_0x9f4, current.pos.z);
    fopAcM_effHamonSet(field_0xa28, &cStack_18, 0.7f, 0.05f);
}

/* 80D3DAC0-80D3DAE0 001AC0 0020+00 1/0 0/0 0/0 .text            daObj_YBag_Create__FPv */
static int daObj_YBag_Create(void* i_this) {
    return static_cast<daObj_YBag_c*>(i_this)->create();
}

/* 80D3DAE0-80D3DB00 001AE0 0020+00 1/0 0/0 0/0 .text            daObj_YBag_Delete__FPv */
static int daObj_YBag_Delete(void* i_this) {
    return static_cast<daObj_YBag_c*>(i_this)->Delete();
}

/* 80D3DB00-80D3DB20 001B00 0020+00 1/0 0/0 0/0 .text            daObj_YBag_Execute__FPv */
static int daObj_YBag_Execute(void* i_this) {
    return static_cast<daObj_YBag_c*>(i_this)->Execute();
}

/* 80D3DB20-80D3DB40 001B20 0020+00 1/0 0/0 0/0 .text            daObj_YBag_Draw__FPv */
static int daObj_YBag_Draw(void* i_this) {
    return static_cast<daObj_YBag_c*>(i_this)->Draw();
}

/* 80D3DB40-80D3DB48 001B40 0008+00 1/0 0/0 0/0 .text            daObj_YBag_IsDelete__FPv */
static int daObj_YBag_IsDelete(void* i_this) {
    return 1;
}

/* 80D3DE00-80D3DE20 -00001 0020+00 1/0 0/0 0/0 .data            daObj_YBag_MethodTable */
static actor_method_class daObj_YBag_MethodTable = {
    (process_method_func)daObj_YBag_Create,
    (process_method_func)daObj_YBag_Delete,
    (process_method_func)daObj_YBag_Execute,
    (process_method_func)daObj_YBag_IsDelete,
    (process_method_func)daObj_YBag_Draw,
};

/* 80D3DE20-80D3DE50 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_YBAG */
extern actor_process_profile_definition g_profile_OBJ_YBAG = {
  fpcLy_CURRENT_e,         // mLayerID
  8,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_OBJ_YBAG,           // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daObj_YBag_c),    // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  715,                     // mPriority
  &daObj_YBag_MethodTable, // sub_method
  0x00044100,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

AUDIO_INSTANCES;

/* 80D3DD6C-80D3DD6C 0000E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
