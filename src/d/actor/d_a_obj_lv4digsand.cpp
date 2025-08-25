/**
 * @file d_a_obj_lv4digsand.cpp
 * Arbiter's Grounds Dig Sand
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv4digsand.h"
#include "d/d_com_inf_game.h"
#include "d/actor/d_a_player.h"
#include "d/d_item.h"
#include <cmath.h>

/* 80C66B18-80C66B54 000078 003C+00 1/1 0/0 0/0 .text            initBaseMtx__16daObjL4DigSand_cFv
 */
void daObjL4DigSand_c::initBaseMtx() {
    mpModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80C66B54-80C66BC8 0000B4 0074+00 2/2 0/0 0/0 .text            setBaseMtx__16daObjL4DigSand_cFv */
void daObjL4DigSand_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 80C66BC8-80C66C24 000128 005C+00 1/0 0/0 0/0 .text            Create__16daObjL4DigSand_cFv */
int daObjL4DigSand_c::Create() {
    initBaseMtx();
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    fopAcM_setCullSizeBox2(this, mpModel->getModelData());
    
    attention_info.distances[fopAc_attn_ETC_e] = 31;
    mode_init_wait();
    return 1;
}

/* 80C6760C-80C67610 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "P_DSand";

/* 80C66C24-80C66C94 000184 0070+00 1/0 0/0 0/0 .text            CreateHeap__16daObjL4DigSand_cFv */
int daObjL4DigSand_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 4);
    JUT_ASSERT(0x9B, modelData != 0);

    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    return 1;
}

/* 80C66C94-80C66D40 0001F4 00AC+00 1/1 0/0 0/0 .text            create1st__16daObjL4DigSand_cFv */
int daObjL4DigSand_c::create1st() {
    if (fopAcM_isSwitch(this, getSwNo())) {
        return cPhs_ERROR_e;
    }

    int phase_state = dComIfG_resLoad(&mPhase, l_arcName);
    if (phase_state == cPhs_COMPLEATE_e) {
        phase_state = MoveBGCreate(l_arcName, 7, NULL, 0x1100, NULL);
        if (phase_state == cPhs_ERROR_e) {
            return phase_state;
        }
    }

    return phase_state;
}

/* 80C66D40-80C66DD0 0002A0 0090+00 1/0 0/0 0/0 .text Execute__16daObjL4DigSand_cFPPA3_A4_f */
int daObjL4DigSand_c::Execute(f32 (**param_0)[3][4]) {
    if (daPy_py_c::checkNowWolf() && checkItemGet(fpcNm_ITEM_SMELL_POH, 1)) {
        attention_info.flags = 0x80;
    } else {
        attention_info.flags = 0;
    }

    action();

    *param_0 = &mBgMtx;
    setBaseMtx();
    return 1;
}

/* 80C66DD0-80C66E74 000330 00A4+00 1/1 0/0 0/0 .text            action__16daObjL4DigSand_cFv */
void daObjL4DigSand_c::action() {
    typedef void (daObjL4DigSand_c::*mode_func)();
    static mode_func l_func[] = {
        &daObjL4DigSand_c::mode_wait,
        &daObjL4DigSand_c::mode_dig,
        &daObjL4DigSand_c::mode_end,
    };

    (this->*l_func[mMode])();
}

/* 80C66E74-80C66E80 0003D4 000C+00 1/1 0/0 0/0 .text mode_init_wait__16daObjL4DigSand_cFv */
void daObjL4DigSand_c::mode_init_wait() {
    mMode = 0;
}

/* 80C66E80-80C66EAC 0003E0 002C+00 1/0 0/0 0/0 .text            mode_wait__16daObjL4DigSand_cFv */
void daObjL4DigSand_c::mode_wait() {
    if (field_0x941 == 1) {
        mode_init_dig();
    }
}

/* 80C66EAC-80C66F84 00040C 00D8+00 1/1 0/0 0/0 .text            mode_init_dig__16daObjL4DigSand_cFv
 */
