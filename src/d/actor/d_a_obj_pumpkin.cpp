/**
 * @file d_a_obj_pumpkin.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_pumpkin.h"
#include "d/d_cc_d.h"
#if DEBUG
#include "SSystem/SComponent/c_counter.h"
#include "JSystem/JHostIO/JORFile.h"
#endif
#include "d/actor/d_a_npc.h"
#include "d/d_cc_uty.h"
#include "d/actor/d_a_npc_jagar.h"

/* ############################################################################################## */
/* 80CB8370-80CB83A4 000000 0034+00 5/5 0/0 0/0 .rodata          m__21daObj_Pumpkin_Param_c */
const daObj_Pumpkin_HIOParam daObj_Pumpkin_Param_c::m = {
    0.0f,
    -5.0f,
    1.4f,
    100.0f,
    73.0f,
    24.0f,
    12.0f,
    24.0f,
    37.0f,
    45.0f,
    18.0f,
    16,
    0,
    20,
    20,
};

#if DEBUG
daObj_Pumpkin_HIO_c::daObj_Pumpkin_HIO_c() {
    m = daObj_Pumpkin_Param_c::m;
}

void daObj_Pumpkin_HIO_c::listenPropertyEvent(const JORPropertyEvent* event) {
    char msg_buffer[2004];
    JORReflexible::listenPropertyEvent(event);
    JORFile file_handle;
    int len;
    switch (reinterpret_cast<u32>(event->id)) {
    case 0x40000002:
        if (file_handle.open(6, "すべてのファイル(*.*)\0*.*\0", NULL, NULL, NULL) != 0) {
            memset(msg_buffer, 0, 2000);
            len = 0;
            // interesting offset
            sprintf(msg_buffer + len, "%.3ff,\t//  注目オフセット\n", m.featured_offset);
            len = strlen(msg_buffer);
            // gravity
            sprintf(msg_buffer + len, "%.3ff,\t//  重力\n", m.gravity);
            len = strlen(msg_buffer);
            // scale
            sprintf(msg_buffer + len, "%.3ff,\t//  スケ－ル\n", m.scale);
            len = strlen(msg_buffer);
            // real shadow size
            sprintf(msg_buffer + len, "%.3ff,\t//  リアル影サイズ\n", m.real_shadow_size);
            len = strlen(msg_buffer);
            // weight
            sprintf(msg_buffer + len, "%.3ff,\t//  体重\n", m.weight);
            len = strlen(msg_buffer);
            // height
            sprintf(msg_buffer + len, "%.3ff,\t//  高さ\n", m.height);
            len = strlen(msg_buffer);
            // knee-length
            sprintf(msg_buffer + len, "%.3ff,\t//  ひざ丈\n", m.knee_length);
            len = strlen(msg_buffer);
            // width
            sprintf(msg_buffer + len, "%.3ff,\t//  幅\n", m.width);
            len = strlen(msg_buffer);
            // Emission speed
            sprintf(msg_buffer + len, "%.3ff,\t//  発射速度\n", m.fire_rate);
            len = strlen(msg_buffer);
            // Launch Angle
            sprintf(msg_buffer + len, "%.3ff,\t//  発射角度\n", m.launch_angle);
            len = strlen(msg_buffer);
            // Floating offset
            sprintf(msg_buffer + len, "%.3ff,\t//  浮きオフセット\n", m.floating_offset);
            len = strlen(msg_buffer);
            // Hold on
            sprintf(msg_buffer + len, "%d,   \t//  ふんばり\n", m.hold_on);
            len = strlen(msg_buffer);
            // Pull sound delay
            sprintf(msg_buffer + len, "%d,   \t//  引き抜き音遅延\n", m.pull_sound_delay);
            len = strlen(msg_buffer);
            // Growth time 1
            sprintf(msg_buffer + len, "%d,   \t//  成長時間１\n", m.growth_time_1);
            len = strlen(msg_buffer);
            // Growth time 2
            sprintf(msg_buffer + len, "%d,   \t//  成長時間２\n", m.growth_time_2);
            len = strlen(msg_buffer);
            //
            file_handle.writeData(msg_buffer, len);
            file_handle.close();
            OS_REPORT("write append success!::%6d\n", len);
        } else {
            OS_REPORT("write append failure!\n");
        }
        break;
    }
}

