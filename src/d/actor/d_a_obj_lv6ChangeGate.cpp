/**
 * @file d_a_obj_lv6ChangeGate.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_lv6ChangeGate.h"
#include "d/d_s_play.h"

class daLv6ChangeGate_HIO_c : public fOpAcm_HIO_entry_c {
public:
    /* 80C70C4C */ daLv6ChangeGate_HIO_c();
    /* 80C71EE8 */ virtual ~daLv6ChangeGate_HIO_c() {}

    void genMessage(JORMContext*);

    /* 0x4 */ f32 speed;
    /* 0x8 */ f32 move_amount;
    /* 0xC */ u8 unk_0xc;
};

/* 80C70C4C-80C70C94 0000EC 0048+00 1/1 0/0 0/0 .text            __ct__21daLv6ChangeGate_HIO_cFv */
daLv6ChangeGate_HIO_c::daLv6ChangeGate_HIO_c() {
    speed = 10.0f;
    move_amount = 562.5f;
    unk_0xc = 3;
}

/* 80C7238C-80C7239C 000014 0010+00 4/4 0/0 0/0 .bss             l_HIO */
static daLv6ChangeGate_HIO_c l_HIO;

/* 80C72154-80C72184 000008 0030+00 1/1 0/0 0/0 .rodata          mCcDObjInfo__17daLv6ChangeGate_c */
const dCcD_SrcGObjInf daLv6ChangeGate_c::mCcDObjInfo = {
    {0, {{0, 0, 0}, {0x400, 0x11}, {0x79}}},
    {dCcD_SE_SWORD, 0, 0, 0, 0},
    {dCcD_SE_STONE, 0, 0, 0, 0},
    {0},
};

/* 80C721CC-80C72210 000020 0044+00 2/2 0/0 0/0 .data            mCcDCyl__17daLv6ChangeGate_c */
dCcD_SrcCyl daLv6ChangeGate_c::mCcDCyl = {
    mCcDObjInfo,
    {{0.0f, 0.0f, 0.0f}, 0.0f, 0.0f}
};

/* 80C70D38-80C70DD4 0001D8 009C+00 2/2 0/0 0/0 .text            setBaseMtx__17daLv6ChangeGate_cFv
 */
void daLv6ChangeGate_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(0, shape_angle.y, shape_angle.z);
    mDoMtx_stack_c::transM(mMoveTransX, 0.0f, 0.0f);
    mpModel->setBaseScale(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80C70DD4-80C70E40 000274 006C+00 1/0 0/0 0/0 .text            CreateHeap__17daLv6ChangeGate_cFv
 */
int daLv6ChangeGate_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("L6ChBlk", 4);
    JUT_ASSERT(240, modelData != NULL);

    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    return 1;
}

/* 80C70E40-80C7106C 0002E0 022C+00 1/1 0/0 0/0 .text            create__17daLv6ChangeGate_cFv */
int daLv6ChangeGate_c::create() {
    fopAcM_ct(this, daLv6ChangeGate_c);

    if (getSw2() != 0xFF && fopAcM_isSwitch(this, getSw2())) {
        return cPhs_ERROR_e;
    }

    int phase_state = dComIfG_resLoad(&mPhase, "L6ChBlk");
    if (phase_state == cPhs_COMPLEATE_e) {
        if (MoveBGCreate("L6ChBlk", 7, dBgS_MoveBGProc_TypicalRotY, 0x1200, NULL) == cPhs_ERROR_e) {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel->getModelData());

        mCcStts.Init(0xFF, 0xFF, this);
        for (int i = 0; i < 12; i++) {
            mCcCyls[i].Set(mCcDCyl);
            mCcCyls[i].SetStts(&mCcStts);
        }

        mSwState = getSwState();
        if (mSwState == 0xF) {
            mSwState = 0;
        }

        mSwbit = getSw();
        mIsSwitch = isSwitch();
        mMoveTransX = 0.0f;

        if (mIsSwitch) {
            mMoveTransX = l_HIO.move_amount;
        } else {
            init_modeWait();
        }

        setBaseMtx();
    }

    return phase_state;
}

/* 80C712A8-80C712F4 000748 004C+00 2/2 0/0 0/0 .text            isSwitch__17daLv6ChangeGate_cFv */
u8 daLv6ChangeGate_c::isSwitch() {
    return mSwState ^ fopAcM_isSwitch(this, mSwbit);
}

