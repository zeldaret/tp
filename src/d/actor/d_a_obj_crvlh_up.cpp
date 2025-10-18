/**
 * @file d_a_obj_crvlh_up.cpp
 *
 */

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_crvhahen.h"
#include "d/actor/d_a_obj_crvlh_up.h"
#include "d/actor/d_a_player.h"
#include "d/d_s_play.h"
#include "dol2asm.h"

/* 80BD4ED8-80BD4EF8 000078 0020+00 1/0 0/0 0/0 .text daObjCRVLH_UP_Create__FP10fopAc_ac_c */
static int daObjCRVLH_UP_Create(fopAc_ac_c* i_this) {
    return ((daObjCRVLH_UP_c*)i_this)->create();
}

/* 80BD4EF8-80BD4F1C 000098 0024+00 1/0 0/0 0/0 .text daObjCRVLH_UP_Delete__FP15daObjCRVLH_UP_c */
static int daObjCRVLH_UP_Delete(daObjCRVLH_UP_c* i_this) {
    i_this->MoveBGDelete();
    return 1;
}

/* 80BD5A9C-80BD5AA0 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "CrvLH_Up";

/* 80BD4F1C-80BD4FB0 0000BC 0094+00 0/0 0/0 1/1 .text            HakaiSet__15daObjCRVLH_UP_cFv */
void daObjCRVLH_UP_c::HakaiSet() {
    fopAcM_GetPosition(daPy_getPlayerActorClass());
    field_0x5db = 1;

    if (mpBgW != NULL && mpBgW->ChkUsed()) {
        if (dComIfG_Bgsp().Release(mpBgW)) {
            OSReport("Release Error\n");
        }
    }
    field_0x5d6 = cM_rndFX(16000.0f);
}

/* 80BD4FB0-80BD4FD8 000150 0028+00 1/1 0/0 0/0 .text            UpMotion__15daObjCRVLH_UP_cFv */
void daObjCRVLH_UP_c::UpMotion() {
    if (!(field_0x5dc < nREG_F(2) + -120.0f)) {
        field_0x5dc += -5.0f;
    }
}

/* 80BD4FD8-80BD5254 000178 027C+00 1/1 0/0 0/0 .text            Hakai__15daObjCRVLH_UP_cFv */
void daObjCRVLH_UP_c::Hakai() {
    if (cLib_chaseAngleS(&shape_angle.x, 0x3800, field_0x5d8) != 0) {
        fopAcM_seStartCurrent(this, Z2SE_OBJ_YAGURA_LAND, 0);
        field_0x5da = 1;
        csXyz cStack_30(shape_angle.x, field_0x5d6, shape_angle.z);
        csXyz cStack_38(0, 0, 0);

        for (int i = 0; i < 2; i++) {
            mDoMtx_stack_c::transS(current.pos.x, field_0x5d0, current.pos.z);
            mDoMtx_stack_c::YrotM(field_0x5d6);
            mDoMtx_stack_c::transM(0.0f, 0.0f, i * 350.0f + 150.0f);
            mDoMtx_stack_c::YrotM(-field_0x5d6);
            mDoMtx_stack_c::multVec(&field_0x5ac[i], &field_0x5ac[i]);
        }

        field_0x5a4 = fopAcM_create(PROC_Obj_CRVHAHEN, 1, &field_0x5ac[0], fopAcM_GetRoomNo(this),
                                    &cStack_30, 0, -1);
        field_0x5a8 = fopAcM_create(PROC_Obj_CRVHAHEN, 1, &field_0x5ac[1], fopAcM_GetRoomNo(this),
                                    &cStack_30, 0, -1);
        dComIfGp_particle_set(dPa_RM(ID_ZF_S_CRVYAGURA05_SMK), &field_0x5ac[1], &tevStr, &cStack_30,
                              0);
    }

    field_0x5d8 += nREG_F(1) + 148.0f;
}

