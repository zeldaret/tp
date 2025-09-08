/**
 * @file d_a_obj_kshutter.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_kshutter.h"
#include "d/actor/d_a_player.h"
#include "d/actor/d_a_obj_keyhole.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void initBaseMtx__12daObjKshtr_cFv();
extern "C" void setBaseMtx__12daObjKshtr_cFv();
extern "C" void Create__12daObjKshtr_cFv();
extern "C" void offDzb__12daObjKshtr_cFv();
extern "C" void CreateHeap__12daObjKshtr_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void initKey__12daObjKshtr_cFv();
extern "C" void phase_0__12daObjKshtr_cFv();
extern "C" void phase_1__12daObjKshtr_cFv();
extern "C" s32 phase_2__12daObjKshtr_cFv();
extern "C" void create1st__12daObjKshtr_cFv();
extern "C" void event_proc_call__12daObjKshtr_cFv();
extern "C" void event_proc_call2__12daObjKshtr_cFv();
extern "C" void Execute__12daObjKshtr_cFPPA3_A4_f();
extern "C" void checkArea__12daObjKshtr_cFv();
extern "C" void checkOpen__12daObjKshtr_cFv();
extern "C" void getDemoAction__12daObjKshtr_cFv();
extern "C" void demoProc2__12daObjKshtr_cFv();
extern "C" void adjustmentProc__12daObjKshtr_cFv();
extern "C" void keyUnlockInit__12daObjKshtr_cFv();
extern "C" void keyUnlock__12daObjKshtr_cFv();
extern "C" void openInit__12daObjKshtr_cFv();
extern "C" void openProc__12daObjKshtr_cFv();
extern "C" void openProc_type1__12daObjKshtr_cFv();
extern "C" void openProc_type2__12daObjKshtr_cFv();
extern "C" void openProc_typeL3Boss__12daObjKshtr_cFv();
extern "C" void demoProc__12daObjKshtr_cFv();
extern "C" void demoJail1__12daObjKshtr_cFv();
extern "C" void demoJail2__12daObjKshtr_cFv();
extern "C" void demoJail11__12daObjKshtr_cFv();
extern "C" bool demoJail21__12daObjKshtr_cFv();
extern "C" void anmInit__12daObjKshtr_cFv();
extern "C" void actionWaitEvent__12daObjKshtr_cFv();
extern "C" void actionEvent__12daObjKshtr_cFv();
extern "C" void actionDead__12daObjKshtr_cFv();
extern "C" void actionWaitEvent2__12daObjKshtr_cFv();
extern "C" void actionOpen__12daObjKshtr_cFv();
extern "C" void actionEvent2__12daObjKshtr_cFv();
extern "C" void actionDead2__12daObjKshtr_cFv();
extern "C" void Draw__12daObjKshtr_cFv();
extern "C" void Delete__12daObjKshtr_cFv();
extern "C" static void daObjKshtr_create1st__FP12daObjKshtr_c();
extern "C" static void daObjKshtr_MoveBGDelete__FP12daObjKshtr_c();
extern "C" static void daObjKshtr_MoveBGExecute__FP12daObjKshtr_c();
extern "C" static void daObjKshtr_MoveBGDraw__FP12daObjKshtr_c();
extern "C" void func_80C49C84(void* _this, u8*);
extern "C" extern char const* const d_a_obj_kshutter__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb();
extern "C" void entry__13mDoExt_bckAnmFP12J3DModelDataf();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_createChildFromOffset__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void isDungeonItem__12dSv_memBit_cCFi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void normalize__4cXyzFv();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_25();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_25();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_meter2_info[248];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" extern u8 struct_80C4A0E8[4];
extern "C" extern u8 data_80C4A0EC[4];

/* 80C47AB8-80C47B2C 000078 0074+00 1/1 0/0 0/0 .text            initBaseMtx__12daObjKshtr_cFv */
void daObjKshtr_c::initBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    MTXCopy(mDoMtx_stack_c::get(), mMtx);
    mpModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80C47B2C-80C47C14 0000EC 00E8+00 2/2 0/0 0/0 .text            setBaseMtx__12daObjKshtr_cFv */
