/**
 * @file d_a_obj_scannon.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "f_op/f_op_camera_mng.h"
#include "d/actor/d_a_obj_scannon.h"
#include "d/actor/d_a_player.h"
#include "d/d_s_play.h"

/* 80CC9324-80CC9328 -00001 0004+00 0/3 0/0 0/0 .data            l_arcName_Comp */
char* l_arcName_Comp = "SkyCannon";

/* 80CC9328-80CC932C -00001 0004+00 0/3 0/0 0/0 .data            l_arcName_Crash */
char* l_arcName_Crash = "SCanHai";

/* 80CC932C-80CC9330 -00001 0004+00 1/3 0/0 0/0 .data            l_arcName_Zev */
char* l_arcName_Zev = "SCanZev";

/* 80CC9330-80CC9334 -00001 0004+00 0/3 0/0 0/0 .data            l_arcName_Ptl */
char* l_arcName_Ptl = "SCanPtl";

/* 80CC9334-80CC9338 -00001 0004+00 1/1 0/0 0/0 .data            l_staffName */
char* l_staffName = "SCannon";

/* 80CC9338-80CC9348 -00001 0010+00 1/1 0/0 0/0 .data            l_eventName */
char* l_eventName[4] = {
    "SKY_CANNON_WARP_END",
    "SKY_CANNON_FIRE_FIRST",
    "SKY_CANNON_FIRE_TKS",
    "SKY_CANNON_FIRE_SECOND",
};

/* 80CC6A98-80CC6AEC 000078 0054+00 1/1 0/0 0/0 .text            eventCallBack__FPvi */
static int eventCallBack(void* i_proc, int param_1) {
    int layer = dComIfG_play_c::getLayerNo(0);
    if ((layer == 3 || layer == 10) && i_proc != NULL) {
        ((daSCannon_c*)i_proc)->changeScene();
    }

    return 1;
}

/* 80CC6AEC-80CC6B0C 0000CC 0020+00 1/1 0/0 0/0 .text daSCannon_c_createHeap__FP10fopAc_ac_c */
static int daSCannon_c_createHeap(fopAc_ac_c* i_this) {
    return ((daSCannon_c*)i_this)->createHeap();
}

/* 80CC6B0C-80CC6BC8 0000EC 00BC+00 2/2 0/0 0/0 .text            __ct__11daSCannon_cFv */
daSCannon_c::daSCannon_c() {
    mpBgW = NULL;
    memset(mpModels, 0, sizeof(mpModels));
    memset(mpEmtSmk, 0, sizeof(mpEmtSmk));
    memset(mpEmtApp, 0, sizeof(mpEmtApp));
    mpEmtLine = NULL;
    mpCrashBtk = NULL;
    mpPtlBtk = NULL;
    mpPtlModel = NULL;
}

/* 80CC6C10-80CC6D10 0001F0 0100+00 1/0 0/0 0/0 .text            __dt__11daSCannon_cFv */
daSCannon_c::~daSCannon_c() {
    char* arcname;
    if (mLayerNo == 3 || mLayerNo == 10) {
        arcname = l_arcName_Comp;
    } else if (mLayerNo == 1) {
        arcname = l_arcName_Crash;
        if (mIsPortal) {
            dComIfG_resDelete(&mPtlPhase, l_arcName_Ptl);
        }
    }

    dComIfG_resDelete(this, arcname);
    dComIfG_resDelete(&mZevPhase, l_arcName_Zev);
}

/* 80CC9188-80CC9194 000000 000C+00 11/11 0/0 0/0 .rodata          TKS_SET_POS */
static const Vec TKS_SET_POS = {
    -98491.227f, -18346.793f, 52057.156f,
};

/* 80CC9194-80CC919C 00000C 0006+02 0/1 0/0 0/0 .rodata          SMK_PARTICLE_NAME */
static const u16 SMK_PARTICLE_NAME[] = {
    dPa_RM(ID_ZF_S_SKYCANNON00_SMK),
    dPa_RM(ID_ZF_S_SKYCANNON01_SMK),
    dPa_RM(ID_ZF_S_SKYCANNON02_SMK),
};

/* 80CC919C-80CC91A4 000014 0006+02 0/1 0/0 0/0 .rodata          APP_PARTICLE_NAME */
static const u16 APP_PARTICLE_NAME[] = {
    dPa_RM(ID_ZI_S_SKYCANNON_CRASH_APP_A),
    dPa_RM(ID_ZI_S_SKYCANNON_CRASH_APP_B),
    dPa_RM(ID_ZI_S_SKYCANNON_CRASH_APP_C),
};