void daObj_Pumpkin_HIO_c::genMessage(JORMContext* ctext) {
    ctext->genSlider("注目オフセット  ", &m.featured_offset, 0.0f, 1000.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    ctext->genSlider("重力            ", &m.gravity, -100.0f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    ctext->genSlider("スケ－ル        ", &m.scale, 0.0f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    ctext->genSlider("リアル影サイズ  ", &m.real_shadow_size, 0.0f, 10000.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    ctext->genSlider("体重            ", &m.weight, 0.0f, 255.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    ctext->genSlider("高さ            ", &m.height, 0.0f, 1000.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    ctext->genSlider("ひざ丈          ", &m.knee_length, 0.0f, 1000.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    ctext->genSlider("幅              ", &m.width, 0.0f, 1000.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    ctext->genSlider("発射速度        ", &m.fire_rate, 0.0f, 1000.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    // fire angle:
    ctext->genSlider("発射角度        ", &m.launch_angle, 0.0f, 90.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    ctext->genSlider("浮きオフセット  ", &m.floating_offset, -100.0f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    // stand strong:
    ctext->genSlider("ふんばり        ", &m.hold_on, 0, 1000, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    ctext->genSlider("引き抜き音遅延  ", &m.pull_sound_delay, 0, 1000, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    ctext->genSlider("成長時間１      ", &m.growth_time_1, 0, 1000, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    ctext->genSlider("成長時間２      ", &m.growth_time_2, 0, 1000, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    // export file:
    ctext->genButton("ファイル書き出し", 0x40000002, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
}
#endif

/* 80CB83A4-80CB83D4 000034 0030+00 1/1 0/0 0/0 .rodata          l_ccDObjData */
const dCcD_SrcGObjInf l_ccDObjData = {
    {0, // mFlags
        {
            {0, 0, 0},  // mObjAt
            {0xD8FBFDFF, 0x1F}, // mObjTg
            {0x79}              // mObjCo
        } // mSrcObjHitInf
    }, // mObj
    {0, 0, 0, 0, 0}, // mGObjAt
    {10, 0, 0, 0, 0}, // mGObjTg
    {0} // mGObjCo
};


/* 80CB848C-80CB8494 000020 0008+00 2/3 0/0 0/0 .data            l_bmdData */
static int l_bmdData[1][2] = {
    {3, 1},
};

/* 80CB8494-80CB849C -00001 0008+00 2/4 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[2] = {
    "",
    "pumpkin",
};

/* 80CB849C-80CB84E0 000030 0044+00 1/2 0/0 0/0 .data            l_ccDCyl */
static dCcD_SrcCyl l_ccDCyl = {
    l_ccDObjData, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        0.0f, // mRadius
        0.0f // mHeight
    } // mCyl
};

/* 80CB85DC-80CB85E0 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static OBJ_PUMPKIN_HIO_CLASS l_HIO;

/* 80CB578C-80CB5A04 0000EC 0278+00 1/0 0/0 0/0 .text            __dt__15daObj_Pumpkin_cFv */
daObj_Pumpkin_c::~daObj_Pumpkin_c() {
    // "|%06d:%x|daObj_Pumpkin_c -> Destruct\n":
    OS_REPORT("|%06d:%x|daObj_Pumpkin_c -> デストラクト\n", g_Counter.mCounter0, this);
#if DEBUG
    if (mpHIO != NULL) {
        mpHIO->removeHIO();
    }
#endif

    dComIfG_resDelete(&mPhaseReq, l_resNameList[l_bmdData[0][1]]);
}

/* 80CB5A04-80CB5D74 000364 0370+00 1/1 0/0 0/0 .text            create__15daObj_Pumpkin_cFv */
int daObj_Pumpkin_c::create() {
    fopAcM_ct(this, daObj_Pumpkin_c);

    mType = getType();
    cPhs__Step phase = (cPhs__Step) dComIfG_resLoad(&mPhaseReq, l_resNameList[l_bmdData[0][1]]);
    if (phase == cPhs_COMPLEATE_e) {
        OS_REPORT("\t(%s:%d) ItemTableNo:%d, ProcType:%d<%08x> -> roomNo.%d", fopAcM_getProcNameString(this),
                  getType(), getItemTableNo(), getProcType(), fopAcM_GetParam(this), fopAcM_GetRoomNo(this));
        if ((daNpcT_chkEvtBit(0x1E) || daNpcT_chkEvtBit(0x92)) && isDelete()) {
            OS_REPORT("===>isDelete:TRUE\n");
            return cPhs_ERROR_e;
        }

        OS_REPORT("\n");
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0xEB0)) {
            return cPhs_ERROR_e;
        }

        J3DModelData* model_data = mpModel->getModelData();
        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());

        fopAcM_setCullSizeBox(this, -50.0f, -50.0f, -50.0f, 50.0f, 50.0f, 50.0f);
#if DEBUG
        mpHIO = &l_HIO;
        // pumpkin:
        mpHIO->entryHIO("かぼちゃ");
#endif

        reset();
        mObjAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                        fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mStts.Init(mpHIO->m.weight, 0, this);
        mCyl0.Set(l_ccDCyl);
        mCyl0.SetStts(&mStts);
        mCyl1.Set(l_ccDCyl);
        mCyl1.SetStts(&mStts);
        current.pos = home.pos;
        old.pos = current.pos;
        field_0xB60 = current.pos.y;
        setMtx();
    }

    return phase;
}

/* 80CB5F88-80CB6018 0008E8 0090+00 1/1 0/0 0/0 .text            CreateHeap__15daObj_Pumpkin_cFv */
int daObj_Pumpkin_c::CreateHeap() {
    J3DModelData* modelData = NULL;
    modelData = (J3DModelData*)dComIfG_getObjectRes(l_resNameList[l_bmdData[0][1]], l_bmdData[0][0]);
    if (modelData == NULL) {
        return 0;
    }

    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    return 1;
}

/* 80CB6018-80CB604C 000978 0034+00 1/1 0/0 0/0 .text            Delete__15daObj_Pumpkin_cFv */
int daObj_Pumpkin_c::Delete() {
    OS_REPORT("|%06d:%x|daObj_Pumpkin_c -> Delete\n", g_Counter.mCounter0, this);
    this->~daObj_Pumpkin_c();
    return 1;
}

/* 80CB604C-80CB7638 0009AC 15EC+00 1/1 0/0 0/0 .text            Execute__15daObj_Pumpkin_cFv */
int daObj_Pumpkin_c::Execute() {
    f32 var_f29 = mpHIO->m.floating_offset;
    f32 f_scale = mpHIO->m.scale;
    s16 sp_0x14 = 0;
    s16 sp_0x12 = 0;
    mPumpkinScale = 1.0f;
    if (mType == 1) {
        mPumpkinScale = 1.8f;
        var_f29 *= mPumpkinScale;
        f_scale *= mPumpkinScale;
    }

    scale.set(f_scale, f_scale, f_scale);
    fopAcM_OffCarryType(this, fopAcM_CARRY(fopAcM_CARRY_CHICKEN | fopAcM_CARRY_SIDE | fopAcM_CARRY_TYPE_1));
    attention_info.flags = 0;
    switch (mType) {
    case 0:
        attention_info.distances[fopAc_attn_CARRY_e] = 6;
        break;
    case 1:
        attention_info.distances[fopAc_attn_CARRY_e] = 8;
        break;
    case 2:
        attention_info.distances[fopAc_attn_CARRY_e] = 6;
        break;
    case 3:
        attention_info.distances[fopAc_attn_CARRY_e] = 8;
        break;
    default:
        attention_info.distances[fopAc_attn_CARRY_e] = 6;
        break;
    }

    mAcchCir.SetWallR(mpHIO->m.width * mPumpkinScale);
    mAcchCir.SetWallH(mpHIO->m.knee_length * mPumpkinScale);
    gravity = mpHIO->m.gravity * mPumpkinScale;
    int sp_0x30 = 0;
    if (fopAcM_checkCarryNow(this) || fopAcM_checkHawkCarryNow(this) || field_0xbb3) {
        sp_0x30 = 1;
    }

    if (field_0xBAE) {
        int item_table_no = getItemTableNo();
        if (item_table_no >= 0 && mItemProcId == fpcM_ERROR_PROCESS_ID_e) {
            mItemProcId = fopAcM_createItemFromTable(&current.pos, item_table_no, -1, fopAcM_GetRoomNo(this),
                                                     NULL, 0, NULL, NULL, NULL, NULL);
        }

        if (mItemProcId == fpcM_ERROR_PROCESS_ID_e || fopAcM_IsExecuting(mItemProcId)) {
            if (mType == 0 && getProcType() != 2) {
                field_0xB48 = mpHIO->m.growth_time_1;
                field_0xB4C = mpHIO->m.growth_time_2;
                field_0xBAF = 0;
                field_0xBB0 = 0;
                current.pos = home.pos;
                old.pos = home.pos;
                current.angle = home.angle;
                shape_angle = home.angle;
                scale.setall(0.0f);
            } else {
                fopAcM_delete(this);
            }

            field_0xBAE = 0;
        }
    } else if (field_0xB4C) {
        if (field_0xBAF) {
            field_0xB68 = (mpHIO->m.growth_time_2 - field_0xB4C) / f32(mpHIO->m.growth_time_2) * 0.5f
                        + (mpHIO->m.growth_time_1 - field_0xB48) / f32(mpHIO->m.growth_time_1) * 0.5f;
            if (cLib_calcTimer(&field_0xB4C) == 0) {
                field_0xBAF = 0;
                field_0xB68 = 1.0f;
            }
        } else {
            field_0xB68 = (mpHIO->m.growth_time_1 - field_0xB48) / f32(mpHIO->m.growth_time_1) * 0.5f;
            if (mCyl1.ChkTgHit() && mCyl1.GetTgHitGObj() != NULL
                && mCyl1.GetTgHitGObj()->GetAtType() == AT_TYPE_LANTERN_SWING
                && mCyl1.GetTgHitGObj()->GetAtMtrl() == dCcD_MTRL_UNK_6) {
                //
                field_0xBAF = 1;
            }
        }

        cLib_calcTimer(&field_0xB48);
        f_scale *= field_0xB68;
        scale.set(f_scale, f_scale, f_scale);
    } else {
        int sp_0x28 = 0;
        if (field_0xBAA == 0 && mCyl1.ChkTgHit()) {
            if (mCyl1.GetTgHitGObj() != NULL && mCyl1.GetTgHitGObj()->GetAtType() == AT_TYPE_BOOMERANG) {
                mBoomerangMove.initOffset(&current.pos, mCyl1.GetTgHitGObj());
                field_0xBAA = 1;
                sp_0x30 = 0;
                if (field_0xBA8) {
                    dComIfGp_particle_set(-1, dPa_RM(ID_ZI_S_PUMPKIN_LEAF_A), &current.pos, &shape_angle, &scale);
                    dComIfGp_particle_set(-1, dPa_RM(ID_ZI_S_PUMPKIN_LEAF_B), &current.pos, &shape_angle, &scale);
                    field_0xBA8 = 0;
                }
            } else {
                sp_0x28 = 1;
            }
        } else if (field_0xBAD && cM3d_IsZero(speedF) == 0 && mCyl0.ChkCoHit()) {
            fopAc_ac_c* actor_p = dCc_GetAc(mCyl0.GetCoHitObj()->GetAc());
            if (fopAcM_GetName(actor_p) != PROC_ALINK) {
                sp_0x28 = 1;
            }
        }

        if (sp_0x28) {
            crash();
            sp_0x30 = 0;
        } else {
            if (field_0xBAA) {
                if (mBoomerangMove.posMove(&current.pos, &shape_angle.y, this, 0x1C00) == 0) {
                    sp_0x30 = fopAcM_checkCarryNow(this) != 0;
                    field_0xBAA = 0;
                } else if (mObjAcch.ChkWallHit()) {
                    sp_0x30 = 0;
                    crash();
                }
            }

            if (sp_0x30) {
                if (getProcType() == 0) {
                    if (fopAcM_checkCarryNow(this) && field_0xBAA == 0) {
                        if (field_0xB44 < mpHIO->m.hold_on + mpHIO->m.pull_sound_delay) {
                            ++field_0xB44;
                            if (mpHIO->m.hold_on + mpHIO->m.pull_sound_delay <= field_0xB44) {
                                fopAcM_seStart(this, Z2SE_OBJ_PUMPKIN_PULLOUT, 0);
                            }

                            if (field_0xBA8 && mpHIO->m.hold_on <= field_0xB44) {
                                dComIfGp_particle_set(-1, dPa_RM(ID_ZI_S_PUMPKIN_LEAF_A), &current.pos, &shape_angle, &scale);
                                dComIfGp_particle_set(-1, dPa_RM(ID_ZI_S_PUMPKIN_LEAF_B), &current.pos, &shape_angle, &scale);
                                field_0xBA8 = 0;
                            }
                        }
                    } else if (field_0xBA8) {
                        fopAcM_seStart(this, Z2SE_OBJ_PUMPKIN_PULLOUT, 0);
                        dComIfGp_particle_set(-1, dPa_RM(ID_ZI_S_PUMPKIN_LEAF_A), &current.pos, &shape_angle, &scale);
                        dComIfGp_particle_set(-1, dPa_RM(ID_ZI_S_PUMPKIN_LEAF_B), &current.pos, &shape_angle, &scale);
                        field_0xB44 = mpHIO->m.hold_on + mpHIO->m.pull_sound_delay;
                        field_0xBA8 = 0;
                    }
                }

                mObjAcch.ClrWallHit();
                mObjAcch.ClrGroundHit();
                mObjAcch.SetWallNone();
                mObjAcch.SetGrndNone();
                field_0xB60 = 0.0f;
                mStts.SetWeight(0);
                speed.setall(0.0f);
                speedF = 0.0f;
                field_0xB20.setall(0.0f);
                field_0xB38.setall(0);
                gravity = 0.0f;
                field_0xBAB = 0;
                field_0xBAC = 0;
                field_0xBAD = 0;
                field_0xBB2 = 0;
            } else {
                mStts.SetWeight(mpHIO->m.weight);
                if (field_0xBA8 || mType == 1) {
                    mStts.SetWeight(0xFF);
                }

                mObjAcch.ClrWallNone();
                mObjAcch.ClrGrndNone();
                if (field_0xBB1 && cM3d_IsZero(speedF) == 0) {
                    popup(mpHIO->m.fire_rate, mpHIO->m.launch_angle, NULL);
                    if (fopAcM_carryOffRevise(this)) {
                        speed.setall(0.0f);
                    }
                } else {
                    int sp_0x20 = 0;
                    cXyz sp_0x4C;
                    s16 sp_0x10 = 0x80;
                    fopAcM_getWaterY(&current.pos, &mWaterY);
                    if (-G_CM3D_F_INF != mWaterY && var_f29 < mWaterY - field_0xB60) {
                        if (current.pos.y <= mWaterY) {
                            if (field_0xBAC == 0) {
                                speedF *= 0.3f;
                                speed.y *= 0.5f;
                                field_0xBAB = 0;
                                field_0xBAC = 1;
                                if (field_0xBAD || field_0xBB2 || field_0xBB1) {
                                    fopAcM_seStart(this, Z2SE_CM_BODYFALL_WATER_S, 0);
                                    setWaterPrtcl();
                                    sp_0x20 = 1;
                                    if ((field_0xBAD || field_0xBB2) && speed.y < 0.0f) {
                                        field_0xB70 = 3000.0f;
                                    }
                                }

                                field_0xBAD = 0;
                                field_0xBB2 = 0;
                            }

                            int streamPower;
                            if (fopAcM_getWaterStream(&current.pos, mGndChk, &sp_0x4C, &streamPower, 0)) {
                                sp_0x4C.normalizeZP();
                                cLib_addCalcAngleS2(&current.angle.y, cM_atan2s(sp_0x4C.x, sp_0x4C.z), 4, 0x200);
                                if (sp_0x20) {
                                    current.angle.y = cM_atan2s(sp_0x4C.x, sp_0x4C.z);
                                }

                                sp_0x10 *= streamPower;
                                cLib_chaseAngleS(&field_0xB38.y, (field_0xB38.y < 0) ? -sp_0x10 : sp_0x10, 0x10);
                                if (field_0xBAB) {
                                    cLib_addCalc2(&speedF, streamPower * 1.55f, 0.15f, 1.0f);
                                } else {
                                    cLib_addCalc2(&speedF, streamPower * 0.75f, 0.15f, 1.0f);
                                }
                            } else {
                                cLib_chaseF(&speedF, 0.0f, 0.3f);
                            }

                            if (field_0xB54 == 0 && mObjAcch.ChkWallHit()) {
                                if (getWallAngle(current.angle.y, &sp_0x12)) {
                                    current.angle.y = sp_0x12;
                                    current.angle.y += s16(cM_rndFX(2000.0f));
                                } else {
                                    current.angle.y += s16(cM_rndFX(2000.0f));
                                    current.angle.y -= 0x8000;
                                }

                                field_0xB38.y = -field_0xB38.y / 2;
                                field_0xB54 = 10;
                            }

                            if (field_0xBAB) {
                                cLib_addCalc2(&current.pos.y, mWaterY - var_f29, 0.5f, 2.0f);
                                speed.y = 0.0f;
                                setHamonPrtcl();
                            } else if (current.pos.y + var_f29 < mWaterY) {
                                if (speed.y < 0.0f) {
                                    cLib_addCalc(&speed.y, 2.0f, 0.8f, 11.0f, 0.1f);
                                } else {
                                    cLib_addCalc(&speed.y, 2.0f, 0.5f, 0.5f, 0.1f);
                                }

                                field_0xB38.y = 0x100;
                                mObjAcch.ClrGroundHit();
                                field_0xBAB = 1;
                            }

                            gravity = 0.0f;
                        }
                    }
                }

                if (field_0xBAB) {
                    if (mObjAcch.ChkGroundHit()) {
                        field_0xBAB = 0;
                        field_0xBAC = 0;
                        field_0xB38.setall(0);
                        speedF = 0.0f;
                        speed.setall(0.0f);
                    }
                } else if (field_0xBAC == 0) {
                    if (field_0xBAD) {
                        if (0.0f <= field_0xB20.y && speed.y < 0.0f) {
                            field_0xB74 = -500.0f;
                        }

                        if (mObjAcch.ChkWallHit()) {
                            crash();
                        } else if (mObjAcch.ChkGroundHit()) {
                            if (-250.0f < field_0xB74) {
                                if (cM3d_IsZero(field_0xB74) == 0) {
                                    setSmokePrtcl();
                                }

                                field_0xBAD = 0;
                                speedF = 0.0f;
                                speed.setall(0.0f);
                            } else {
                                crash();
                            }
                        }
                    } else if (field_0xBB2) {
                        if (mObjAcch.ChkGroundHit()) {
                            if (-250.0f < field_0xB74) {
                                if (cM3d_IsZero(field_0xB74) == 0) {
                                    setSmokePrtcl();
                                }

                                field_0xBB2 = 0;
                                speedF = 0.0f;
                                speed.setall(0.0f);
                            } else {
                                crash();
                            }
                        }
                    } else if (field_0xBB1) {
                        fopAcM_seStart(this, Z2SE_OBJ_PUMPKIN_PUT, 0);
                    } else if (mObjAcch.ChkGroundHit() == 0) {
                        field_0xB74 = field_0xB60 - current.pos.y;
                        field_0xBB2 = 1;
                    } 
                }

                if (field_0xBB0 == 0 && field_0xBAD == 0 && field_0xBB2 == 0) {
                    if (mType == 1 || field_0xBA8) {
                        fopAcM_OnCarryType(this, fopAcM_CARRY_TYPE_1);
                    } else {
                        fopAcM_OnCarryType(this, fopAcM_CARRY_SIDE);
                    }

                    cLib_onBit<u32>(attention_info.flags, fopAc_AttnFlag_CARRY_e);
                    fopAcM_OnCarryType(this, fopAcM_CARRY_CHICKEN);
                }

                field_0xB20 = speed;
                if (field_0xBAC) {
                    cLib_addCalc2(&field_0xB70, mStts.GetCCMoveP() != NULL ? 1200.0f : 900.0f, 0.05f, 100.0f);
                } else {
                    cLib_addCalc2(&field_0xB70, 0.0f, 0.25f, 100.0f);
                }

                shape_angle.x = field_0xB70 * cM_ssin(field_0xB78 * 1000);
                shape_angle.z = field_0xB70 * cM_scos(field_0xB78 * 1000);
                cLib_chaseAngleS(&field_0xB38.y, 0, 10);
                shape_angle.y += field_0xB38.y;
                ++field_0xB78;
                if (field_0xBAB) {
                    f32 sqrt = JMAFastSqrt(mStts.GetCCMoveP()->x * mStts.GetCCMoveP()->x
                                         + mStts.GetCCMoveP()->z * mStts.GetCCMoveP()->z);
                    if (1.0f < sqrt) {
                        field_0xB80 = cM_atan2s(mStts.GetCCMoveP()->x, mStts.GetCCMoveP()->z);
                        if (field_0xB58 == 0) {
                            if (30.0f < sqrt) {
                                sqrt = 30.0f;
                            } else if (sqrt < 0.0f) {
                                sqrt = 0.0f;
                            }

                            field_0xB5C = sqrt;
                            field_0xB38.y = 0x200;
                            field_0xB58 = 10;
                        }
                    }
                } else {
                    field_0xB5C = 0.0f;
                }

                cLib_addCalc2(&field_0xB5C, 0.0f, 0.33f, 100.0f);
                fopAcM_calcSpeed(this);
                if (field_0xBAB) {
                    field_0xB2C.x = field_0xB5C * cM_ssin(field_0xB80);
                    field_0xB2C.z = field_0xB5C * cM_scos(field_0xB80);
                    field_0xB2C.y = 0.0f;
                    speed += field_0xB2C;
                }

                fopAcM_posMove(this, mStts.GetCCMoveP());
                mObjAcch.CrrPos(dComIfG_Bgsp());
                mGndChk = mObjAcch.m_gnd;
                field_0xB60 = mObjAcch.GetGroundH();
                if (field_0xBAA) {
                    mBoomerangMove.bgCheckAfterOffset(&current.pos);
                }

                if (-G_CM3D_F_INF != field_0xB60) {
                    field_0xB7A = daNpcF_getGroundAngle(&mGndChk, shape_angle.y);
                    setEnvTevColor();
                    setRoomNo();
                }
            }
        }
    }

    attention_info.position = current.pos;
    eyePos = current.pos;
    if (field_0xbb3 == 0) {
        setMtx();
    }

    field_0xB7C = calcRollAngle(field_0xB7C, 0x10000);
    if (field_0xBB0 == 0 && field_0xB50 == 0) {
        cXyz sp_0x40 = current.pos;
        sp_0x40.y += 6.0f;
        if (field_0xBAD && cM3d_IsZero(speedF) == 0) {
            mCyl0.SetAtType(8);
            mCyl0.SetAtAtp(1);
            mCyl0.SetAtSPrm(0x1F);
        } else {
            mCyl0.SetAtType(0);
            mCyl0.SetAtSPrm(0);
        }

        if (field_0xB4C == 0) {
            mCyl0.SetR(mpHIO->m.width * mPumpkinScale);
            mCyl0.SetH(mpHIO->m.height * mPumpkinScale);
            mCyl0.SetC(current.pos);
            dComIfG_Ccsp()->Set(&mCyl0);
        }

        mCyl1.SetCoSPrm(0);
        if (field_0xB4C) {
            mCyl1.SetTgType(0x200);
            mCyl1.SetTgSPrm(0x1F);
        } else {
            mCyl1.SetTgType(0xD8FBFDFF);
            mCyl1.SetTgSPrm(0x1F);
        }

        mCyl1.SetR(mpHIO->m.width * mPumpkinScale);
        mCyl1.SetH(mpHIO->m.height * mPumpkinScale);
        mCyl1.SetC(sp_0x40);
        dComIfG_Ccsp()->Set(&mCyl1);
    }

    mCyl1.ClrTgHit();
    mCyl0.ClrAtHit();
    mCyl0.ClrCoHit();

    field_0xBB1 = sp_0x30 != 0;
    cLib_calcTimer(&field_0xB50);
    cLib_calcTimer(&field_0xB54);
    cLib_calcTimer(&field_0xB58);
    field_0xbb3 = 0;

    return 1;
}

/* 80CB7638-80CB77DC 001F98 01A4+00 1/1 0/0 0/0 .text            Draw__15daObj_Pumpkin_cFv */
int daObj_Pumpkin_c::Draw() {
    if (field_0xBB0 == 0) {
        g_env_light.settingTevStruct(0, &current.pos, &tevStr);
        g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
        if (field_0xBA8 == 0) {
            mpModel->getModelData()->getMaterialNodePointer(0)->getShape()->hide();
        }

        mDoExt_modelUpdateDL(mpModel);
        mpModel->getModelData()->getMaterialNodePointer(0)->getShape()->show();
        fopAc_ac_c* actor_p = NULL;
        fopAcM_SearchByID(daPy_getPlayerActorClass()->getGrabActorID(), &actor_p);
        if (actor_p == this) {
            model = mpModel;
        } else if (-G_CM3D_F_INF != field_0xB60) {
            cM3dGPla pla;
            bool tri_pla = dComIfG_Bgsp().GetTriPla(mGndChk, &pla);
            if (tri_pla) {
                f32 reg_f31 = scale.x / (mpHIO->m.scale * mPumpkinScale) * 50.0f;
                dComIfGd_setSimpleShadow(&current.pos, field_0xB60, reg_f31, &pla.mNormal, 0, 1.0f,
                                         dDlst_shadowControl_c::getSimpleTex());
            }
        }
    }

    return 1;
}

/* 80CB7824-80CB7844 002184 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__15daObj_Pumpkin_cFP10fopAc_ac_c          */
int daObj_Pumpkin_c::createHeapCallBack(fopAc_ac_c* i_this) {
    daObj_Pumpkin_c* a_this = static_cast<daObj_Pumpkin_c*>(i_this);
    return a_this->CreateHeap();
}

/* 80CB7844-80CB78C8 0021A4 0084+00 1/1 0/0 0/0 .text            isDelete__15daObj_Pumpkin_cFv */
int daObj_Pumpkin_c::isDelete() {
    switch ((s32) mType) {
    case 0:
        return 0;
    case 1:
        return daNpcT_chkEvtBit(0x1E) == 0;
    case 2:
        return daNpcT_chkEvtBit(0x92) == 0;
    case 3:
        return 0;
    default:
        return 0;
    }
}

/* 80CB78C8-80CB7924 002228 005C+00 1/1 0/0 0/0 .text            setEnvTevColor__15daObj_Pumpkin_cFv
 */
void daObj_Pumpkin_c::setEnvTevColor() {
    tevStr.YukaCol = dComIfG_Bgsp().GetPolyColor(mGndChk);
    tevStr.room_no = dComIfG_Bgsp().GetRoomId(mGndChk);
}

/* 80CB7924-80CB7968 002284 0044+00 1/1 0/0 0/0 .text            setRoomNo__15daObj_Pumpkin_cFv */
void daObj_Pumpkin_c::setRoomNo() {
    s8 room_id = dComIfG_Bgsp().GetRoomId(mGndChk);
    fopAcM_SetRoomNo(this, room_id);
    mStts.SetRoomId(room_id);
}

/* 80CB7968-80CB79DC 0022C8 0074+00 2/2 0/0 0/0 .text            reset__15daObj_Pumpkin_cFv */
void daObj_Pumpkin_c::reset() {
    int num_bytes = (u8*)&field_0xbb4 - (u8*)&field_0xB20;
    memset(&field_0xB20, 0, num_bytes);
    switch (getProcType()) {
    case 0:
        field_0xBA8 = 1;
    case 1:
    case 2:
        break;
    }

    mItemProcId = -1;
}

/* 80CB79DC-80CB7AE4 00233C 0108+00 2/2 0/0 0/0 .text            setMtx__15daObj_Pumpkin_cFv */
void daObj_Pumpkin_c::setMtx() {
    s16 angleDiff = shape_angle.y - current.angle.y;
    s16 dVar5 = field_0xB7C * cM_scos(angleDiff);
    s16 dVar6 = field_0xB7C * cM_ssin(angleDiff);
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::XrotM(dVar5);
    mDoMtx_stack_c::ZrotM(dVar6);
    mDoMtx_stack_c::scaleM(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80CB7AE4-80CB7B84 002444 00A0+00 1/1 0/0 0/0 .text            calcRollAngle__15daObj_Pumpkin_cFsi
 */
s16 daObj_Pumpkin_c::calcRollAngle(s16 arg0, int arg1) {
    int reg_r31;
    int reg_r30;
    int sp_0x8 = arg1;
    int reg_r29 = 0x800;
    int reg_27 = 4;
    if (arg0) {
        reg_r31 = (u16)arg0;
        reg_r30 = sp_0x8 - reg_r31;
        if (reg_27 < abs(reg_r30)) {
            reg_r30 /= reg_27;
            if (reg_r30 > reg_r29) {
                reg_r31 = reg_r31 + reg_r29;
            } else if (reg_r30 < -reg_r29) {
                reg_r31 = reg_r31 - reg_r29;
            } else {
                reg_r31 = reg_r31 + reg_r30;
            }
        } else {
            reg_r31 = sp_0x8;
        }

        return reg_r31;
    }

    return 0;
}

/* 80CB7B84-80CB7D14 0024E4 0190+00 1/1 0/0 0/0 .text            getWallAngle__15daObj_Pumpkin_cFsPs
 */
int daObj_Pumpkin_c::getWallAngle(s16 arg0, s16* arg1) {
    cXyz sp_0x20;
    cXyz sp_0x30[2];
    cXyz sp_0x14;
    s16 reg_r27 = arg0;
    mDoMtx_stack_c::YrotS(arg0);
    sp_0x14.set(0.0f, 0.0f, -50.0f);
    mDoMtx_stack_c::multVec(&sp_0x14, &sp_0x20);
    sp_0x20 += current.pos;
    sp_0x14.set(5.0f, 0.0f, 200.0f);
    for (int idx = 0; idx < 2; ++idx) {
        mDoMtx_stack_c::multVec(&sp_0x14, &sp_0x30[idx]);
        sp_0x14.x = -1.0f * sp_0x14.x;
        sp_0x30[idx] += sp_0x20;
        mLinChk.Set(&sp_0x20, &sp_0x30[idx], this);
        if (dComIfG_Bgsp().LineCross(&mLinChk)) {
            sp_0x30[idx] = mLinChk.GetCross();
            continue;
        }

        return 0;
    }

    sp_0x14 = sp_0x30[1] - sp_0x30[0];
    reg_r27 = cM_atan2s(sp_0x14.x, sp_0x14.z);
    *arg1 = reg_r27 + 0x4000;
    return 1;
}

/* 80CB7D14-80CB7D98 002674 0084+00 1/1 0/0 0/0 .text            setSmokePrtcl__15daObj_Pumpkin_cFv
 */
void daObj_Pumpkin_c::setSmokePrtcl() {
    fopAcM_effSmokeSet1(&mSmokePrtcl1, &mSmokePrtcl2, &current.pos, NULL, 0.6f * mPumpkinScale, &tevStr, 1);
    dComIfGp_particle_levelEmitterOnEventMove(mSmokePrtcl1);
    dComIfGp_particle_levelEmitterOnEventMove(mSmokePrtcl2);
}

/* 80CB7D98-80CB7E98 0026F8 0100+00 1/1 0/0 0/0 .text            setWaterPrtcl__15daObj_Pumpkin_cFv
 */
void daObj_Pumpkin_c::setWaterPrtcl() {
    static u16 emttrId[4] = {
        ID_ZI_J_DOWNWTRA_A, ID_ZI_J_DOWNWTRA_B, ID_ZI_J_DOWNWTRA_C, ID_ZI_J_DOWNWTRA_D,
    };

    cXyz prtcl_scale(0.6f * mPumpkinScale, 0.6f * mPumpkinScale, 0.6f * mPumpkinScale);
    cXyz water_pos(current.pos.x, mWaterY, current.pos.z);
    for (int idx = 0; idx < 4; ++idx) {
        mWaterPrtcls[idx] = dComIfGp_particle_set(mWaterPrtcls[idx], emttrId[idx], &water_pos, &tevStr,
                                                  NULL, &prtcl_scale, 0xFF, NULL, -1, NULL, NULL, NULL);
        dComIfGp_particle_levelEmitterOnEventMove(mWaterPrtcls[idx]);
    }
}

/* 80CB7E98-80CB7EF4 0027F8 005C+00 1/1 0/0 0/0 .text            setHamonPrtcl__15daObj_Pumpkin_cFv
 */
void daObj_Pumpkin_c::setHamonPrtcl() {
    cXyz water_pos(current.pos.x, mWaterY, current.pos.z);
    fopAcM_effHamonSet(&mHamonPrtcl, &water_pos, 0.7f * mPumpkinScale, 0.05f);
}

/* 80CB7EF4-80CB81A4 002854 02B0+00 1/1 0/0 0/0 .text            crash__15daObj_Pumpkin_cFv */
void daObj_Pumpkin_c::crash() {
    fopAc_ac_c* actor_p = NULL;
    s32 reg_r30 = 0;
    reg_r30 = fopAcM_SearchByName(PROC_NPC_JAGAR, &actor_p);
    if (reg_r30 && actor_p != NULL) {
        ((daNpc_Jagar_c*)actor_p)->crashPumpkin(this);
    }

    fopAcM_seStart(this, Z2SE_OBJ_PUMPKIN_CRASH, 0);
    if (field_0xBA8) {
        dComIfGp_particle_set(-1, dPa_RM(ID_ZI_S_PUMPKIN_LEAF_A), &current.pos, &shape_angle, &scale);
        dComIfGp_particle_set(-1, dPa_RM(ID_ZI_S_PUMPKIN_LEAF_B), &current.pos, &shape_angle, &scale);
    }

    dComIfGp_particle_set(-1, dPa_RM(ID_ZI_S_PUMPKIN_A), &current.pos, NULL, &scale);
    reset();
    mStts.ClrCcMove();
    speedF = 0.0f;
    speed.setall(0.0f);
    field_0xBB0 = 1;
    field_0xBAE = 1;
}

/* 80CB81A4-80CB81C4 002B04 0020+00 1/0 0/0 0/0 .text            daObj_Pumpkin_Create__FPv */
static int daObj_Pumpkin_Create(void* i_this) {
    int ret = static_cast<daObj_Pumpkin_c*>(i_this)->create();
    return ret;
}

/* 80CB81C4-80CB81E4 002B24 0020+00 1/0 0/0 0/0 .text            daObj_Pumpkin_Delete__FPv */
static int daObj_Pumpkin_Delete(void* i_this) {
    return static_cast<daObj_Pumpkin_c*>(i_this)->Delete();
}

/* 80CB81E4-80CB8204 002B44 0020+00 1/0 0/0 0/0 .text            daObj_Pumpkin_Execute__FPv */
static int daObj_Pumpkin_Execute(void* i_this) {
    return static_cast<daObj_Pumpkin_c*>(i_this)->Execute();
}

/* 80CB8204-80CB8224 002B64 0020+00 1/0 0/0 0/0 .text            daObj_Pumpkin_Draw__FPv */
static int daObj_Pumpkin_Draw(void* i_this) {
    return static_cast<daObj_Pumpkin_c*>(i_this)->Draw();
}

/* 80CB8224-80CB822C 002B84 0008+00 1/0 0/0 0/0 .text            daObj_Pumpkin_IsDelete__FPv */
static int daObj_Pumpkin_IsDelete(void*) {
    return 1;
}

/* 80CB84E8-80CB8508 -00001 0020+00 1/0 0/0 0/0 .data            daObj_Pumpkin_MethodTable */
static actor_method_class daObj_Pumpkin_MethodTable = {
    (process_method_func)daObj_Pumpkin_Create,
    (process_method_func)daObj_Pumpkin_Delete,
    (process_method_func)daObj_Pumpkin_Execute,
    (process_method_func)daObj_Pumpkin_IsDelete,
    (process_method_func)daObj_Pumpkin_Draw,
};

/* 80CB8508-80CB8538 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_PUMPKIN */
extern actor_process_profile_definition g_profile_OBJ_PUMPKIN = {
  fpcLy_CURRENT_e,            // mLayerID
  8,                          // mListID
  fpcPi_CURRENT_e,            // mListPrio
  PROC_OBJ_PUMPKIN,           // mProcName
  &g_fpcLf_Method.base,      // sub_method
  sizeof(daObj_Pumpkin_c),    // mSize
  0,                          // mSizeOther
  0,                          // mParameters
  &g_fopAc_Method.base,       // sub_method
  716,                        // mPriority
  &daObj_Pumpkin_MethodTable, // sub_method
  0x00044100,                 // mStatus
  fopAc_ACTOR_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,     // cullType
};
