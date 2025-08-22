/**
 * @file d_a_obj_swpush.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_swpush.h"
#include "d/actor/d_a_player.h"
#include "d/d_s_play.h"
#include "Z2AudioLib/Z2Instances.h"

enum Kbota_00_RES_File_ID {
    /* BMDR */
    /* 0x4 */ BMDR_KBOTA_00 = 0x4,

    /* DZB */
    /* 0x7 */ DZB_KBOTA_00 = 0x7,
};

enum S_lv3bota_RES_File_ID {
    /* BMDR */
    /* 0x4 */ BMDR_S_LV3BOTA = 0x4,

    /* DZB */
    /* 0x7 */ DZB_KBOTA2_00 = 0x7,
};

enum S_lv6bota_RES_File_ID {
    /* BMDR */
    /* 0x4 */ BMDR_S_LV6BOTA = 0x4,

    /* DZB */
    /* 0x7 */ DZB_KBOTA3_00 = 0x7,
};

/* 80482D4C-80482D7C 0000EC 0030+00 1/1 0/0 0/0 .text            prmZ_init__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::prmZ_init() {
    if (mPrmZInit) {
        return;
    }
    mPrmZ = home.angle.z;
    mPrmZInit = true;
    home.angle.z = 0;
    current.angle.z = 0;
    shape_angle.z = 0;
}

/* 80482D7C-80482DC4 00011C 0048+00 2/2 0/0 0/0 .text is_switch2__Q211daObjSwpush5Act_cCFv */
bool daObjSwpush::Act_c::is_switch2() const {
    return fopAcM_isSwitch(this, prmZ_get_swSave2() & 0xFF);
}

/* 80482DC4-80482DE8 000164 0024+00 1/1 0/0 0/0 .text            solidHeapCB__Q211daObjSwpush5Act_cFP10fopAc_ac_c */
BOOL daObjSwpush::Act_c::solidHeapCB(fopAc_ac_c* a_this) {
    return static_cast<daObjSwpush::Act_c*>(a_this)->create_heap();
}

/* 80484D10-80484D18 000000 0006+02 8/8 0/0 0/0 .rodata          M_bmd__Q211daObjSwpush5Act_c */
s16 const daObjSwpush::Act_c::M_bmd[3] = {BMDR_KBOTA_00, BMDR_S_LV3BOTA, BMDR_S_LV6BOTA};

/* 80484D18-80484D20 000008 0006+02 1/1 0/0 0/0 .rodata          M_dzb__Q211daObjSwpush5Act_c */
s16 const daObjSwpush::Act_c::M_dzb[3] = {DZB_KBOTA_00, DZB_KBOTA2_00, DZB_KBOTA3_00};

/* 80484EA4-80484EB0 -00001 000C+00 3/3 0/0 0/0 .data            M_arcname__Q211daObjSwpush5Act_c */
char* daObjSwpush::Act_c::M_arcname[3] = {
    "Kbota_00",
    "S_lv3bota",
    "S_lv6bota",
};

/* 80482DE8-80482FE8 000188 0200+00 1/1 0/0 0/0 .text create_heap__Q211daObjSwpush5Act_cFv */
bool daObjSwpush::Act_c::create_heap() {
    bool rv = false;
    J3DModelData* model_data = (J3DModelData*)dComIfG_getObjectRes(M_arcname[mMdl], M_bmd[mMdl]);

    JUT_ASSERT(518, model_data != 0);

    mpModel = mDoExt_J3DModel__create(model_data, 0x80000, 0x11000084);
    if (mpModel != NULL) {
        JUTNameTab* jointName = mpModel->getModelData()->getJointTree().getJointName();
        for (u16 i = 0; i < mpModel->getModelData()->getJointNum(); i++) {
            bool bVar1 = false;
            if (strcmp(jointName->getName(i), "bottan") == 0 || strcmp(jointName->getName(i), "botan") == 0) {
                bVar1 = true;
            }

            if (bVar1) {
                model_data->getJointNodePointer(i)->setCallBack(jnodeCB);
                mpModel->setUserArea((u32)this);
                break;
            }
        }
    }

    cBgD_t* bg_data = (cBgD_t*)dComIfG_getObjectRes(M_arcname[mMdl], M_dzb[mMdl]);

    JUT_ASSERT(569, bg_data != 0);

    bool bVar2 = false;
    mpBgW = new dBgWSv();
    if (mpBgW != NULL && mpBgW->Set(bg_data, 0) == 0) {
        bVar2 = true;
    }

    if (mpModel != NULL && mpBgW != NULL && bVar2) {
        rv = true;
    }

    if (rv == false) {
        mpBgW = NULL;
    }

    return rv;
}