/* 80CC6D10-80CC7124 0002F0 0414+00 1/1 0/0 0/0 .text            create__11daSCannon_cFv */
int daSCannon_c::create() {
    fopAcM_SetupActor(this, daSCannon_c);

    int layerNo = dComIfG_play_c::getLayerNo(0);
    if (layerNo != 1 && layerNo != 3 && layerNo != 10) {
        // "×××××××× City in the Sky config layer is not specified. Creation canceled. layerNo:%d\n"
        OS_REPORT("××××××××天空砲台 配置レイヤが指定外です 生成中止 layerNo:%d\n", layerNo);
        return cPhs_ERROR_e;
    }

    char* arcname = l_arcName_Comp;
    int ptl_phase_state = cPhs_COMPLEATE_e;
    if (layerNo == 1) {
        arcname = l_arcName_Crash;
        mIsPortal = FALSE;
        if (!fopAcM_isSwitch(this, getSw1())) {
            mIsPortal = TRUE;
            ptl_phase_state = dComIfG_resLoad(&mPtlPhase, l_arcName_Ptl);
            if (ptl_phase_state == cPhs_ERROR_e || ptl_phase_state == cPhs_UNK3_e) {
                return cPhs_ERROR_e;
            }
        }
    }

    int phase_state = dComIfG_resLoad(this, arcname);
    if (phase_state == cPhs_ERROR_e || phase_state == cPhs_UNK3_e) {
        return cPhs_ERROR_e;
    }

    int zev_phase_state = dComIfG_resLoad(&mZevPhase, l_arcName_Zev);
    if (zev_phase_state == cPhs_ERROR_e || zev_phase_state == cPhs_UNK3_e) {
        return cPhs_ERROR_e;
    }

    if (phase_state == cPhs_COMPLEATE_e && zev_phase_state == cPhs_COMPLEATE_e && ptl_phase_state == cPhs_COMPLEATE_e) {
        mLayerNo = layerNo;

        u32 heapsize = 0xF000;
        if (layerNo == 3 || layerNo == 10) {
            heapsize = 0x9000;
        } else if (mIsPortal != 0) {
            heapsize = 0xF000;
        } else {
            heapsize = 0xD500;
        }

        if (!fopAcM_entrySolidHeap(this, daSCannon_c_createHeap, heapsize)) {
            return cPhs_ERROR_e;
        }

        if (dComIfG_Bgsp().Regist(mpBgW, this)) {
            return cPhs_ERROR_e;
        }

        init();

        setModelMtx();
        fopAcM_SetMtx(this, mpModels[mIsRepaired]->getBaseTRMtx());
        fopAcM_setCullSizeFar(this, 5.0f);

        J3DJoint* joint_p = mpModels[mIsRepaired]->getModelData()->getJointNodePointer(0);
        if (joint_p != NULL) {
            fopAcM_setCullSizeBox(this,
                                  joint_p->getMin()->x - 500.0f, joint_p->getMin()->y, joint_p->getMin()->z - 500.0f,
                                  500.0f + joint_p->getMax()->x, joint_p->getMax()->y, 500.0f + joint_p->getMax()->z);
        }

        dBgS_AcchCir acchcir;
        dBgS_ObjAcch acch;
        acchcir.SetWall(0.0f, 10.0f);
        acch.Set(&current.pos, &old.pos, this, 1, &acchcir, fopAcM_GetSpeed_p(this), NULL, NULL);
        acch.CrrPos(dComIfG_Bgsp());
        mGroundY = acch.GetGroundH();
        mGroundPoly = acch.m_gnd;

        if (layerNo == 3 || layerNo == 10) {
            JUTNameTab* nametab_p = mpModels[mIsRepaired]->getModelData()->getJointTree().getJointName();
            for (int i = 0; i < mpModels[mIsRepaired]->getModelData()->getJointNum(); i++) {
                if (strcmp(nametab_p->getName(i), "head") == 0) {
                    mHeadJointNo = i;
                    break;
                }
            }
        } else if (mLayerNo == 1) {
            execute();
        }

        return cPhs_COMPLEATE_e;
    }

    return cPhs_INIT_e;
}

/* 80CC7204-80CC7228 0007E4 0024+00 2/2 0/0 0/0 .text            execute__11daSCannon_cFv */
int daSCannon_c::execute() {
    middleExe();
    return 1;
}

