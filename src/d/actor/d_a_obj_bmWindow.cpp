//
// Bm Window
//

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_bmWindow.h"
#include "d/d_com_inf_game.h"
#include "d/actor/d_a_player.h"
#include "d/d_bg_w.h"
#include "SSystem/SComponent/c_math.h"

/* 80BB820C-80BB82AC 0000EC 00A0+00 1/1 0/0 0/0 .text            __ct__16daBmWindow_HIO_cFv */
daBmWindow_HIO_c::daBmWindow_HIO_c() {
    field_0x04 = 10;
    field_0x05 = 3;
    field_0x0c = 90.0f;
    field_0x10 = 45.0f;
    field_0x08 = 100.0f;
    field_0x14 = 0.05f;
    field_0x18 = 5.0f;
    field_0x1c = 0.1f;
    field_0x20 = 90.0f;
    field_0x24 = 45.0f;
    field_0x28 = 3.0f;
    field_0x2c = 0.01f;
    field_0x30 = 5.0f;
    field_0x34 = 1.0f;
    field_0x38 = 60;
    field_0x39 = 3;
}

/* 80BB8350-80BB8400 000230 00B0+00 2/2 0/0 0/0 .text            setBaseMtx__12daBmWindow_cFv */
void daBmWindow_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mDoMtx_stack_c::ZXYrotM(field_0xe98.x, field_0xe98.y, field_0xe98.z);
    mDoMtx_stack_c::transM(field_0xeb8.x, field_0xeb8.y, field_0xeb8.z);
    mModel->setBaseScale(scale);
    mModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80BB8400-80BB846C 0002E0 006C+00 1/0 0/0 0/0 .text            CreateHeap__12daBmWindow_cFv */
int daBmWindow_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("H_Window", 4);
    JUT_ASSERT(285, modelData != 0);
    mModel = mDoExt_J3DModel__create(modelData, 0, 0x11000084);
    return mModel != NULL ? 1 : 0;
}

/* ############################################################################################## */
/* 80BB9760-80BB9790 000024 0030+00 1/1 0/0 0/0 .rodata          mCcDObjInfo__12daBmWindow_c */
dCcD_SrcGObjInf const daBmWindow_c::mCcDObjInfo = {
    {0, {{0, 0, 0}, {0xd8fafdbf, 0x11}, {0}}},
    {1, 0, 0, 0, 0},
    {0xa, 0, 0, 0, 0xa6},
    {0},
};

/* 80BB9790-80BB97C0 000054 0030+00 0/1 0/0 0/0 .rodata          l_check_area */
static Vec const l_check_area[4] = {
    {-100.0f, -50.0f, -200.0f},
    {-100.0f, 290.0f, -200.0f},
    {100.0f, 290.0f, 200.0f},
    {100.0f, -50.0f, 200.0f},
};

/* 80BB846C-80BB869C 00034C 0230+00 1/1 0/0 0/0 .text            create__12daBmWindow_cFv */
int daBmWindow_c::create() {
    fopAcM_SetupActor(this, daBmWindow_c);
    if (fopAcM_isSwitch(this, (u8)fopAcM_GetParam(this))) {
        return cPhs_ERROR_e;
    }
    int rv = dComIfG_resLoad(&mPhase, "H_Window");
    if (rv == cPhs_COMPLEATE_e) {
        int movert = MoveBGCreate("H_Window", 7,
            dBgS_MoveBGProc_TypicalRotY, 0x1d20, NULL);
        if (movert == cPhs_ERROR_e) {
            return 5;
        } 
        fopAcM_SetMtx(this, mModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mModel->getModelData());
        field_0xe98.x = 0;
        field_0xe98.y = 0;
        field_0xe98.z = 0;
        field_0xea0 = 0.0f;
        field_0xeb8.x = 0.0f;
        field_0xeb8.y = 0.0f;
        field_0xeb8.z = 0.0f;
        field_0xecc = 0.0f;
        field_0xea8 = 0.0f;
        field_0xea4 = 0.0f;
        field_0xeac = 0.0f;
        field_0xeb0 = 0.0f;
        field_0xeb4 = 0.0f;
        field_0xec4 = 0.0f;
        field_0xec8 = 0.0f;
        field_0xed0 = 0.0f;
        field_0xed4 = 0.0f;
        field_0xed8 = 0.0f;
        
        field_0xe94 = 0;
        field_0xe91 = 0;
        field_0xedc = 0;
        field_0x5b0.Init(0xff, 1, this);
        for (int i = 0; i < 7; i = i + 1) {
            field_0x5ec[i].Set(mCcDCyl);
            field_0x5ec[i].SetStts(&field_0x5b0);
        }
        field_0xe90 = (fopAcM_GetParam(this) >> 8) & 0xff;
        if (field_0xe90 != 1) {
            init_modeWait();
        } else {
            init_modeBreakEff();
        }
        field_0xede = 0;
        setBaseMtx();
    }
    return rv;
}