/* 80482FE8-80483038 000388 0050+00 1/1 0/0 0/0 .text create_res_load__Q211daObjSwpush5Act_cFv */
cPhs__Step daObjSwpush::Act_c::create_res_load() {
    cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(&mPhase, M_arcname[mMdl]);
    if (phase != cPhs_COMPLEATE_e) {
        return phase;
    }

    return cPhs_COMPLEATE_e;
}

/* 80484D20-80484D2C 000010 000C+00 0/1 0/0 0/0 .rodata          M_heap_size__Q211daObjSwpush5Act_c */
u32 const daObjSwpush::Act_c::M_heap_size[3] = {0x1000, 0x1000, 0x1000};

/* 80484D2C-80484E08 00001C 00DC+00 4/10 0/0 0/0 .rodata          M_attr__Q211daObjSwpush5Act_c */
daObjSwpush::Hio_c::Attr_c const daObjSwpush::Act_c::M_attr[5] = {
    {
        (AttrFlag_e)(FLAG_STAY_PRESSED | FLAG_OBEY_SAVE),
        1.0f,
        0.9f,
        0.6f,
        0.0f,
        -0.3f,
        1,
        6,
        6,
        13,
        1.0f,
        2.5f,
        10,
    },
    {
        FLAG_UNK20,
        1.25f,
        0.9f,
        0.6f,
        0.0f,
        -0.3f,
        1,
        6,
        6,
        13,
        1.0f,
        2.5f,
        10,
    },
    {
        (AttrFlag_e)(FLAG_ON_IS_UP | FLAG_STAY_PRESSED | FLAG_OBEY_SAVE),
        1.0f,
        0.9f,
        0.6f,
        0.0f,
        -0.3f,
        1,
        6,
        6,
        13,
        1.0f,
        2.5f,
        10,
    },
    {
        FLAG_IS_TOGGLE,
        1.0f,
        0.9f,
        0.6f,
        0.0f,
        -0.3f,
        1,
        6,
        6,
        13,
        1.0f,
        2.5f,
        10,
    },
    {
        FLAG_UNK20,
        1.0f,
        0.9f,
        0.6f,
        0.0f,
        -0.3f,
        1,
        6,
        6,
        13,
        1.0f,
        2.5f,
        10,
    },

};

/* 80484E08-80484E0C 0000F8 0004+00 0/3 0/0 0/0 .rodata          M_op_vtx__Q211daObjSwpush5Act_c */
u8 const daObjSwpush::Act_c::M_op_vtx[4] = {0x0D, 0x0B, 0x0A, 0x0C};