/* 80CC7228-80CC747C 000808 0254+00 1/1 0/0 0/0 .text            draw__11daSCannon_cFv */
int daSCannon_c::draw() {
    g_env_light.settingTevStruct(8, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModels[mIsRepaired], &tevStr);

    if (mLayerNo == 3 || mLayerNo == 10) {
        mBck.entry(mpModels[mIsRepaired]->getModelData());
    } else if (mLayerNo == 1 && !fopAcM_isSwitch(this, getSw1())) {
        if (mpCrashBtk != NULL) {
            mpCrashBtk->entry(mpModels[mIsRepaired]->getModelData());
        }

        if (mpPtlModel != NULL) {
            dComIfGd_setListDark();
            J3DModelData* modelData_p = mpPtlModel->getModelData();

            if (mpPtlBtk != NULL) {
                mpPtlBtk->entry(modelData_p);
            }

            mDoExt_modelUpdateDL(mpPtlModel);

            if (mpPtlBtk != NULL) {
                mpPtlBtk->remove(modelData_p);
            }

            dComIfGd_setList();
        }
    }

    dComIfGd_setList();
    mDoExt_modelUpdateDL(mpModels[mIsRepaired]);

    if (mpCrashBtk != NULL) {
        mpCrashBtk->remove(mpModels[mIsRepaired]->getModelData());
    }

    if (mDrawShadow) {
        cXyz sp8(current.pos.x, current.pos.y, current.pos.z);
        mShadowKey = dComIfGd_setShadow(mShadowKey, 1, mpModels[mIsRepaired], &sp8, 2500.0f, 0.0f, current.pos.y + aREG_F(1), mGroundY + aREG_F(3), mGroundPoly, &tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
    }

    return 1;
}

/* 80CC747C-80CC7508 000A5C 008C+00 1/1 0/0 0/0 .text            Delete__11daSCannon_cFv */
int daSCannon_c::Delete() {
    if (mpBgW != NULL && mpBgW->ChkUsed()) {
        dComIfG_Bgsp().Release(mpBgW);
    }

    if (mLayerNo == 3 || mLayerNo == 10) {
        delEmtAll();
    }

    this->~daSCannon_c();
    return 1;
}

/* 80CC7508-80CC7578 000AE8 0070+00 3/3 0/0 0/0 .text            setModelMtx__11daSCannon_cFv */
void daSCannon_c::setModelMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mpModels[mIsRepaired]->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80CC7578-80CC7608 000B58 0090+00 1/1 0/0 0/0 .text            setPtlModelMtx__11daSCannon_cFv */
void daSCannon_c::setPtlModelMtx() {
    if (mpPtlModel != NULL) {
        mDoMtx_stack_c::transS(current.pos.x, 1800.0f + current.pos.y, current.pos.z);
        mDoMtx_stack_c::YrotM(shape_angle.y);
        mDoMtx_stack_c::scaleM(4.0f, 4.0f, 4.0f);
        mpPtlModel->setBaseTRMtx(mDoMtx_stack_c::get());
    }
}

/* 80CC7608-80CC7970 000BE8 0368+00 1/1 0/0 0/0 .text            createHeap__11daSCannon_cFv */
int daSCannon_c::createHeap() {
    char* arcname;
    int bmd_index;
    int dzb_index;

    int layer_no = mLayerNo;
    u32 mdl_diff_flags = J3D_DIFF_FLAG(FALSE, FALSE, TRUE, 8, 0, FALSE, 0, 0, TRUE, FALSE, FALSE, FALSE, TRUE, FALSE);
    if (layer_no == 3 || layer_no == 10) {
        arcname = l_arcName_Comp;
        bmd_index = 8;
        dzb_index = 11;
        mdl_diff_flags = J3D_DIFF_FLAG(FALSE, FALSE, TRUE, 8, 0, FALSE, 0, 0, TRUE, FALSE, FALSE, FALSE, TRUE, FALSE);
    } else if (layer_no == 1) {
        arcname = l_arcName_Crash;
        bmd_index = 5;
        dzb_index = 12;
        mdl_diff_flags = J3D_DIFF_FLAG(FALSE, FALSE, TRUE, 8, 2, FALSE, 0, 0, TRUE, FALSE, FALSE, FALSE, TRUE, FALSE);
    }

    J3DModelData* a_model_data_p = (J3DModelData*)dComIfG_getObjectRes(arcname, bmd_index);
    JUT_ASSERT(541, a_model_data_p != NULL);

    mpModels[0] = mDoExt_J3DModel__create(a_model_data_p, J3DMdlFlag_DifferedDLBuffer, mdl_diff_flags);
    if (mpModels[0] == NULL) {
        return 0;
    }

    if (layer_no == 3 || layer_no == 10) {
        J3DAnmTransform* a_bck_p = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName_Comp, 5);
        JUT_ASSERT(562, a_bck_p != NULL);

        int rt = mBck.init(a_bck_p, 1, 0, 0.0f, 0, -1, 0);
        if (!rt) {
            return 0;
        }
    } else if (layer_no == 1) {
        J3DModelData* a_repair_model_data_p = (J3DModelData*)dComIfG_getObjectRes(l_arcName_Crash, 6);
        JUT_ASSERT(583, a_repair_model_data_p != NULL);

        mpModels[1] = mDoExt_J3DModel__create(a_repair_model_data_p, J3DMdlFlag_DifferedDLBuffer, J3D_DIFF_FLAG(FALSE, FALSE, TRUE, 8, 0, FALSE, 0, 0, TRUE, FALSE, FALSE, FALSE, TRUE, FALSE));
        if (mpModels[1] == NULL) {
            return 0;
        }

        if (mIsPortal != 0) {
            J3DAnmTextureSRTKey* a_btk_p = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName_Crash, 9);
            JUT_ASSERT(606, a_btk_p != NULL);
            mpCrashBtk = new mDoExt_btkAnm();
            if (mpCrashBtk == NULL || !mpCrashBtk->init(a_model_data_p, a_btk_p, 1, 0, 0.0f, 0, -1)) {
                return 0;
            }

            J3DModelData* a_ptl_model_data_p = (J3DModelData*)dComIfG_getObjectRes(l_arcName_Ptl, 5);
            JUT_ASSERT(623, a_ptl_model_data_p != NULL);
            mpPtlModel = mDoExt_J3DModel__create(a_ptl_model_data_p, J3DMdlFlag_DifferedDLBuffer, J3D_DIFF_FLAG(FALSE, FALSE, TRUE, 8, 2, FALSE, 0, 0, TRUE, FALSE, FALSE, FALSE, TRUE, FALSE));
            if (mpPtlModel == NULL) {
                return 0;
            }

            a_btk_p = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName_Ptl, 0xC);
            JUT_ASSERT(642, a_btk_p != NULL);
            mpPtlBtk = new mDoExt_btkAnm();
            if (mpPtlBtk == NULL || !mpPtlBtk->init(a_ptl_model_data_p, a_btk_p, 1, 2, 0.0f, 0, -1)) {
                return 0;
            }
        }
    }

    mpBgW = new dBgW();
    if (mpBgW == NULL) {
        return 0;
    }

    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);

    if (mpBgW->Set((cBgD_t*)dComIfG_getObjectRes(arcname, dzb_index), 1, &mBgMtx) == 1) {
        return 0;
    }

    return 1;
}

