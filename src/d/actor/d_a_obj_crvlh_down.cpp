/**
 * @file d_a_obj_crvlh_down.cpp
 *
 */

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_e_wb.h"
#include "d/actor/d_a_obj_crvhahen.h"
#include "d/actor/d_a_obj_crvlh_down.h"
#include "d/actor/d_a_obj_crvlh_up.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "d/d_s_play.h"

/* 80BD4DC4-80BD4DC8 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "CrvLH_Dw";

/* 80BD4138-80BD41A4 000078 006C+00 1/1 0/0 0/0 .text            initCcCylinder__15daObjCRVLH_DW_cFv
 */
void daObjCRVLH_DW_c::initCcCylinder() {
    const static dCcD_SrcCyl ccCylSrc = {
        {
            {0x0, {{0x0, 0x0, 0x0}, {0x400000, 0x11}, 0x75}},  // mObj
            {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},                // mGObjAt
            {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x1},                // mGObjTg
            {0x0},                                             // mGObjCo
        },                                                     // mObjInf
        {
            {0.0f, 0.0f, 0.0f},  // mCenter
            250.0f,              // mRadius
            400.0f               // mHeight
        }  // mCyl
    };

    mStts.Init(0xff, 0xff, this);
    mCyl.Set(ccCylSrc);
    mCyl.SetStts(&mStts);
    mCyl.SetC(current.pos);
    mCyl.OnTgIronBallRebound();
}

/* 80BD41A4-80BD4224 0000E4 0080+00 1/1 0/0 0/0 .text            SetCcSyl__15daObjCRVLH_DW_cFv */
void daObjCRVLH_DW_c::SetCcSyl() {
    cXyz cStack_18 = current.pos;

    cStack_18.y += XREG_F(0) + 100.0f;
    mCyl.SetC(cStack_18);
    mCyl.SetR(XREG_F(1) + 200.0f);
    dComIfG_Ccsp()->Set(&mCyl);
}

/* 80BD4224-80BD4244 000164 0020+00 1/0 0/0 0/0 .text daObjCRVLH_DW_Create__FP10fopAc_ac_c */
static int daObjCRVLH_DW_Create(fopAc_ac_c* i_this) {
    fopAcM_GetID(i_this);
    return ((daObjCRVLH_DW_c*)i_this)->create();
}

/* 80BD4244-80BD4268 000184 0024+00 1/0 0/0 0/0 .text daObjCRVLH_DW_Delete__FP15daObjCRVLH_DW_c */
static int daObjCRVLH_DW_Delete(daObjCRVLH_DW_c* i_this) {
    fopAcM_GetID(i_this);
    i_this->MoveBGDelete();
    return 1;
}

/* 80BD4268-80BD42D8 0001A8 0070+00 1/1 0/0 0/0 .text            BgRelease__15daObjCRVLH_DW_cFv */
void daObjCRVLH_DW_c::BgRelease() {
    if (mpBgW != NULL && mpBgW->ChkUsed()) {
        if (dComIfG_Bgsp().Release(mpBgW)) {
            OSReport("Release Error\n");
        }
    }
}

