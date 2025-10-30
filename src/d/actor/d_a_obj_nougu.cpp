/**
 * @file d_a_obj_nougu.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_nougu.h"
#include "d/actor/d_a_npc.h"
#include "SSystem/SComponent/c_counter.h"

/* 80CA4A00-80CA4A40 000000 0040+00 2/2 0/0 0/0 .data            mCcDSph__13daObj_Nougu_c */
dCcD_SrcSph daObj_Nougu_c::mCcDSph = {
    daNpcT_c::mCcDObjData,
    {
        {{0.0f, 0.0f, 0.0f}, 0.0f}
    },
};

/* 80CA4A40-80CA4A44 -00001 0004+00 1/1 0/0 0/0 .data            l_resName */
static char* l_resName = "Jagar4";

/* 80CA3C0C-80CA3D58 0000EC 014C+00 1/0 0/0 0/0 .text            __dt__13daObj_Nougu_cFv */
daObj_Nougu_c::~daObj_Nougu_c() {
    OS_REPORT("|%06d:%x|daObj_Nougu_c -> デストラクト\n", g_Counter.mCounter0, this);
    dComIfG_resDelete(&mPhase, getResName());
}

/* 80CA49B8-80CA49C8 000000 0010+00 3/3 0/0 0/0 .rodata          m__19daObj_Nougu_Param_c */
const daObj_Nougu_HIOParam daObj_Nougu_Param_c::m = {
    0.0f,
    -3.0f,
    1.0f,
    200.0f
};

/* 80CA3E24-80CA40D8 000304 02B4+00 1/1 0/0 0/0 .text            create__13daObj_Nougu_cFv */
int daObj_Nougu_c::create() {
    fopAcM_ct(this, daObj_Nougu_c);

    mType = getType();

    int phase_state = dComIfG_resLoad(&mPhase, getResName());
    if (phase_state == cPhs_COMPLEATE_e) {
        OS_REPORT("\t(%s:%d) <%08x> -> roomNo.%d", fopAcM_getProcNameString(this), getType(), fopAcM_GetParam(this), fopAcM_GetRoomNo(this));

        if (isDelete()) {
            OS_REPORT("===>isDelete:TRUE\n");
            return cPhs_ERROR_e;
        }
    
        OS_REPORT("\n");
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x800)) {
            return cPhs_ERROR_e;
        }
    
        mpModel->getModelData();
        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -75.0f, -50.0f, -100.0f, 75.0f, 50.0f, 100.0f);

        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));

        mCcStts.Init(0xFF, 0, this);

        for (int i = 0; i < 5; i++) {
            mCcSph[i].Set(mCcDSph);
            mCcSph[i].SetStts(&mCcStts);
        }

        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;

        mGroundH = mAcch.GetGroundH();
        if (-G_CM3D_F_INF != mGroundH) {
            setEnvTevColor();
            setRoomNo();
        }

        Execute();
    }

    return phase_state;
}