/* 80CC7970-80CC7A10 000F50 00A0+00 1/1 0/0 0/0 .text            middleExe__11daSCannon_cFv */
void daSCannon_c::middleExe() {
    if (s_exeProc[mMode] != NULL) {
        (this->*s_exeProc[mMode])();
    }

    setModelMtx();

    if (mLayerNo == 3 || mLayerNo == 10) {
        mBck.play();
    } else if (mLayerNo == 1) {
        setPtlModelMtx();
    }
}

/* 80CC7A10-80CC7AB8 000FF0 00A8+00 1/1 0/0 0/0 .text            orderEvtInit__11daSCannon_cFv */
void daSCannon_c::orderEvtInit() {
    eventInfo.setArchiveName(l_arcName_Zev);
    mEvtIdx = dComIfGp_getEventManager().getEventIdx(this, l_eventName[mDemoType], 0xFF);
#ifdef DEBUG
    if (mEvtIdx == -1) {
        // "××××××××××××× Sky Cannon d_a_obj_scannon.cpp: Failed to get event\n"
        OS_REPORT("×××××××××××××天空砲台 d_a_obj_scannon.cpp：イベント取得失敗\n");
        OS_REPORT("________demo_type:%d\n", mDemoType);
        return;
    }
#endif

    int priority;
    if (mDemoType == DEMOTYPE_FIRE_FIRST) {
        priority = 0;
    } else {
        priority = 2;
    }

    fopAcM_orderOtherEventId(this, mEvtIdx, 0xFF, 0xFFFF, priority, 1);
    eventInfo.onCondition(dEvtCnd_CANDEMO_e);
}

/* 80CC7AB8-80CC7C48 001098 0190+00 1/0 0/0 0/0 .text            exeModeWait__11daSCannon_cFv */
void daSCannon_c::exeModeWait() {
    if (mLayerNo == 3) {
        switch (mDemoType) {
        case DEMOTYPE_FIRE_FIRST:
            if (fopAcM_checkHookCarryNow(this) && dComIfGp_checkPlayerStatus1(0, 0x10)) {
                orderEvtInit();
                mMode = MODE_ORDER_EVT;
                if (!fopAcM_isSwitch(this, getSw2())) {
                    cXyz pos(TKS_SET_POS);
                    fopAcM_create(PROC_NPC_TKS, 1, &pos, fopAcM_GetRoomNo(this), NULL, NULL, -1);
                }
            }
            break;
        case DEMOTYPE_FIRE_TKS:
        case DEMOTYPE_FIRE_SECOND:
            orderEvtInit();
            mMode = MODE_ORDER_EVT;
        }
    } else if (mLayerNo == 1 && mIsPortal != 0) {
        JUTNameTab* nametab_p = mpModels[mIsRepaired]->getModelData()->getJointTree().getJointName();
        for (int i = 0; i < mpModels[mIsRepaired]->getModelData()->getJointNum(); i++) {
            if (strcmp(nametab_p->getName(i), "Ni_SkyCannon_crash") == 0) {
                mCrashJointNo = i;
                break;
            }
        }

        orderEvtInit();
        mMode = MODE_ORDER_EVT;
    }
}

/* 80CC7C48-80CC7D14 001228 00CC+00 1/0 0/0 0/0 .text            exeModeOrderEvt__11daSCannon_cFv */
void daSCannon_c::exeModeOrderEvt() {
    if (eventInfo.checkCommandDemoAccrpt()) {
        const char* staffName = mDemoType == DEMOTYPE_FIRE_TKS ? "Tks" : l_staffName;
        mStaffId = dComIfGp_evmng_getMyStaffId(staffName, NULL, 0);
        mMode = MODE_ACTION_EVT;
        demoModeInit(0);
        return;
    }

    int priority;
    if (mDemoType == DEMOTYPE_FIRE_FIRST) {
        priority = 0;
    } else {
        priority = 2;
    }

    fopAcM_orderOtherEventId(this, mEvtIdx, 0xFF, 0xFFFF, priority, 1);
    eventInfo.onCondition(dEvtCnd_CANDEMO_e);
}

/* 80CC9378-80CC93A8 000074 0030+00 1/2 0/0 0/0 .data            s_exeProc__11daSCannon_c */
void (daSCannon_c::*daSCannon_c::s_exeProc[])() = {
    &daSCannon_c::exeModeWait,
    &daSCannon_c::exeModeOrderEvt,
    &daSCannon_c::exeModeActionEvt,
    &daSCannon_c::exeModeEnd,
};

/* 80CC93A8-80CC93B0 -00001 0008+00 1/0 0/0 0/0 .data            CUT_TYPE_TABLE_WARP_END */
char* CUT_TYPE_TABLE_WARP_END[2] = {
    "WAIT",
    "MOVE",
};

/* 80CC93B0-80CC93BC -00001 000C+00 1/0 0/0 0/0 .data            CUT_TYPE_TABLE_FIRE_TKS */
char* CUT_TYPE_TABLE_FIRE_TKS[3] = {
    "0001_WAIT",
    "0002_RUN",
    "0003_JUMP",
};

/* 80CC93BC-80CC93C0 -00001 0004+00 1/0 0/0 0/0 .data            CUT_TYPE_TABLE_FIRE_FIRST */
char* CUT_TYPE_TABLE_FIRE_FIRST[1] = {
    "LINK_IN",
};

/* 80CC93C0-80CC93D0 -00001 0010+00 1/0 0/0 0/0 .data            CUT_TYPE_TABLE_FIRE_SECOND */
char* CUT_TYPE_TABLE_FIRE_SECOND[4] = {
    "SET",
    "MOVE",
    "FIRE",
    "FINISH",
};