/* 80BD5254-80BD532C 0003F4 00D8+00 1/1 0/0 0/0 .text            setBaseMtx__15daObjCRVLH_UP_cFv */
void daObjCRVLH_UP_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::transM(0.0f, field_0x5dc, 0.0f);
    mDoMtx_stack_c::YrotM(field_0x5d6 - shape_angle.y);
    mDoMtx_stack_c::transM(0.0f, HREG_F(8) + 150.0f, 0.0f);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::transM(0.0f, HREG_F(7) + -150.0f, 0.0f);
    mDoMtx_stack_c::YrotM(-(field_0x5d6 - shape_angle.y));
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    cMtx_copy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 80BD532C-80BD5358 0004CC 002C+00 1/0 0/0 0/0 .text daObjCRVLH_UP_Draw__FP15daObjCRVLH_UP_c */
static int daObjCRVLH_UP_Draw(daObjCRVLH_UP_c* i_this) {
    return i_this->Draw();
}

/* 80BD5358-80BD5378 0004F8 0020+00 2/1 0/0 0/0 .text daObjCRVLH_UP_Execute__FP15daObjCRVLH_UP_c
 */
static int daObjCRVLH_UP_Execute(daObjCRVLH_UP_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80BD5378-80BD53F0 000518 0078+00 1/0 0/0 0/0 .text            CreateHeap__15daObjCRVLH_UP_cFv */
int daObjCRVLH_UP_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, "U_CrvLH_UP.bmd");
    if (modelData == NULL) {
        JUT_ASSERT(87, modelData != NULL);
    }

    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    return mpModel != NULL ? 1 : 0;
}

/* 80BD53F0-80BD5614 000590 0224+00 1/1 0/0 0/0 .text            create__15daObjCRVLH_UP_cFv */
int daObjCRVLH_UP_c::create() {
    fopAcM_ct(this, daObjCRVLH_UP_c);
    int phase = dComIfG_resLoad(&mPhase, l_arcName);

    if (phase == cPhs_COMPLEATE_e) {
        gravity = nREG_F(0) + -9.0f;
        int dzb_id = dComIfG_getObjctResName2Index(l_arcName, "U_CrvLH_Up.dzb");
        if (dzb_id == -1) {
            // "dzb data not found!<%s>"
            OS_REPORT("dzbデータが見つかりませんでした!<%s>", l_arcName);
        }

        JUT_ASSERT(504, dzb_id != -1);
        phase = MoveBGCreate(l_arcName, dzb_id, dBgS_MoveBGProc_TypicalRotY, 0xe80, NULL);

        if (phase == cPhs_ERROR_e) {
            return phase;
        }

        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        field_0x5ac[0].set(0.0f, 0.0f, 0.0f);
        field_0x5ac[1].set(0.0f, 0.0f, 0.0f);

        cXyz cStack_28(current.pos.x, current.pos.y + 100.0f, current.pos.z);

        fopAcM_setCullSizeFar(this, 100.0f);
        field_0x5d0 = current.pos.y;
        field_0x5dc = 0;
        fopAcM_setCullSizeBox(this, -500.0f, -500.0f, -500.0f, 500.0f, 2000.0f, 500.0f);
        daObjCRVLH_UP_Execute(this);
    }

    return phase;
}

/* 80BD56E4-80BD56EC 000884 0008+00 1/0 0/0 0/0 .text daObjCRVLH_UP_IsDelete__FP15daObjCRVLH_UP_c
 */
static int daObjCRVLH_UP_IsDelete(daObjCRVLH_UP_c* i_this) {
    return 1;
}

/* 80BD56EC-80BD5730 00088C 0044+00 1/0 0/0 0/0 .text            Create__15daObjCRVLH_UP_cFv */
int daObjCRVLH_UP_c::Create() {
    fopAcM_setCullSizeBox(this, -1000.0f, -500.0f, -1000.0f, 1000.0f, 500.0f, 1000.0f);
    return 4;
}