/* 80BD42D8-80BD45A4 000218 02CC+00 1/1 0/0 0/0 .text            Break__15daObjCRVLH_DW_cFv */
void daObjCRVLH_DW_c::Break() {
    fopAc_ac_c* local_30;
    csXyz cStack_2c(0, fopAcM_searchPlayerAngleY(this) + 0x8000, 0);
    dComIfGp_particle_set(dPa_RM(ID_ZF_S_CRVYAGURA00_SMK), &current.pos, &tevStr, &shape_angle, 0);
    dComIfGp_particle_set(dPa_RM(ID_ZF_S_CRVYAGURA01_PIECE), &current.pos, &tevStr, &shape_angle,
                          0);
    dComIfGp_particle_set(dPa_RM(ID_ZF_S_CRVYAGURA02_PIECE), &current.pos, &tevStr, &shape_angle,
                          0);
    dComIfGp_particle_set(dPa_RM(ID_ZF_S_CRVYAGURA03_SAND), &current.pos, &tevStr, &shape_angle, 0);
    dComIfGp_particle_set(dPa_RM(ID_ZF_S_CRVYAGURA04_SMK), &current.pos, &tevStr, &shape_angle, 0);
    dComIfGp_getVibration().StartShock(VIBMODE_S_POWER5, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
    field_0x5a4 = fopAcM_createChild(PROC_Obj_CRVHAHEN, fopAcM_GetID(this), 1, &current.pos,
                                     fopAcM_GetRoomNo(this), &cStack_2c, NULL, -1, NULL);

    if (fopAcM_SearchByID(field_0x5a0, &local_30) && local_30 != NULL) {
        ((daObjCRVLH_UP_c*)local_30)->HakaiSet();
    }

    BgRelease();
    field_0x5b8 = 1;
    fopAcM_seStartCurrent(this, Z2SE_OBJ_YAGURA_BREAK, 0);
}

/* 80BD45A4-80BD4644 0004E4 00A0+00 1/1 0/0 0/0 .text            Obj_Hit__15daObjCRVLH_DW_cFv */
void daObjCRVLH_DW_c::Obj_Hit() {
    daPy_py_c* player = daPy_getPlayerActorClass();

    if (field_0x5b8 == 0) {
        if (mCyl.ChkCoHit() != 0) {
            fopAc_ac_c* actor = mCyl.GetCoHitObj()->GetAc();
            if (fopAcM_GetName(dCc_GetAc(actor)) == PROC_E_WB &&
                ((e_wb_class*)actor)->mActionID == ACT_PL_RIDE2)
            {
                Break();
            }
        } else {
            if (mCyl.ChkTgHit() != 0) {
                if (mCyl.GetTgHitObj()->ChkAtType(AT_TYPE_IRON_BALL) != 0) {
                    Break();
                }
            }
        }
    }
}

/* 80BD4644-80BD46A0 000584 005C+00 1/1 0/0 0/0 .text            setBaseMtx__15daObjCRVLH_DW_cFv */
void daObjCRVLH_DW_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    cMtx_copy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 80BD46A0-80BD46CC 0005E0 002C+00 1/0 0/0 0/0 .text daObjCRVLH_DW_Draw__FP15daObjCRVLH_DW_c */
static int daObjCRVLH_DW_Draw(daObjCRVLH_DW_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80BD46CC-80BD46EC 00060C 0020+00 2/1 0/0 0/0 .text daObjCRVLH_DW_Execute__FP15daObjCRVLH_DW_c
 */
static int daObjCRVLH_DW_Execute(daObjCRVLH_DW_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80BD46EC-80BD4764 00062C 0078+00 1/0 0/0 0/0 .text            CreateHeap__15daObjCRVLH_DW_cFv */
int daObjCRVLH_DW_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, "U_CrvLH_Down.bmd");
    if (modelData == NULL) {
        JUT_ASSERT(87, modelData != NULL);
    }

    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    return mpModel != NULL ? 1 : 0;
}

/* 80BD4764-80BD49EC 0006A4 0288+00 1/1 0/0 0/0 .text            create__15daObjCRVLH_DW_cFv */
int daObjCRVLH_DW_c::create() {
    fopAcM_ct(this, daObjCRVLH_DW_c);
    int phase = dComIfG_resLoad(&mPhase, l_arcName);

    if (phase == cPhs_COMPLEATE_e) {
        mParam = fopAcM_GetParam(this);

        if (mParam != 0xFF) {
            if (dComIfGs_isSwitch(mParam, fopAcM_GetRoomNo(this))) {
                OS_REPORT("???");
                return cPhs_ERROR_e;
            }
        }

        gravity = nREG_F(0) + -9.0f;
        int dzb_id = dComIfG_getObjctResName2Index(l_arcName, "U_CrvLH_Down.dzb");
        if (dzb_id == -1) {
            // "dzb data not found!<%s>"
            OS_REPORT("dzbデータが見つかりませんでした!<%s>", l_arcName);
        }

        JUT_ASSERT(611, dzb_id != -1);
        phase = MoveBGCreate(l_arcName, dzb_id, dBgS_MoveBGProc_TypicalRotY, 0xb40, NULL);

        if (phase == cPhs_ERROR_e) {
            return phase;
        }

        initCcCylinder();
        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        cXyz cStack_30(current.pos.x, current.pos.y + 100.0f, current.pos.z);

        if (fopAcM_gc_c::gndCheck(&cStack_30)) {
            field_0x5b4 = fopAcM_gc_c::getGroundY();
            current.pos.y = field_0x5b4;
        }

        fopAcM_setCullSizeFar(this, 100.0f);
        fopAcM_setCullSizeBox(this, -500.0f, -500.0f, -500.0f, 500.0f, 1000.0f, 500.0f);
        daObjCRVLH_DW_Execute(this);
        field_0x5a0 = fopAcM_createChild(PROC_Obj_CRVLH_UP, fopAcM_GetID(this), 1, &current.pos,
                                         fopAcM_GetRoomNo(this), &shape_angle, NULL, -1, NULL);
    }

    return phase;
}

/* 80BD4A7C-80BD4A84 0009BC 0008+00 1/0 0/0 0/0 .text daObjCRVLH_DW_IsDelete__FP15daObjCRVLH_DW_c
 */
static int daObjCRVLH_DW_IsDelete(daObjCRVLH_DW_c* i_this) {
    return 1;
}

/* 80BD4A84-80BD4AC8 0009C4 0044+00 1/0 0/0 0/0 .text            Create__15daObjCRVLH_DW_cFv */
int daObjCRVLH_DW_c::Create() {
    fopAcM_setCullSizeBox(this, -1000.0f, -500.0f, -1000.0f, 1000.0f, 500.0f, 1000.0f);
    return cPhs_COMPLEATE_e;
}

/* 80BD4AC8-80BD4C44 000A08 017C+00 1/0 0/0 0/0 .text Execute__15daObjCRVLH_DW_cFPPA3_A4_f */
int daObjCRVLH_DW_c::Execute(Mtx** param_0) {
    fopAc_ac_c* local_78;
    if (field_0x5bb != 0) {
        if (mParam != 0xff) {
            if (dComIfGs_isSwitch(mParam, fopAcM_GetRoomNo(this)) == 0) {
                dComIfGs_onSwitch(mParam, fopAcM_GetRoomNo(this));
            }
        }

        fopAcM_delete(this);
    }

    Obj_Hit();

    if (field_0x5b8 != 0 && fopAcM_SearchByID(field_0x5a4, &local_78) != 0 && local_78 != 0) {
        cXyz cStack_20(100.0f, 250.0f, 80.0f);
        cXyz cStack_2c(0.0f, 100.0f, 0.0f);
        cXyz cStack_38(yREG_F(4) + 10.0f, yREG_F(0) + 30.0f, yREG_F(3) + 10.0f);
        cXyz cStack_44(10.0, 20.0, 20.0);
        ((daObjCRVHAHEN_c*)local_78)->HahenSet(cStack_20, cStack_2c, cStack_38, cStack_44, 3000.0f);
        field_0x5bb = 1;
    }
    SetCcSyl();
    *param_0 = &mBgMtx;
    setBaseMtx();
    return 1;
}

/* 80BD4C44-80BD4CC8 000B84 0084+00 1/0 0/0 0/0 .text            Draw__15daObjCRVLH_DW_cFv */
int daObjCRVLH_DW_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    return 1;
}

