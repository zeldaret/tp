/**
 * d_a_obj_mgate.cpp
 * Ordon Spring / Bridge Gates
 */

#include "rel/d/a/obj/d_a_obj_mgate/d_a_obj_mgate.h"
#include "SSystem/SComponent/c_math.h"

/* ############################################################################################## */
/* 80593E48-80593E60 000000 0018+00 2/2 0/0 0/0 .rodata          l_key_offset */
static Vec const l_key_offset[2] = {
    {205.0f, 180.0f, 0.0f},
    {230.0f, 180.0f, 0.0f},
};

/* 80593E60-80593E74 000018 0014+00 0/0 0/0 0/0 .rodata          l_col_offsetX */
static f32 const l_col_offsetX[5] = {
    80.0f, 160.0f, 240.0f, 320.0f, 400.0f,
};

/* 80593E74-80593EA4 00002C 0030+00 0/1 0/0 0/0 .rodata          l_roll_crash_check_areaL */
static Vec const l_roll_crash_check_areaL[4] = {
    {0.0f, 0.0f, -140.0f},
    {410.0f, 0.0f, -140.0f},
    {410.0f, 0.0f, 140.0f},
    {0.0f, 0.0f, 140.0f},
};

/* 80593EA4-80593ED4 00005C 0030+00 0/1 0/0 0/0 .rodata          l_roll_crash_check_areaL2 */
static Vec const l_roll_crash_check_areaL2[4] = {
    {0.0f, 0.0f, -140.0f},
    {460.0f, 0.0f, -140.0f},
    {460.0f, 0.0f, 140.0f},
    {0.0f, 0.0f, 140.0f},
};

/* 805935B8-80593630 000078 0078+00 1/1 0/0 0/0 .text            initBaseMtx__12daObjMGate_cFv */
void daObjMGate_c::initBaseMtx() {
    if (mpKeyModel != NULL) {
        mpKeyModel->setBaseScale(mScale);
    }

    if (getType() == TYPE_LEFT) {
        mScale.z = -1.0f;
    }

    mpModel->setBaseScale(mScale);
    setBaseMtx();
}

/* 80593630-80593760 0000F0 0130+00 2/2 0/0 0/0 .text            setBaseMtx__12daObjMGate_cFv */
void daObjMGate_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mDoMtx_stack_c::ZXYrotM(mGateAngle.x, mGateAngle.y, mGateAngle.z);
    mpModel->i_setBaseTRMtx(mDoMtx_stack_c::get());
    PSMTXCopy(mDoMtx_stack_c::get(), field_0x56c);

    if (mpKeyModel != NULL) {
        cXyz key_offset(l_key_offset[mKind]);

        mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
        mDoMtx_stack_c::YrotM(shape_angle.y);
        mDoMtx_stack_c::ZXYrotM(mGateAngle.x, mGateAngle.y, mGateAngle.z);
        mDoMtx_stack_c::transM(key_offset);
        mDoMtx_stack_c::XrotM(mGateKeyAngle);
        mpKeyModel->i_setBaseTRMtx(mDoMtx_stack_c::get());
    }
}

/* 80593760-805937AC 000220 004C+00 1/0 0/0 0/0 .text            Create__12daObjMGate_cFv */
int daObjMGate_c::Create() {
    initBaseMtx();

    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    fopAcM_setCullSizeBox2(this, mpModel->getModelData());
    return 1;
}

/* 80593F68-80593F74 000000 000C+00 2/2 0/0 0/0 .data            cNullVec__6Z2Calc */
static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80593F74-80593F88 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
// unused but still left in?
#pragma push
#pragma force_active on
static u32 lit_1787[1 + 4 /* padding */] = {
    0x02000201,
    /* padding */
    0x40080000,
    0x00000000,
    0x3FE00000,
    0x00000000,
};
#pragma pop

/* 80593F88-80593F90 -00001 0008+00 1/3 0/0 0/0 .data            l_arcName */
static char* l_arcName[] = {
    "M_IGate",
    "M_HGate",
};

/* 80593F90-80593F98 -00001 0008+00 0/1 0/0 0/0 .data            l_bmdName */
static char* l_bmdName[] = {
    "M_IzumiGate.bmd",
    "M_HashiGate.bmd",
};

/* 80593F98-80593FA0 -00001 0008+00 0/1 0/0 0/0 .data            l_dzbName */
static char* l_dzbName[] = {
    "M_IzumiGate.dzb",
    "M_HashiGate.dzb",
};

/* 80593FA0-80593FA4 -00001 0004+00 1/3 0/0 0/0 .data            l_keyArcName */
static char* l_keyArcName = "M_GateKey";

/* 80593FA4-80593FA8 -00001 0004+00 0/1 0/0 0/0 .data            l_keyBmdName */
static char* l_keyBmdName = "M_IGateKey.bmd";

/* 805937AC-8059388C 00026C 00E0+00 1/0 0/0 0/0 .text            CreateHeap__12daObjMGate_cFv */
int daObjMGate_c::CreateHeap() {
    J3DModelData* modelData =
        (J3DModelData*)dComIfG_getObjectRes(l_arcName[mKind], l_bmdName[mKind]);
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    if (!checkLock()) {
        J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_keyArcName, l_keyBmdName);
        mpKeyModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
        if (mpKeyModel == NULL) {
            return 0;
        }
    }

    return 1;
}