/* 80BB88D8-80BB8930 0007B8 0058+00 1/0 0/0 0/0 .text            Execute__12daBmWindow_cFPPA3_A4_f
 */
int daBmWindow_c::Execute(Mtx** param_1) {
    windowProc();
    *param_1 = &mModel->getBaseTRMtx();
    field_0x5b0.Move();
    setBaseMtx();
    return 1;
}

/* 80BB999C-80BB99D8 000014 003C+00 3/3 0/0 0/0 .bss             l_HIO */
static daBmWindow_HIO_c l_HIO;

/* 80BB982C-80BB9870 000020 0044+00 2/2 0/0 0/0 .data            mCcDCyl__12daBmWindow_c */
dCcD_SrcCyl daBmWindow_c::mCcDCyl = {
    daBmWindow_c::mCcDObjInfo,
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        0.0f, // mRadius
        0.0f, // mHeight
    } // mCyl
};

/* 80BB8930-80BB8B3C 000810 020C+00 1/1 0/0 0/0 .text            windowProc__12daBmWindow_cFv */
void daBmWindow_c::windowProc() {
    typedef void (daBmWindow_c::*modeFunc)();
    static modeFunc mode_proc[3] = {&daBmWindow_c::modeWait, &daBmWindow_c::modeBreak,
                             &daBmWindow_c::modeBreakEff};
    (this->*mode_proc[mMode])();
    field_0xe98.z = (field_0xea0 * cM_scos(field_0xe94 * cM_deg2s(field_0xea8)));
    field_0xe98.y = (field_0xea0 * cM_ssin((field_0xe94 * cM_deg2s(field_0xea4))));
    cLib_addCalc(&field_0xea0, 0.0f, field_0xeac, field_0xeb0, field_0xeb4);
    field_0xeb8.x = (field_0xecc * cM_scos((field_0xe94 * cM_deg2s(field_0xec4))));
    field_0xeb8.y = (field_0xecc * cM_ssin((field_0xe94 * cM_deg2s(field_0xec8))));
    cLib_addCalc(&field_0xecc, 0.0f, field_0xed0, field_0xed4, field_0xed8);
    field_0xe94++;
}

/* 80BB8B3C-80BB8B48 000A1C 000C+00 1/1 0/0 0/0 .text            init_modeWait__12daBmWindow_cFv */
void daBmWindow_c::init_modeWait() {
    mMode = WAIT;
}