/* 80483038-80483450 0003D8 0418+00 1/1 0/0 0/0 .text Mthd_Create__Q211daObjSwpush5Act_cFv */
cPhs__Step daObjSwpush::Act_c::Mthd_Create() {
    fopAcM_SetupActor(this, daObjSwpush::Act_c);

    prmZ_init();
    mType = prm_get_type();
    mMdl = prm_get_mdl();

    if (mType == 4) {
        mMdl = 1;
    } else if (mMdl == 15) {
        mMdl = 0;
    }

    cPhs__Step phase = create_res_load();
    if (phase == cPhs_COMPLEATE_e) {
        scale.x *= attr().scale;
        scale.z *= attr().scale;

        if (mType != 4) {
            scale.y = 0.5f;
        }

        field_0x5f8.x = 1.25f;
        field_0x5f8.y = 0.5f;
        field_0x5f8.z = 1.25f;

        if (prm_get_couple() != 0) {
            scale.x *= 2.0f;
            scale.z *= 2.0f;
        }

        if (fopAcM_entrySolidHeap(this, solidHeapCB, M_heap_size[mMdl])) {
            if (dComIfG_Bgsp().Regist(mpBgW, this)) {
                phase = cPhs_ERROR_e;
            } else {
                mDoMtx_stack_c::transS(current.pos);
                mDoMtx_stack_c::ZXYrotM(shape_angle);
                mDoMtx_stack_c::scaleM(field_0x5f8);
                MTXCopy(mDoMtx_stack_c::get(), mMtx);
                mpBgW->ClrNoCalcVtx();
                mpBgW->SetBaseMtxP(mMtx);
                mpBgW->GlobalVtx();
                mpBgW->SetBaseMtxP(NULL);
                mpBgW->SetNoCalcVtx();
                field_0x5a4 = mpBgW->GetVtxTbl()[M_op_vtx[0]].y;
                mpBgW->SetRideCallback(rideCB);

                fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
                init_mtx();
                fopAcM_setCullSizeBox(this, attr().scale * -80.0f, -2.0f, attr().scale * -80.0f, attr().scale * 80.0f, 39.0f, attr().scale * 80.0f);
                mVibTimer = 0;
                mRidingMode = 0;
                mPrevRiding = false;
                mMiniPushTimer = 0;
                mMiniPushFlg = false;
                mHeavyRiding = false;
                mPrevHeavyRiding = false;
                mPushTimer = 0;
                mPushFlg = false;
                mSpeed = 0.0f;
                field_0x5e0 = 0;
                field_0x5e4 = 0;
                field_0x5f2 = 0;
                field_0x5f3 = 0;
                
                set_btp_frame();

                bool is_toggle = cLib_checkBit<int>(attr().flags, FLAG_IS_TOGGLE);
                bool on_is_up = cLib_checkBit<int>(attr().flags, FLAG_ON_IS_UP);
                bool flg20 = cLib_checkBit<int>(attr().flags, FLAG_UNK20);
                bool is_sw = is_switch();
                bool is_sw2 = is_switch2();
                
                if ((is_toggle || (!is_sw && !on_is_up) || (is_sw && on_is_up)) && (!flg20 || !is_sw2)) {
                    mTargetHFrac = 1.0f;
                    mCurHFrac = 1.0f;
                    field_0x5d8 = 0.0f;
                    field_0x5dc = 1.0f;
                    field_0x5e8 = 1.0f;
                    mTopPos = 0.0f;
                    mode_upper_init();
                } else {
                    mTargetHFrac = 0.0f;
                    mCurHFrac = 0.0f;
                    field_0x5d8 = -35.5f;
                    field_0x5dc = 0.0f;
                    field_0x5e8 = 0.0f;
                    mTopPos = -35.5f;
                    mMiniPushTimer = 5;
                    mMiniPushFlg = true;
                    mode_lower_init();
                }

                mEventID = dComIfGp_getEventManager().getEventIdx(this, prm_get_evId());

                OS_REPORT("踏みスイッチ<%x><%d %d>\n", fopAcM_GetParam(this), prm_get_evId() & 0xFF, mEventID);

                demo_non_init();
                Mthd_Execute();
            }
        } else {
            phase = cPhs_ERROR_e;
        }
    }

    return phase;
}

/* 8048348C-804834E8 00082C 005C+00 1/1 0/0 0/0 .text Mthd_Delete__Q211daObjSwpush5Act_cFv */
int daObjSwpush::Act_c::Mthd_Delete() {
    if (dComIfG_Bgsp().Release(mpBgW)) {
        OS_REPORT_ERROR("Release Error(%s %d)\n", "d_a_obj_swpush.cpp", 777);
    }

    dComIfG_resDelete(&mPhase, M_arcname[mMdl]);
    return 1;
}

/* 804834E8-80483534 000888 004C+00 2/2 0/0 0/0 .text            set_mtx__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::set_mtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80483534-80483570 0008D4 003C+00 1/1 0/0 0/0 .text            init_mtx__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::init_mtx() {
    mpModel->setBaseScale(scale);
    set_mtx();
}

/* 80483570-80483574 000910 0004+00 2/2 0/0 0/0 .text set_btp_frame__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::set_btp_frame() {
    /* empty function */
}

