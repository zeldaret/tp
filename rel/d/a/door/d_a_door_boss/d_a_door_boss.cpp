/**
 * d_a_door_boss.cpp
 * Boss Door
 */

#include "rel/d/a/door/d_a_door_boss/d_a_door_boss.h"
#include "SSystem/SComponent/c_math.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "f_op/f_op_actor_mng.h"
#include "d/com/d_com_inf_game.h"
#include "d/a/d_a_player.h"
#include "d/d_procname.h"
#include "d/d_door_param2.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void getArcName__9daBdoor_cFv();
extern "C" void getBmd__9daBdoor_cFv();
extern "C" void getDzb__9daBdoor_cFv();
extern "C" void getBmd2__9daBdoor_cFv();
extern "C" void getDoorModelData__9daBdoor_cFv();
extern "C" static void CheckCreateHeap__FP10fopAc_ac_c();
extern "C" void CreateHeap__9daBdoor_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void calcMtx__9daBdoor_cFv();
extern "C" void CreateInit__9daBdoor_cFv();
extern "C" void create__9daBdoor_cFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void getDemoAction__9daBdoor_cFv();
extern "C" void demoProc__9daBdoor_cFv();
extern "C" void calcGoal__9daBdoor_cFP4cXyzi();
extern "C" void smokeInit__9daBdoor_cFv();
extern "C" void checkArea__9daBdoor_cFv();
extern "C" void checkFront__9daBdoor_cFv();
extern "C" void checkOpen__9daBdoor_cFv();
extern "C" bool actionWait__9daBdoor_cFv();
extern "C" void actionCloseWait__9daBdoor_cFv();
extern "C" void actionOpen__9daBdoor_cFv();
extern "C" void actionEnd__9daBdoor_cFv();
extern "C" void execute__9daBdoor_cFv();
extern "C" void checkDraw__9daBdoor_cFv();
extern "C" void draw__9daBdoor_cFv();
extern "C" void Delete__9daBdoor_cFv();
extern "C" static void daBdoor_Draw__FP9daBdoor_c();
extern "C" static void daBdoor_Execute__FP9daBdoor_c();
extern "C" static void daBdoor_Delete__FP9daBdoor_c();
extern "C" static void daBdoor_Create__FP10fopAc_ac_c();
extern "C" static void func_806708FC();
extern "C" static void func_80670904();
extern "C" extern char const* const d_a_door_boss__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb();
extern "C" void entry__13mDoExt_bckAnmFP12J3DModelDataf();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void checkRoomDisp__20dStage_roomControl_cCFi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfG_getStageRes__FPCc();
extern "C" void isDungeonItem__12dSv_memBit_cCFi();
extern "C" void setRoom__13dSv_restart_cFRC4cXyzsSc();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getSwbit__13door_param2_cFP10fopAc_ac_c();
extern "C" void getExitNo__13door_param2_cFP10fopAc_ac_c();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void setEventName__11dEvt_info_cFPc();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void setGoal__16dEvent_manager_cFP4cXyz();
extern "C" void
setPoly__13dPa_control_cFUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void Move__4dBgWFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void cLib_chaseF__FPfff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void setSkinDeform__8J3DModelFP13J3DSkinDeformUl();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __ct__13J3DSkinDeformFv();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_26();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_26();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" extern u8 data_80670BB0[4];

//
// Declarations:
//

/* 80670A20-80670A2C 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80670A2C-80670A40 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
static u32 lit_1787[1 + 4 /* padding */] = {
    0x02000201,
    /* padding */
    0x40080000,
    0x00000000,
    0x3FE00000,
    0x00000000,
};

/* 8066F418-8066F424 000078 000C+00 4/4 0/0 0/0 .text            getArcName__9daBdoor_cFv */
char* daBdoor_c::getArcName() {
    return "Z_bdor00";
}

/* 8066F424-8066F434 000084 0010+00 1/1 0/0 0/0 .text            getBmd__9daBdoor_cFv */
char* daBdoor_c::getBmd() {
    return "Z_bdor00.bmd";
}

/* 8066F434-8066F444 000094 0010+00 1/1 0/0 0/0 .text            getDzb__9daBdoor_cFv */
char* daBdoor_c::getDzb() {
    return "door30.dzb";
}

