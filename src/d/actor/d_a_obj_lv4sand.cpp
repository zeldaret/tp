/**
 * @file d_a_obj_lv4sand.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_lv4sand.h"
#include "d/d_s_play.h"

/* 80C6A400-80C6A404 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "P_L4Sand";

/* 80C69A98-80C69AD4 000078 003C+00 1/1 0/0 0/0 .text            initBaseMtx__14daObjLv4Sand_cFv */
void daObjLv4Sand_c::initBaseMtx() {
    mpModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80C69AD4-80C69B50 0000B4 007C+00 2/2 0/0 0/0 .text            setBaseMtx__14daObjLv4Sand_cFv */
void daObjLv4Sand_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y + mHeight, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 80C69B50-80C69C28 000130 00D8+00 1/0 0/0 0/0 .text            Create__14daObjLv4Sand_cFv */
int daObjLv4Sand_c::Create() {
    if (fopAcM_isSwitch(this, getSwbit()) || dComIfGs_isStageBossEnemy() || BREG_S(9) != 0) {
        mHeight = -3500.0f;
        mode_init_dead();
        fopAcM_onSwitch(this, getSwbit());
    } else {
        mHeight = 0.0f;
        mode_init_wait();
    }

    initBaseMtx();
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    fopAcM_setCullSizeBox2(this, mpModel->getModelData());
    return 1;
}

/* 80C69C28-80C69D44 000208 011C+00 1/0 0/0 0/0 .text            CreateHeap__14daObjLv4Sand_cFv */
int daObjLv4Sand_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 5);
    JUT_ASSERT(167, modelData != NULL);
    mpModel = mDoExt_J3DModel__create(modelData, J3DMdlFlag_DifferedDLBuffer, J3D_DIFF_FLAG(FALSE, FALSE, TRUE, 8, 2, FALSE, 0, 0, TRUE, FALSE, FALSE, FALSE, TRUE, FALSE));
    if (mpModel == NULL) {
        return 0;
    }

    J3DAnmTextureSRTKey* pbtk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName, 8);
    JUT_ASSERT(181, pbtk != NULL);

    mpBtk = new mDoExt_btkAnm();
    if (mpBtk == NULL || !mpBtk->init(modelData, pbtk, TRUE, 2, 1.0f, 0, -1)) {
        return 0;
    }

    return 1;
}

/* 80C69D8C-80C69E10 00036C 0084+00 1/1 0/0 0/0 .text            create1st__14daObjLv4Sand_cFv */
int daObjLv4Sand_c::create1st() {
    int phase_state = dComIfG_resLoad(&mPhase, l_arcName);
    if (phase_state == cPhs_COMPLEATE_e) {
        phase_state = MoveBGCreate(l_arcName, 11, dBgS_MoveBGProc_TypicalRotY, 0x4000, NULL);
        if (phase_state == cPhs_ERROR_e) {
            return phase_state;
        }
    }

    return phase_state;
}

/* 80C69E10-80C69F18 0003F0 0108+00 1/0 0/0 0/0 .text            Execute__14daObjLv4Sand_cFPPA3_A4_f
 */
int daObjLv4Sand_c::Execute(Mtx** param_0) {
    action();
    *param_0 = &mBgMtx;

    if (fopAcM_isSwitch(this, 234)) {
        mpBtk->play();
        if (std::fabs(mHeight) < 3300.0f) {
            eyePos = current.pos;
            eyePos.y += mHeight;
            fopAcM_seStartLevel(this, Z2SE_ENV_DS_SAND, 0);
        }
    }

    setBaseMtx();
    return 1;
}

/* 80C69F18-80C69FBC 0004F8 00A4+00 1/1 0/0 0/0 .text            action__14daObjLv4Sand_cFv */
void daObjLv4Sand_c::action() {
    static void (daObjLv4Sand_c::*l_func[])() = {
        &daObjLv4Sand_c::mode_wait,
        &daObjLv4Sand_c::mode_move,
        &daObjLv4Sand_c::mode_dead,
    };

    (this->*l_func[mMode])();
}

/* 80C69FBC-80C69FC8 00059C 000C+00 1/1 0/0 0/0 .text            mode_init_wait__14daObjLv4Sand_cFv
 */
void daObjLv4Sand_c::mode_init_wait() {
    mMode = MODE_WAIT;
}