void daObjKshtr_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y + field_0x5fc, current.pos.z);

    if (mType == 4) {
        mDoMtx_stack_c::YrotM(shape_angle.y);
    } else {
        mDoMtx_stack_c::YrotM(shape_angle.y + 0x7FFF);
    }

    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);

    if (mpBckAnm != NULL) {
        mDoMtx_stack_c::copy(mpModel->getAnmMtx(0));
        mDoMtx_stack_c::multVecZero(&field_0x608);
    }
}

/* 80C49CA8-80C49CBC 000000 0014+00 8/8 0/0 0/0 .rodata          l_bmd */
static int const l_bmd[5] = {
    0x05, 0x05, 0x05, 0x05, 0x08,
};

/* 80C49CBC-80C49CD0 000014 0014+00 1/1 0/0 0/0 .rodata          l_dzb */
static int const l_dzb[5] = {
    0x08, 0x08, 0x08, 0x08, 0x0B,
};

/* 80C49CD0-80C49CE4 000028 0014+00 1/1 0/0 0/0 .rodata          l_heap_size */
static u32 const l_heap_size[5] = {
    0x1300, 0x1300, 0x1300, 0x1300, 0x20D0,
};

/* 80C49CE4-80C49CFC 00003C 0018+00 0/1 0/0 0/0 .rodata          l_cull_box */
static f32 const l_cull_box[6] = {
    -450.0f, 0.0f, -50.0f, 450.0f, 700.0f, 150.0f,
};

/* 80C49E80-80C49E94 -00001 0014+00 3/4 0/0 0/0 .data            l_arcName */
static char* l_arcName[5] = {
    "S_shut00",
    "S_shut00",
    "Lv3shut00",
    "K_l3bdoor",
    "V_Shutter",
};

/* 80C49E94-80C49EBC -00001 0028+00 1/2 0/0 0/0 .data            l_anmName */
static char* l_anmName[10] = {
    "oj_DoorOpC.bck",
    "md_oj_DoorOpC.bck",
    "oj_DoorOpC.bck",
    "md_oj_DoorOpC.bck",
    "oj_DoorOpD.bck",
    "md_oj_DoorOpD.bck",
    NULL,
    NULL,
    "V_Shutter.bck",
    "V_Shutter.bck",
};

/* 80C49EBC-80C49EE4 -00001 0028+00 1/1 0/0 0/0 .data            l_eventName */
static char* l_eventName[10] = {
    "KEY_JAIL_00",
    "KEY_JAIL_WOLF_00",
    "KEY_JAIL_00",
    "KEY_JAIL_WOLF_00",
    "KEY_JAIL_01",
    "KEY_JAIL_WOLF_01",
    "DEFAULT_BS_SHUTTER_L3_F",
    "DEFAULT_BS_SHUTTER_L3_F",
    NULL,
    NULL,
};

/* 80C47C14-80C47E54 0001D4 0240+00 1/0 0/0 0/0 .text            Create__12daObjKshtr_cFv */
int daObjKshtr_c::Create() {
    if (!fopAcM_isSwitch(this, mSwNo)) {
        field_0x5ec = 0;
        field_0x5fc = 0.0f;
        attention_info.position.y += 150.0f;
        eyePos.y += 150.0f;
        attention_info.flags = 0x20;

        if (field_0x5ed != 0) {
            mAction = 0;
        } else {
            mAction = 0;
        }

        if (mpBckAnm != NULL) {
            mpBckAnm->setFrame(0.0f);
            mpBckAnm->setPlaySpeed(0.0f);
        }
    } else {
        field_0x5ec = 1;

        if ((s8)mType != 3) {
            mpBckAnm->setFrame(mpBckAnm->getEndFrame());
        } else {
            field_0x5fc = -450.0f;
        }

        offDzb();

        if (field_0x5ed != 0) {
            mAction = 2;
        } else {
            mAction = 2;
        }
    }

    if (mType == 4) {
        fopAcM_OffStatus(this, fopAcM_STATUS_UNK_000100);
    }

    initBaseMtx();
    fopAcM_SetMtx(this, mMtx);
    fopAcM_setCullSizeBox(this, l_cull_box[0], l_cull_box[1], l_cull_box[2], l_cull_box[3], l_cull_box[4], l_cull_box[5]);

    if (checkKey() == 1) {
        eventInfo.setArchiveName(l_arcName[mType]);

        for (int i = 0; i < 2; i++) {
            field_0x5f0[i] = dComIfGp_getEventManager().getEventIdx(this, l_eventName[i + mType * 2], 0xFF);
        }

        mEvId = getEvId();
    } else {
        mEvId = getEvId();
        field_0x5f0[0] = dComIfGp_getEventManager().getEventIdx(this, mEvId);
        field_0x5f0[1] = -1;
    }

    return 1;
}