/* 8066F444-8066F454 0000A4 0010+00 1/1 0/0 0/0 .text            getBmd2__9daBdoor_cFv */
char* daBdoor_c::getBmd2() {
    return "door_shutterBoss.bmd";
}

/* 8066F454-8066F4C4 0000B4 0070+00 1/1 0/0 0/0 .text            getDoorModelData__9daBdoor_cFv */
J3DModelData* daBdoor_c::getDoorModelData() {
    J3DModelData* model_data = (J3DModelData*)dComIfG_getStageRes(getBmd2());
    if (model_data == NULL) {
        model_data = (J3DModelData*)dComIfG_getObjectRes(getArcName(), getBmd());
    }
    return model_data;
}

/* 8066F4C4-8066F4E4 000124 0020+00 1/1 0/0 0/0 .text            CheckCreateHeap__FP10fopAc_ac_c */
static int CheckCreateHeap(fopAc_ac_c* i_this) {
    return static_cast<daBdoor_c*>(i_this)->CreateHeap();
}

/* 80670914-80670918 000000 0004+00 4/4 0/0 0/0 .rodata          @3726 */
SECTION_RODATA static f32 const lit_3726 = 1.0f;
COMPILER_STRIP_GATE(0x80670914, &lit_3726);

/* 80670984-80670984 000070 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806709BA = "VlockB.bmd";
SECTION_DEAD static char const* const stringBase_806709C5 = "VlockB.bck";
#pragma pop

/* 80670B74-80670B80 000154 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
extern void* __vt__12dBgS_AcchCir[3];

/* 80670B80-80670BA4 000160 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
extern void* __vt__12dBgS_ObjAcch[9];

/* 80670BA4-80670BB0 000184 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
extern void* __vt__12J3DFrameCtrl[3];

/* 8066F4E4-8066F6F0 000144 020C+00 1/1 0/0 0/0 .text            CreateHeap__9daBdoor_cFv */
#ifdef NONMATCHING
// matches with literals
int daBdoor_c::CreateHeap() {
    J3DModelData* door_model_data = getDoorModelData();
    mpDoorModel = mDoExt_J3DModel__create(door_model_data, 0x80000, 0x11000084);
    if (mpDoorModel == NULL) {
        return 0;
    }

    J3DModelData* lock_model_data = (J3DModelData*)dComIfG_getObjectRes(getArcName(), "VlockB.bmd");
    mpLockModel = mDoExt_J3DModel__create(lock_model_data, 0x80000, 0x11000084);
    if (mpLockModel == NULL) {
        return 0;
    }

    J3DAnmTransform* lock_bck = (J3DAnmTransform*)dComIfG_getObjectRes(getArcName(), "VlockB.bck");
    mpLockAnm = new mDoExt_bckAnm();
    if (mpLockAnm == NULL || !mpLockAnm->init(lock_bck, 1, 0, 1.0f, 0, -1, false)) {
        return 0;
    }

    J3DSkinDeform* deform = new J3DSkinDeform();
    if (deform == NULL) {
        return 0;
    }
    if (mpLockModel->setSkinDeform(deform, 1) == 4) {
        return 0;
    }

    mpBgW = new dBgW();
    cBgD_t* dzb = (cBgD_t*)dComIfG_getObjectRes(getArcName(), getDzb());
    if (dzb == NULL) {
        return 0;
    }
    calcMtx();
    return mpBgW->Set(dzb, 1, &mpDoorModel->getBaseTRMtx()) == 1 ? 0 : 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daBdoor_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_boss/d_a_door_boss/CreateHeap__9daBdoor_cFv.s"
}
#pragma pop
#endif

/* 8066F6F0-8066F738 000350 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" asm void __dt__12J3DFrameCtrlFv() {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_boss/d_a_door_boss/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop

/* 8066F738-8066F7EC 000398 00B4+00 3/3 0/0 0/0 .text            calcMtx__9daBdoor_cFv */
void daBdoor_c::calcMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y + mOffsetY, current.pos.z);
    mDoMtx_stack_c::YrotM(orig.angle.y);
    mpDoorModel->i_setBaseTRMtx(mDoMtx_stack_c::get());
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y + 300.0f, current.pos.z);
    mDoMtx_stack_c::YrotM(orig.angle.y);
    mpLockModel->i_setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 8066F7EC-8066F8E4 00044C 00F8+00 1/1 0/0 0/0 .text            CreateInit__9daBdoor_cFv */
