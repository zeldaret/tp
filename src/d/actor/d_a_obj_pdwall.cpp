/**
 * @file d_a_obj_pdwall.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_pdwall.h"

static const int l_dzbidx = 7;

/* 80CAD1FC-80CAD200 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "P_Dwall";

/* 80CAC7F8-80CAC8DC 000078 00E4+00 1/1 0/0 0/0 .text            create1st__13daObjPDwall_cFv */
int daObjPDwall_c::create1st() {
    int phase_state = dComIfG_resLoad(this, l_arcName);
    if (phase_state == cPhs_COMPLEATE_e) {
        setMtx();
        
        phase_state = MoveBGCreate(l_arcName, l_dzbidx, dBgS_MoveBGProc_TypicalRotY, 0xB1C0, &field_0x5a8);
        if (phase_state == cPhs_ERROR_e) {
            return phase_state;
        }

        for (int i = 0; i < 9; i++) {
            if (dComIfG_Bgsp().Regist(mpBgw[i], this)) {
                return cPhs_ERROR_e;
            }
        }
    }

    return phase_state;
}

/* 80CAD1B8-80CAD1D0 000000 0018+00 2/2 0/0 0/0 .rodata          l_cull_box */
static const cull_box l_cull_box = {
    {-100.0f, -800.0f, -300.0f},
    {750.0f, 500.0f, 300.0f},
};

/* 80CAC8DC-80CACA44 00015C 0168+00 2/2 0/0 0/0 .text            setMtx__13daObjPDwall_cFv */
void daObjPDwall_c::setMtx() {
    for (int i = 0; i < 10; i++) {
        mDoMtx_stack_c::transS(current.pos.x, current.pos.y + field_0x808[i], current.pos.z);
        mDoMtx_stack_c::YrotM(current.angle.y - 0x3FFF);
        mDoMtx_stack_c::transM(50.0f * i, 0.0f, 0.0f);
        MTXCopy(mDoMtx_stack_c::get(), field_0x600[i]);
    }

    mDoMtx_stack_c::copy(field_0x600[0]);
    MTXCopy(mDoMtx_stack_c::get(), field_0x5a8);

    for (int i = 0; i < 9; i++) {
        mDoMtx_stack_c::copy(field_0x600[i + 1]);
        MTXCopy(mDoMtx_stack_c::get(), mMtx[i]);
    }
}

/* 80CACA44-80CACBA8 0002C4 0164+00 1/0 0/0 0/0 .text            CreateHeap__13daObjPDwall_cFv */
int daObjPDwall_c::CreateHeap() {
    J3DModelData* model_data = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 4);
    JUT_ASSERT(175, model_data != NULL);

    for (int i = 0; i < 10; i++) {
        mpModels[i] = mDoExt_J3DModel__create(model_data, 0x80000, 0x11000084);
        if (mpModels[i] == NULL) {
            return 0;
        }
    }

    for (int i = 0; i < 9; i++) {
        mpBgw[i] = new dBgW();
        if (mpBgw[i] == NULL) {
            return 0;
        }

        if (!mpBgw[i]->Set((cBgD_t*)dComIfG_getObjectRes(l_arcName, l_dzbidx), 1, &mMtx[i])) {
            mpBgw[i]->SetCrrFunc(dBgS_MoveBGProc_TypicalRotY);
        } else {
            mpBgw[i] = NULL;
            return 0;
        }
    }

    return 1;
}

/* 80CACBA8-80CACCE0 000428 0138+00 1/0 0/0 0/0 .text            Create__13daObjPDwall_cFv */
int daObjPDwall_c::Create() {
    field_0xa14 = 0;

    if (fopAcM_isSwitch(this, getSwNo())) {
        field_0xa10 = 1;
    } else {
        field_0xa10 = 0;
    }

    for (int i = 0; i < 10; i++) {
        mpModels[i]->setBaseTRMtx(field_0x600[i]);
        field_0x7e0[i] = 0.0f;

        if (field_0xa10) {
            field_0x808[i] = (i + 1) * -30.0f;
        } else {
            field_0x808[i] = 0.0f;
        }
    }

    fopAcM_SetMtx(this, field_0x600[0]);
    fopAcM_setCullSizeBox(this, l_cull_box.min.x, l_cull_box.min.y, l_cull_box.min.z,
                          l_cull_box.max.x, l_cull_box.max.y, l_cull_box.max.z);
    return 1;
}

