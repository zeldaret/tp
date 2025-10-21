/**
 * @file d_a_obj_lv4RailWall.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_lv4RailWall.h"
#include "d/actor/d_a_obj_swspinner.h"
#include "d/actor/d_a_b_ds.h"
#include "d/d_s_play.h"

/* 80C61BDC-80C61BE0 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "P_L4Rwall";

/* 80C60A78-80C60AC4 000078 004C+00 2/2 0/0 0/0 .text            s_BossSearch__FPvPv */
static void* s_BossSearch(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_B_DS) {
        return i_actor;
    }

    return NULL;
}

/* 80C60AC4-80C60B00 0000C4 003C+00 1/1 0/0 0/0 .text            initBaseMtx__14daObjLv4Wall_cFv */
void daObjLv4Wall_c::initBaseMtx() {
    mpModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80C60B00-80C60B7C 000100 007C+00 2/2 0/0 0/0 .text            setBaseMtx__14daObjLv4Wall_cFv */
void daObjLv4Wall_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y + mHeight, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 80C60B7C-80C60CD0 00017C 0154+00 1/0 0/0 0/0 .text            Create__14daObjLv4Wall_cFv */
int daObjLv4Wall_c::Create() {
    if (fopAcM_isSwitch(this, getSwbit()) || dComIfGs_isStageBossEnemy() || BREG_S(9) != 0) {
        mHeight = 3375.0f;
        mode_init_dead();
        fopAcM_onSwitch(this, getSwbit());
    } else {
        mHeight = 0.0f;
        mode_init_wait();
    }

    initBaseMtx();
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    fopAcM_setCullSizeBox2(this, mpModel->getModelData());

    cXyz swpos(current.pos);
    swpos.y -= 1700.0f;

    fopAcM_createChild(PROC_Obj_SwSpinner, fopAcM_GetID(this), getSwbit() << 8, &swpos, fopAcM_GetRoomNo(this), NULL, NULL, -1, NULL);
    mpSwSpinner = NULL;
    return 1;
}

/* 80C60CD0-80C60D40 0002D0 0070+00 1/0 0/0 0/0 .text            CreateHeap__14daObjLv4Wall_cFv */
int daObjLv4Wall_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 4);
    JUT_ASSERT(217, modelData != NULL);
    mpModel = mDoExt_J3DModel__create(modelData, J3DMdlFlag_DifferedDLBuffer, BMD_DEFAULT_DIFF_FLAGS);
    if (mpModel == NULL) {
        return 0;
    }

    return 1;
}

/* 80C60D40-80C60DC4 000340 0084+00 1/1 0/0 0/0 .text            create1st__14daObjLv4Wall_cFv */
int daObjLv4Wall_c::create1st() {
    int phase_state = dComIfG_resLoad(&mPhase, l_arcName);
    if (phase_state == cPhs_COMPLEATE_e) {
        phase_state = MoveBGCreate(l_arcName, 7, dBgS_MoveBGProc_TypicalRotY, 0x7350, NULL);
        if (phase_state == cPhs_ERROR_e) {
            return phase_state;
        }
    }

    return phase_state;
}

/* 80C60DC4-80C60E90 0003C4 00CC+00 1/0 0/0 0/0 .text            Execute__14daObjLv4Wall_cFPPA3_A4_f
 */
int daObjLv4Wall_c::Execute(Mtx** param_0) {
    if (mpSwSpinner == NULL) {
        mpSwSpinner = (daObjSwSpinner_c*)fopAcM_SearchByName(PROC_Obj_SwSpinner);
    }

    if (mpSwSpinner == NULL) {
        return 1;
    }

    action();

    cXyz swpos(current.pos);
    swpos.y += mHeight - 1700.0f;

    fopAcM_SetPosition(mpSwSpinner, swpos.x, swpos.y, swpos.z);
    *param_0 = &mBgMtx;
    setBaseMtx();
    return 1;
}