/* 80483574-80483910 000914 039C+00 1/1 0/0 0/0 .text            rideCB__Q211daObjSwpush5Act_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c */
void daObjSwpush::Act_c::rideCB(dBgW* i_bgw, fopAc_ac_c* i_ac, fopAc_ac_c* i_pt) {
    Act_c* i_this = (Act_c*)i_ac;
    if (fopAcM_checkStatus(i_pt, fopAcStts_FREEZE_e)) {
        static cXyz no_push_vec[4] = {
            cXyz(-1.0f, 0.0f, -1.0f),
            cXyz(-1.0f, 0.0f, 1.0f),
            cXyz(1.0f, 0.0f, 1.0f),
            cXyz(1.0f, 0.0f, -1.0f),
        };

        cBgD_Vtx_t* vtxTbl = i_this->mpBgW->GetVtxTbl();
        cM3dGTri tri;
        cXyz vecs[4];
        cXyz spa8;
        int vtxnum = i_this->mpBgW->GetVtxNum();

        #ifdef DEBUG
        for (int i = 0; i < 4; i++) {
            JUT_ASSERT(859, M_op_vtx[i] < vtxnum);
        }
        #endif

        f32 fVar1 = i_this->mPrevRiding ? i_this->attr().step_down_space : i_this->attr().step_up_space;
        mDoMtx_stack_c::push();
        mDoMtx_stack_c::YrotS(i_this->shape_angle.y);
        mDoMtx_stack_c::scaleM(fVar1, fVar1, fVar1);
        mDoMtx_stack_c::scaleM(1.25f, 1.0f, 1.25f);

        for (int i = 0; i < 4; i++) {
            vecs[i].set(vtxTbl[M_op_vtx[i]]);
            mDoMtx_stack_c::multVec(&no_push_vec[i], &spa8);
            vecs[i] += spa8;
        }

        mDoMtx_stack_c::pop();

        static s8 const tri_id[2][3] = {
            {0, 1, 2},
            {3, 0, 2},
        };

        for (int i = 0; i < 2; i++) {
            tri.setPos(&vecs[tri_id[i][0]], &vecs[tri_id[i][1]], &vecs[tri_id[i][2]]);

            if (cM3d_CrossY_Tri(&tri, &i_pt->current.pos)) {
                if (i_this->prm_get_couple() == 0 || i_this->check_ride_couple(fopAcM_GetProfName(i_pt))) {
                    if (fopAcM_CheckCarryType(i_pt, fopAcM_CARRY_TYPE_1)) {
                        i_this->mRidingMode = 2;
                    } else {
                        i_this->mRidingMode = 1;
                    }

                    bool is_player = fopAcM_GetProfName(i_pt) == PROC_ALINK;
                    if (is_player) {
                        i_this->mVibTimer = 4;
                    }
                    
                    if (is_player) {
                        if (((daPy_py_c*)i_pt)->checkEquipHeavyBoots()) {
                            i_this->mHeavyRiding = true;
                        }
                    }

                    if (fopAcM_GetProfName(i_pt) == PROC_E_MM_MT) {
                        i_this->field_0x5c5 = 1;
                        break;
                    }

                    i_this->field_0x5c5 = 0;
                }

                break;
            }
        }
    }
}

/* 804839B4-80483A5C 000D54 00A8+00 1/1 0/0 0/0 .text jnodeCB__Q211daObjSwpush5Act_cFP8J3DJointi */
int daObjSwpush::Act_c::jnodeCB(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        J3DModel* model = (J3DModel*)j3dSys.getModel();
        Act_c* i_this = (Act_c*)model->getUserArea();
        int jntNo = i_joint->getJntNo();
        mDoMtx_stack_c::copy(model->getAnmMtx(jntNo));
        mDoMtx_stack_c::transM(i_this->field_0x5d8, 0.0f, 0.0f);
        model->setAnmMtx(jntNo, mDoMtx_stack_c::get());
        MTXCopy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
    }

    return 1;
}

/* 80483A5C-80483B70 000DFC 0114+00 1/1 0/0 0/0 .text calc_top_pos__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::calc_top_pos() {
    f32 fVar1 = attr().draw_resist;
    mSpeed -= (mCurHFrac - mTargetHFrac) * attr().draw_spring;
    mSpeed -= mSpeed * fVar1;
    mCurHFrac += mSpeed;
    field_0x5d8 = (1.0f - mCurHFrac) * -35.5f;
    field_0x5d8 = cLib_minMaxLimit(field_0x5d8, -36.5f, 1.0f);

    if (field_0x5e0 > 0) {
        if (--field_0x5e0 == 0) {
            field_0x5dc = field_0x5e4;
        }
    }

    if (mMode == MODE_UPPER) {
        field_0x5e8 = mCurHFrac;
    } else {
        field_0x5e8 = field_0x5dc;
    }
    
    mTopPos = (1.0f - field_0x5e8) * -35.5f;

    if (mTopPos < field_0x5d8) {
        mTopPos = field_0x5d8;
    }
}

/* 80483B70-80483B7C 000F10 000C+00 3/3 0/0 0/0 .text top_bg_aim_req__Q211daObjSwpush5Act_cFfs */
void daObjSwpush::Act_c::top_bg_aim_req(f32 param_1, s16 param_2) {
    field_0x5e4 = param_1;
    field_0x5e0 = param_2;
}