/* 80C712F4-80C71494 000794 01A0+00 1/0 0/0 0/0 .text Execute__17daLv6ChangeGate_cFPPA3_A4_f */
int daLv6ChangeGate_c::Execute(Mtx** param_0) {
    eventUpdate();
    moveGate();

    for (int i = 0; i < 12; i++) {
        if (mCcCyls[i].ChkTgHit()) {
            dCcD_GObjInf* gobj = mCcCyls[i].GetTgHitGObj();
            if (gobj->GetAtType() & AT_TYPE_CSTATUE_SWING) {
                init_modeBreak();
                break;
            }
        }
    }

    f32 cyl_x_offset = -250.0f;

    for (int i = 0; i < 12; i++) {
        cXyz spC(cyl_x_offset + mMoveTransX, 0.0f, 0.0f);
        mDoMtx_stack_c::ZXYrotS(NULL, shape_angle.y, shape_angle.z);
        mDoMtx_stack_c::multVec(&spC, &spC);
        spC += current.pos;

        mCcCyls[i].SetR(65.0f + oREG_F(0));
        mCcCyls[i].SetH(330.0f + oREG_F(1));
        mCcCyls[i].SetC(spC);
        dComIfG_Ccsp()->Set(&mCcCyls[i]);

        cyl_x_offset += 60.0f;
    }

    *param_0 = &mpModel->getBaseTRMtx();
    setBaseMtx();
    return 1;
}

/* 80C71494-80C715BC 000934 0128+00 1/1 0/0 0/0 .text            moveGate__17daLv6ChangeGate_cFv */
void daLv6ChangeGate_c::moveGate() {
    static void (daLv6ChangeGate_c::*mode_proc[])() = {
        &daLv6ChangeGate_c::modeWait,
        &daLv6ChangeGate_c::modeSlideRight,
        &daLv6ChangeGate_c::modeSlideLeft,
        &daLv6ChangeGate_c::modeBreak,
    };

    u8 prev_sw = mIsSwitch;
    mIsSwitch = isSwitch();

    if (mIsSwitch != prev_sw) {
        if (getEventID() != 0xFF) {
            orderEvent(getEventID(), 0xFF, 1);
        } else {
            eventStart();
        }
    }

    (this->*mode_proc[mMode])();
}

/* 80C715BC-80C715F4 000A5C 0038+00 2/1 0/0 0/0 .text            eventStart__17daLv6ChangeGate_cFv
 */
bool daLv6ChangeGate_c::eventStart() {
    if (mIsSwitch) {
        init_modeSlideRight();
    } else {
        init_modeSlideLeft();
    }

    return true;
}

/* 80C715F4-80C71600 000A94 000C+00 3/3 0/0 0/0 .text init_modeWait__17daLv6ChangeGate_cFv */
void daLv6ChangeGate_c::init_modeWait() {
    mMode = 0;
}

/* 80C71600-80C71604 000AA0 0004+00 1/0 0/0 0/0 .text            modeWait__17daLv6ChangeGate_cFv */
void daLv6ChangeGate_c::modeWait() {}

/* 80C71604-80C716B4 000AA4 00B0+00 1/1 0/0 0/0 .text init_modeSlideRight__17daLv6ChangeGate_cFv
 */