int daBdoor_c::CreateInit() {
    mAcch.Set(&current.pos, &next.pos, this, 1, &mAcchCir, &speed, NULL, NULL);
    dComIfG_Bgsp().Regist(mpBgW, this);
    setAction(ACT_CLOSE_WAIT);
    attention_info.position.y += 250.0f;
    eyePos.y += 250.0f;
    attention_info.flags = 0x20;
    calcMtx();
    mpBgW->Move();
    u8 swbit = door_param2_c::getSwbit(this);
    if (!dComIfGs_isSwitch(swbit, fopAcM_GetRoomNo(this))) {
        mLocked = true;
    } else {
        mLocked = false;
    }
    mOffsetY = 0.0f;
    return 1;
}

/* 8066F8E4-8066F9D8 000544 00F4+00 1/1 0/0 0/0 .text            create__9daBdoor_cFv */
#ifdef NONMATCHING
// matches with vtables
cPhs__Step daBdoor_c::create() {
    fopAcM_SetupActor(this, daBdoor_c);
    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&mPhaseReq, getArcName());
    if (step == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, CheckCreateHeap, 0xa000)) {
            return cPhs_ERROR_e;
        }
        if (!CreateInit()) {
            return cPhs_ERROR_e;
        }
    }
    return step;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm cPhs__Step daBdoor_c::create() {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_boss/d_a_door_boss/create__9daBdoor_cFv.s"
}
#pragma pop
#endif

/* 8066F9D8-8066FA48 000638 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" asm void __dt__12dBgS_AcchCirFv() {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_boss/d_a_door_boss/__dt__12dBgS_AcchCirFv.s"
}
#pragma pop

/* 8066FA48-8066FAB8 0006A8 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_boss/d_a_door_boss/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 8066FAB8-8066FB00 000718 0048+00 1/1 0/0 0/0 .text            getDemoAction__9daBdoor_cFv */
int daBdoor_c::getDemoAction() {
    static char* action_table[11] = {
        "WAIT",
        "UNLOCK",
        "OPEN",
        "SETGOAL",
        "SETGOAL2",
        "CLOSE",
        "SMOKE",
        "SMOKE_END",
        "END",
        "END_CHECK",
        "CHG_SCENE",
    };
    return dComIfGp_evmng_getMyActIdx(mStaffID, action_table, 11, 0, 0);
}

/* 80670A6C-80670A98 -00001 002C+00 1/1 0/0 0/0 .data            @3939 */
SECTION_DATA static void* lit_3939[11] = {
    (void*)(((char*)demoProc__9daBdoor_cFv) + 0x3E0),
    (void*)(((char*)demoProc__9daBdoor_cFv) + 0x1D4),
    (void*)(((char*)demoProc__9daBdoor_cFv) + 0x230),
    (void*)(((char*)demoProc__9daBdoor_cFv) + 0x3E0),
    (void*)(((char*)demoProc__9daBdoor_cFv) + 0x3E0),
    (void*)(((char*)demoProc__9daBdoor_cFv) + 0x2C0),
    (void*)(((char*)demoProc__9daBdoor_cFv) + 0x3E0),
    (void*)(((char*)demoProc__9daBdoor_cFv) + 0x3E0),
    (void*)(((char*)demoProc__9daBdoor_cFv) + 0x3EC),
    (void*)(((char*)demoProc__9daBdoor_cFv) + 0x3C8),
    (void*)(((char*)demoProc__9daBdoor_cFv) + 0x378),
};

