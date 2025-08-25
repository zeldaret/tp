/**
 * @file d_a_obj_stick.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_stick.h"
#include "d/d_com_inf_game.h"
#include "dol2asm.h"
#include "d/d_resorce.h"
#include "m_Do/m_Do_ext.h"
#include "d/actor/d_a_npc.h"

/* 80599E3C-80599E4C 000000 0010+00 3/3 0/0 0/0 .rodata          m__19daObj_Stick_Param_c */
const daObj_Stick_Param_c::daObj_Stick_HIOParam daObj_Stick_Param_c::m = {
    0.0f, -3.0f, 1.0f, 100.0f
};

/* 80599E70-80599EB0 000000 0040+00 2/2 0/0 0/0 .data            mCcDSph__13daObj_Stick_c */
dCcD_SrcSph daObj_Stick_c::mCcDSph = {
    daNpcT_c::mCcDObjData,                                               // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 0.0f}  // mSph
    }  // mSphAttr
};

/* 80599EB0-80599EB4 -00001 0004+00 1/1 0/0 0/0 .data            l_resName */
static char* l_resName = "Taro6";

/* 8059922C-805993E8 0000EC 01BC+00 1/0 0/0 0/0 .text            __dt__13daObj_Stick_cFv */
daObj_Stick_c::~daObj_Stick_c() {
    dComIfG_resDelete(&mPhase, getResName());
}

/* 805993E8-805996BC 0002A8 02D4+00 1/1 0/0 0/0 .text            create__13daObj_Stick_cFv */
int daObj_Stick_c::create() {
    fopAcM_SetupActor(this, daObj_Stick_c);

    mType = getType();
    
    int phase_state = dComIfG_resLoad(&mPhase, getResName());

    if (phase_state == cPhs_COMPLEATE_e) {
        if (isDelete()) {
            return cPhs_ERROR_e;
        }
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x810)) {
            return cPhs_ERROR_e;
        }

        J3DModelData* modelData;
        modelData = mpModel->getModelData();
        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -50.0, -50.0, -75.0, 50.0, 50.0, 75.0);
        mAcch.Set(fopAcM_GetPosition_p(this), 
            fopAcM_GetOldPosition_p(this), 
            this, 
            1,
            &mAcchCir, 
            fopAcM_GetSpeed_p(this), 
            fopAcM_GetAngle_p(this), 
            fopAcM_GetShapeAngle_p(this));
        mStts.Init(0xFF, 0, this);
        mSph.Set(daObj_Stick_c::mCcDSph);
        mSph.SetStts(&mStts);
        mAcch.CrrPos(g_dComIfG_gameInfo.play.mBgs);
        mGndChk = mAcch.m_gnd;
        mGroundHeight = mAcch.m_ground_h;

        if(mGroundHeight != -1000000000.0f) {
            setEnvTevColor();
            setRoomNo();
        }
        Execute();
    }

    return phase_state;
}

/* 80599888-80599900 000748 0078+00 1/1 0/0 0/0 .text            CreateHeap__13daObj_Stick_cFv */
int daObj_Stick_c::CreateHeap() {
    J3DModelData* objectRes = (J3DModelData*)dComIfG_getObjectRes(getResName(), 3);
    if (objectRes == NULL) {
        return 0;
    }

    mpModel = mDoExt_J3DModel__create(objectRes, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }
    
    return 1;
}

/* 80599900-80599934 0007C0 0034+00 1/1 0/0 0/0 .text            Delete__13daObj_Stick_cFv */
int daObj_Stick_c::Delete() {
    this->~daObj_Stick_c();

    return 1;
}

/* 80599934-80599A78 0007F4 0144+00 2/2 0/0 0/0 .text            Execute__13daObj_Stick_cFv */
int daObj_Stick_c::Execute() {
    mAcch.CrrPos(dComIfG_Bgsp());
    mGndChk = mAcch.m_gnd;
    
    mGroundHeight = mAcch.m_ground_h;
    if (mGroundHeight != -1000000000.0f) {
        setEnvTevColor();
        setRoomNo();
    }

    setMtx();
    mSph.ClrCoHit();
    attention_info.position = current.pos;
    attention_info.position.y += daObj_Stick_Param_c::m.attention_offset;
    eyePos = attention_info.position;
    attention_info.flags = 0;
    
    return 1;
}