/* 8059388C-80593988 00034C 00FC+00 1/1 0/0 0/0 .text            create1st__12daObjMGate_cFv */
int daObjMGate_c::create1st() {
    mKind = getKind();
    mType = getType();

    int phase = dComIfG_resLoad(&mKeyPhase, l_keyArcName);
    if (phase != cPhs_COMPLEATE_e) {
        return phase;
    }

    phase = dComIfG_resLoad(&mPhase, l_arcName[mKind]);
    if (phase == cPhs_COMPLEATE_e) {
        int dzb_id = dComIfG_getObjctResName2Index(l_arcName[mKind], l_dzbName[mKind]);

        phase =
            MoveBGCreate(l_arcName[mKind], dzb_id, dBgS_MoveBGProc_TypicalRotY, 0x80004000, NULL);
        if (phase == cPhs_ERROR_e) {
            return phase;
        }
    }

    return phase;
}

/* ############################################################################################## */
/* 80593ED8-80593EDC 000090 0004+00 0/0 0/0 0/0 .rodata          @3752 */
// unused but still left in?
#pragma push
#pragma force_active on
static u8 const lit_3752[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
#pragma pop

/* 80593988-80593C4C 000448 02C4+00 1/0 0/0 0/0 .text            Execute__12daObjMGate_cFPPA3_A4_f
 */
int daObjMGate_c::Execute(Mtx** param_0) {
    daPy_py_c* player_p = dComIfGp_getLinkPlayer();
    mCounter++;

    if (player_p->checkFrontRollCrash()) {
        cXyz check_area_posA;
        cXyz check_area_posB;

        switch (mKind) {
        case KIND_IZUMI:
            check_area_posA = l_roll_crash_check_areaL[0];
            check_area_posB = l_roll_crash_check_areaL[2];
            break;
        case KIND_HASHI:
            check_area_posA = l_roll_crash_check_areaL2[0];
            check_area_posB = l_roll_crash_check_areaL2[2];
            break;
        }

        if (dLib_checkActorInRectangle(player_p, this, &check_area_posA, &check_area_posB)) {
            if (mType == TYPE_RIGHT) {
                mGateSwingMultiplier = 700.0f;
                mGateKeySwingMultiplier = 1000.0f;

                if (checkOpen() == true) {
                    fopAcM_seStart(this, Z2SE_OBJ_IGATE_ATK_OP, 0);
                } else {
                    fopAcM_seStart(this, Z2SE_OBJ_IGATE_ATK_CL, 0);
                }
            } else {
                mGateSwingMultiplier = -700.0f;
                mGateKeySwingMultiplier = -1000.0f;

                if (checkOpen() == true) {
                    fopAcM_seStart(this, Z2SE_OBJ_IGATE_ATK_OP, 0);
                }
            }
        }
    }

    *param_0 = &field_0x56c;
    setBaseMtx();

    mGateAngle.y = mGateSwingMultiplier * cM_ssin(mCounter * 4000);
    mGateKeyAngle = mGateKeySwingMultiplier * cM_ssin(mCounter * 6000);
    cLib_addCalc0(&mGateSwingMultiplier, 0.1f, 20.0f);
    cLib_addCalc0(&mGateKeySwingMultiplier, 0.07f, 20.0f);
    return 1;
}

/* 80593C4C-80593D18 00070C 00CC+00 1/0 0/0 0/0 .text            Draw__12daObjMGate_cFv */
int daObjMGate_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &mTevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &mTevStr);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();

    if (mpKeyModel != NULL) {
        g_env_light.setLightTevColorType_MAJI(mpKeyModel, &mTevStr);
        mDoExt_modelUpdateDL(mpKeyModel);
    }

    return 1;
}

/* 80593D18-80593D74 0007D8 005C+00 1/0 0/0 0/0 .text            Delete__12daObjMGate_cFv */
int daObjMGate_c::Delete() {
    dComIfG_resDelete(&mPhase, l_arcName[mKind]);
    dComIfG_resDelete(&mKeyPhase, l_keyArcName);
    return 1;
}

/* 80593D74-80593DD4 000834 0060+00 1/0 0/0 0/0 .text daObjMGate_create1st__FP12daObjMGate_c */
static int daObjMGate_create1st(daObjMGate_c* i_this) {
    if (!fopAcM_CheckCondition(i_this, 8)) {
        new (i_this) daObjMGate_c();
        fopAcM_OnCondition(i_this, 8);
    }

    return i_this->create1st();
}

/* 80593DD4-80593DF4 000894 0020+00 1/0 0/0 0/0 .text daObjMGate_MoveBGDelete__FP12daObjMGate_c */
static int daObjMGate_MoveBGDelete(daObjMGate_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80593DF4-80593E14 0008B4 0020+00 1/0 0/0 0/0 .text daObjMGate_MoveBGExecute__FP12daObjMGate_c
 */
static int daObjMGate_MoveBGExecute(daObjMGate_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80593E14-80593E40 0008D4 002C+00 1/0 0/0 0/0 .text daObjMGate_MoveBGDraw__FP12daObjMGate_c */
static int daObjMGate_MoveBGDraw(daObjMGate_c* i_this) {
    return i_this->MoveBGDraw();
}

/* ############################################################################################## */
/* 80593FA8-80593FC8 -00001 0020+00 1/0 0/0 0/0 .data            daObjMGate_METHODS */
static actor_method_class daObjMGate_METHODS = {
    (process_method_func)daObjMGate_create1st,     (process_method_func)daObjMGate_MoveBGDelete,
    (process_method_func)daObjMGate_MoveBGExecute, (process_method_func)NULL,
    (process_method_func)daObjMGate_MoveBGDraw,
};

/* 80593FC8-80593FF8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_MGate */
extern actor_process_profile_definition g_profile_Obj_MGate = {
    -3,         3,
    0xFFFD,     PROC_Obj_MGate,
    0,          &g_fpcLf_Method.mBase,
    0x5D0,      0,
    0,          &g_fopAc_Method.base,
    0x01C4,     0,
    0,          &daObjMGate_METHODS,
    0x00040100, 0,
    14,         0,
    0,
};