/* 80670A98-80670AC4 -00001 002C+00 1/1 0/0 0/0 .data            @3938 */
SECTION_DATA static void* lit_3938[11] = {
    (void*)(((char*)demoProc__9daBdoor_cFv) + 0x1B4),
    (void*)(((char*)demoProc__9daBdoor_cFv) + 0x6C),
    (void*)(((char*)demoProc__9daBdoor_cFv) + 0xAC),
    (void*)(((char*)demoProc__9daBdoor_cFv) + 0x110),
    (void*)(((char*)demoProc__9daBdoor_cFv) + 0x130),
    (void*)(((char*)demoProc__9daBdoor_cFv) + 0x150),
    (void*)(((char*)demoProc__9daBdoor_cFv) + 0x1A0),
    (void*)(((char*)demoProc__9daBdoor_cFv) + 0x1B4),
    (void*)(((char*)demoProc__9daBdoor_cFv) + 0x1B4),
    (void*)(((char*)demoProc__9daBdoor_cFv) + 0x1B4),
    (void*)(((char*)demoProc__9daBdoor_cFv) + 0x1AC),
};

/* 8066FB00-8066FF04 000760 0404+00 5/3 0/0 0/0 .text            demoProc__9daBdoor_cFv */
#ifdef NONMATCHING
// isStop regalloc
void daBdoor_c::demoProc() {
    cXyz goal;
    int done;
    int action = getDemoAction();

    if (dComIfGp_evmng_getIsAddvance(mStaffID)) {
        switch (action) {
        case 1:  // UNLOCK
            if (mLocked) {
                dComIfGs_onSwitch((u8)door_param2_c::getSwbit(this), fopAcM_GetRoomNo(this));
                mpLockAnm->setPlaySpeed(1.0f);
            }
            break;
        case 2:  // OPEN
            mLocked = false;
            fopAcM_seStart(this, JA_SE_OBJ_STN_DOOR_MOVE_U, 0);
            dComIfG_Bgsp().Release(mpBgW);
            break;
        case 3:  // SETGOAL
            calcGoal(&goal, 0);
            dComIfGp_evmng_setGoal(&goal);
            break;
        case 4:  // SETGOAL2
            calcGoal(&goal, 1);
            dComIfGp_evmng_setGoal(&goal);
            break;
        case 5:  // CLOSE
            fopAcM_seStart(this, JA_SE_OBJ_STN_DOOR_MOVE_D, 0);
            break;
        case 6:  // SMOKE
            smokeInit();
            break;
        case 10:  // CHG_SCENE
            field_0x58c = 0;
        }
}
}
#pragma pop
    }