/* 80BD5730-80BD593C 0008D0 020C+00 1/0 0/0 0/0 .text Execute__15daObjCRVLH_UP_cFPPA3_A4_f */
int daObjCRVLH_UP_c::Execute(Mtx** param_0) {
    fopAc_ac_c* local_a4;
    fopAc_ac_c* local_a8;

    if (field_0x5d4 != 0) {
        fopAcM_delete(this);
    }

    if (field_0x5da == 0) {
        if (field_0x5db != 0) {
            Hakai();
            UpMotion();
        }
    } else {
        if (fopAcM_SearchByID(field_0x5a4, &local_a4) != 0 &&
            fopAcM_SearchByID(field_0x5a8, &local_a8) != 0 && local_a4 != NULL && local_a8 != NULL)
        {
            cXyz cStack_1c(100.0f, 250.0f, 80.0f);
            cXyz cStack_28(yREG_F(15) + 60.0f, yREG_F(16) + 60.0f, yREG_F(17) + 60.0f);
            cXyz cStack_34(0.0f, 10.0f, 0.0f);
            cXyz cStack_40(10.0f, 20.0f, 20.0f);
            ((daObjCRVHAHEN_c*)local_a4)
                ->HahenSet(cStack_1c, cStack_34, cStack_28, cStack_40, 3000.0f);

            // copy pasta mistake?
            cStack_1c.set(100.0f, 250.0f, 80.0f);
            cStack_28.set(yREG_F(15) + 60.0f, yREG_F(16) + 60.0f, yREG_F(17) + 60.0f);
            cStack_1c.set(100.0f, 250.0f, 80.0f);
            cStack_28.set(yREG_F(15) + 60.0f, yREG_F(16) + 60.0f, yREG_F(17) + 60.0f);
            ((daObjCRVHAHEN_c*)local_a8)
                ->HahenSet(cStack_1c, cStack_34, cStack_28, cStack_40, 3000.0f);
            field_0x5d4 = 1;
        }
    }

    *param_0 = &mBgMtx;
    setBaseMtx();
    return 1;
}

/* 80BD593C-80BD59C0 000ADC 0084+00 1/0 0/0 0/0 .text            Draw__15daObjCRVLH_UP_cFv */
int daObjCRVLH_UP_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    return 1;
}

/* 80BD59C0-80BD59F4 000B60 0034+00 1/0 0/0 0/0 .text            Delete__15daObjCRVLH_UP_cFv */
int daObjCRVLH_UP_c::Delete() {
    dComIfG_resDelete(&mPhase, l_arcName);
    return 1;
}

/* 80BD5AA0-80BD5AC0 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjCRVLH_UP_Method */
static actor_method_class l_daObjCRVLH_UP_Method = {
    (process_method_func)daObjCRVLH_UP_Create,  (process_method_func)daObjCRVLH_UP_Delete,
    (process_method_func)daObjCRVLH_UP_Execute, (process_method_func)daObjCRVLH_UP_IsDelete,
    (process_method_func)daObjCRVLH_UP_Draw,
};

/* 80BD5AC0-80BD5AF0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_CRVLH_UP */
extern actor_process_profile_definition g_profile_Obj_CRVLH_UP = {
    fpcLy_CURRENT_e,          // mLayerID
    3,                        // mListID
    fpcPi_CURRENT_e,          // mListPrio
    PROC_Obj_CRVLH_UP,        // mProcName
    &g_fpcLf_Method.base,     // sub_method
    sizeof(daObjCRVLH_UP_c),  // mSize
    0,                        // mSizeOther
    0,                        // mParameters
    &g_fopAc_Method.base,     // sub_method
    470,                      // mPriority
    &l_daObjCRVLH_UP_Method,  // sub_method
    0x00040180,               // mStatus
    fopAc_ACTOR_e,            // mActorType
    fopAc_CULLBOX_CUSTOM_e,   // cullType
};
