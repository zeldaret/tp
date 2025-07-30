/**
 * @file d_a_obj_twGate.cpp
 * 
*/

#include "d/actor/d_a_obj_twGate.h"
#include "d/d_com_inf_game.h"

/* 80D205B0-80D205E4 -00001 0034+00 3/3 0/0 0/0 .data            l_resNameIdx */
static char* l_resNameIdx[13] = {
    "twGtFiro",
    "twGtK0102",
    "twGtK0709",
    "",
    "",
    "",
    "twGnFiro",
    "twGnK0102",
    "twGnK0709",
    "twGnK079b",
    "twGnK1415",
    "twGnK0616",
    "",
};

/* 80D1FAAC-80D1FAE0 0000EC 0034+00 1/1 0/0 0/0 .text            __ct__14daTwGate_HIO_cFv */
daTwGate_HIO_c::daTwGate_HIO_c() {
    mRange = 1900.0f;
}

#ifdef DEBUG
void daTwGate_HIO_c::genMessage(JORMContext* ctx) {
    // Range
    ctx->genSlider("範囲", &mRange, 0.0f, 500000.0f, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
}
#endif

/* 80D1FB84-80D1FC0C 0001C4 0088+00 2/2 0/0 0/0 .text            setBaseMtx__10daTwGate_cFv */
void daTwGate_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(current.angle.x, current.angle.y, current.angle.z);
    mModel->setBaseScale(scale);
    mModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* ############################################################################################## */
/* 80D2030C-80D20340 000004 0034+00 0/2 0/0 0/0 .rodata          l_bmdIdx */
static int const l_bmdIdx[13] = {
    6, 6, 6, -1, -1, -1, 6, 6, 6, 6, 6, 6, -1,
};

/* 80D20340-80D20374 000038 0034+00 0/1 0/0 0/0 .rodata          l_dzbIdx */
static u32 const l_dzbIdx[13] = {
    15, 15, 15, -1, -1, -1, 15, 15, 15, 15, 15, 15, -1,
};

/* 80D20374-80D203A8 00006C 0034+00 0/1 0/0 0/0 .rodata          l_btkIdx */
static u32 const l_btkIdx[13] = {
    12, 12, 12, -1, -1, -1, 12, 12, 12, 12, 12, 12, -1,
};

/* 80D203A8-80D203DC 0000A0 0034+00 0/1 0/0 0/0 .rodata          l_brkIdx */
static u32 const l_brkIdx[13] = {
    9, 9, 9, -1, -1, -1, 9, 9, 9, 9, 9, 9, -1,
};

/* 80D203DC-80D20410 0000D4 0034+00 0/2 0/0 0/0 .rodata          l_twFlagIdx */
static u32 const l_twFlagIdx[13] = {
    0, 1, 2, 4, -1, -1, 0, 1, 1, 2, 2, 4, 4,
};

/* 80D20410-80D204AC 000108 009C+00 0/1 0/0 0/0 .rodata          l_cheeckPos0 */
static Vec const l_cheeckPos0[13] = {
    {-572.6072f, 314.9037f, -20792.293f},
    {-24536.904f, -7234.991f, 73427.242f},
    {3821.4783f, 4674.5557f, -59714.414f},
    {0.0f, 0.0f, 0.0f},
    {0.0f, 0.0f, 0.0f},
    {0.0f, 0.0f, 0.0f},
    {0.0f, 0.0f, 0.0f},
    {-23484.578f, -7201.7114f, 73893.843f},
    {2943.5786f, 4804.4688f, -60534.016f},
    {0.0f, 0.0f, 0.0f},
    {0.0f, 0.0f, 0.0f},
    {0.0f, 0.0f, 0.0f},
    {0.0f, 0.0f, 0.0f},
};

/* 80D204AC-80D20548 0001A4 009C+00 0/1 0/0 0/0 .rodata          l_cheeckPos1 */
static Vec const l_cheeckPos1[13] = {
    {-178.19418f, 308.69842f, -20657.326f},
    {-23610.3066f, -7234.9912f, 74043.75f},
    {2953.5532f, 4674.5556f, -60520.844f},
    {0.0f, 0.0f, 0.0f},
    {0.0f, 0.0f, 0.0f},
    {0.0f, 0.0f, 0.0f},
    {0.0f, 0.0f, 0.0f},
    {-24473.582, -7201.7114f, 73296.75f},
    {3821.1848f, 4804.4687f, -59707.8515f},
    {0.0f, 0.0f, 0.0f},
    {0.0f, 0.0f, 0.0f},
    {0.0f, 0.0f, 0.0f},
    {0.0f, 0.0f, 0.0f},
};

/* 80D1FC0C-80D1FD44 00024C 0138+00 1/0 0/0 0/0 .text            CreateHeap__10daTwGate_cFv */
int daTwGate_c::CreateHeap() {
    J3DModelData* modelData =
        (J3DModelData*)dComIfG_getObjectRes(l_resNameIdx[mGateType], l_bmdIdx[mGateType]);
    JUT_ASSERT(292, modelData != 0);
    mModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000284);
    if (mModel == NULL) {
        return 0;
    }
    ;
    int res = mBtk.init(modelData, (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_resNameIdx[mGateType], l_btkIdx[mGateType]), 1, 2, 1.0f, 0, -1);
    JUT_ASSERT(309, res == 1);

    res = mBrk.init(modelData, (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_resNameIdx[mGateType], l_brkIdx[mGateType]), 1, 0, 1.0f, 0, -1);
    JUT_ASSERT(317, res == 1);
    return 1;
}

/* 80D206AC-80D206B4 000014 0008+00 2/2 0/0 0/0 .bss             l_HIO */
static daTwGate_HIO_c l_HIO;

