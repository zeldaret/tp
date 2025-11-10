/**
 * @file d_a_obj_lv4bridge.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_lv4bridge.h"

/* 80C62878-80C628B4 000078 003C+00 1/1 0/0 0/0 .text            initBaseMtx__13daObjLv4Brg_cFv */
void daObjLv4Brg_c::initBaseMtx() {
    mpModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80C628B4-80C62994 0000B4 00E0+00 2/2 0/0 0/0 .text            setBaseMtx__13daObjLv4Brg_cFv */
void daObjLv4Brg_c::setBaseMtx() {
    cXyz sp14(0.0f, 0.0f, field_0x5bc);
    mDoMtx_stack_c::YrotS(shape_angle.y);
    mDoMtx_stack_c::multVec(&sp14, &sp14);
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::transM(sp14);
    mDoMtx_stack_c::YrotM(shape_angle.y);

    cXyz sp8(0.0f, 1700.0f, -5050.0f);
    mDoMtx_stack_c::multVec(&sp8, &field_0x5c4);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 80C62994-80C62A2C 000194 0098+00 1/0 0/0 0/0 .text            Create__13daObjLv4Brg_cFv */
int daObjLv4Brg_c::Create() {
    if (fopAcM_isSwitch(this, getSwbit())) {
        field_0x5bc = 2000.0f;
        mode_init_dead();
    } else {
        field_0x5bc = 0.0f;
        mode_init_wait();
    }

    initBaseMtx();
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    MoveBGExecute();
    return 1;
}

/* 80C631BC-80C631C0 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "Obj_l4brg";

/* 80C62A2C-80C62A9C 00022C 0070+00 1/0 0/0 0/0 .text            CreateHeap__13daObjLv4Brg_cFv */
int daObjLv4Brg_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 4);
    JUT_ASSERT(170, modelData != NULL);

    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    return 1;
}

/* 80C62A9C-80C62B20 00029C 0084+00 1/1 0/0 0/0 .text            create1st__13daObjLv4Brg_cFv */
int daObjLv4Brg_c::create1st() {
    int phase_state = dComIfG_resLoad(&mPhase, l_arcName);
    if (phase_state == cPhs_COMPLEATE_e) {
        phase_state = MoveBGCreate(l_arcName, 7, dBgS_MoveBGProc_TypicalRotY, 0x2260, NULL);
        if (phase_state == cPhs_ERROR_e) {
            return phase_state;
        }
    }

    return phase_state;
}

/* 80C62B20-80C62B6C 000320 004C+00 1/0 0/0 0/0 .text            Execute__13daObjLv4Brg_cFPPA3_A4_f
 */
int daObjLv4Brg_c::Execute(Mtx** param_0) {
    action();
    *param_0 = &mBgMtx;
    setBaseMtx();
    return 1;
}

/* 80C62B6C-80C62C28 00036C 00BC+00 1/1 0/0 0/0 .text            action__13daObjLv4Brg_cFv */
void daObjLv4Brg_c::action() {
    static void (daObjLv4Brg_c::*l_func[])() = {
        &daObjLv4Brg_c::mode_wait,
        &daObjLv4Brg_c::mode_move,
        &daObjLv4Brg_c::mode_dead,
    };

    (this->*l_func[mMode])();
    eventUpdate();
}

/* 80C62C28-80C62C34 000428 000C+00 1/1 0/0 0/0 .text            mode_init_wait__13daObjLv4Brg_cFv
 */
void daObjLv4Brg_c::mode_init_wait() {
    mMode = 0;
}

/* 80C62C34-80C62CE4 000434 00B0+00 1/0 0/0 0/0 .text            mode_wait__13daObjLv4Brg_cFv */
void daObjLv4Brg_c::mode_wait() {
    if (fopAcM_isSwitch(this, getSwbit())) {
        if (getEvID() != 0xFF) {
            orderEvent(getEvID(), 0xFF, 1);
            return;
        }

        dComIfGp_getVibration().StartQuake(4, 0xF, cXyz(0.0f, 1.0f, 0.0f));
        mode_init_move();
    }
}

/* 80C62CE4-80C62CFC 0004E4 0018+00 2/2 0/0 0/0 .text            mode_init_move__13daObjLv4Brg_cFv
 */
