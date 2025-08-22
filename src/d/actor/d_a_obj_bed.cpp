/**
 * @file d_a_obj_bed.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_bed.h"
#include "d/d_bg_w.h"
#include "d/d_com_inf_game.h"
#include "m_Do/m_Do_ext.h"
#include "d/actor/d_a_npc.h"
#include "d/d_procname.h"

/* 80BAE198-80BAE19C -00001 0004+00 1/1 0/0 0/0 .data            l_resName */
static char* l_resName = "KH_Bed";

/* 80BAE168-80BAE178 000000 0010+00 2/2 0/0 0/0 .rodata          m__17daObj_Bed_Param_c */
daObj_Bed_Param_c::params const daObj_Bed_Param_c::m = {NULL, -3.0f, 1.0f, 600.0f};

/* 80BAD66C-80BAD790 0000EC 0124+00 1/0 0/0 0/0 .text            __dt__11daObj_Bed_cFv */
daObj_Bed_c::~daObj_Bed_c() {
    if (mpCollider != NULL) {
        dComIfG_Bgsp().Release(mpCollider);
    }
    dComIfG_resDelete(&mPhase, getResName());
}

/* 80BAD790-80BADA00 000210 0270+00 1/1 0/0 0/0 .text            create__11daObj_Bed_cFv */
cPhs__Step daObj_Bed_c::create() {
    fopAcM_SetupActor(this, daObj_Bed_c);
    mType = getType();
    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&mPhase, getResName());
    if (step == cPhs_COMPLEATE_e) {
        if (isDelete()) {
            return cPhs_ERROR_e;
        }
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x2520)) {
            return cPhs_ERROR_e;
        }
        if (mpCollider != NULL) {
            if (dComIfG_Bgsp().Regist(mpCollider, this) == true) {
                return cPhs_ERROR_e;
            }
        }
        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -200.0f, -100.0f, -200.0f, 200.0f, 200.0f, 200.0f);
        mAcch.Set(&current.pos, &old.pos, this, 1, &mAcchCir,
                  &speed, &current.angle, &shape_angle);
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();
        if (mGroundH != -1e9f) {
            setEnvTevColor();
            setRoomNo();
        }
        Execute();
    }
    return step;
}

/* 80BADB70-80BADC80 0005F0 0110+00 1/1 0/0 0/0 .text            CreateHeap__11daObj_Bed_cFv */
int daObj_Bed_c::CreateHeap() {
    J3DModelData* model_data = (J3DModelData*)dComIfG_getObjectRes(getResName(), 4);
    if (model_data == NULL) {
        return 0;
    }
    mpModel = mDoExt_J3DModel__create(model_data, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }
    mpCollider = new dBgW();
    if (mpCollider == NULL) {
        return 0;
    }
    cBgD_t* dzb = (cBgD_t*)dComIfG_getObjectRes(getResName(), 7);
    if (mpCollider->Set(dzb, 1, &mMtx) == true) {
        return 0;
    }
    mpCollider->SetCrrFunc(dBgS_MoveBGProc_Typical);
    return 1;
}

/* 80BADC80-80BADCB4 000700 0034+00 1/1 0/0 0/0 .text            Delete__11daObj_Bed_cFv */
int daObj_Bed_c::Delete() {
    this->~daObj_Bed_c();
    return 1;
}

/* 80BADCB4-80BADDF4 000734 0140+00 2/2 0/0 0/0 .text            Execute__11daObj_Bed_cFv */
int daObj_Bed_c::Execute() {
    mAcch.CrrPos(dComIfG_Bgsp());
    mGndChk = mAcch.m_gnd;
    mGroundH = mAcch.GetGroundH();
    if (mGroundH != -1e9f) {
        setEnvTevColor();
        setRoomNo();
    }
    setMtx();
    if (mpCollider != NULL) {
        PSMTXCopy(mpModel->getBaseTRMtx(), mMtx);
        mpCollider->Move();
    }
    eyePos = attention_info.position = current.pos;
    attention_info.flags = 0;
    return 1;
}

/* 80BADDF4-80BADEB8 000874 00C4+00 1/1 0/0 0/0 .text            Draw__11daObj_Bed_cFv */
int daObj_Bed_c::Draw() {
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    mDoExt_modelUpdateDL(mpModel);
    if (mGroundH != -1e9f) {
        mShadow = dComIfGd_setShadow(mShadow, 1, mpModel, &current.pos,
                                     daObj_Bed_Param_c::m.field_0xc, 20.0f,
                                     current.pos.y, mGroundH, mGndChk, &tevStr, 0,
                                     1.0f, &dDlst_shadowControl_c::mSimpleTexObj);
    }
    return 1;
}