/* 80CC9400-80CC9430 0000FC 0030+00 1/1 0/0 0/0 .data s_demoExeProc_WarpEnd__11daSCannon_c */
void (daSCannon_c::*daSCannon_c::s_demoExeProc_WarpEnd[][2])() = {
    {&daSCannon_c::demoInitWarpEndWait, &daSCannon_c::demoExeWarpEndWait},
    {&daSCannon_c::demoInitWarpEndMove, &daSCannon_c::demoExeWarpEndMove},
};

/* 80CC9430-80CC9478 00012C 0048+00 1/1 0/0 0/0 .data s_demoExeProc_FireTks__11daSCannon_c */
void (daSCannon_c::*daSCannon_c::s_demoExeProc_FireTks[][2])() = {
    {NULL, NULL},
    {NULL, NULL},
    {NULL, NULL},
};

/* 80CC9490-80CC94A8 00018C 0018+00 1/1 0/0 0/0 .data s_demoExeProc_FireFirst__11daSCannon_c */
void (daSCannon_c::*daSCannon_c::s_demoExeProc_FireFirst[][2])() = {
    {&daSCannon_c::demoInitLinkIn, &daSCannon_c::demoExeLinkIn},
};

/* 80CC9508-80CC9568 000204 0060+00 1/1 0/0 0/0 .data s_demoExeProc_FireSecond__11daSCannon_c */
void (daSCannon_c::*daSCannon_c::s_demoExeProc_FireSecond[][2])() = {
    {&daSCannon_c::demoInitSet, &daSCannon_c::demoExeSet},
    {&daSCannon_c::demoInitMove, &daSCannon_c::demoExeMove},
    {&daSCannon_c::demoInitFire, &daSCannon_c::demoExeFire},
    {&daSCannon_c::demoInitFinish, &daSCannon_c::demoExeFinish},
};

/* 80CC7D14-80CC7EBC 0012F4 01A8+00 1/0 0/0 0/0 .text            exeModeActionEvt__11daSCannon_cFv
 */
void daSCannon_c::exeModeActionEvt() {
    if (dComIfGp_evmng_endCheck(mEvtIdx) != 0) {
        dComIfGp_event_reset();
        if (mLayerNo == 3 || mLayerNo == 10) {
            switch (mDemoType) {
            case DEMOTYPE_FIRE_FIRST:
                if (fopAcM_isSwitch(this, getSw2())) {
                    mDemoType = DEMOTYPE_FIRE_SECOND;
                } else {
                    mDemoType = DEMOTYPE_FIRE_TKS;
                }
                mMode = MODE_WAIT;
                return;
            case DEMOTYPE_FIRE_TKS:
                mDemoType = DEMOTYPE_FIRE_SECOND;
                mMode = MODE_WAIT;
                return;
            case DEMOTYPE_FIRE_SECOND:
                mMode = MODE_END;
                return;
            }
        } else if (mLayerNo == 1) {
            if (!fopAcM_isSwitch(this, getSw1())) {
                fopAcM_onSwitch(this, getSw1());
            }
            mDrawShadow = TRUE;
            mMode = MODE_END;
        }
    } else {
        if ((mLayerNo == 3 || mLayerNo == 10) && fopAcM_isSwitch(this, getSw2())) {
            dComIfGp_getEvent().setSkipProc(this, eventCallBack, 0);
        }
        demoExe();
    }
}

/* 80CC7EBC-80CC7EC0 00149C 0004+00 1/0 0/0 0/0 .text            exeModeEnd__11daSCannon_cFv */
void daSCannon_c::exeModeEnd() {}

/* 80CC91C4-80CC91F4 -00001 0030+00 2/2 0/0 0/0 .rodata          s_demoTable__11daSCannon_c */
const daSCannon_c::demoTable_s daSCannon_c::s_demoTable[] = {
    {s_demoExeProc_WarpEnd, CUT_TYPE_TABLE_WARP_END, 2},
    {s_demoExeProc_FireFirst, CUT_TYPE_TABLE_FIRE_FIRST, 1},
    {s_demoExeProc_FireTks, CUT_TYPE_TABLE_FIRE_TKS, 3},
    {s_demoExeProc_FireSecond, CUT_TYPE_TABLE_FIRE_SECOND, 4},
};

/* 80CC7EC0-80CC7FAC 0014A0 00EC+00 1/1 0/0 0/0 .text            demoExe__11daSCannon_cFv */
void daSCannon_c::demoExe() {
    char** cut_table = s_demoTable[mDemoType].cut_table;
    int cut_num = s_demoTable[mDemoType].cut_num;
    int act_idx = dComIfGp_evmng_getMyActIdx(mStaffId, cut_table, cut_num, 0, 0);
    if (act_idx != -1) {
        if (dComIfGp_evmng_getIsAddvance(mStaffId)) {
            demoModeInit(act_idx);
        }

        if (s_demoTable[mDemoType].demo_proc_table[act_idx][1] != NULL) {
            (this->*s_demoTable[mDemoType].demo_proc_table[act_idx][1])();
        }
    }
}

/* 80CC7FAC-80CC8044 00158C 0098+00 2/2 0/0 0/0 .text            demoModeInit__11daSCannon_cFi */
void daSCannon_c::demoModeInit(int i_actIdx) {
    if (i_actIdx < 0 || i_actIdx >= s_demoTable[mDemoType].cut_num) {
        return;
    }

    if (s_demoTable[mDemoType].demo_proc_table[i_actIdx][0] != NULL) {
        (this->*s_demoTable[mDemoType].demo_proc_table[i_actIdx][0])();
    }
}