/* 80CA4328-80CA43A0 000808 0078+00 1/1 0/0 0/0 .text            CreateHeap__13daObj_Nougu_cFv */
int daObj_Nougu_c::CreateHeap() {
    J3DModelData* mdlData_p = (J3DModelData*)dComIfG_getObjectRes(getResName(), 3);
    if (mdlData_p == NULL) {
        return 0;
    }

    mpModel = mDoExt_J3DModel__create(mdlData_p, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    return 1;
}

/* 80CA43A0-80CA43D4 000880 0034+00 1/1 0/0 0/0 .text            Delete__13daObj_Nougu_cFv */
int daObj_Nougu_c::Delete() {
    OS_REPORT("|%06d:%x|daObj_Nougu_c -> Delete\n", g_Counter.mCounter0, this);
    this->~daObj_Nougu_c();
    return 1;
}

/* 80CA43D4-80CA45F4 0008B4 0220+00 2/2 0/0 0/0 .text            Execute__13daObj_Nougu_cFv */
int daObj_Nougu_c::Execute() {
    cXyz sp14;
    cXyz sp8;

    mAcch.CrrPos(dComIfG_Bgsp());
    mGndChk = mAcch.m_gnd;
    mGroundH = mAcch.GetGroundH();

    if (-G_CM3D_F_INF != mGroundH) {
        setEnvTevColor();
        setRoomNo();
    }

    setMtx();

    f32 var_f31 = 60.0f;
    for (int i = 0; i < 5; i++) {
        sp14.set(0.0f, 0.0f, var_f31);
        mDoMtx_stack_c::YrotS(shape_angle.y);
        mDoMtx_stack_c::multVec(&sp14, &sp14);
        sp14 += current.pos;

        mCcSph[i].SetC(sp14);
        mCcSph[i].SetR(30.0f);
        dComIfG_Ccsp()->Set(&mCcSph[i]);

        mCcSph[i].ClrCoHit();
        var_f31 -= 30.0f;
    }

    attention_info.position = current.pos;
    attention_info.position.y += daObj_Nougu_Param_c::m.attention_offset;
    eyePos = attention_info.position;
    attention_info.flags = 0;
    return 1;
}

/* 80CA45F4-80CA46B8 000AD4 00C4+00 1/1 0/0 0/0 .text            Draw__13daObj_Nougu_cFv */
int daObj_Nougu_c::Draw() {
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    mDoExt_modelUpdateDL(mpModel);

    if (-G_CM3D_F_INF != mGroundH) {
        mShadowId = dComIfGd_setShadow(mShadowId, 1, mpModel, &current.pos, daObj_Nougu_Param_c::m.shadow_size, 20.0f, current.pos.y, mGroundH, mGndChk, &tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
    }

    return 1;
}

/* 80CA46B8-80CA46D8 000B98 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__13daObj_Nougu_cFP10fopAc_ac_c            */
int daObj_Nougu_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return ((daObj_Nougu_c*)i_this)->CreateHeap();
}

/* 80CA46D8-80CA46E8 000BB8 0010+00 3/3 0/0 0/0 .text            getResName__13daObj_Nougu_cFv */
const char* daObj_Nougu_c::getResName() {
    return l_resName;
}

/* 80CA46E8-80CA4708 000BC8 0020+00 1/1 0/0 0/0 .text            isDelete__13daObj_Nougu_cFv */
int daObj_Nougu_c::isDelete() {
    switch (mType) {
    case 0:
        return 0;
    }

    return 0;
}

/* 80CA4708-80CA4764 000BE8 005C+00 2/2 0/0 0/0 .text            setEnvTevColor__13daObj_Nougu_cFv
 */
void daObj_Nougu_c::setEnvTevColor() {
    tevStr.YukaCol = dComIfG_Bgsp().GetPolyColor(mGndChk);
    tevStr.room_no = dComIfG_Bgsp().GetRoomId(mGndChk);
}

/* 80CA4764-80CA47A4 000C44 0040+00 2/2 0/0 0/0 .text            setRoomNo__13daObj_Nougu_cFv */
void daObj_Nougu_c::setRoomNo() {
    fopAcM_SetRoomNo(this, dComIfG_Bgsp().GetRoomId(mGndChk));
}

/* 80CA47A4-80CA4808 000C84 0064+00 1/1 0/0 0/0 .text            setMtx__13daObj_Nougu_cFv */
void daObj_Nougu_c::setMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::scaleM(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80CA4808-80CA4828 000CE8 0020+00 1/0 0/0 0/0 .text            daObj_Nougu_Create__FPv */
static int daObj_Nougu_Create(void* i_this) {
    return ((daObj_Nougu_c*)i_this)->create();
}

/* 80CA4828-80CA4848 000D08 0020+00 1/0 0/0 0/0 .text            daObj_Nougu_Delete__FPv */
static int daObj_Nougu_Delete(void* i_this) {
    return ((daObj_Nougu_c*)i_this)->Delete();
}

/* 80CA4848-80CA4868 000D28 0020+00 1/0 0/0 0/0 .text            daObj_Nougu_Execute__FPv */
static int daObj_Nougu_Execute(void* i_this) {
    return ((daObj_Nougu_c*)i_this)->Execute();
}

/* 80CA4868-80CA4888 000D48 0020+00 1/0 0/0 0/0 .text            daObj_Nougu_Draw__FPv */
static int daObj_Nougu_Draw(void* i_this) {
    return ((daObj_Nougu_c*)i_this)->Draw();
}

/* 80CA4888-80CA4890 000D68 0008+00 1/0 0/0 0/0 .text            daObj_Nougu_IsDelete__FPv */
static int daObj_Nougu_IsDelete(void* i_this) {
    return 1;
}

/* 80CA4B24-80CA4B28 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daObj_Nougu_Param_c l_HIO;

/* 80CA4A44-80CA4A64 -00001 0020+00 1/0 0/0 0/0 .data            daObj_Nougu_MethodTable */
static actor_method_class daObj_Nougu_MethodTable = {
    (process_method_func)daObj_Nougu_Create,
    (process_method_func)daObj_Nougu_Delete,
    (process_method_func)daObj_Nougu_Execute,
    (process_method_func)daObj_Nougu_IsDelete,
    (process_method_func)daObj_Nougu_Draw,
};

/* 80CA4A64-80CA4A94 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_NOUGU */
extern actor_process_profile_definition g_profile_OBJ_NOUGU = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_OBJ_NOUGU,           // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daObj_Nougu_c),    // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  84,                       // mPriority
  &daObj_Nougu_MethodTable, // sub_method
  0x00044100,               // mStatus
  fopAc_ACTOR_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};