/* 80483B7C-80483D0C 000F1C 0190+00 1/1 0/0 0/0 .text set_push_flag__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::set_push_flag() {
    if (mVibTimer != 0) {
        mVibTimer--;
    }

    if (mMiniPushFlg) {
        if (mRidingMode != 0) {
            if (mRidingMode == 2) {
                mMiniPushTimer = attr().able_ride_time_middle;
            } else {
                mMiniPushTimer = attr().able_push_time_any;
            }
        } else if (--mMiniPushTimer <= 0) {
            mMiniPushFlg = false;
        }
    } else if (mRidingMode != 0) {
        if (++mMiniPushTimer >= attr().able_push_time_any) {
            mMiniPushFlg = true;
        }
    } else {
        mMiniPushTimer = 0;
    }

    if (mPushFlg) {
        if (mHeavyRiding) {
            mPushTimer = attr().able_push_time_heavy;
        } else if (--mPushTimer <= 0) {
            mPushFlg = false;
        }
    } else if (mHeavyRiding) {
        if (++mPushTimer >= attr().able_push_time_heavy) {
            mPushFlg = true;
        }
    } else {
        mPushTimer = 0;
    }
}

/* 80483D0C-80483D2C 0010AC 0020+00 2/2 0/0 0/0 .text mode_upper_init__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::mode_upper_init() {
    mMode = MODE_UPPER;
    mTargetHFrac = 1.0f;
    mChangingState = false;
    mDebounceTimer = 0;
}

/* 80483D2C-80483FA8 0010CC 027C+00 1/0 0/0 0/0 .text            mode_upper__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::mode_upper() {
    bool bVar1 = false;
    bool bVar2 = false;
    bool pressing = false;
    f32 height = 1.0f;

    if (mMiniPushFlg) {
        if (cLib_checkBit(attr().flags, FLAG_REQ_HEAVY)) {
            if (mPushFlg) {
                pressing = true;
            } else {
                height = 0.9f;
            }
        } else {
            pressing = true;
        }
    }

    if (prm_get_couple() != 0 && nr_ride_people(field_0x5f2) == 1 && nr_ride_people(field_0x5f3) != 1 && mDebounceTimer <= 0) {
        mSpeed = attr().draw_pypcon_acc * 2.0f;
        mDebounceTimer = 30;
        bVar1 = true;
    } else if (mDebounceTimer > 0) {
        mDebounceTimer--;
    }

    if (!cLib_checkBit(attr().flags, FLAG_REQ_HEAVY) && mDebounceTimer <= 0 && mRidingMode && !mPrevRiding) {
        mSpeed = attr().draw_pypcon_acc;
        mDebounceTimer = 30;
        bVar1 = true;
    } else if (mDebounceTimer > 0) {
        mDebounceTimer--;
    }

    bool is_sw = is_switch();
    bool bVar3 = cLib_checkBit(attr().flags, FLAG_ON_IS_UP);
    if (pressing ||
        (cLib_checkBit(attr().flags, FLAG_OBEY_SAVE) &&
            (
                (is_sw && !bVar3) ||
                (!is_sw && bVar3)
            )
        )
    ) {
        if (pressing) {
            mChangingState = true;
        }

        bVar2 = true;
        mode_u_l_init();
    } else {
        mTargetHFrac = height;
        top_bg_aim_req(height, 1);
    }

    if (bVar2) {
        demo_reqSw_init();
    } else if (bVar1 && !field_0x5c5) {
        demo_reqPause_init();
    }
}

/* 80483FA8-80484008 001348 0060+00 1/1 0/0 0/0 .text mode_u_l_init__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::mode_u_l_init() {
    mMode = MODE_U_L;
    mTargetHFrac = 0.0f;
    mSpeed = attr().draw_down_spd0;
    top_bg_aim_req(0.0f, attr().bg_time_lag);
}

/* 80484008-804841D4 0013A8 01CC+00 1/0 0/0 0/0 .text            mode_u_l__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::mode_u_l() {
    if (mCurHFrac <= 0.0f) {
        if (mChangingState) {
            if (cLib_checkBit(attr().flags, FLAG_IS_TOGGLE)) {
                rev_switch();
            } else if (cLib_checkBit(attr().flags, FLAG_ON_IS_UP)) {
                off_switch();
            } else {
                on_switch();
            }

            dComIfGp_getVibration().StartShock(4, 31, cXyz(0.0f, 1.0f, 0.0f));
        }

        if (mType != 4) {
            fopAcM_seStart(this, JA_SE_OBJ_FOOT_SW_ON, 0);
        } else {
            fopAcM_seStart(this, Z2SE_OBJ_LV3_FLR_SW_ON, 0);
        }

        mode_lower_init();
    }
}

/* 804841D4-804841F4 001574 0020+00 2/2 0/0 0/0 .text mode_lower_init__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::mode_lower_init() {
    mMode = MODE_LOWER;
    mTargetHFrac = 0.0f;
    mChangingState = false;
}

/* 804841F4-80484388 001594 0194+00 1/0 0/0 0/0 .text            mode_lower__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::mode_lower() {
    bool pressing = false;

    if (mMiniPushFlg) {
        if (cLib_checkBit(attr().flags, FLAG_REQ_HEAVY)) {
            if (mPushFlg) {
                pressing = true;
            }
        } else {
            pressing = true;
        }
    }

    bool is_sw = is_switch();
    bool is_sw2 = is_switch2();
    bool obey_save = cLib_checkBit(attr().flags, FLAG_OBEY_SAVE);
    bool stay_pressed = cLib_checkBit(attr().flags, FLAG_STAY_PRESSED);
    bool is_toggle = cLib_checkBit(attr().flags, FLAG_IS_TOGGLE);
    bool on_is_up = cLib_checkBit(attr().flags, FLAG_ON_IS_UP);
    bool flg20 = cLib_checkBit(attr().flags, FLAG_UNK20);

    bool pop_back_up = !stay_pressed && !pressing;
    bool match_state_up = obey_save &&
        ((!is_sw && !on_is_up) || (is_sw && on_is_up)) &&
        !pressing;

    bool bVar5 = !(flg20 && is_sw2);
    if (pop_back_up || match_state_up) {
        if (bVar5) {
            if (pop_back_up && !is_toggle && !pressing) {
                mChangingState = true;
            }

            demo_reqSw_init();
            mode_l_u_init();
        }
    }
}

/* 80484388-804843C0 001728 0038+00 1/1 0/0 0/0 .text mode_l_u_init__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::mode_l_u_init() {
    mMode = MODE_L_U;
    mTargetHFrac = 1.0f;
    top_bg_aim_req(1.0f, 1);
}

/* 804843C0-80484570 001760 01B0+00 1/0 0/0 0/0 .text            mode_l_u__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::mode_l_u() {
    if (mCurHFrac >= 1.0f) {
        if (mChangingState) {
            if (cLib_checkBit(attr().flags, FLAG_ON_IS_UP)) {
                on_switch();
            } else {
                off_switch();
            }
        }

        if (mType == 4) {
            fopAcM_seStart(this, Z2SE_OBJ_LV3_FLR_SW_OFF, 0);
        } else if (strcmp(dComIfGp_getStartStageName(), "D_MN11") == 0 || strcmp(dComIfGp_getStartStageName(), "D_MN06") == 0) {
            fopAcM_seStart(this, Z2SE_OBJ_LV3_FLR_SW_OFF, 0);
        }
        
        mode_upper_init();
    }
}

/* 80484570-8048457C 001910 000C+00 4/4 0/0 0/0 .text demo_non_init__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::demo_non_init() {
    mDemoMode = DEMO_MODE_NON;
}

/* 8048457C-80484580 00191C 0004+00 1/0 0/0 0/0 .text            demo_non__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::demo_non() {
    /* empty function */
}