/* 80CACCE0-80CACF14 000560 0234+00 1/0 0/0 0/0 .text            Execute__13daObjPDwall_cFPPA3_A4_f
 */
int daObjPDwall_c::Execute(Mtx** param_0) {
    if (field_0xa10 == 0 && fopAcM_isSwitch(this, getSwNo())) {
        field_0xa14++;

        for (int i = 0; i < 10; i++) {
            if (field_0xa14 >= (9 - i) * 15) {
                field_0x7e0[i] -= 5.0f;
                field_0x808[i] += field_0x7e0[i];

                if (field_0x808[i] <= -30.0f * (i + 1)) {
                    field_0x808[i] = -30.0f * (i + 1);
                    field_0x7e0[i] *= -0.2f;

                    if (field_0x830[i] == 0) {
                        field_0x830[i] = 1;
                        dComIfGp_getVibration().StartShock(8, 0x1F, cXyz(0.0f, 1.0f, 0.0f));

                        Vec sp20;
                        sp20.x = (field_0x600[i])[0][3];
                        sp20.y = (field_0x600[i])[1][3];
                        sp20.z = (field_0x600[i])[2][3];
                        Z2GetAudioMgr()->seStart(Z2SE_OBJ_FALL_STAIR, &sp20, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
                    }
                }
            }
        }
    }

    setMtx();

    for (int i = 0; i < 10; i++) {
        mpModels[i]->setBaseTRMtx(field_0x600[i]);
    }

    for (int i = 0; i < 9; i++) {
        mpBgw[i]->Move();
    }

    *param_0 = &field_0x5a8;
    return 1;
}

/* 80CACF14-80CACFD4 000794 00C0+00 1/0 0/0 0/0 .text            Draw__13daObjPDwall_cFv */
int daObjPDwall_c::Draw() {
    dComIfGd_setListBG();

    for (int i = 0; i < 10; i++) {
        g_env_light.settingTevStruct(16, &current.pos, &tevStr);
        g_env_light.setLightTevColorType_MAJI(mpModels[i], &tevStr);
        mDoExt_modelUpdateDL(mpModels[i]);
    }

    dComIfGd_setList();
    return 1;
}

/* 80CACFD4-80CAD074 000854 00A0+00 1/0 0/0 0/0 .text            Delete__13daObjPDwall_cFv */
int daObjPDwall_c::Delete() {
    for (int i = 0; i < 9; i++) {
        if (mpBgw[i] != NULL && mpBgw[i]->ChkUsed()) {
            dComIfG_Bgsp().Release(mpBgw[i]);
        }
    }

    dComIfG_resDelete(this, l_arcName);
    return 1;
}

/* 80CAD074-80CAD0D4 0008F4 0060+00 1/0 0/0 0/0 .text daObjPDwall_create1st__FP13daObjPDwall_c */
static int daObjPDwall_create1st(daObjPDwall_c* i_this) {
    fopAcM_ct(i_this, daObjPDwall_c);
    return i_this->create1st();
}

/* 80CAD0D4-80CAD0F4 000954 0020+00 1/0 0/0 0/0 .text daObjPDwall_MoveBGDelete__FP13daObjPDwall_c
 */
static int daObjPDwall_MoveBGDelete(daObjPDwall_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80CAD0F4-80CAD114 000974 0020+00 1/0 0/0 0/0 .text daObjPDwall_MoveBGExecute__FP13daObjPDwall_c
 */
static int daObjPDwall_MoveBGExecute(daObjPDwall_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80CAD114-80CAD140 000994 002C+00 1/0 0/0 0/0 .text daObjPDwall_MoveBGDraw__FP13daObjPDwall_c */
static int daObjPDwall_MoveBGDraw(daObjPDwall_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80CAD200-80CAD220 -00001 0020+00 1/0 0/0 0/0 .data            daObjPDwall_METHODS */
static actor_method_class daObjPDwall_METHODS = {
    (process_method_func)daObjPDwall_create1st,
    (process_method_func)daObjPDwall_MoveBGDelete,
    (process_method_func)daObjPDwall_MoveBGExecute,
    0,
    (process_method_func)daObjPDwall_MoveBGDraw,
};

/* 80CAD220-80CAD250 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_PDwall */
extern actor_process_profile_definition g_profile_Obj_PDwall = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_PDwall,        // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjPDwall_c),  // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  671,                    // mPriority
  &daObjPDwall_METHODS,   // sub_method
  0x00044100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