/* 80CC8044-80CC8048 001624 0004+00 1/0 0/0 0/0 .text            demoInitLinkIn__11daSCannon_cFv */
void daSCannon_c::demoInitLinkIn() {}

/* 80CC8048-80CC8108 001628 00C0+00 1/0 0/0 0/0 .text            demoExeLinkIn__11daSCannon_cFv */
void daSCannon_c::demoExeLinkIn() {
    if (!fopAcM_checkHookCarryNow(this)) {
        daPy_py_c* player_p = daPy_getPlayerActorClass();
        if (player_p != NULL) {
            player_p->onPlayerNoDraw();
            player_p->onPlayerShadowNoDraw();

            cXyz pos(-102065.44f, -17973.893f, 53981.64f);
            player_p->setPlayerPosAndAngle(&pos, player_p->shape_angle.y, 0);
            mpBgW->OffRoofRegist();
        }
        dComIfGp_evmng_cutEnd(mStaffId);
    }
}

/* 80CC8108-80CC81DC 0016E8 00D4+00 1/0 0/0 0/0 .text            demoInitSet__11daSCannon_cFv */
void daSCannon_c::demoInitSet() {
    fopAcM_seStartCurrent(this, Z2SE_OBJ_TCANNON_ACTION_LAKE, 0);
    mBck.setPlaySpeed(1.0f);
    initEmtRt(mHeadJointNo, ARRAY_SIZE(mpEmtSmk), SMK_PARTICLE_NAME, mpEmtSmk);
    dComIfGp_getVibration().StartShock(VIBMODE_S_POWER3, 0x1F, cXyz(0.0f, 1.0f, 0.0f));
}

/* 80CC81DC-80CC8274 0017BC 0098+00 1/0 0/0 0/0 .text            demoExeSet__11daSCannon_cFv */
void daSCannon_c::demoExeSet() {
    exeEmtRt(mHeadJointNo, ARRAY_SIZE(mpEmtSmk), mpEmtSmk);
    if (mBck.checkFrame(84)) {
        dComIfGp_getVibration().StartShock(VIBMODE_S_POWER5, 0x1F, cXyz(0.0f, 1.0f, 0.0f));
        dComIfGp_evmng_cutEnd(mStaffId);
    }
}

/* 80CC8274-80CC8278 001854 0004+00 1/0 0/0 0/0 .text            demoInitMove__11daSCannon_cFv */
void daSCannon_c::demoInitMove() {}

/* 80CC8278-80CC8378 001858 0100+00 1/0 0/0 0/0 .text            demoExeMove__11daSCannon_cFv */
void daSCannon_c::demoExeMove() {
    exeEmtRt(mHeadJointNo, ARRAY_SIZE(mpEmtSmk), mpEmtSmk);
    if (mBck.checkFrame(104.0f)) {
        dComIfGp_getVibration().StartShock(VIBMODE_S_POWER5, 0x1F, cXyz(0.0f, 1.0f, 0.0f));
    } else if (mBck.checkFrame(120.0f)) {
        dComIfGp_getVibration().StartShock(VIBMODE_S_POWER5, 0x1F, cXyz(0.0f, 1.0f, 0.0f));
    } else if (mBck.checkFrame(130.0f)) {
        dComIfGp_evmng_cutEnd(mStaffId);
    }
}

/* 80CC8378-80CC83CC 001958 0054+00 1/0 0/0 0/0 .text            demoInitFire__11daSCannon_cFv */
void daSCannon_c::demoInitFire() {
    dComIfGp_getVibration().StartQuake(3, 0x1F, cXyz(0.0f, 1.0f, 0.0f));
}

/* 80CC83CC-80CC8430 0019AC 0064+00 1/0 0/0 0/0 .text            demoExeFire__11daSCannon_cFv */
void daSCannon_c::demoExeFire() {
    exeEmtRt(mHeadJointNo, ARRAY_SIZE(mpEmtSmk), mpEmtSmk);
    if (mBck.checkFrame(235.0f)) {
        dComIfGp_evmng_cutEnd(mStaffId);
    }
}

/* 80CC8430-80CC8538 001A10 0108+00 1/0 0/0 0/0 .text            demoInitFinish__11daSCannon_cFv */
void daSCannon_c::demoInitFinish() {
#ifdef DEBUG
    if (dComIfG_play_c::getLayerNo(0) == 3 || dComIfG_play_c::getLayerNo(0) == 10) {
        J3DJoint* joint_p = mpModels[mIsRepaired]->getModelData()->getJointNodePointer(mHeadJointNo);
        if (joint_p == NULL) {
            // "××××××Sky Cannon—The head joint is missing!!!! ××××××"
            OS_REPORT("______________________××××××天空砲台　頭部分のジョイントがありません！！！！ ××××××____________\n");
            JUT_ASSERT(1351, FALSE);
        }
    }
#endif

    fopAcM_seStartCurrent(this, Z2SE_OBJ_BOMB_EXPLODE, 0);
    fopAcM_OffStatus(this, 0x80);

    dComIfGp_getVibration().StopQuake(0x1F);
    dComIfGp_getVibration().StartShock(8, 0x1F, cXyz(0.0f, 1.0f, 0.0f));

    int* timer_p = dComIfGp_evmng_getMyIntegerP(mStaffId, "Timer");
    if (timer_p != NULL) {
        mTimer = *timer_p;
    } else {
        mTimer = 1;
    }
}

