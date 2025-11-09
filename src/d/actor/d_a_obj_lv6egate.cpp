/**
 * @file d_a_obj_lv6egate.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_lv6egate.h"

/* 80C82BB0-80C82BB4 -00001 0004+00 2/2 0/0 0/0 .data            l_arcName */
static char* l_arcName = "LV6EGATE";

static const int l_dzbidx = 3;

/* 80C82078-80C82108 000078 0090+00 1/1 0/0 0/0 .text            create1st__15daObjLv6EGate_cFv */
int daObjLv6EGate_c::create1st() {
    int phase_state = dComIfG_resLoad(this, l_arcName);
    if (phase_state == cPhs_COMPLEATE_e) {
        setMtx();
        phase_state = MoveBGCreate(l_arcName, l_dzbidx, dBgS_MoveBGProc_TypicalRotY, 0x7B0, &field_0x5a8);
        if (phase_state == cPhs_ERROR_e) {
            return phase_state;
        }
    }

    return phase_state;
}

/* 80C82108-80C82178 000108 0070+00 2/2 0/0 0/0 .text            setMtx__15daObjLv6EGate_cFv */
void daObjLv6EGate_c::setMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(current.angle.y);
    MTXCopy(mDoMtx_stack_c::get(), field_0x5d8);
    MTXCopy(mDoMtx_stack_c::get(), field_0x5a8);
}

/* 80C82178-80C82180 000178 0008+00 1/0 0/0 0/0 .text            CreateHeap__15daObjLv6EGate_cFv */
int daObjLv6EGate_c::CreateHeap() {
    return 1;
}

/* 80C82B70-80C82B88 000000 0018+00 2/2 0/0 0/0 .rodata          l_cull_box */
static const cull_box l_cull_box = {
    {-500.0f, 0.0f, -50.0f},
    {500.0f, 300.0f, 50.0f},
};