/* 80C47E54-80C47EA8 000414 0054+00 4/4 0/0 0/0 .text            offDzb__12daObjKshtr_cFv */
void daObjKshtr_c::offDzb() {
    if (mpBgW != NULL && mpBgW->ChkUsed()) {
        dComIfG_Bgsp().Release(mpBgW);
    }
}

/* 80C49EE4-80C49EF8 -00001 0014+00 3/4 0/0 0/0 .data            l_anmArcName */
static char* l_anmArcName[5] = {
    "DoorY00",
    "DoorY00",
    "DoorT00",
    NULL,
    "V_Shutter",
};

/* 80C49FE8-80C4A000 -00001 0018+00 1/1 0/0 0/0 .data            action_table$4080 */
SECTION_DATA static char* action_table[6] = {
    "WAIT",
    "ADJUSTMENT",
    "UNLOCK",
    "OPEN",
    "PLY_NODISP",
    "PLY_DISP",
};

/* 80C4A018-80C4A030 0001B8 0018+00 0/1 0/0 0/0 .data            l_demoProc$4362 */
static daObjKshtr_c::DemoFunc l_demoProc[24] = {
    &daObjKshtr_c::demoJail1,
    &daObjKshtr_c::demoJail2,
};

/* 80C4A048-80C4A060 0001E8 0018+00 0/1 0/0 0/0 .data            l_demoProc2$4367 */
static daObjKshtr_c::DemoFunc l_demoProc2[2] = {
    &daObjKshtr_c::demoJail11,
    &daObjKshtr_c::demoJail21,
};

/* 80C47EA8-80C48008 000468 0160+00 1/0 0/0 0/0 .text            CreateHeap__12daObjKshtr_cFv */
int daObjKshtr_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName[mType], l_bmd[mType]);

    JUT_ASSERT(429, modelData != 0);

    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    if (l_anmArcName[mType] != NULL) {
        int index;
        if (daPy_py_c::checkNowWolf()) {
            index = mType * 2 + 1;
        } else {
            index = mType << 1;
        }

        J3DAnmTransform* anm = (J3DAnmTransform*)dComIfG_getObjectRes(l_anmArcName[mType], l_anmName[index]);

        JUT_ASSERT(446, anm != 0);

        mpBckAnm = new mDoExt_bckAnm();
        if (mpBckAnm == NULL || mpBckAnm->init(anm, 1, 0, 1.0f, 0, -1, false) == 0) {
            return 0;
        }
    }

    #ifdef DEBUG
    if (checkKey() != 0) {
        field_0x5ed = 1;
    }
    #endif

    return 1;
}

/* 80C48050-80C48148 000610 00F8+00 1/1 0/0 0/0 .text            initKey__12daObjKshtr_cFv */
void daObjKshtr_c::initKey() {
    if (field_0x61e == 0) {
        if ((int)checkKey() != 0) {
            field_0x5ed = 1;
        }

        field_0x61e = 1;
        field_0x614 = fpcM_ERROR_PROCESS_ID_e;

        if (!fopAcM_isSwitch(this, mSwNo) && field_0x5ed != 0) {
            cXyz sp20(0.0f, 0.0f, 35.0f);

            u32 uVar1 = 0xFFFFFFFF;

            if (mType == 3) {
                uVar1 = 0xFFFFFF03;
            } else {
                uVar1 = 0xFFFFFFFF;
            }

            field_0x614 = fopAcM_createChildFromOffset(PROC_OBJ_KEYHOLE, fopAcM_GetID(this), uVar1, &sp20, fopAcM_GetRoomNo(this), NULL, &scale, -1, NULL);
        }
    }
}