/* 80BB8B48-80BB8FDC 000A28 0494+00 1/0 0/0 0/0 .text            modeWait__12daBmWindow_cFv */
void daBmWindow_c::modeWait() {
    daPy_py_c* player = (daPy_py_c*)g_dComIfG_gameInfo.play.getPlayerPtr(LINK_PTR);
    cXyz cStack_2c;
    cXyz cStack_38;
    cStack_2c = l_check_area[0];
    cStack_38 = l_check_area[2];
    if (player->checkWolfDashAutoJump() || player->checkWolfDash() || player->checkFrontRoll())
    {
        if (checkActorInRectangle(player, &cStack_2c, &cStack_38)) {
            init_modeBreak();
        }
    }
    if (player->checkAutoJump()) {
        if (checkActorInRectangle(player, &cStack_2c, &cStack_38)) {
            if (daPy_py_c::checkNowWolf()) {
                if (field_0xede == 0) {
                    cXyz soundPos(current.pos);
                    soundPos.z -= 200.0f;
                    mDoAud_seStart(Z2SE_OBJ_MADO_NOT_BREAK, &soundPos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
                    field_0xede = 1;
                }
            } else {
                init_modeBreak();
            }
        }
    } else {
        field_0xede = 0;
    }
    for (int i = 0; i < 7; i++) {
        if (field_0x5ec[i].ChkTgHit()) {
            init_modeBreak();
            break;
        }
    }

    if (field_0xedc == 0) {
        field_0xea0 = l_HIO.field_0x08;
        field_0xea8 = l_HIO.field_0x10;
        field_0xea4 = l_HIO.field_0x0c;
        field_0xeac = l_HIO.field_0x14;
        field_0xeb0 = l_HIO.field_0x18;
        field_0xeb4 = l_HIO.field_0x1c;
        field_0xecc = l_HIO.field_0x28;
        field_0xec4 = l_HIO.field_0x20;
        field_0xec8 = l_HIO.field_0x24;
        field_0xed0 = l_HIO.field_0x2c;
        field_0xed4 = l_HIO.field_0x30;
        field_0xed8 = l_HIO.field_0x34;
        int rnd = (cM_rndF(l_HIO.field_0x39 / 10.0f) * 10.0f) * 30.0f;
        field_0xedc = l_HIO.field_0x38 + rnd;
        cXyz soundPos(current.pos);
        soundPos.z -= 200.0f;
        mDoAud_seStart(Z2SE_OBJ_MADO_YURE, &soundPos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    }
    if (field_0xedc != 0) {
        field_0xedc--;
    }
    for (int i = 0; i < 7; i++) {
        cXyz local_5c(0.0f, 0.0f, 0.0f);
        local_5c.x = i * 43.0f - 128.0f;
        mDoMtx_stack_c::ZXYrotS(shape_angle.x, shape_angle.y, shape_angle.z);
        mDoMtx_stack_c::multVec(&local_5c, &local_5c);
        cXyz cStack_68(current.pos);
        cStack_68 += local_5c;
        field_0x5ec[i].SetR(30.0f);
        field_0x5ec[i].SetH(300.0f);
        field_0x5ec[i].SetC(cStack_68);
        dComIfG_Ccsp()->Set(&field_0x5ec[i]);
        field_0x5ec[i].ClrTgHit();
    }
}

/* 80BB8FDC-80BB90E0 000EBC 0104+00 1/1 0/0 0/0 .text
 * checkActorInRectangle__12daBmWindow_cFP10fopAc_ac_cPC4cXyzPC4cXyz */
int daBmWindow_c::checkActorInRectangle(fopAc_ac_c* i_actor, cXyz const* i_topLeft,
                                        cXyz const* i_bottomRight) {
    cXyz actorDist = i_actor->current.pos - current.pos;
    mDoMtx_stack_c::YrotS(-current.angle.y);
    mDoMtx_stack_c::multVec(&actorDist, &actorDist);
    if (i_topLeft->x <= actorDist.x && actorDist.x <= i_bottomRight->x &&
        i_topLeft->y <= actorDist.y && actorDist.y <= i_bottomRight->y &&
        i_topLeft->z <= actorDist.z && actorDist.z <= i_bottomRight->z)
    {
        return 1;
    } else {
        return 0;
    }
}

/* 80BB90E0-80BB920C 000FC0 012C+00 1/1 0/0 0/0 .text            init_modeBreak__12daBmWindow_cFv */
void daBmWindow_c::init_modeBreak() {
    if (mpBgW != NULL) {
        dComIfG_Bgsp().Release(mpBgW);
    }
    setBreakEffect(0);
    dComIfGp_getVibration().StartShock(l_HIO.field_0x05, 0xf, cXyz(0.0f, 1.0f, 0.0f));
    cXyz soundPos(current.pos);
    soundPos.z -= 200.0f;
    mDoAud_seStart(Z2SE_OBJ_GLASSWINDOW_BREAK, &soundPos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    fopAcM_onSwitch(this, fopAcM_GetParam(this) & 0xff);
    mMode = BREAK;
}

/* 80BB920C-80BB922C 0010EC 0020+00 1/0 0/0 0/0 .text            modeBreak__12daBmWindow_cFv */
void daBmWindow_c::modeBreak() {
    fopAcM_delete(this);
}

/* 80BB922C-80BB9304 00110C 00D8+00 1/1 0/0 0/0 .text            init_modeBreakEff__12daBmWindow_cFv
 */
void daBmWindow_c::init_modeBreakEff() {
    cXyz soundPos(current.pos);
    soundPos.z -= 200.0f;
    mDoAud_seStart(Z2SE_OBJ_MADO_BREAK_PRPR, &soundPos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    setBreakEffect(1);
    fopAcM_onSwitch(this, fopAcM_GetParam(this) & 0xff);
    mMode = BREAK_EFF;
}

/* 80BB9304-80BB9324 0011E4 0020+00 1/0 0/0 0/0 .text            modeBreakEff__12daBmWindow_cFv */
void daBmWindow_c::modeBreakEff() {
    fopAcM_delete(this);
}

/* ############################################################################################## */
/* 80BB97F4-80BB9800 0000B8 000C+00 0/1 0/0 0/0 .rodata          particle_id$4102 */
static u16 const particle_id[6] = {
    0x8506, 0x8507, 0x8508, 0x8509, 0x850A, 0x850B,
};

/* 80BB9324-80BB9494 001204 0170+00 2/2 0/0 0/0 .text            setBreakEffect__12daBmWindow_cFi */
void daBmWindow_c::setBreakEffect(int param_1) {
    cXyz cStack_2c(current.pos);
    csXyz cStack_40(shape_angle);
    if (param_1 == 0) {
        daPy_py_c* player = daPy_getPlayerActorClass();
        cXyz playerDist = player->current.pos - current.pos;
        mDoMtx_stack_c::YrotS(-current.angle.y);
        mDoMtx_stack_c::multVec(&playerDist, &playerDist);
        if (playerDist.z < 0.0f) {
            cStack_40.y += 0x8000;
        }
    } else {
        cStack_40.y += 0x8000;
    }
    int temp = param_1 * 3;
    for (int i = temp; i < temp + 3; i++) {
        dComIfGp_particle_set(particle_id[i], &cStack_2c, &cStack_40, &scale, 0xff, 0, 0xffffffff,
                              NULL, NULL, NULL);
    }
}

/* 80BB9494-80BB9548 001374 00B4+00 1/0 0/0 0/0 .text            Draw__12daBmWindow_cFv */
int daBmWindow_c::Draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mModel, &tevStr);
    fopAcM_setEffectMtx(this, mModel->getModelData());
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mModel);
    dComIfGd_setList();
    return 1;
}

/* 80BB9548-80BB9578 001428 0030+00 1/0 0/0 0/0 .text            Delete__12daBmWindow_cFv */
int daBmWindow_c::Delete() {
    dComIfG_resDelete(&mPhase, "H_Window");
    return 1;
}

/* 80BB9578-80BB95A4 001458 002C+00 1/0 0/0 0/0 .text            daBmWindow_Draw__FP12daBmWindow_c
 */
static int daBmWindow_Draw(daBmWindow_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80BB95A4-80BB95C4 001484 0020+00 1/0 0/0 0/0 .text daBmWindow_Execute__FP12daBmWindow_c */
static int daBmWindow_Execute(daBmWindow_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80BB95C4-80BB95E4 0014A4 0020+00 1/0 0/0 0/0 .text            daBmWindow_Delete__FP12daBmWindow_c
 */
static int daBmWindow_Delete(daBmWindow_c* i_this) {
    fopAcM_GetID(i_this);
    return i_this->MoveBGDelete();
}

/* 80BB95E4-80BB9604 0014C4 0020+00 1/0 0/0 0/0 .text            daBmWindow_Create__FP10fopAc_ac_c
 */
static int daBmWindow_Create(fopAc_ac_c* i_this) {
    fopAcM_GetID(i_this);
    return static_cast<daBmWindow_c*>(i_this)->create();
}

/* 80BB98B8-80BB98D8 -00001 0020+00 1/0 0/0 0/0 .data            l_daBmWindow_Method */
static actor_method_class l_daBmWindow_Method = {
    (process_method_func)daBmWindow_Create,  (process_method_func)daBmWindow_Delete,
    (process_method_func)daBmWindow_Execute, (process_method_func)NULL,
    (process_method_func)daBmWindow_Draw,
};

/* 80BB98D8-80BB9908 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_BmWindow */
extern actor_process_profile_definition g_profile_Obj_BmWindow = {
    fpcLy_CURRENT_e,          // mLayerID
    3,                        // mListID
    fpcPi_CURRENT_e,          // mListPrio
    PROC_Obj_BmWindow,        // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daBmWindow_c),     // mSize
    0,                        // mSizeOther
    0,                        // mParameters
    &g_fopAc_Method.base,     // sub_method
    513,                      // mPriority
    &l_daBmWindow_Method,     // sub_method
    0x40100,                  // mStatus
    fopAc_ACTOR_e,            // mActorType
    fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 80BB9800-80BB9800 0000C4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