void daObjLv4Brg_c::mode_init_move() {
    speed.y = 0.0f;
    mMode = 1;
}

/* 80C62CFC-80C62E24 0004FC 0128+00 1/0 0/0 0/0 .text            mode_move__13daObjLv4Brg_cFv */
void daObjLv4Brg_c::mode_move() {
    mDoAud_seStartLevel(Z2SE_OBJ_DS_END_BRG, &field_0x5c4, 0, 0);
    cLib_chaseF(&speed.y, 20.0f, 2.0f);

    if (cLib_chaseF(&field_0x5bc, 2000.0f, speed.y)) {
        mDoAud_seStart(Z2SE_OBJ_DS_END_BRG_ST, &field_0x5c4, 0, 0);
        dComIfGp_getVibration().StopQuake(0x1F);
        dComIfGp_getVibration().StartShock(VIBMODE_S_POWER8, 0x1F, cXyz(0.0f, 1.0f, 0.0f));
        mode_init_dead();
    }
}

/* 80C62E24-80C62E30 000624 000C+00 2/2 0/0 0/0 .text            mode_init_dead__13daObjLv4Brg_cFv
 */
void daObjLv4Brg_c::mode_init_dead() {
    mMode = 2;
}

/* 80C62E30-80C62E34 000630 0004+00 1/0 0/0 0/0 .text            mode_dead__13daObjLv4Brg_cFv */
void daObjLv4Brg_c::mode_dead() {}

/* 80C62E34-80C62EA0 000634 006C+00 2/1 0/0 0/0 .text            eventStart__13daObjLv4Brg_cFv */
bool daObjLv4Brg_c::eventStart() {
    dComIfGp_getVibration().StartQuake(4, 0xF, cXyz(0.0f, 1.0f, 0.0f));
    mode_init_move();
    return true;
}

/* 80C62EA0-80C62F44 0006A0 00A4+00 1/0 0/0 0/0 .text            Draw__13daObjLv4Brg_cFv */
int daObjLv4Brg_c::Draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80C62F44-80C62F78 000744 0034+00 1/0 0/0 0/0 .text            Delete__13daObjLv4Brg_cFv */
int daObjLv4Brg_c::Delete() {
    dComIfG_resDelete(&mPhase, l_arcName);
    return 1;
}

/* 80C62F78-80C62FF8 000778 0080+00 1/0 0/0 0/0 .text daObjLv4Brg_create1st__FP13daObjLv4Brg_c */
static int daObjLv4Brg_create1st(daObjLv4Brg_c* i_this) {
    fopAcM_ct(i_this, daObjLv4Brg_c);
    return i_this->create1st();
}

/* 80C62FF8-80C63018 0007F8 0020+00 1/0 0/0 0/0 .text daObjLv4Brg_MoveBGDelete__FP13daObjLv4Brg_c
 */
static int daObjLv4Brg_MoveBGDelete(daObjLv4Brg_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80C63018-80C63038 000818 0020+00 1/0 0/0 0/0 .text daObjLv4Brg_MoveBGExecute__FP13daObjLv4Brg_c
 */
static int daObjLv4Brg_MoveBGExecute(daObjLv4Brg_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C63038-80C63064 000838 002C+00 1/0 0/0 0/0 .text daObjLv4Brg_MoveBGDraw__FP13daObjLv4Brg_c */
static int daObjLv4Brg_MoveBGDraw(daObjLv4Brg_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C63208-80C63228 -00001 0020+00 1/0 0/0 0/0 .data            daObjLv4Brg_METHODS */
static actor_method_class daObjLv4Brg_METHODS = {
    (process_method_func)daObjLv4Brg_create1st,
    (process_method_func)daObjLv4Brg_MoveBGDelete,
    (process_method_func)daObjLv4Brg_MoveBGExecute,
    0,
    (process_method_func)daObjLv4Brg_MoveBGDraw,
};

/* 80C63228-80C63258 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv4Bridge */
extern actor_process_profile_definition g_profile_Obj_Lv4Bridge = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Lv4Bridge,     // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjLv4Brg_c),  // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  581,                    // mPriority
  &daObjLv4Brg_METHODS,   // sub_method
  0x00044000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