/* 80C60E90-80C60F4C 000490 00BC+00 1/1 0/0 0/0 .text            action__14daObjLv4Wall_cFv */
void daObjLv4Wall_c::action() {
    static void (daObjLv4Wall_c::*l_func[])() = {
        &daObjLv4Wall_c::mode_wait,
        &daObjLv4Wall_c::mode_move,
        &daObjLv4Wall_c::mode_dead,
    };

    (this->*l_func[mMode])();
    eventUpdate();
}

/* 80C60F4C-80C60F58 00054C 000C+00 1/1 0/0 0/0 .text            mode_init_wait__14daObjLv4Wall_cFv
 */
void daObjLv4Wall_c::mode_init_wait() {
    mMode = MODE_WAIT;
}

/* 80C60F58-80C61004 000558 00AC+00 1/0 0/0 0/0 .text            mode_wait__14daObjLv4Wall_cFv */
void daObjLv4Wall_c::mode_wait() {
    if ((mpSwSpinner->GetRotSpeedY() / 4096.0f) > 0.7f) {
        mRotCounter++;
        if (mRotCounter > 100) {
            mode_init_move();

            daB_DS_c* boss = (daB_DS_c*)fpcM_Search(s_BossSearch, this);
            boss->onDemo();
            return;
        }
    } else {
        mRotCounter = 0;
    }
}

/* 80C61004-80C61068 000604 0064+00 2/2 0/0 0/0 .text            mode_init_move__14daObjLv4Wall_cFv
 */
void daObjLv4Wall_c::mode_init_move() {
    fopAcM_onSwitch(this, getSwbit());
    speed.y = 0.0f;
    gravity = 0.0f;
    mMoveCounter = 0;
    mMode = MODE_MOVE;
}

/* 80C61068-80C613C0 000668 0358+00 1/0 0/0 0/0 .text            mode_move__14daObjLv4Wall_cFv */
void daObjLv4Wall_c::mode_move() {
    static const f32 l_spd_tbl[] = {
        0.0f,
        1.0f,
        1.5f,
        2.2f,
        3.7f,
        6.0f,
        10.0f,
        14.0f,
        17.0f,
        17.0f,
        15.0f,
        12.5f,
        9.5f,
        6.0f,
        3.0f,
        3.0f,
        3.0f
    };

    mMoveCounter++;
    f32 prev_speed = speed.y;

    u32 spd_chkpoint = mMoveCounter / 30;
    if (spd_chkpoint > 15) {
        spd_chkpoint = 15;
    }

    cLib_chaseF(&speed.y, l_spd_tbl[spd_chkpoint + 1], (l_spd_tbl[spd_chkpoint + 1] - l_spd_tbl[spd_chkpoint]) / 30.0f);
    BOOL is_target_height = cLib_chaseF(&mHeight, 3375.0f, speed.y);

    if (mMoveCounter == 5) {
        dComIfGp_getVibration().StartQuake(2, 0xF, cXyz(0.0f, 1.0f, 0.0f));
    } else if (mMoveCounter > 5) {
        if (prev_speed < 4.0f && speed.y >= 4.0f) {
            dComIfGp_getVibration().StartQuake(4, 0xF, cXyz(0.0f, 1.0f, 0.0f));
        } else if (prev_speed < 10.0f && speed.y >= 10.0f) {
            dComIfGp_getVibration().StartQuake(8, 0xF, cXyz(0.0f, 1.0f, 0.0f));
        } else if (prev_speed > 10.0f && speed.y <= 10.0f) {
            dComIfGp_getVibration().StartQuake(4, 0xF, cXyz(0.0f, 1.0f, 0.0f));
        } else if (prev_speed > 4.0f && speed.y <= 4.0f) {
            dComIfGp_getVibration().StartQuake(2, 0xF, cXyz(0.0f, 1.0f, 0.0f));
        }
    }

    if (is_target_height) {
        daB_DS_c* boss = (daB_DS_c*)fpcM_Search(s_BossSearch, this);
        boss->offDemo();

        fopAcM_seStart(this, Z2SE_OBJ_DS_CLMN_UP_ST, 0);
        dComIfGp_getVibration().StopQuake(0x1F);
        dComIfGp_getVibration().StartShock(8, 0x1F, cXyz(0.0f, 1.0f, 0.0f));
        mode_init_dead();
        return;
    }

    eyePos = current.pos;
    eyePos.y += mHeight;
    fopAcM_seStartLevel(this, Z2SE_OBJ_DS_CLMN_UP, 0);
}