/* 80484580-804845D8 001920 0058+00 1/1 0/0 0/0 .text demo_reqPause_init__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::demo_reqPause_init() {
    if (mDemoMode == DEMO_MODE_NON) {
        mDemoMode = DEMO_MODE_REQ_PAUSE;
        fopAcM_orderPotentialEvent(this, 2, 0, 0);
        eventInfo.onCondition(fopAcCnd_NOEXEC_e);
    }
}

/* 804845D8-8048460C 001978 0034+00 2/1 0/0 0/0 .text demo_reqPause__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::demo_reqPause() {
    if (eventInfo.checkCommandDemoAccrpt()) {
        demo_runPause_init();
    } else {
        demo_non_init();
    }
}

/* 8048460C-8048464C 0019AC 0040+00 1/1 0/0 0/0 .text demo_runPause_init__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::demo_runPause_init() {
    daPy_getPlayerActorClass()->onWolfEyeKeep();
    mDemoMode = DEMO_MODE_RUN_PAUSE;
    mPauseTimer = attr().demo_run_time;
}

/* 8048464C-804846B4 0019EC 0068+00 1/0 0/0 0/0 .text demo_runPause__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::demo_runPause() {
    daPy_getPlayerActorClass()->onWolfEyeKeep();
    mPauseTimer--;

    if (mPauseTimer <= 0) {
        dComIfGp_event_reset();
        demo_non_init();
    }
}

/* 804846B4-80484708 001A54 0054+00 1/1 0/0 0/0 .text demo_stop_puase__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::demo_stop_puase() {
    if (mDemoMode == DEMO_MODE_REQ_PAUSE) {
        demo_reqPause();
    }

    if (mDemoMode == DEMO_MODE_RUN_PAUSE) {
        dComIfGp_event_reset();
    }
}

static inline bool dComIfGp_evmng_existence(s16 eventIdx) {
    return g_dComIfG_gameInfo.play.getEvtManager().getEventData(eventIdx) != NULL;
}

/* 80484708-804847B4 001AA8 00AC+00 2/2 0/0 0/0 .text demo_reqSw_init__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::demo_reqSw_init() {
    if (dComIfGp_evmng_existence(mEventID) && (mDemoMode == DEMO_MODE_NON || mDemoMode == DEMO_MODE_REQ_PAUSE || mDemoMode == DEMO_MODE_RUN_PAUSE)) {
        demo_stop_puase();
        mDemoMode = DEMO_MODE_REQ_SW;
        fopAcM_orderOtherEventId(this, mEventID, prm_get_evId(), 0xFFFF, 0, 1);
        eventInfo.onCondition(fopAcCnd_NOEXEC_e);
    }
}

/* 804847B4-80484828 001B54 0074+00 1/0 0/0 0/0 .text            demo_reqSw__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::demo_reqSw() {
    if (eventInfo.checkCommandDemoAccrpt()) {
        demo_runSw_init();
    } else {
        fopAcM_orderOtherEventId(this, mEventID, prm_get_evId(), 0xFFFF, 0, 1);
        eventInfo.onCondition(fopAcCnd_NOEXEC_e);
    }
}

/* 80484828-80484834 001BC8 000C+00 1/1 0/0 0/0 .text demo_runSw_init__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::demo_runSw_init() {
    mDemoMode = DEMO_MODE_RUN_SW;
}

/* 80484834-80484890 001BD4 005C+00 1/0 0/0 0/0 .text            demo_runSw__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::demo_runSw() {
    if (dComIfGp_evmng_endCheck(mEventID)) {
        dComIfGp_event_reset();
        demo_non_init();
    }
}

/* 80484890-804848D8 001C30 0048+00 1/1 0/0 0/0 .text check_ride_couple__Q211daObjSwpush5Act_cFs */
bool daObjSwpush::Act_c::check_ride_couple(s16 param_1) {
    if (param_1 == PROC_ALINK) {
        field_0x5f2 |= 1;
    } else if (param_1 == PROC_NPC_P2) {
        field_0x5f2 |= 2;
    }

    return field_0x5f2 == 3;
}