/* 80C82BB4-80C82BF8 000004 0044+00 1/1 0/0 0/0 .data            l_at_cyl_src */
static dCcD_SrcCyl l_at_cyl_src = {
    {
        {0x0, {{0x100, 0x2, 0xd}, {0x400, 0x0}, 0x11}}, // mObj
        {dCcD_SE_NONE, 0x0, 0xd, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        50.0f, // mRadius
        300.0f // mHeight
    } // mCyl
};

/* 80C82180-80C822DC 000180 015C+00 1/0 0/0 0/0 .text            Create__15daObjLv6EGate_cFv */
int daObjLv6EGate_c::Create() {
    fopAcM_SetMtx(this, field_0x5d8);
    fopAcM_setCullSizeBox(this, l_cull_box.min.x, l_cull_box.min.y, l_cull_box.min.z, l_cull_box.max.x, l_cull_box.max.y, l_cull_box.max.z);
    mCcStts.Init(255, 0, this);

    for (int i = 0; i < 8; i++) {
        mAtCyl[i].Set(l_at_cyl_src);
        mAtCyl[i].SetStts(&mCcStts);
        mAtCyl[i].SetAtMtrl(dCcD_MTRL_ELECTRIC);
    }

    if (getSwNo() == 0xFF) {
        onDisp();
    } else if (getType() != 0) {
        if (fopAcM_isSwitch(this, getSwNo())) {
            onDisp();
        } else {
            offDisp();
        }
    } else if (fopAcM_isSwitch(this, getSwNo())) {
        offDisp();
    } else {
        onDisp();
    }

    field_0x1025 = 0;

    for (int i = 0; i < 4; i++) {
        mEmtId[i] = 0;
    }

    return 1;
}

/* 80C822DC-80C82330 0002DC 0054+00 2/2 0/0 0/0 .text            offDisp__15daObjLv6EGate_cFv */
void daObjLv6EGate_c::offDisp() {
    mElecOff = true;

    if (mpBgW->ChkUsed()) {
        int result = dComIfG_Bgsp().Release(mpBgW);
        JUT_ASSERT(301, result == 0);
    }
}

/* 80C82330-80C82388 000330 0058+00 2/2 0/0 0/0 .text            onDisp__15daObjLv6EGate_cFv */
void daObjLv6EGate_c::onDisp() {
    mElecOff = false;

    if (!mpBgW->ChkUsed()) {
        int result = dComIfG_Bgsp().Regist(mpBgW, this);
        JUT_ASSERT(313, result == 0);
    }
}

/* 80C82388-80C82690 000388 0308+00 1/0 0/0 0/0 .text Execute__15daObjLv6EGate_cFPPA3_A4_f */
int daObjLv6EGate_c::Execute(Mtx** param_0) {
    if (getSwNo() != 0xFF) {
        if (getType() != 0) {
            if (fopAcM_isSwitch(this, getSwNo())) {
                onDisp();
            } else {
                offDisp();
            }
        } else if (fopAcM_isSwitch(this, getSwNo())) {
            offDisp();
        } else {
            onDisp();
        }
    }

    setMtx();
    *param_0 = &field_0x5a8;

    if (mElecOff) {
        return 1;
    }

    bool at_cyl_hit = false;
    if (field_0x1025 == 0) {
        for (int i = 0; i < 8; i++) {
            if (mAtCyl[i].ChkAtHit()) {
                Z2GetAudioMgr()->seStart(Z2SE_OBJ_L6_ELK_GATE_TOUCH, mAtCyl[i].GetCP(), 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
                at_cyl_hit = true;
                break;
            }
        }
    }

    if (at_cyl_hit) {
        field_0x1025 = 1;
    } else {
        field_0x1025 = 0;
    }

    Z2GetAudioMgr()->seStartLevel(Z2SE_OBJ_L6_ELK_GATE_LV, &current.pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);

    cXyz cyl_pos;
    f32 var_f31 = -280.0f;
    f32 temp_f30 = (330.0f - var_f31) * 0.125f;
    for (int i = 0; i < 8; i++) {
        cXyz local_pos;
        local_pos.x = var_f31;
        local_pos.y = 0.0f;
        local_pos.z = 0.0f;
        PSMTXMultVec(field_0x5a8, &local_pos, &cyl_pos);
        mAtCyl[i].SetC(cyl_pos);
        dComIfG_Ccsp()->Set(&mAtCyl[i]);

        var_f31 += temp_f30;
    }

    cXyz effpos(current.pos);
    effpos.y += 30.0f;
    for (int i = 0; i < 4; i++) {
        mEmtId[i] = dComIfGp_particle_set(mEmtId[i], dPa_RM(ID_ZI_S_ELECGATE_A), &effpos, &shape_angle, NULL);
        effpos.y += 50.0f;
    }

    return 1;
}

/* 80C82690-80C826A0 000690 0010+00 1/0 0/0 0/0 .text            Draw__15daObjLv6EGate_cFv */
int daObjLv6EGate_c::Draw() {
    if (mElecOff) {
        return 1;
    }

    return 1;
}

/* 80C826A0-80C826DC 0006A0 003C+00 1/0 0/0 0/0 .text            Delete__15daObjLv6EGate_cFv */
int daObjLv6EGate_c::Delete() {
    dComIfG_resDelete(this, l_arcName);
    return 1;
}

/* 80C826DC-80C82790 0006DC 00B4+00 1/0 0/0 0/0 .text daObjLv6EGate_create1st__FP15daObjLv6EGate_c
 */
static int daObjLv6EGate_create1st(daObjLv6EGate_c* i_this) {
    fopAcM_ct(i_this, daObjLv6EGate_c);
    return i_this->create1st();
}

/* 80C829CC-80C829EC 0009CC 0020+00 1/0 0/0 0/0 .text
 * daObjLv6EGate_MoveBGDelete__FP15daObjLv6EGate_c              */
static int daObjLv6EGate_MoveBGDelete(daObjLv6EGate_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80C829EC-80C82A0C 0009EC 0020+00 1/0 0/0 0/0 .text
 * daObjLv6EGate_MoveBGExecute__FP15daObjLv6EGate_c             */
static int daObjLv6EGate_MoveBGExecute(daObjLv6EGate_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C82A0C-80C82A38 000A0C 002C+00 1/0 0/0 0/0 .text
 * daObjLv6EGate_MoveBGDraw__FP15daObjLv6EGate_c                */
static int daObjLv6EGate_MoveBGDraw(daObjLv6EGate_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C82BF8-80C82C18 -00001 0020+00 1/0 0/0 0/0 .data            daObjLv6EGate_METHODS */
static actor_method_class daObjLv6EGate_METHODS = {
    (process_method_func)daObjLv6EGate_create1st,
    (process_method_func)daObjLv6EGate_MoveBGDelete,
    (process_method_func)daObjLv6EGate_MoveBGExecute,
    NULL,
    (process_method_func)daObjLv6EGate_MoveBGDraw,
};

/* 80C82C18-80C82C48 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv6EGate */
extern actor_process_profile_definition g_profile_Obj_Lv6EGate = {
  fpcLy_CURRENT_e,         // mLayerID
  3,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_Obj_Lv6EGate,       // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daObjLv6EGate_c), // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  668,                     // mPriority
  &daObjLv6EGate_METHODS,  // sub_method
  0x00040100,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};