/* 80C69FC8-80C6A01C 0005A8 0054+00 1/0 0/0 0/0 .text            mode_wait__14daObjLv4Sand_cFv */
void daObjLv4Sand_c::mode_wait() {
    if (fopAcM_isSwitch(this, getSwbit())) {
        mode_init_move();
    }
}

/* 80C6A01C-80C6A034 0005FC 0018+00 2/2 0/0 0/0 .text            mode_init_move__14daObjLv4Sand_cFv
 */
void daObjLv4Sand_c::mode_init_move() {
    speed.y = 0.0f;
    mMode = MODE_MOVE;
}

/* 80C6A034-80C6A09C 000614 0068+00 1/0 0/0 0/0 .text            mode_move__14daObjLv4Sand_cFv */
void daObjLv4Sand_c::mode_move() {
    cLib_chaseF(&speed.y, 8.5f + KREG_F(1), 0.3f + KREG_F(2));
    if (cLib_chaseF(&mHeight, -3500.0f, speed.y)) {
        mode_init_dead();
    }
}

/* 80C6A09C-80C6A0A8 00067C 000C+00 2/2 0/0 0/0 .text            mode_init_dead__14daObjLv4Sand_cFv
 */
void daObjLv4Sand_c::mode_init_dead() {
    mMode = MODE_DEAD;
}

/* 80C6A0A8-80C6A0AC 000688 0004+00 1/0 0/0 0/0 .text            mode_dead__14daObjLv4Sand_cFv */
void daObjLv4Sand_c::mode_dead() {}

/* 80C6A0AC-80C6A0D0 00068C 0024+00 2/1 0/0 0/0 .text            eventStart__14daObjLv4Sand_cFv */
bool daObjLv4Sand_c::eventStart() {
    mode_init_move();
    return true;
}

/* 80C6A0D0-80C6A18C 0006B0 00BC+00 1/0 0/0 0/0 .text            Draw__14daObjLv4Sand_cFv */
int daObjLv4Sand_c::Draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    mpBtk->entry(mpModel->getModelData());

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80C6A18C-80C6A1C0 00076C 0034+00 1/0 0/0 0/0 .text            Delete__14daObjLv4Sand_cFv */
int daObjLv4Sand_c::Delete() {
    dComIfG_resDelete(&mPhase, l_arcName);
    return 1;
}

/* 80C6A1C0-80C6A240 0007A0 0080+00 1/0 0/0 0/0 .text daObjLv4Sand_create1st__FP14daObjLv4Sand_c
 */
static int daObjLv4Sand_create1st(daObjLv4Sand_c* i_this) {
    fopAcM_ct(i_this, daObjLv4Sand_c);
    return i_this->create1st();
}

/* 80C6A240-80C6A260 000820 0020+00 1/0 0/0 0/0 .text
 * daObjLv4Sand_MoveBGDelete__FP14daObjLv4Sand_c                */
static int daObjLv4Sand_MoveBGDelete(daObjLv4Sand_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80C6A260-80C6A280 000840 0020+00 1/0 0/0 0/0 .text
 * daObjLv4Sand_MoveBGExecute__FP14daObjLv4Sand_c               */
static int daObjLv4Sand_MoveBGExecute(daObjLv4Sand_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C6A280-80C6A2AC 000860 002C+00 1/0 0/0 0/0 .text daObjLv4Sand_MoveBGDraw__FP14daObjLv4Sand_c
 */
static int daObjLv4Sand_MoveBGDraw(daObjLv4Sand_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C6A44C-80C6A46C -00001 0020+00 1/0 0/0 0/0 .data            daObjLv4Sand_METHODS */
static actor_method_class daObjLv4Sand_METHODS = {
    (process_method_func)daObjLv4Sand_create1st,
    (process_method_func)daObjLv4Sand_MoveBGDelete,
    (process_method_func)daObjLv4Sand_MoveBGExecute,
    0,
    (process_method_func)daObjLv4Sand_MoveBGDraw,
};

/* 80C6A46C-80C6A49C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv4Sand */
extern actor_process_profile_definition g_profile_Obj_Lv4Sand = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Lv4Sand,       // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjLv4Sand_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  573,                    // mPriority
  &daObjLv4Sand_METHODS,  // sub_method
  0x00044100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