void daLv6ChangeGate_c::init_modeSlideRight() {
   mTimer = getWaitTime();
    if (mTimer == 0xFF) {
        mTimer = 0;
    }

    if (mTimer == 0) {
        mDoAud_seStart(Z2SE_OBJ_L6_SW_GATE_ON, &current.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    }

    mMode = 1;
}

/* 80C716B4-80C7183C 000B54 0188+00 1/0 0/0 0/0 .text modeSlideRight__17daLv6ChangeGate_cFv */
void daLv6ChangeGate_c::modeSlideRight() {
    if (mTimer != 0) {
        mTimer--;
        if (mTimer == 0) {
            mDoAud_seStart(Z2SE_OBJ_L6_SW_GATE_ON, &current.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
        }
        return;
    }

    f32 dist_to_target = cLib_addCalc(&mMoveTransX, l_HIO.move_amount, 0.1f, l_HIO.speed, 1.0f);
    mDoAud_seStartLevel(Z2SE_OBJ_L6_SW_GATE_MV, &current.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

    if (0.0f == dist_to_target) {
        mDoAud_seStart(Z2SE_OBJ_L6_SW_GATE_OFF, &current.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
        init_modeWait();
    }
}

/* 80C7183C-80C718EC 000CDC 00B0+00 1/1 0/0 0/0 .text init_modeSlideLeft__17daLv6ChangeGate_cFv */
void daLv6ChangeGate_c::init_modeSlideLeft() {
    mTimer = getWaitTime();
    if (mTimer == 0xFF) {
        mTimer = 0;
    }

    if (mTimer == 0) {
        mDoAud_seStart(Z2SE_OBJ_L6_SW_GATE_ON, &current.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    }

    mMode = 2;
}

/* 80C718EC-80C71A74 000D8C 0188+00 1/0 0/0 0/0 .text modeSlideLeft__17daLv6ChangeGate_cFv */
void daLv6ChangeGate_c::modeSlideLeft() {
    if (mTimer != 0) {
        mTimer--;
        if (mTimer == 0) {
            mDoAud_seStart(Z2SE_OBJ_L6_SW_GATE_ON, &current.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
        }
        return;
    }

    f32 dist_to_target = cLib_addCalc(&mMoveTransX, 0.0f, 0.1f, l_HIO.speed, 1.0f);
    mDoAud_seStartLevel(Z2SE_OBJ_L6_SW_GATE_MV, &current.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

    if (0.0f == dist_to_target) {
        mDoAud_seStart(Z2SE_OBJ_L6_SW_GATE_OFF, &current.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
        init_modeWait();
    }
}

/* 80C71A74-80C71AF8 000F14 0084+00 1/1 0/0 0/0 .text init_modeBreak__17daLv6ChangeGate_cFv */
void daLv6ChangeGate_c::init_modeBreak() {
    mDoAud_seStart(Z2SE_OBJ_TRAP_BREAK_STN, &current.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    mMode = 3;
}

/* 80C71AF8-80C71D40 000F98 0248+00 1/0 0/0 0/0 .text            modeBreak__17daLv6ChangeGate_cFv */
void daLv6ChangeGate_c::modeBreak() {
    cXyz effpos(mMoveTransX, 0.0f, 0.0f);
    mDoMtx_stack_c::ZXYrotS(NULL, shape_angle.y, shape_angle.z);
    mDoMtx_stack_c::multVec(&effpos, &effpos);
    effpos += current.pos;

    csXyz effrot(shape_angle);
    effrot.x = 0;

    dComIfGp_particle_set(dPa_RM(ID_ZI_S_LV6CHBLK_BREAK_A), &effpos, &effrot, NULL);
    dComIfGp_particle_set(dPa_RM(ID_ZI_S_LV6CHBLK_BREAK_B), &effpos, &effrot, NULL);
    dComIfGp_particle_set(dPa_RM(ID_ZI_S_LV6CHBLK_BREAK_C), &effpos, &effrot, NULL);
    dComIfGp_particle_set(dPa_RM(ID_ZI_S_LV6CHBLK_BREAK_D), &effpos, &effrot, NULL);
    dComIfGp_particle_set(dPa_RM(ID_ZI_S_LV6CHBLK_BREAK_E), &effpos, &effrot, NULL);

    if (getSw2() != 0xFF) {
        fopAcM_onSwitch(this, getSw2());
    }

    fopAcM_delete(this);
}

/* 80C71D40-80C71DE4 0011E0 00A4+00 1/0 0/0 0/0 .text            Draw__17daLv6ChangeGate_cFv */
int daLv6ChangeGate_c::Draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80C71DE4-80C71E14 001284 0030+00 1/0 0/0 0/0 .text            Delete__17daLv6ChangeGate_cFv */
int daLv6ChangeGate_c::Delete() {
    dComIfG_resDelete(&mPhase, "L6ChBlk");
    return 1;
}

/* 80C71E14-80C71E40 0012B4 002C+00 1/0 0/0 0/0 .text daLv6ChangeGate_Draw__FP17daLv6ChangeGate_c
 */
static int daLv6ChangeGate_Draw(daLv6ChangeGate_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C71E40-80C71E60 0012E0 0020+00 1/0 0/0 0/0 .text
 * daLv6ChangeGate_Execute__FP17daLv6ChangeGate_c               */
static int daLv6ChangeGate_Execute(daLv6ChangeGate_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C71E60-80C71E80 001300 0020+00 1/0 0/0 0/0 .text
 * daLv6ChangeGate_Delete__FP17daLv6ChangeGate_c                */
static int daLv6ChangeGate_Delete(daLv6ChangeGate_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80C71E80-80C71EA0 001320 0020+00 1/0 0/0 0/0 .text daLv6ChangeGate_Create__FP10fopAc_ac_c */
static int daLv6ChangeGate_Create(fopAc_ac_c* i_this) {
    return ((daLv6ChangeGate_c*)i_this)->create();
}

/* 80C72270-80C72290 -00001 0020+00 1/0 0/0 0/0 .data            l_daLv6ChangeGate_Method */
static actor_method_class l_daLv6ChangeGate_Method = {
    (process_method_func)daLv6ChangeGate_Create,
    (process_method_func)daLv6ChangeGate_Delete,
    (process_method_func)daLv6ChangeGate_Execute,
    (process_method_func)NULL,
    (process_method_func)daLv6ChangeGate_Draw,
};

/* 80C72290-80C722C0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv6ChgGate */
extern actor_process_profile_definition g_profile_Obj_Lv6ChgGate = {
  fpcLy_CURRENT_e,           // mLayerID
  3,                         // mListID
  fpcPi_CURRENT_e,           // mListPrio
  PROC_Obj_Lv6ChgGate,       // mProcName
  &g_fpcLf_Method.base,     // sub_method
  sizeof(daLv6ChangeGate_c), // mSize
  0,                         // mSizeOther
  0,                         // mParameters
  &g_fopAc_Method.base,      // sub_method
  626,                       // mPriority
  &l_daLv6ChangeGate_Method, // sub_method
  0x00040000,                // mStatus
  fopAc_ACTOR_e,             // mActorType
  fopAc_CULLBOX_CUSTOM_e,    // cullType
};