void daObjL4DigSand_c::mode_init_dig() {
    dBgS_ObjGndChk gndchk;
    gndchk.SetActorPid(base.id);
    gndchk.SetPos(&current.pos);

    f32 gnd_y = dComIfG_Bgsp().GroundCross(&gndchk);
    if (gnd_y != -1000000000.0f) {
        mGroundY = gnd_y;
    } else {
#ifdef DEBUG
        // "No BG below dig-sand!"
        OS_REPORT_ERROR("掘れる砂の下にＢＧがありません！");
        fopAcM_delete(this);
#endif
    }

    mTimer = 20;
    mMode = 1;
}

/* 80C66FFC-80C670AC 00055C 00B0+00 1/0 0/0 0/0 .text            mode_dig__16daObjL4DigSand_cFv */
void daObjL4DigSand_c::mode_dig() {
    if (cLib_calcTimer<u8>(&mTimer) == 0) {
        f32 var_f31 = std::fabs(((current.pos.y - mGroundY) + 10.0f) / 15.0f);
        if (var_f31 < 1.0f) {
            var_f31 = 1.0f;
        }

        if (cLib_chaseF(&current.pos.y, mGroundY - 10.0f, var_f31) && field_0x941 == 2) {
            mode_init_end();
        }
    }
}

/* 80C670AC-80C67100 00060C 0054+00 1/1 0/0 0/0 .text            mode_init_end__16daObjL4DigSand_cFv
 */
void daObjL4DigSand_c::mode_init_end() {
    fopAcM_onSwitch(this, getSwNo());
    fopAcM_delete(this);
    mMode = 2;
}

/* 80C67100-80C67104 000660 0004+00 1/0 0/0 0/0 .text            mode_end__16daObjL4DigSand_cFv */
void daObjL4DigSand_c::mode_end() {}

/* 80C67104-80C671A8 000664 00A4+00 1/0 0/0 0/0 .text            Draw__16daObjL4DigSand_cFv */
int daObjL4DigSand_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80C671A8-80C671DC 000708 0034+00 1/0 0/0 0/0 .text            Delete__16daObjL4DigSand_cFv */
int daObjL4DigSand_c::Delete() {
    dComIfG_resDelete(&mPhase, l_arcName);
    return 1;
}

/* 80C671DC-80C67308 00073C 012C+00 1/0 0/0 0/0 .text
 * daObjL4DigSand_create1st__FP16daObjL4DigSand_c               */
static int daObjL4DigSand_create1st(daObjL4DigSand_c* i_this) {
    fopAcM_SetupActor(i_this, daObjL4DigSand_c);
    return i_this->create1st();
}

/* 80C674D4-80C674F4 000A34 0020+00 1/0 0/0 0/0 .text
 * daObjL4DigSand_MoveBGDelete__FP16daObjL4DigSand_c            */
static int daObjL4DigSand_MoveBGDelete(daObjL4DigSand_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80C674F4-80C67514 000A54 0020+00 1/0 0/0 0/0 .text
 * daObjL4DigSand_MoveBGExecute__FP16daObjL4DigSand_c           */
static int daObjL4DigSand_MoveBGExecute(daObjL4DigSand_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C67514-80C67540 000A74 002C+00 1/0 0/0 0/0 .text
 * daObjL4DigSand_MoveBGDraw__FP16daObjL4DigSand_c              */
static int daObjL4DigSand_MoveBGDraw(daObjL4DigSand_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C67658-80C67678 -00001 0020+00 1/0 0/0 0/0 .data            daObjL4DigSand_METHODS */
static actor_method_class daObjL4DigSand_METHODS = {
    (process_method_func)daObjL4DigSand_create1st,
    (process_method_func)daObjL4DigSand_MoveBGDelete,
    (process_method_func)daObjL4DigSand_MoveBGExecute,
    (process_method_func)NULL,
    (process_method_func)daObjL4DigSand_MoveBGDraw,
};

/* 80C67678-80C676A8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv4DigSand */
extern actor_process_profile_definition g_profile_Obj_Lv4DigSand = {
  fpcLy_CURRENT_e,          // mLayerID
  3,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_Obj_Lv4DigSand,      // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daObjL4DigSand_c), // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  551,                      // mPriority
  &daObjL4DigSand_METHODS,  // sub_method
  0x00044100,               // mStatus
  fopAc_ACTOR_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};