/* 80C48148-80C4827C 000708 0134+00 1/0 0/0 0/0 .text            phase_0__12daObjKshtr_cFv */
cPhs__Step daObjKshtr_c::phase_0() {
    // NONMATCHING
    if (field_0x619 == 0) {
        field_0x61a = home.angle.z;
        field_0x61c = home.angle.x;
        shape_angle.x = 0;
        current.angle.x = 0;
        home.angle.x = 0;
        shape_angle.z = 0;
        current.angle.z = 0;
        home.angle.z = 0;
        field_0x619 = 1;
    }

    mType = getType() + 1;
    mSwNo = getSwNo();

    #ifdef DEBUG
    if (mSwNo == 0xFF) {
        OS_REPORT_ERROR("鍵付き壁ドア：スイッチ指定がありません\n"); // Locked wall door: No switch specification
        return cPhs_ERROR_e;
    }
    #else
    initKey();
    #endif

    #ifdef DEBUG
    if (mType >= 6) {
        OS_REPORT_ERROR("鍵付き壁ドア：引数０のタイプ指定が不正値です\n") // Locked wall door: The type specification for argument 0 is invalid

        return cPhs_ERROR_e;
    }
    #endif

    cPhs__Step phase;
    if (l_anmArcName[mType] == NULL || (cPhs__Step)dComIfG_resLoad(&mPhase2, l_anmArcName[mType]) != cPhs_COMPLEATE_e) {
        if (dComIfG_resLoad(&mPhase1, l_arcName[mType]) == cPhs_COMPLEATE_e) {
            phase = (cPhs__Step)MoveBGCreate(l_arcName[mType], l_dzb[mType], NULL, l_heap_size[mType], NULL);
            if (phase == cPhs_ERROR_e) {
                return phase;
            } else {
                field_0x618++;
                OS_REPORT("KSHTR PARAM:0x%x\n", fopAcM_GetParam(this));
                return cPhs_INIT_e;
            }
        }
    }
}

/* 80C4827C-80C48320 00083C 00A4+00 1/0 0/0 0/0 .text            phase_1__12daObjKshtr_cFv */
cPhs__Step daObjKshtr_c::phase_1() {
    if (field_0x614 != fpcM_ERROR_PROCESS_ID_e) {
        obj_keyhole_class* keyhole_p = (obj_keyhole_class*)fopAcM_SearchByID(field_0x614);

        if (keyhole_p != NULL) {
            if (fopAcM_isSwitch(this, mSwNo)) {
                keyhole_p->setOpenEnd();

                OS_REPORT("鍵檻：鍵開いてる状態セット！\n"); // Locked cage: unlocked!\n
            }

            field_0x618++;
        }
    } else {
        field_0x618++;
    }

    return cPhs_INIT_e;
}

/* 80C48320-80C48328 0008E0 0008+00 1/0 0/0 0/0 .text            phase_2__12daObjKshtr_cFv */
cPhs__Step daObjKshtr_c::phase_2() {
    return cPhs_COMPLEATE_e;
}

/* 80C48328-80C483CC 0008E8 00A4+00 1/1 0/0 0/0 .text            create1st__12daObjKshtr_cFv */
void daObjKshtr_c::create1st() {
    // NONMATCHING
    static daObjKshtr_c::PhaseFunc l_ct_func[3] = {
        &daObjKshtr_c::phase_0,
        &daObjKshtr_c::phase_1,
        &daObjKshtr_c::phase_2,
    };

    (this->*l_ct_func[field_0x618])();
}

/* 80C483CC-80C48470 00098C 00A4+00 1/1 0/0 0/0 .text            event_proc_call__12daObjKshtr_cFv */
void daObjKshtr_c::event_proc_call() {
    // NONMATCHING
    static daObjKshtr_c::ActionFunc l_func[3] = {
        &daObjKshtr_c::actionWaitEvent,
        &daObjKshtr_c::actionEvent,
        &daObjKshtr_c::actionDead,
    };

    (this->*l_func[mAction])();
}