/* 80CC8538-80CC8648 001B18 0110+00 1/0 0/0 0/0 .text            demoExeFinish__11daSCannon_cFv */
void daSCannon_c::demoExeFinish() {
    exeEmtRt(mHeadJointNo, ARRAY_SIZE(mpEmtSmk), mpEmtSmk);
    mDemoFinishTimer++;

    if (mDemoFinishTimer == 15) {
        mDoAud_seStart(Z2SE_AL_V_CANON_JUMP, NULL, 0, 0);
        initEmtLine();
    } else if (mDemoFinishTimer > 15) {
        exeEmtLine();
    }

    if (mBck.isStop() && cLib_calcTimer<int>(&mTimer) == 0) {
        dComIfGp_evmng_cutEnd(mStaffId);
        changeScene();
    }
}

/* 80CC8648-80CC8714 001C28 00CC+00 1/0 0/0 0/0 .text demoInitWarpEndWait__11daSCannon_cFv */
void daSCannon_c::demoInitWarpEndWait() {
    int* timer_p = dComIfGp_evmng_getMyIntegerP(mStaffId, "Timer");
    if (timer_p != NULL) {
        mTimer = *timer_p;
    } else {
        mTimer = 1;
    }

    mpPtlBtk->setPlaySpeed(1.0f);
    
    daPy_py_c* player_p = (daPy_py_c*)dComIfGp_getPlayer(0);
    if (player_p != NULL) {
        cXyz pos(-101987.7f, -18470.0f, 55863.813f);
        player_p->setPlayerPosAndAngle(&pos, -0x7B71, 0);
    }
}

/* 80CC8714-80CC8804 001CF4 00F0+00 1/0 0/0 0/0 .text            demoExeWarpEndWait__11daSCannon_cFv
 */
void daSCannon_c::demoExeWarpEndWait() {
    if (mTimer == 35) {
        initEmtRt(mCrashJointNo, ARRAY_SIZE(mpEmtApp), APP_PARTICLE_NAME, mpEmtApp);
        fopAcM_seStartCurrent(this, Z2SE_OBJ_TCANNON_WARP_OUT, 0);
    } else if (mTimer < 35) {
        exeEmtRt(mCrashJointNo, ARRAY_SIZE(mpEmtApp), mpEmtApp);
    }

    if (cLib_calcTimer<int>(&mTimer) == 0) {
        dComIfGp_evmng_cutEnd(mStaffId);
    }

    mpCrashBtk->play();
    mpPtlBtk->play();
}

/* 80CC8804-80CC8818 001DE4 0014+00 1/0 0/0 0/0 .text demoInitWarpEndMove__11daSCannon_cFv */
void daSCannon_c::demoInitWarpEndMove() {
    mpCrashBtk->setPlaySpeed(1.0f);
}

/* 80CC8818-80CC88A8 001DF8 0090+00 1/0 0/0 0/0 .text            demoExeWarpEndMove__11daSCannon_cFv
 */
void daSCannon_c::demoExeWarpEndMove() {
    exeEmtRt(mCrashJointNo, ARRAY_SIZE(mpEmtApp), mpEmtApp);
    if (mpCrashBtk->isStop()) {
        dComIfGp_evmng_cutEnd(mStaffId);
    }

    mpCrashBtk->play();
    mpPtlBtk->play();
}

/* 80CC88A8-80CC8998 001E88 00F0+00 2/2 0/0 0/0 .text            changeScene__11daSCannon_cFv */
void daSCannon_c::changeScene() {
    if (mLayerNo == 3 || mLayerNo == 10) {
        if (dComIfGp_getVibration().CheckQuake()) {
            dComIfGp_getVibration().StopQuake(0x1F);
        }

        fopAcM_OnStatus(this, fopAcM_STATUS_UNK_0x80);

        if (field_0x619 == 0) {
            field_0x619 = 1;
        }

        if (!fopAcM_isSwitch(this, getSw2())) {
            fopAcM_onSwitch(this, getSw2());
        }

        dStage_changeScene(7, 0.0f, 0, fopAcM_GetRoomNo(this), 0, -1);
    }
}

/* 80CC8998-80CC8A30 001F78 0098+00 1/1 0/0 0/0 .text            init__11daSCannon_cFv */
void daSCannon_c::init() {
    int layerNo = mLayerNo;

    mTimer = 0;
    mShadowKey = 0;
    field_0x619 = 0;
    mDrawShadow = TRUE;

    if (layerNo == 3 || layerNo == 10) {
        mMode = MODE_WAIT;
        mDemoType = DEMOTYPE_FIRE_FIRST;
        mIsRepaired = FALSE;
        mDemoFinishTimer = 0;
        mHeadJointNo = 0xFFFF;
    } else if (layerNo == 1) {
        if (mIsPortal) {
            mDrawShadow = FALSE;
            mMode = MODE_WAIT;
        } else {
            mMode = MODE_END;
        }

        mIsRepaired = FALSE;
        mDemoType = DEMOTYPE_WARP_END;
        mCrashJointNo = 0xFFFF;
    }
}

/* 80CC8A30-80CC8B60 002010 0130+00 2/2 0/0 0/0 .text
 * initEmtRt__11daSCannon_cFUsiPCUsPP14JPABaseEmitter           */