/* 80C613C0-80C613CC 0009C0 000C+00 2/2 0/0 0/0 .text            mode_init_dead__14daObjLv4Wall_cFv
 */
void daObjLv4Wall_c::mode_init_dead() {
    mMode = MODE_DEAD;
}

/* 80C613CC-80C613D0 0009CC 0004+00 1/0 0/0 0/0 .text            mode_dead__14daObjLv4Wall_cFv */
void daObjLv4Wall_c::mode_dead() {}

/* 80C613D0-80C6143C 0009D0 006C+00 2/1 0/0 0/0 .text            eventStart__14daObjLv4Wall_cFv */
bool daObjLv4Wall_c::eventStart() {
    dComIfGp_getVibration().StartQuake(4, 0xF, cXyz(0.0f, 1.0f, 0.0f));
    mode_init_move();
    return 1;
}

/* 80C6143C-80C614E0 000A3C 00A4+00 1/0 0/0 0/0 .text            Draw__14daObjLv4Wall_cFv */
int daObjLv4Wall_c::Draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80C614E0-80C61514 000AE0 0034+00 1/0 0/0 0/0 .text            Delete__14daObjLv4Wall_cFv */
int daObjLv4Wall_c::Delete() {
    dComIfG_resDelete(&mPhase, l_arcName);
    return 1;
}

/* 80C61514-80C61660 000B14 014C+00 1/0 0/0 0/0 .text daObjLv4Wall_create1st__FP14daObjLv4Wall_c
 */
static int daObjLv4Wall_create1st(daObjLv4Wall_c* i_this) {
    fopAcM_ct(i_this, daObjLv4Wall_c);
    return i_this->create1st();
}

/* 80C6182C-80C6184C 000E2C 0020+00 1/0 0/0 0/0 .text
 * daObjLv4Wall_MoveBGDelete__FP14daObjLv4Wall_c                */
static int daObjLv4Wall_MoveBGDelete(daObjLv4Wall_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80C6184C-80C6186C 000E4C 0020+00 1/0 0/0 0/0 .text
 * daObjLv4Wall_MoveBGExecute__FP14daObjLv4Wall_c               */
static int daObjLv4Wall_MoveBGExecute(daObjLv4Wall_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C6186C-80C61898 000E6C 002C+00 1/0 0/0 0/0 .text daObjLv4Wall_MoveBGDraw__FP14daObjLv4Wall_c
 */
static int daObjLv4Wall_MoveBGDraw(daObjLv4Wall_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C61C28-80C61C48 -00001 0020+00 1/0 0/0 0/0 .data            daObjLv4Wall_METHODS */
static actor_method_class daObjLv4Wall_METHODS = {
    (process_method_func)daObjLv4Wall_create1st,
    (process_method_func)daObjLv4Wall_MoveBGDelete,
    (process_method_func)daObjLv4Wall_MoveBGExecute,
    0,
    (process_method_func)daObjLv4Wall_MoveBGDraw,
};

/* 80C61C48-80C61C78 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv4RailWall */
extern actor_process_profile_definition g_profile_Obj_Lv4RailWall = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Lv4RailWall,   // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjLv4Wall_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  574,                    // mPriority
  &daObjLv4Wall_METHODS,  // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