/* 80C48470-80C4852C 000A30 00BC+00 1/1 0/0 0/0 .text            event_proc_call2__12daObjKshtr_cFv */
void daObjKshtr_c::event_proc_call2() {
    // NONMATCHING
    static daObjKshtr_c::ActionFunc l_func[4] = {
        &daObjKshtr_c::actionWaitEvent2,
        &daObjKshtr_c::actionEvent2,
        &daObjKshtr_c::actionDead2,
        &daObjKshtr_c::actionOpen,
    };

    (this->*l_func[mAction])();
}

/* 80C4852C-80C48590 000AEC 0064+00 1/0 0/0 0/0 .text            Execute__12daObjKshtr_cFPPA3_A4_f */
int daObjKshtr_c::Execute(Mtx** param_1) {
    if (checkKey() == 1) {
        event_proc_call();
    } else {
        event_proc_call2();
    }

    *param_1 = &mBgMtx;
    setBaseMtx();

    return 1;
}

/* 80C48590-80C48708 000B50 0178+00 1/1 0/0 0/0 .text            checkArea__12daObjKshtr_cFv */
BOOL daObjKshtr_c::checkArea() {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    cXyz sp78;
    cXyz sp84(player->attention_info.position);
    sp84.y = player->current.pos.y;
    sp78 = sp84 - current.pos;
    f32 fVar1 = sp78.abs2XZ();
    cXyz sp90;
    sp90.set(cM_ssin(home.angle.y), 0.0f, cM_scos(home.angle.y));

    if (fVar1 > 62500.0f) {
        return FALSE;
    }

    sp78.normalize();

    f32 fVar2 = sp78.inprodXZ(sp90);
    fVar2 *= fVar1 * fVar2;
    if (fVar2 > 12100.0f) {
        return FALSE;
    }

    if (fVar1 - fVar2 > 12100.0f) {
        return FALSE;
    }

    if (abs((s16)(current.angle.y - player->current.angle.y)) >= 0x5000) {
        return TRUE;
    }

    return FALSE;
}

/* 80C48708-80C48798 000CC8 0090+00 1/1 0/0 0/0 .text            checkOpen__12daObjKshtr_cFv */
BOOL daObjKshtr_c::checkOpen() {
    if (mType == 3) {
        if (!dComIfGs_isDungeonItemBossKey()) {
            return false;
        }
    } else if (dComIfGs_getKeyNum() == 0) {
        return false;
    }

    if (!checkArea()) {
        return false;
    }

    return true;
}

/* 80C48798-80C487E0 000D58 0048+00 1/1 0/0 0/0 .text            getDemoAction__12daObjKshtr_cFv */
int daObjKshtr_c::getDemoAction() {
    // NONMATCHING
    return dComIfGp_evmng_getMyActIdx(field_0x600, action_table, 6, 0, 0);
}

/* ############################################################################################## */
/* 80C49D44-80C49D44 00009C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C49E4D = "JAIL_DOOR";
SECTION_DEAD static char const* const stringBase_80C49E57 = "Timer";
#pragma pop

/* 80C487E0-80C489E0 000DA0 0200+00 1/1 0/0 0/0 .text            demoProc2__12daObjKshtr_cFv */
void daObjKshtr_c::demoProc2() {
    // NONMATCHING
}

/* 80C489E0-80C48AC8 000FA0 00E8+00 1/1 0/0 0/0 .text            adjustmentProc__12daObjKshtr_cFv */
void daObjKshtr_c::adjustmentProc() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C49D20-80C49D24 000078 0004+00 2/6 0/0 0/0 .rodata          @4190 */
SECTION_RODATA static f32 const lit_4190 = -1.0f;
COMPILER_STRIP_GATE(0x80C49D20, &lit_4190);

/* 80C48AC8-80C48B84 001088 00BC+00 1/1 0/0 0/0 .text            keyUnlockInit__12daObjKshtr_cFv */
void daObjKshtr_c::keyUnlockInit() {
    // NONMATCHING
}

/* 80C48B84-80C48BD8 001144 0054+00 1/1 0/0 0/0 .text            keyUnlock__12daObjKshtr_cFv */
void daObjKshtr_c::keyUnlock() {
    // NONMATCHING
}

/* 80C48BD8-80C48D0C 001198 0134+00 2/2 0/0 0/0 .text            openInit__12daObjKshtr_cFv */
void daObjKshtr_c::openInit() {
    // NONMATCHING
}