/* 80599A78-80599B3C 000938 00C4+00 1/1 0/0 0/0 .text            Draw__13daObj_Stick_cFv */
int daObj_Stick_c::Draw() {
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    mDoExt_modelUpdateDL(mpModel);

    if(mGroundHeight != -1000000000.0f) {
        mShadowKey = dComIfGd_setShadow(mShadowKey, 
            1, 
            mpModel, 
            &current.pos, 
            daObj_Stick_Param_c::m.real_shadow_size, 
            20.0f, 
            current.pos.y,
            mGroundHeight, 
            mGndChk, 
            &tevStr, 
            0, 
            1.0, 
            dDlst_shadowControl_c::getSimpleTex());
    }

    return 1;
}

/* 80599B3C-80599B5C 0009FC 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__13daObj_Stick_cFP10fopAc_ac_c            */
int daObj_Stick_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return static_cast<daObj_Stick_c*>(i_this)->CreateHeap();
}

/* 80599B5C-80599B6C 000A1C 0010+00 3/3 0/0 0/0 .text            getResName__13daObj_Stick_cFv */
const char* daObj_Stick_c::getResName() {
    return l_resName;
}

/* 80599B6C-80599B8C 000A2C 0020+00 1/1 0/0 0/0 .text            isDelete__13daObj_Stick_cFv */
BOOL daObj_Stick_c::isDelete() {
    switch(mType) {
        case 0:
            return 0;
        default:
            return 0;
    }
}

/* 80599B8C-80599BE8 000A4C 005C+00 2/2 0/0 0/0 .text            setEnvTevColor__13daObj_Stick_cFv
 */
void daObj_Stick_c::setEnvTevColor() {
    tevStr.YukaCol = dComIfG_Bgsp().GetPolyColor(mGndChk);
    tevStr.room_no = dComIfG_Bgsp().GetRoomId(mGndChk);
}

/* 80599BE8-80599C28 000AA8 0040+00 2/2 0/0 0/0 .text            setRoomNo__13daObj_Stick_cFv */
void daObj_Stick_c::setRoomNo() {
    u32 roomId = dComIfG_Bgsp().GetRoomId(mGndChk);
    fopAcM_SetRoomNo(this, roomId);
}

/* 80599C28-80599C8C 000AE8 0064+00 1/1 0/0 0/0 .text            setMtx__13daObj_Stick_cFv */
void daObj_Stick_c::setMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::scaleM(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80599C8C-80599CAC 000B4C 0020+00 1/0 0/0 0/0 .text            daObj_Stick_Create__FPv */
static u32 daObj_Stick_Create(void* i_this) {
    return static_cast<daObj_Stick_c*>(i_this)->create();
}

/* 80599CAC-80599CCC 000B6C 0020+00 1/0 0/0 0/0 .text            daObj_Stick_Delete__FPv */
static void daObj_Stick_Delete(void* param_0) {
    static_cast<daObj_Stick_c*>(param_0)->Delete();
}

/* 80599CCC-80599CEC 000B8C 0020+00 1/0 0/0 0/0 .text            daObj_Stick_Execute__FPv */
static void daObj_Stick_Execute(void* param_0) {
    static_cast<daObj_Stick_c*>(param_0)->Execute();
}

/* 80599CEC-80599D0C 000BAC 0020+00 1/0 0/0 0/0 .text            daObj_Stick_Draw__FPv */
static void daObj_Stick_Draw(void* param_0) {
    static_cast<daObj_Stick_c*>(param_0)->Draw();
}

/* 80599D0C-80599D14 000BCC 0008+00 1/0 0/0 0/0 .text            daObj_Stick_IsDelete__FPv */
static bool daObj_Stick_IsDelete(void* param_0) {
    return true;
}

/* 80599EB4-80599ED4 -00001 0020+00 1/0 0/0 0/0 .data            daObj_Stick_MethodTable */
static actor_method_class daObj_Stick_MethodTable = {
    (process_method_func)daObj_Stick_Create,
    (process_method_func)daObj_Stick_Delete,
    (process_method_func)daObj_Stick_Execute,
    (process_method_func)daObj_Stick_IsDelete,
    (process_method_func)daObj_Stick_Draw,
};

/* 80599ED4-80599F04 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_STICK */
extern actor_process_profile_definition g_profile_OBJ_STICK = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_OBJ_STICK,           // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daObj_Stick_c),    // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  85,                       // mPriority
  &daObj_Stick_MethodTable, // sub_method
  0x00044100,               // mStatus
  fopAc_ACTOR_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 80599F94-80599F98 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daObj_Stick_Param_c l_HIO;