/* 80D1FD44-80D1FF14 000384 01D0+00 1/1 0/0 0/0 .text            create__10daTwGate_cFv */
int daTwGate_c::create() {
    fopAcM_SetupActor(this, daTwGate_c);
    mGateType = getGateType();
    if (l_bmdIdx[mGateType] == -1) {
        // Twilight gate: Invalid argument.
        OS_REPORT("=== トワイライトゲート：無効な引数です (%d) ===\n", mGateType);
        return cPhs_ERROR_e;
    }

    if (dComIfGs_isDarkClearLV(l_twFlagIdx[mGateType]) == TRUE) {
        return cPhs_ERROR_e;
    }

    int rv = dComIfG_resLoad(&mPhase, l_resNameIdx[mGateType]);
    if (rv == cPhs_COMPLEATE_e) {
        if (MoveBGCreate(l_resNameIdx[mGateType], l_dzbIdx[mGateType],
            dBgS_MoveBGProc_TypicalRotY, 0x22a0, NULL) == cPhs_ERROR_e) {
            return cPhs_ERROR_e;
        }

        setBaseMtx();
        fopAcM_SetMtx(this, mModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mModel->getModelData());
        mLine.SetStartEnd(l_cheeckPos0[mGateType], l_cheeckPos1[mGateType]);
        mBrk.setPlaySpeed(-1.0f);

        #ifdef DEBUG
        // Twilight Gate
        l_HIO.entryHIO("トワイライトゲート");
        #endif
    }
    return rv;
}

/* 80D1FFA4-80D200B4 0005E4 0110+00 1/0 0/0 0/0 .text            Execute__10daTwGate_cFPPA3_A4_f */
int daTwGate_c::Execute(Mtx** i_mtx) {
    if (dComIfGs_isDarkClearLV(l_twFlagIdx[mGateType]) == TRUE) {
        fopAcM_delete(this);
    }
    cXyz cStack_34;
    f32 local_38;
    bool res = cM3d_Len3dSqPntAndSegLine(&mLine, &dComIfGp_getPlayer(0)->current.pos, &cStack_34, &local_38);
    f32 fVar1 = JMAFastSqrt(local_38);
    if (fVar1 <= l_HIO.mRange) {
        if (mBrk.getPlaySpeed() != 1.0f) {
            mBrk.setPlaySpeed(1.0f);
        }
    } else {
        if (mBrk.getPlaySpeed() != -1.0f) {
            mBrk.setPlaySpeed(-1.0f);
        }
    }
    mBtk.play();
    mBrk.play();
    *i_mtx = &mModel->getBaseTRMtx();
    setBaseMtx();
    return 1;
}

/* 80D200B4-80D20180 0006F4 00CC+00 1/0 0/0 0/0 .text            Draw__10daTwGate_cFv */
int daTwGate_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mModel, &tevStr);
    dComIfGd_setListDarkBG();
    mDoExt_modelUpdateDL(mModel);
    dComIfGd_setList();
    J3DModelData* modelData = mModel->getModelData();
    mBtk.entry(modelData);
    mBrk.entry(modelData);
    return 1;
}

/* 80D20180-80D201C0 0007C0 0040+00 1/0 0/0 0/0 .text            Delete__10daTwGate_cFv */
int daTwGate_c::Delete() {
    dComIfG_resDelete(&mPhase, l_resNameIdx[mGateType]);

    #ifdef DEBUG
    l_HIO.removeHIO(this);
    #endif

    return 1;
}

/* 80D201C0-80D201EC 000800 002C+00 1/0 0/0 0/0 .text            daTwGate_Draw__FP10daTwGate_c */
static int daTwGate_Draw(daTwGate_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80D201EC-80D2020C 00082C 0020+00 1/0 0/0 0/0 .text            daTwGate_Execute__FP10daTwGate_c */
static int daTwGate_Execute(daTwGate_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80D2020C-80D2022C 00084C 0020+00 1/0 0/0 0/0 .text            daTwGate_Delete__FP10daTwGate_c */
static int daTwGate_Delete(daTwGate_c* i_this) {
    fopAcM_RegisterDeleteID(i_this, "daTwGate");
    return i_this->MoveBGDelete();
}

/* 80D2022C-80D2024C 00086C 0020+00 1/0 0/0 0/0 .text            daTwGate_Create__FP10fopAc_ac_c */
static int daTwGate_Create(fopAc_ac_c* i_this) {
    fopAcM_RegisterCreateID(daTwGate_c, i_this, "daTwGate");
    return a_this->create();
}

/* 80D205E4-80D20604 -00001 0020+00 1/0 0/0 0/0 .data            l_daTwGate_Method */
static actor_method_class l_daTwGate_Method = {
    (process_method_func)daTwGate_Create,
    (process_method_func)daTwGate_Delete,
    (process_method_func)daTwGate_Execute,
    NULL,
    (process_method_func)daTwGate_Draw,
};

/* 80D20604-80D20634 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_TwGate */
extern actor_process_profile_definition g_profile_Obj_TwGate = {
  fpcLy_CURRENT_e,               // mLayerID
  3,                             // mListID
  fpcPi_CURRENT_e,               // mListPrio
  PROC_Obj_TwGate,               // mProcName
  &g_fpcLf_Method.base,         // sub_method
  sizeof(daTwGate_c),            // mSize
  0,                             // mSizeOther
  0,                             // mParameters
  &g_fopAc_Method.base,          // sub_method
  539,                           // mPriority
  &l_daTwGate_Method,            // sub_method
  0x00044000,                    // mStatus
  fopAc_ACTOR_e,                 // mActorType
  fopAc_CULLBOX_CUSTOM_e,        // cullType
};

/* 80D20554-80D20554 00024C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