/* 80C48D0C-80C48D80 0012CC 0074+00 2/2 0/0 0/0 .text            openProc__12daObjKshtr_cFv */
void daObjKshtr_c::openProc() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C49D24-80C49D28 00007C 0004+00 0/2 0/0 0/0 .rodata          @4300 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4300 = 17.0f;
COMPILER_STRIP_GATE(0x80C49D24, &lit_4300);
#pragma pop

/* 80C49D28-80C49D2C 000080 0004+00 0/1 0/0 0/0 .rodata          @4301 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4301 = 18.0f;
COMPILER_STRIP_GATE(0x80C49D28, &lit_4301);
#pragma pop

/* 80C48D80-80C48F94 001340 0214+00 1/1 0/0 0/0 .text            openProc_type1__12daObjKshtr_cFv */
void daObjKshtr_c::openProc_type1() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C49D2C-80C49D38 000084 000A+02 0/1 0/0 0/0 .rodata          l_eff_id$4307 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_eff_id[10 + 2 /* padding */] = {
    0x87,
    0x62,
    0x87,
    0x63,
    0x87,
    0x64,
    0x87,
    0x65,
    0x87,
    0x66,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C49D2C, &l_eff_id);
#pragma pop

/* 80C49D38-80C49D3C 000090 0004+00 0/1 0/0 0/0 .rodata          @4350 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4350 = 20.0f;
COMPILER_STRIP_GATE(0x80C49D38, &lit_4350);
#pragma pop

/* 80C48F94-80C490F8 001554 0164+00 1/1 0/0 0/0 .text            openProc_type2__12daObjKshtr_cFv */
void daObjKshtr_c::openProc_type2() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C49D3C-80C49D40 000094 0004+00 0/1 0/0 0/0 .rodata          @4357 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4357 = 30.0f;
COMPILER_STRIP_GATE(0x80C49D3C, &lit_4357);
#pragma pop

/* 80C49D40-80C49D44 000098 0004+00 0/1 0/0 0/0 .rodata          @4358 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4358 = 4.0f;
COMPILER_STRIP_GATE(0x80C49D40, &lit_4358);
#pragma pop

/* 80C490F8-80C49158 0016B8 0060+00 1/1 0/0 0/0 .text openProc_typeL3Boss__12daObjKshtr_cFv */
void daObjKshtr_c::openProc_typeL3Boss() {
    // NONMATCHING
}

/* 80C49158-80C4925C 001718 0104+00 1/1 0/0 0/0 .text            demoProc__12daObjKshtr_cFv */
void daObjKshtr_c::demoProc() {
    // NONMATCHING
}

/* 80C4925C-80C494A8 00181C 024C+00 1/0 0/0 0/0 .text            demoJail1__12daObjKshtr_cFv */
BOOL daObjKshtr_c::demoJail1() {
    // NONMATCHING
}

/* 80C494A8-80C495A4 001A68 00FC+00 1/0 0/0 0/0 .text            demoJail2__12daObjKshtr_cFv */
BOOL daObjKshtr_c::demoJail2() {
    // NONMATCHING
}

/* 80C495A4-80C496C8 001B64 0124+00 1/0 0/0 0/0 .text            demoJail11__12daObjKshtr_cFv */
BOOL daObjKshtr_c::demoJail11() {
    // NONMATCHING
}

/* 80C496C8-80C496D0 001C88 0008+00 1/0 0/0 0/0 .text            demoJail21__12daObjKshtr_cFv */
BOOL daObjKshtr_c::demoJail21() {
    return TRUE;
}

/* 80C496D0-80C497A0 001C90 00D0+00 4/4 0/0 0/0 .text            anmInit__12daObjKshtr_cFv */
void daObjKshtr_c::anmInit() {
    // NONMATCHING
}

/* 80C497A0-80C49880 001D60 00E0+00 1/0 0/0 0/0 .text            actionWaitEvent__12daObjKshtr_cFv
 */
void daObjKshtr_c::actionWaitEvent() {
    // NONMATCHING
}