/* 80BD4CC8-80BD4CFC 000C08 0034+00 1/0 0/0 0/0 .text            Delete__15daObjCRVLH_DW_cFv */
int daObjCRVLH_DW_c::Delete() {
    dComIfG_resDelete(&mPhase, l_arcName);
    return 1;
}

/* 80BD4DC8-80BD4DE8 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjCRVLH_DW_Method */
static actor_method_class l_daObjCRVLH_DW_Method = {
    (process_method_func)daObjCRVLH_DW_Create,  (process_method_func)daObjCRVLH_DW_Delete,
    (process_method_func)daObjCRVLH_DW_Execute, (process_method_func)daObjCRVLH_DW_IsDelete,
    (process_method_func)daObjCRVLH_DW_Draw,
};

/* 80BD4DE8-80BD4E18 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_CRVLH_DW */
extern actor_process_profile_definition g_profile_Obj_CRVLH_DW = {
    fpcLy_CURRENT_e,          // mLayerID
    3,                        // mListID
    fpcPi_CURRENT_e,          // mListPrio
    PROC_Obj_CRVLH_DW,        // mProcName
    &g_fpcLf_Method.base,     // sub_method
    sizeof(daObjCRVLH_DW_c),  // mSize
    0,                        // mSizeOther
    0,                        // mParameters
    &g_fopAc_Method.base,     // sub_method
    471,                      // mPriority
    &l_daObjCRVLH_DW_Method,  // sub_method
    0x00040180,               // mStatus
    fopAc_ACTOR_e,            // mActorType
    fopAc_CULLBOX_CUSTOM_e,   // cullType
};