void daSCannon_c::initEmtRt(u16 i_jointNo, int i_emtNum, const u16* i_name_list, JPABaseEmitter** i_emt_list) {
    MtxP mtx = mpModels[mIsRepaired]->getAnmMtx(i_jointNo);
    if (mtx != NULL) {
        cXyz pos(mtx[0][3], mtx[1][3], mtx[2][3]);
        csXyz rot(shape_angle);
        cXyz size(1.0f, 1.0f, 1.0f);

        for (int i = 0; i < i_emtNum; i++) {
            i_emt_list[i] = dComIfGp_particle_set(i_name_list[i], &pos, &rot, &size);
            if (i_emt_list[i] != NULL) {
                i_emt_list[i]->setGlobalRTMatrix(mtx);
            }
        }
    }
}

/* 80CC8B60-80CC8BF4 002140 0094+00 6/6 0/0 0/0 .text
 * exeEmtRt__11daSCannon_cFUsiPP14JPABaseEmitter                */
void daSCannon_c::exeEmtRt(u16 i_jointNo, int i_emtNum, JPABaseEmitter** i_emt_list) {
    MtxP mtx = mpModels[mIsRepaired]->getAnmMtx(i_jointNo);
    if (mtx != NULL) {
        for (int i = 0; i < i_emtNum; i++) {
            if (i_emt_list[i] != NULL) {
                i_emt_list[i]->setGlobalRTMatrix(mtx);
            }
        }
    }
}

/* 80CC8BF4-80CC8CDC 0021D4 00E8+00 1/1 0/0 0/0 .text            initEmtLine__11daSCannon_cFv */
void daSCannon_c::initEmtLine() {
    cXyz pos;
    csXyz rot;

    camera_class* camera_p = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    if (camera_p != NULL) {
        pos = *fopCamM_GetEye_p(camera_p);
        rot.set(dCam_getAngleX(camera_p), dCam_getAngleY(camera_p), 0);
    }

    mpEmtLine = dComIfGp_particle_set(dPa_RM(ID_ZF_S_TOBYCANNON00LINE), &pos, &tevStr, &rot, NULL);
}

/* 80CC8CDC-80CC8DA0 0022BC 00C4+00 1/1 0/0 0/0 .text            exeEmtLine__11daSCannon_cFv */
void daSCannon_c::exeEmtLine() {
    cXyz pos;
    JGeometry::TVec3<s16> rot;
    if (mpEmtLine != NULL) {
        camera_class* camera_p = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
        if (camera_p != NULL) {
            pos = *fopCamM_GetEye_p(camera_p);
            rot.x = dCam_getAngleX(camera_p);
            rot.y = dCam_getAngleY(camera_p);
            rot.z = 0;
        }
        mpEmtLine->setGlobalTranslation(pos.x, pos.y, pos.z);
        mpEmtLine->setGlobalRotation(rot);
    }
}

/* 80CC8DA0-80CC8DDC 002380 003C+00 1/1 0/0 0/0 .text            delEmtAll__11daSCannon_cFv */
void daSCannon_c::delEmtAll() {
    if (mpEmtLine != NULL) {
        mpEmtLine->becomeInvalidEmitter();
        mpEmtLine->quitImmortalEmitter();
        mpEmtLine = NULL;
    }
}

/* 80CC8DDC-80CC8E60 0023BC 0084+00 0/0 0/0 1/1 .text            setCannonRepair__11daSCannon_cFv */
void daSCannon_c::setCannonRepair() {
    if (dComIfG_play_c::getLayerNo(0) == 1) {
        mIsRepaired = TRUE;
        setModelMtx();
        fopAcM_SetMtx(this, mpModels[mIsRepaired]->getBaseTRMtx());
        dComIfGs_offSaveSwitch(6, 0x35);
        dComIfGs_onSaveSwitch(6, 0x36);
    }
}

/* 80CC8E60-80CC8EB4 002440 0054+00 1/0 0/0 0/0 .text            daSCannon_create__FP11daSCannon_c
 */
static int daSCannon_create(daSCannon_c* i_this) {
    fopAcM_SetupActor(i_this, daSCannon_c);
    return i_this->create();
}

/* 80CC8EB4-80CC8ED4 002494 0020+00 1/0 0/0 0/0 .text            daSCannon_Delete__FP11daSCannon_c
 */
static int daSCannon_Delete(daSCannon_c* i_this) {
    return i_this->Delete();
}

/* 80CC8ED4-80CC8EF4 0024B4 0020+00 1/0 0/0 0/0 .text            daSCannon_execute__FP11daSCannon_c
 */
static int daSCannon_execute(daSCannon_c* i_this) {
    return i_this->execute();
}

/* 80CC8EF4-80CC8F14 0024D4 0020+00 1/0 0/0 0/0 .text            daSCannon_draw__FP11daSCannon_c */
static int daSCannon_draw(daSCannon_c* i_this) {
    return i_this->draw();
}

/* 80CC9568-80CC9588 -00001 0020+00 1/0 0/0 0/0 .data            daSCannon_METHODS */
static actor_method_class daSCannon_METHODS = {
    (process_method_func)daSCannon_create,
    (process_method_func)daSCannon_Delete,
    (process_method_func)daSCannon_execute,
    0,
    (process_method_func)daSCannon_draw,
};

/* 80CC9588-80CC95B8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_SCannon */
extern actor_process_profile_definition g_profile_Obj_SCannon = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_SCannon,       // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daSCannon_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  734,                    // mPriority
  &daSCannon_METHODS,     // sub_method
  0x00044180,             // mStatus
  fopAc_ENV_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