/* 80C49880-80C49914 001E40 0094+00 1/0 0/0 0/0 .text            actionEvent__12daObjKshtr_cFv */
void daObjKshtr_c::actionEvent() {
    // NONMATCHING
}

/* 80C49914-80C49918 001ED4 0004+00 1/0 0/0 0/0 .text            actionDead__12daObjKshtr_cFv */
void daObjKshtr_c::actionDead() {
    /* empty function */
}

/* 80C49918-80C499CC 001ED8 00B4+00 1/0 0/0 0/0 .text            actionWaitEvent2__12daObjKshtr_cFv
 */
void daObjKshtr_c::actionWaitEvent2() {
    // NONMATCHING
}

/* 80C499CC-80C49A08 001F8C 003C+00 1/0 0/0 0/0 .text            actionOpen__12daObjKshtr_cFv */
void daObjKshtr_c::actionOpen() {
    // NONMATCHING
}

/* 80C49A08-80C49A70 001FC8 0068+00 1/0 0/0 0/0 .text            actionEvent2__12daObjKshtr_cFv */
void daObjKshtr_c::actionEvent2() {
    // NONMATCHING
}

/* 80C49A70-80C49A74 002030 0004+00 1/0 0/0 0/0 .text            actionDead2__12daObjKshtr_cFv */
void daObjKshtr_c::actionDead2() {
    /* empty function */
}

/* 80C49A74-80C49B4C 002034 00D8+00 1/0 0/0 0/0 .text            Draw__12daObjKshtr_cFv */
int daObjKshtr_c::Draw() {
    // NONMATCHING
}

/* 80C49B4C-80C49BB8 00210C 006C+00 1/0 0/0 0/0 .text            Delete__12daObjKshtr_cFv */
int daObjKshtr_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C4A0BC-80C4A0E4 00025C 0028+00 1/1 0/0 0/0 .data            __vt__12daObjKshtr_c */
SECTION_DATA extern void* __vt__12daObjKshtr_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__12daObjKshtr_cFv,
    (void*)Create__12daObjKshtr_cFv,
    (void*)Execute__12daObjKshtr_cFPPA3_A4_f,
    (void*)Draw__12daObjKshtr_cFv,
    (void*)Delete__12daObjKshtr_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80C49BB8-80C49C18 002178 0060+00 1/0 0/0 0/0 .text daObjKshtr_create1st__FP12daObjKshtr_c */
static void daObjKshtr_create1st(daObjKshtr_c* param_0) {
    // NONMATCHING
}

/* 80C49C18-80C49C38 0021D8 0020+00 1/0 0/0 0/0 .text daObjKshtr_MoveBGDelete__FP12daObjKshtr_c */
static void daObjKshtr_MoveBGDelete(daObjKshtr_c* param_0) {
    // NONMATCHING
}

/* 80C49C38-80C49C58 0021F8 0020+00 1/0 0/0 0/0 .text daObjKshtr_MoveBGExecute__FP12daObjKshtr_c
 */
static void daObjKshtr_MoveBGExecute(daObjKshtr_c* param_0) {
    // NONMATCHING
}

/* 80C49C58-80C49C84 002218 002C+00 1/0 0/0 0/0 .text daObjKshtr_MoveBGDraw__FP12daObjKshtr_c */
static void daObjKshtr_MoveBGDraw(daObjKshtr_c* param_0) {
    // NONMATCHING
}

/* 80C49C84-80C49CA0 002244 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<Uc>__FPUc */
extern "C" void func_80C49C84(void* _this, u8* param_0) {
    // NONMATCHING
}

/* 80C4A060-80C4A080 -00001 0020+00 1/0 0/0 0/0 .data            daObjKshtr_METHODS */
static actor_method_class daObjKshtr_METHODS = {
    (process_method_func)daObjKshtr_create1st,
    (process_method_func)daObjKshtr_MoveBGDelete,
    (process_method_func)daObjKshtr_MoveBGExecute,
    0,
    (process_method_func)daObjKshtr_MoveBGDraw,
};

/* 80C4A080-80C4A0B0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Kshutter */
extern actor_process_profile_definition g_profile_Obj_Kshutter = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Kshutter,      // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjKshtr_c),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  443,                    // mPriority
  &daObjKshtr_METHODS,    // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