/* 804848D8-80484908 001C78 0030+00 1/1 0/0 0/0 .text nr_ride_people__Q211daObjSwpush5Act_cFc */
int daObjSwpush::Act_c::nr_ride_people(char param_1) {
    int rv = 0;
    for (int i = 0; i < 8; i++) {
        if (((param_1 >> i) & 1) != 0) {
            rv++;
        }
    }

    return rv;
}

/* 80484908-80484BB8 001CA8 02B0+00 2/2 0/0 0/0 .text Mthd_Execute__Q211daObjSwpush5Act_cFv */
int daObjSwpush::Act_c::Mthd_Execute() {
    typedef void (daObjSwpush::Act_c::*procFunc)();

    static procFunc demo_proc[] = {
        &daObjSwpush::Act_c::demo_non,
        &daObjSwpush::Act_c::demo_reqPause,
        &daObjSwpush::Act_c::demo_runPause,
        &daObjSwpush::Act_c::demo_reqSw,
        &daObjSwpush::Act_c::demo_runSw,
    };
    (this->*demo_proc[mDemoMode])();

    set_push_flag();

    static procFunc mode_proc[] = {
        &daObjSwpush::Act_c::mode_upper,
        &daObjSwpush::Act_c::mode_u_l,
        &daObjSwpush::Act_c::mode_lower,
        &daObjSwpush::Act_c::mode_l_u,
    };
    (this->*mode_proc[mMode])();

    calc_top_pos();

    mPrevRiding = mRidingMode != 0;
    mPrevHeavyRiding = mHeavyRiding;
    mRidingMode = 0;
    mHeavyRiding = false;
    field_0x5f3 = field_0x5f2;
    field_0x5f2 = 0;

    set_mtx();
    mpBgW->CopyBackVtx();
    cBgD_Vtx_t* vtx_tbl = mpBgW->GetVtxTbl();
    int i_max = mpBgW->GetVtxNum();
    
    for (int i = 0; i < 4; i++) {
        JUT_ASSERT(1552, M_op_vtx[i] < i_max);

        vtx_tbl[M_op_vtx[i]].y = field_0x5a4 + mTopPos;
    }

    mpBgW->Move();
    eyePos.x = current.pos.x;
    eyePos.y = current.pos.y + field_0x5d8 - -35.5f;
    eyePos.z = current.pos.z;
    set_btp_frame();

    daPy_py_c* player = daPy_getPlayerActorClass();
    s16 sVar1 = cLib_targetAngleY(&player->current.pos, &current.pos) - player->shape_angle.y;

    if (fopAcM_searchPlayerDistanceXZ(this) < KREG_F(0) + 150.0f && sVar1 < 0x4000) {
        player->setForcePutPos(current.pos);
    }

    return 1;
}

