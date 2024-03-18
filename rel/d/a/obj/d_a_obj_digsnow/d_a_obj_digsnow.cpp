//
// d_a_obj_digsnow.cpp
// Object - Dig Snow
//

#include "rel/d/a/obj/d_a_obj_digsnow/d_a_obj_digsnow.h"

#include "d/a/d_a_player.h"
#include "d/com/d_com_inf_game.h"

//
// Declarations:
//

/* 80BDCC58-80BDCC94 000078 003C+00 1/1 0/0 0/0 .text            initBaseMtx__14daObjDigSnow_cFv */
void daObjDigSnow_c::initBaseMtx() {
    mpModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80BDCC94-80BDCD08 0000B4 0074+00 2/2 0/0 0/0 .text            setBaseMtx__14daObjDigSnow_cFv */
void daObjDigSnow_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 80BDCD08-80BDCD64 000128 005C+00 1/0 0/0 0/0 .text            Create__14daObjDigSnow_cFv */
int daObjDigSnow_c::Create() {
    initBaseMtx();
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    fopAcM_setCullSizeBox2(this, mpModel->getModelData());

    attention_info.field_0x0[0x07] = 31;

    mode_init_wait();

    return TRUE;
}

/* 80BDD6E8-80BDD6F4 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80BDD6F4-80BDD708 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80BDD708-80BDD70C -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "Y_horiyuk";

/* 80BDCD64-80BDCDD4 000184 0070+00 1/0 0/0 0/0 .text            CreateHeap__14daObjDigSnow_cFv */
int daObjDigSnow_c::CreateHeap() {
    J3DModelData* model_data = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 4);
    mpModel = mDoExt_J3DModel__create(model_data, 0x80000, 0x11000084);

    if (mpModel == NULL) {
        return FALSE;
    }

    return TRUE;
}

/* 80BDCDD4-80BDCE84 0001F4 00B0+00 1/1 0/0 0/0 .text            create1st__14daObjDigSnow_cFv */
int daObjDigSnow_c::create1st() {
    cPhs__Step step;

    if (dComIfGs_isSwitch(getSwNo(), fopAcM_GetHomeRoomNo(this))) {
        return cPhs_ERROR_e;
    } else {
        step = (cPhs__Step)dComIfG_resLoad(&mPhaseReq, l_arcName);
        if (step == cPhs_COMPLEATE_e) {
            step =
                (cPhs__Step)MoveBGCreate(l_arcName, 7, dBgS_MoveBGProc_TypicalRotY, 0x1000, NULL);
            if (step == cPhs_ERROR_e) {
                return step;
            }
        }
    }

    return step;
}

/* 80BDCE84-80BDCF00 0002A4 007C+00 1/0 0/0 0/0 .text            Execute__14daObjDigSnow_cFPPA3_A4_f
 */
int daObjDigSnow_c::Execute(Mtx** i_mtx) {
    if (dComIfGp_getLinkPlayer()->checkWolf()) {
        attention_info.flags = 0x80;
    } else {
        attention_info.flags = 0;
    }

    action();

    *i_mtx = &mBgMtx;
    setBaseMtx();

    return TRUE;
}

/* 80BDCF00-80BDCFA4 000320 00A4+00 1/1 0/0 0/0 .text            action__14daObjDigSnow_cFv */
void daObjDigSnow_c::action() {
    typedef void (daObjDigSnow_c::*action_func)();
    static action_func l_func[] = {
        &daObjDigSnow_c::mode_wait,
        &daObjDigSnow_c::mode_dig,
        &daObjDigSnow_c::mode_end,
    };

    (this->*l_func[mAction])();
}

/* 80BDCFA4-80BDCFB0 0003C4 000C+00 1/1 0/0 0/0 .text            mode_init_wait__14daObjDigSnow_cFv
 */
void daObjDigSnow_c::mode_init_wait() {
    mAction = ACTION_WAIT_e;
}

/* 80BDCFB0-80BDCFDC 0003D0 002C+00 1/0 0/0 0/0 .text            mode_wait__14daObjDigSnow_cFv */
void daObjDigSnow_c::mode_wait() {
    if (mMode == MODE_DIG_e) {
        mode_init_dig();
    }
}