#pragma pop

    switch (action) {
    case 1:  // UNLOCK
        mpLockAnm->play();
        if (!mLocked || mpLockAnm->isStop()) {
            mLocked = false;
            dComIfGp_evmng_cutEnd(mStaffID);
        }
        break;
    case 2:  // OPEN
        cLib_chaseF(&speedF, 60.0f, 6.0f);
        done = cLib_chaseF(&mOffsetY, 600.0f, speedF);
        calcMtx();
        if (done) {
            fopAcM_seStart(this, JA_SE_OBJ_STN_DOOR_STOP_U, 0);
            dComIfGp_evmng_cutEnd(mStaffID);
        }
        break;
    case 5:  // CLOSE
        cLib_chaseF(&speedF, 60.0f, 6.0f);
        done = cLib_chaseF(&mOffsetY, 0.0f, speedF);
        calcMtx();
        if (done) {
            dComIfGp_getVibration().StartShock(4, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
            fopAcM_seStart(this, JA_SE_OBJ_STN_DOOR_STOP_D, 0);
            dComIfGp_evmng_cutEnd(mStaffID);
        }
        break;
    case 10:  // CHG_SCENE
        if (field_0x58c == 0) {
            daPy_getPlayerActorClass()->onSceneChangeArea(door_param2_c::getExitNo(this), 0xff, 0);
        }
        field_0x58c--;
        break;
    case 8:  // END
        break;
    case 9:  // END_CHECK
        setAction(ACT_END);
        dComIfGp_evmng_cutEnd(mStaffID);
        break;
    default:
        dComIfGp_evmng_cutEnd(mStaffID);
        break;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daBdoor_c::demoProc() {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_boss/d_a_door_boss/demoProc__9daBdoor_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80670924-80670928 000010 0004+00 0/0 0/0 0/0 .rodata          @3934 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3934 = -1.0f;
COMPILER_STRIP_GATE(0x80670924, &lit_3934);
#pragma pop

/* 80670928-8067092C 000014 0004+00 0/0 0/0 0/0 .rodata          @3935 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3935 = 60.0f;
COMPILER_STRIP_GATE(0x80670928, &lit_3935);
#pragma pop

/* 8067092C-80670930 000018 0004+00 0/0 0/0 0/0 .rodata          @3936 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3936 = 6.0f;
COMPILER_STRIP_GATE(0x8067092C, &lit_3936);
#pragma pop

/* 80670930-80670934 00001C 0004+00 0/0 0/0 0/0 .rodata          @3937 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3937 = 600.0f;
COMPILER_STRIP_GATE(0x80670930, &lit_3937);
#pragma pop

/* 80670934-80670938 000020 0004+00 0/1 0/0 0/0 .rodata          @3968 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3968 = 0.5f;
COMPILER_STRIP_GATE(0x80670934, &lit_3968);
#pragma pop

/* 80670938-8067093C 000024 0004+00 0/1 0/0 0/0 .rodata          @3969 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3969 = -1000.0f;
COMPILER_STRIP_GATE(0x80670938, &lit_3969);
#pragma pop

/* 8067093C-80670940 000028 0004+00 0/1 0/0 0/0 .rodata          @3970 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3970 = -240.0f;
COMPILER_STRIP_GATE(0x8067093C, &lit_3970);
#pragma pop

/* 8066FF04-8067002C 000B64 0128+00 1/1 0/0 0/0 .text            calcGoal__9daBdoor_cFP4cXyzi */
#ifdef NONMATCHING
// matches with literals
void daBdoor_c::calcGoal(cXyz* i_goalP, int param_1) {
    cXyz vec = daPy_getPlayerActorClass()->current.pos - current.pos;
    mDoMtx_stack_c::YrotS(-current.angle.y);
    mDoMtx_stack_c::multVec(&vec, &vec);
    vec.x = 0.5f * vec.x;
    vec.y = 0.0f;
    if (param_1 == 0) {
        vec.z = -1000.0f;
    }  else {
        vec.z = -240.0f;
    }
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(current.angle.y);
    mDoMtx_stack_c::multVec(&vec, &vec);
    i_goalP->x = vec.x;
    i_goalP->y = 0.0f;
    i_goalP->z = vec.z;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daBdoor_c::calcGoal(cXyz* param_0, int param_1) {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_boss/d_a_door_boss/calcGoal__9daBdoor_cFP4cXyzi.s"
}
#pragma pop
#endif

/* 8067002C-806700C4 000C8C 0098+00 1/1 0/0 0/0 .text            smokeInit__9daBdoor_cFv */
#ifdef NONMATCHING
void daBdoor_c::smokeInit() {
    mParticlePos = current.pos;
    mParticleAngle = shape_angle;
    dComIfGp_particle_setPolyColor(0x8156, mAcch.m_gnd, &mParticlePos, &tevStr, &mParticleAngle,
                                   NULL, 0, NULL, fopAcM_GetRoomNo(this), NULL);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daBdoor_c::smokeInit() {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_boss/d_a_door_boss/smokeInit__9daBdoor_cFv.s"
}
#pragma pop
#endif

/* 806700C4-806701F4 000D24 0130+00 1/1 0/0 0/0 .text            checkArea__9daBdoor_cFv */
BOOL daBdoor_c::checkArea() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz vec = player->current.pos - current.pos;
    mDoMtx_stack_c::YrotS(-current.angle.y);
    mDoMtx_stack_c::multVec(&vec, &vec);
    if (fabsf(vec.x) > 200.0f) {
        return false;
    }
    if (fabsf(vec.z) > 100.0f) {
        return false;
    }
    return (s16)fabs(current.angle.y - 0x7fff - player->current.angle.y) <= 0x4000 ? 1 : 0;
}

/* 806701F4-80670294 000E54 00A0+00 1/1 0/0 0/0 .text            checkFront__9daBdoor_cFv */
BOOL daBdoor_c::checkFront() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz vec = player->current.pos - current.pos;
    mDoMtx_stack_c::YrotS(-current.angle.y);
    mDoMtx_stack_c::multVec(&vec, &vec);
    return vec.z > 0.0f;
}

/* 80670294-80670320 000EF4 008C+00 1/1 0/0 0/0 .text            checkOpen__9daBdoor_cFv */
#ifdef NONMATCHING
// regalloc
BOOL daBdoor_c::checkOpen() {
    if (daPy_py_c::i_checkNowWolf()) {
        return false;
    }
    if (!dComIfGs_isDungeonItemBossKey()) {
        return false;
    }
    if (!checkFront()) {
        return false;
    }
    if (!checkArea()) {
        return false;
    }
    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daBdoor_c::checkOpen() {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_boss/d_a_door_boss/checkOpen__9daBdoor_cFv.s"
}
#pragma pop
#endif

/* 80670320-80670328 000F80 0008+00 1/0 0/0 0/0 .text            actionWait__9daBdoor_cFv */
BOOL daBdoor_c::actionWait() {
    return true;
}

/* 80670954-8067096C 000040 0015+03 1/1 0/0 0/0 .rodata          l_door_open_demo */
static char const l_door_open_demo[21] = "DEFAULT_BS_SHUTTER_F";

/* 8067096C-8067097C 000058 000D+03 2/2 0/0 0/0 .rodata          l_staff_name */
static char const l_staff_name[13] = "SHUTTER_DOOR";

/* 80670328-806703C0 000F88 0098+00 1/0 0/0 0/0 .text            actionCloseWait__9daBdoor_cFv */
BOOL daBdoor_c::actionCloseWait() {
    if (eventInfo.i_checkCommandDoor()) {
        mStaffID = i_dComIfGp_evmng_getMyStaffId(l_staff_name, NULL, 0);
        demoProc();
        setAction(ACT_OPEN);
    } else {
        if (checkOpen()) {
            eventInfo.setEventName((char*)l_door_open_demo);
            eventInfo.i_onCondition(dEvtCnd_CANDOOR_e);
        }
    }
    return 1;
}

/* 806703C0-806703E4 001020 0024+00 1/0 0/0 0/0 .text            actionOpen__9daBdoor_cFv */
BOOL daBdoor_c::actionOpen() {
    demoProc();
    return true;
}

/* ############################################################################################## */
/* 8067097C-80670980 000068 0004+00 0/1 0/0 0/0 .rodata          @4143 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4143 = 180.0f;
COMPILER_STRIP_GATE(0x8067097C, &lit_4143);
#pragma pop

/* 80670980-80670984 00006C 0004+00 0/1 0/0 0/0 .rodata          @4144 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4144 = -180.0f;
COMPILER_STRIP_GATE(0x80670980, &lit_4144);
#pragma pop

/* 806703E4-80670544 001044 0160+00 1/0 0/0 0/0 .text            actionEnd__9daBdoor_cFv */
#ifdef NONMATCHING
// regalloc and extra mr
BOOL daBdoor_c::actionEnd() {
    if (!mpBgW->ChkUsed()) {
        dComIfG_Bgsp().Regist(mpBgW, this);
    }
    setAction(ACT_WAIT);
    cXyz normal(cM_ssin(orig.angle.y), 0.0f, cM_scos(orig.angle.y));
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz delta = player->current.pos - current.pos;
    f32 prod = delta.inprodXZ(normal);
    f32 offset;
    if (prod < 0.0f) {
        offset = 180.0f;
    } else {
        offset = -180.0f;
    }
    cXyz pos(current.pos.x - offset * normal.x, current.pos.y, current.pos.z - offset * normal.z);
    s8 room_no = fopAcM_GetRoomNo(player);
    s16 angle;
    if (prod > 0.0f) {
        angle = current.angle.y;
    } else {
        angle = current.angle.y + 0x8000;
    }
    dComIfGs_setRestartRoom(pos, angle, room_no);
    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daBdoor_c::actionEnd() {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_boss/d_a_door_boss/actionEnd__9daBdoor_cFv.s"
}
#pragma pop
#endif

/* 80670544-80670664 0011A4 0120+00 1/1 0/0 0/0 .text            execute__9daBdoor_cFv */
int daBdoor_c::execute() {
    typedef BOOL (daBdoor_c::*daBdoor_action)();
    static daBdoor_action l_action[4] = {
        &actionWait,
        &actionCloseWait,
        &actionOpen,
        &actionEnd,
    };
    if (fopAcM_checkStatus(this, 0x1000)) {
        mStaffID = i_dComIfGp_evmng_getMyStaffId(l_staff_name, NULL, 0);
        demoProc();
    } else {
        (this->*l_action[mAction])();
    }
    mAcch.CrrPos(dComIfG_Bgsp());
    return 1;
}

/* 80670664-806706A4 0012C4 0040+00 1/1 0/0 0/0 .text            checkDraw__9daBdoor_cFv */
BOOL daBdoor_c::checkDraw() {
    return dComIfGp_roomControl_checkRoomDisp(fopAcM_GetRoomNo(this)) ? 1 : 0;
}

/* 806706A4-80670804 001304 0160+00 1/1 0/0 0/0 .text            draw__9daBdoor_cFv */
int daBdoor_c::draw() {
    BOOL draw = checkDraw();
    if (!draw) {
        if (!mBgInactive) {
            dComIfG_Bgsp().Release(mpBgW);
            mBgInactive = true;
        }
        return 1;
    } else {
        if (mBgInactive) {
            dComIfG_Bgsp().Regist(mpBgW, this);
            mBgInactive = false;
        }
        if (!draw) {
            fopAcM_OffStatus(this, 0);
        }
        g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
        g_env_light.setLightTevColorType_MAJI(mpDoorModel->mModelData, &tevStr);
        dComIfGd_setListBG();
        mDoExt_modelUpdateDL(mpDoorModel);
        dComIfGd_setList();
        if (mLocked) {
            g_env_light.setLightTevColorType_MAJI(mpLockModel->mModelData, &tevStr);
            mpLockAnm->entry(mpLockModel->getModelData());
            mDoExt_modelUpdateDL(mpLockModel);
        }
        return 1;
    }
}

/* 80670804-80670874 001464 0070+00 1/1 0/0 0/0 .text            Delete__9daBdoor_cFv */
int daBdoor_c::Delete() {
    if (heap != NULL && mpBgW->ChkUsed()) {
        dComIfG_Bgsp().Release(mpBgW);
    }
    dComIfG_resDelete(&mPhaseReq, getArcName());
    return 1;
}

/* 80670874-80670894 0014D4 0020+00 1/0 0/0 0/0 .text            daBdoor_Draw__FP9daBdoor_c */
static int daBdoor_Draw(daBdoor_c* i_this) {
    return i_this->draw();
}

/* 80670894-806708B8 0014F4 0024+00 1/0 0/0 0/0 .text            daBdoor_Execute__FP9daBdoor_c */
static int daBdoor_Execute(daBdoor_c* i_this) {
    i_this->execute();
    return 1;
}

/* 806708B8-806708DC 001518 0024+00 1/0 0/0 0/0 .text            daBdoor_Delete__FP9daBdoor_c */
static int daBdoor_Delete(daBdoor_c* i_this) {
    i_this->Delete();
    return 1;
}

/* 806708DC-806708FC 00153C 0020+00 1/0 0/0 0/0 .text            daBdoor_Create__FP10fopAc_ac_c */
static cPhs__Step daBdoor_Create(fopAc_ac_c* i_this) {
    return static_cast<daBdoor_c*>(i_this)->create();
}

/* 806708FC-80670904 00155C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_806708FC() {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_boss/d_a_door_boss/func_806708FC.s"
}
#pragma pop

/* 80670904-8067090C 001564 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80670904() {
    nofralloc
#include "asm/rel/d/a/door/d_a_door_boss/d_a_door_boss/func_80670904.s"
}
#pragma pop

/* 80670B24-80670B44 -00001 0020+00 1/0 0/0 0/0 .data            l_daBdoor_Method */
static actor_method_class l_daBdoor_Method = {
    (process_method_func)daBdoor_Create,
    (process_method_func)daBdoor_Delete,
    (process_method_func)daBdoor_Execute,
    (process_method_func)NULL,
    (process_method_func)daBdoor_Draw,
};

/* 80670B44-80670B74 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_BOSS_DOOR */
extern actor_process_profile_definition g_profile_BOSS_DOOR = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_BOSS_DOOR,
    &g_fpcLf_Method.mBase,
    sizeof(daBdoor_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x129,
    &l_daBdoor_Method,
    0x44000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_6_e,
};

/* 80670B74-80670B80 000154 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80670B80-80670BA4 000160 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80670904,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806708FC,
};

/* 80670BA4-80670BB0 000184 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};