/* 80484BB8-80484C5C 001F58 00A4+00 1/1 0/0 0/0 .text            Mthd_Draw__Q211daObjSwpush5Act_cFv */
int daObjSwpush::Act_c::Mthd_Draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

namespace daObjSwpush {
namespace {
    cPhs__Step Mthd_Create(void* i_this) {
        return static_cast<Act_c*>(i_this)->Mthd_Create();
    }

    int Mthd_Delete(void* i_this) {
        return static_cast<Act_c*>(i_this)->Mthd_Delete();
    }

    int Mthd_Execute(void* i_this) {
        return static_cast<Act_c*>(i_this)->Mthd_Execute();
    }

    int Mthd_Draw(void* i_this) {
        return static_cast<Act_c*>(i_this)->Mthd_Draw();
    }

    int Mthd_IsDelete(void* i_this) {
        return 1;
    }
    
    /* 80484F88-80484FA8 -00001 0020+00 1/0 0/0 0/0 .data            Mthd_Table__Q211daObjSwpush28@unnamed@d_a_obj_swpush_cpp@ */
    static actor_method_class Mthd_Table = {
        (process_method_func)Mthd_Create, 
        (process_method_func)Mthd_Delete, 
        (process_method_func)Mthd_Execute, 
        (process_method_func)Mthd_IsDelete,
        (process_method_func)Mthd_Draw,
    };
}; // namespace
}; // namespace daObjSwpush

AUDIO_INSTANCES;

/* 80484FA8-80484FD8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Swpush */
extern actor_process_profile_definition g_profile_Obj_Swpush = {
  fpcLy_CURRENT_e,        // mLayerID
  2,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Swpush,        // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjSwpush::Act_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  11,                     // mPriority
  &daObjSwpush::Mthd_Table,         // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