/* 80BDCFDC-80BDD0AC 0003FC 00D0+00 1/1 0/0 0/0 .text            mode_init_dig__14daObjDigSnow_cFv
 */
void daObjDigSnow_c::mode_init_dig() {
    dBgS_ObjGndChk obj_gnd_chk;

    obj_gnd_chk.SetActorPid(mBase.mBsPcId);
    obj_gnd_chk.SetPos(&current.pos);

    f32 gnd_height = dComIfG_Bgsp().GroundCross(&obj_gnd_chk);
    if (gnd_height != -1000000000.0f) {
        mGroundHeight = gnd_height;
    }

    startDig();
}

/* 80BDD124-80BDD1BC 000544 0098+00 1/0 0/0 0/0 .text            mode_dig__14daObjDigSnow_cFv */
void daObjDigSnow_c::mode_dig() {
    f32 step = fabsf(((current.pos.y - mGroundHeight) + 10.0f) / 35.0f);
    if (step < 1.0f) {
        step = 1.0f;
    }

    if (cLib_chaseF(&current.pos.y, mGroundHeight - 30.0f, step) && mMode == MODE_END_e) {
        mode_init_end();
    }
}

/* 80BDD1BC-80BDD210 0005DC 0054+00 1/1 0/0 0/0 .text            mode_init_end__14daObjDigSnow_cFv
 */
void daObjDigSnow_c::mode_init_end() {
    dComIfGs_onSwitch(getSwNo(), fopAcM_GetHomeRoomNo(this));
    fopAcM_delete(this);
    endDig();
}

/* 80BDD210-80BDD214 000630 0004+00 1/0 0/0 0/0 .text            mode_end__14daObjDigSnow_cFv */
void daObjDigSnow_c::mode_end() {
    /* empty function */
}

/* 80BDD214-80BDD2B8 000634 00A4+00 1/0 0/0 0/0 .text            Draw__14daObjDigSnow_cFv */
int daObjDigSnow_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();

    return TRUE;
}

/* 80BDD2B8-80BDD2EC 0006D8 0034+00 1/0 0/0 0/0 .text            Delete__14daObjDigSnow_cFv */
int daObjDigSnow_c::Delete() {
    dComIfG_resDelete(&mPhaseReq, l_arcName);
    return TRUE;
}

/* 80BDD2EC-80BDD418 00070C 012C+00 1/0 0/0 0/0 .text daObjDigSnow_create1st__FP14daObjDigSnow_c
 */
static int daObjDigSnow_create1st(daObjDigSnow_c* i_this) {
    fopAcM_SetupActor(i_this, daObjDigSnow_c);

    return i_this->create1st();
}

/* 80BDD5E4-80BDD604 000A04 0020+00 1/0 0/0 0/0 .text
 * daObjDigSnow_MoveBGDelete__FP14daObjDigSnow_c                */
static int daObjDigSnow_MoveBGDelete(daObjDigSnow_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80BDD604-80BDD624 000A24 0020+00 1/0 0/0 0/0 .text
 * daObjDigSnow_MoveBGExecute__FP14daObjDigSnow_c               */
static int daObjDigSnow_MoveBGExecute(daObjDigSnow_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80BDD624-80BDD650 000A44 002C+00 1/0 0/0 0/0 .text daObjDigSnow_MoveBGDraw__FP14daObjDigSnow_c
 */
static int daObjDigSnow_MoveBGDraw(daObjDigSnow_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80BDD754-80BDD774 -00001 0020+00 1/0 0/0 0/0 .data            daObjDigSnow_METHODS */
static actor_method_class daObjDigSnow_METHODS = {
    (process_method_func)daObjDigSnow_create1st,     (process_method_func)daObjDigSnow_MoveBGDelete,
    (process_method_func)daObjDigSnow_MoveBGExecute, NULL,
    (process_method_func)daObjDigSnow_MoveBGDraw,
};

extern actor_process_profile_definition g_profile_Obj_DigSnow = {
    fpcLy_CURRENT_e,         // mLayerID
    3,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_DigSnow,        // mProcName
    &g_fpcLf_Method.mBase,   // sub_method
    sizeof(daObjDigSnow_c),  // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    634,                     // mPriority
    &daObjDigSnow_METHODS,   // sub_method
    0x44100,                 // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};