/* 80BADEB8-80BADED8 000938 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__11daObj_Bed_cFP10fopAc_ac_c              */
int daObj_Bed_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return static_cast<daObj_Bed_c*>(i_this)->CreateHeap();
}

/* 80BADED8-80BADEE0 000958 0008+00 1/1 0/0 0/0 .text            getType__11daObj_Bed_cFv */
u8 daObj_Bed_c::getType() {
    return 0;
}

/* 80BADEE0-80BADEF0 000960 0010+00 3/3 0/0 0/0 .text            getResName__11daObj_Bed_cFv */
char* daObj_Bed_c::getResName() {
    return l_resName;
}

/* 80BADEF0-80BADF34 000970 0044+00 1/1 0/0 0/0 .text            isDelete__11daObj_Bed_cFv */
int daObj_Bed_c::isDelete() {
    switch (mType) {
        case 0:
            return daNpcT_chkEvtBit(0x108) == 0;
        default:
            return 0;
    }
}

/* 80BADF34-80BADF90 0009B4 005C+00 2/2 0/0 0/0 .text            setEnvTevColor__11daObj_Bed_cFv */
void daObj_Bed_c::setEnvTevColor() {
    tevStr.YukaCol = dComIfG_Bgsp().GetPolyColor(mGndChk);
    tevStr.room_no = dComIfG_Bgsp().GetRoomId(mGndChk);
}

/* 80BADF90-80BADFD0 000A10 0040+00 2/2 0/0 0/0 .text            setRoomNo__11daObj_Bed_cFv */
void daObj_Bed_c::setRoomNo() {
    fopAcM_SetRoomNo(this, dComIfG_Bgsp().GetRoomId(mGndChk));
}

/* 80BADFD0-80BAE034 000A50 0064+00 1/1 0/0 0/0 .text            setMtx__11daObj_Bed_cFv */
void daObj_Bed_c::setMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::scaleM(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80BAE034-80BAE054 000AB4 0020+00 1/0 0/0 0/0 .text            daObj_Bed_Create__FPv */

static cPhs__Step daObj_Bed_Create(void* i_this) {
    return static_cast<daObj_Bed_c*>(i_this)->create();
}

/* 80BAE054-80BAE074 000AD4 0020+00 1/0 0/0 0/0 .text            daObj_Bed_Delete__FPv */
static int daObj_Bed_Delete(void* i_this) {
    return static_cast<daObj_Bed_c*>(i_this)->Delete();
}

/* 80BAE074-80BAE094 000AF4 0020+00 1/0 0/0 0/0 .text            daObj_Bed_Execute__FPv */
static int daObj_Bed_Execute(void* i_this) {
    return static_cast<daObj_Bed_c*>(i_this)->Execute();
}

/* 80BAE094-80BAE0B4 000B14 0020+00 1/0 0/0 0/0 .text            daObj_Bed_Draw__FPv */
static int daObj_Bed_Draw(void* i_this) {
    return static_cast<daObj_Bed_c*>(i_this)->Draw();
}

/* 80BAE0B4-80BAE0BC 000B34 0008+00 1/0 0/0 0/0 .text            daObj_Bed_IsDelete__FPv */
static int daObj_Bed_IsDelete(void* param_0) {
    return 1;
}

/* 80BAE264-80BAE268 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daObj_Bed_Param_c l_HIO;

/* 80BAE19C-80BAE1BC -00001 0020+00 1/0 0/0 0/0 .data            daObj_Bed_MethodTable */
static actor_method_class daObj_Bed_MethodTable = {
    (process_method_func)daObj_Bed_Create,
    (process_method_func)daObj_Bed_Delete,
    (process_method_func)daObj_Bed_Execute,
    (process_method_func)daObj_Bed_IsDelete,
    (process_method_func)daObj_Bed_Draw,
};

/* 80BAE1BC-80BAE1EC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_BED */
extern actor_process_profile_definition g_profile_OBJ_BED = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_OBJ_BED,
    &g_fpcLf_Method.base,
    sizeof(daObj_Bed_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x4F,
    &daObj_Bed_MethodTable,
    0x44100,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
