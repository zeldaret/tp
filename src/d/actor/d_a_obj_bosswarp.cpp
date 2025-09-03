/**
 * d_a_obj_bosswarp.cpp
 * Object - Boss Warp
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_bosswarp.h"
#include "SSystem/SComponent/c_math.h"
#include "d/actor/d_a_midna.h"
#include "d/actor/d_a_player.h"
#include "d/d_procname.h"
#include "d/actor/d_a_obj_life_container.h"
#include "d/actor/d_a_obj_ystone.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void CheckCreateHeap__FP10fopAc_ac_c();
extern "C" static void getNowLevel__Fv();
extern "C" void initBaseMtx__15daObjBossWarp_cFv();
extern "C" void setBaseMtx__15daObjBossWarp_cFv();
extern "C" void Create__15daObjBossWarp_cFv();
extern "C" void CreateHeap__15daObjBossWarp_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void create__15daObjBossWarp_cFv();
extern "C" void appear__15daObjBossWarp_cFi();
extern "C" void set_appear__15daObjBossWarp_cFv();
extern "C" void disappear__15daObjBossWarp_cFi();
extern "C" void checkDistance__15daObjBossWarp_cFv();
extern "C" void execute__15daObjBossWarp_cFv();
extern "C" void event_proc_call__15daObjBossWarp_cFv();
extern "C" void actionWait__15daObjBossWarp_cFv();
extern "C" void actionOrderEvent__15daObjBossWarp_cFv();
extern "C" void actionEvent__15daObjBossWarp_cFv();
extern "C" void actionWaitWarp__15daObjBossWarp_cFv();
extern "C" void actionOrderWarpEvent__15daObjBossWarp_cFv();
extern "C" void actionWarpEvent__15daObjBossWarp_cFv();
extern "C" void actionDead__15daObjBossWarp_cFv();
extern "C" void actionOrderChkEvent__15daObjBossWarp_cFv();
extern "C" void actionChkEvent__15daObjBossWarp_cFv();
extern "C" void actionOrderCancelEvent__15daObjBossWarp_cFv();
extern "C" void actionCancelEvent__15daObjBossWarp_cFv();
extern "C" void demoProc__15daObjBossWarp_cFv();
extern "C" void setGoal__15daObjBossWarp_cFv();
extern "C" void draw__15daObjBossWarp_cFv();
extern "C" void _delete__15daObjBossWarp_cFv();
extern "C" static void daObjBossWarp_Draw__FP15daObjBossWarp_c();
extern "C" static void daObjBossWarp_Execute__FP15daObjBossWarp_c();
extern "C" static void daObjBossWarp_Delete__FP15daObjBossWarp_c();
extern "C" static void daObjBossWarp_Create__FP10fopAc_ac_c();
extern "C" void func_8057B304(void* _this, int*);
extern "C" void setPos__11daObjLife_cF4cXyz();
extern "C" void setCurrentPos__16obj_ystone_classF4cXyz();
extern "C" extern char const* const d_a_obj_bosswarp__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FUi();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs();
extern "C" void fpcSch_JudgeForPName__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void onCollectCrystal__20dSv_player_collect_cFUc();
extern "C" void onCollectMirror__20dSv_player_collect_cFUc();
extern "C" void onEventBit__11dSv_event_cFUs();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setPtT__14dEvt_control_cFPv();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void setGoal__16dEvent_manager_cFP4cXyz();
extern "C" void checkStartDemo__16dEvent_manager_cFv();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c();
extern "C" void doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci();
extern "C" void query005__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void normalizeZP__4cXyzFv();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_chaseF__FPfff();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_20();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_20();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" extern u8 data_8057B8D0[4];

//
// Declarations:
//

/* 8057B678-8057B67C -00001 0004+00 3/4 0/0 0/0 .data            l_arcName */
static char* l_arcName = "ef_Portal";

/* 8057B67C-8057B6A0 -00001 0024+00 0/1 0/0 0/0 .data            l_clearEvName */
static char const* l_clearEvName[9] = {
    "BOSSCLEAR01",
    "BOSSCLEAR02",
    "BOSSCLEAR03",
    "BOSSCLEAR03",
    "BOSSCLEAR05",
    "BOSSCLEAR06",
    "BOSSCLEAR07",
    "BOSSCLEAR03",
    "BOSSCLEAR03",
};

/* 8057B6A0-8057B6A4 -00001 0004+00 0/1 0/0 0/0 .data            l_warp_check_evName */
static char const* l_warp_check_evName = "WARP_CHECK";

/* 8057B6A4-8057B6A8 -00001 0004+00 0/1 0/0 0/0 .data            l_warp_cancel_evName */
static char const* l_warp_cancel_evName = "WARP_CANCEL";

/* 8057B360-8057B3B4 000000 0054+00 5/5 0/0 0/0 .rodata          l_hair_offset */
static Vec const l_hair_offset[7] = {
    {49.0f, -34.0f, -3.0f},
    {46.0f, -15.0f, 3.0f},
    {53.0f, -32.0f, 0.0f},
    {50.0f, 0.0f, 0.0f},
    {50.0f, 0.0f, 0.0f},
    {50.0f, 0.0f, 0.0f},
    {50.0f, 0.0f, 0.0f},
};

/* 8057B3B4-8057B408 000054 0054+00 0/1 0/0 0/0 .rodata          l_hair_rotate */
static Vec const l_hair_rotate[7] = {
    {47.0f, 80.0f, 38.0f},
    {-2.0f, 68.0f, 2.0f},
    {160.0f, -60.0f, -160.0f},
    {0.0f, 90.0f, 0.0f},
    {0.0f, 90.0f, 0.0f},
    {0.0f, 90.0f, 0.0f},
    {0.0f, 90.0f, 0.0f},
};

/* 80579638-80579658 000078 0020+00 1/1 0/0 0/0 .text            CheckCreateHeap__FP10fopAc_ac_c */
static int CheckCreateHeap(fopAc_ac_c* i_this) {
    return static_cast<daObjBossWarp_c*>(i_this)->CreateHeap();
}

/* 80579658-80579700 000098 00A8+00 3/3 0/0 0/0 .text            getNowLevel__Fv */
static int getNowLevel() {
    char const* stages[9] = {
        "D_MN05A",
        "D_MN04A",
        "D_MN01A",
        "D_MN10A",
        "D_MN11A",
        "D_MN06A",
        "D_MN07A",
        "D_MN08A",
        "D_MN01A",
    };
    char const* start_stage = dComIfGp_getStartStageName();
    for (int i = 0; i < 9; i++) {
        if (!strcmp(start_stage, stages[i])) {
            return i;
        }
    }
    return -1;
}

/* 80579700-80579748 000140 0048+00 1/1 0/0 0/0 .text            initBaseMtx__15daObjBossWarp_cFv */
void daObjBossWarp_c::initBaseMtx() {
    scale.y = 0.15f;
    mpModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80579748-805797B8 000188 0070+00 2/2 0/0 0/0 .text            setBaseMtx__15daObjBossWarp_cFv */
void daObjBossWarp_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y + 2.0f, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 805797B8-80579934 0001F8 017C+00 1/1 0/0 0/0 .text            Create__15daObjBossWarp_cFv */
int daObjBossWarp_c::Create() {
    initBaseMtx();

    int level = getNowLevel();
    if (level == -1 || level == 8) {
        mBossClearEventId = -1;
    } else {
        mBossClearEventId =
            dComIfGp_getEventManager().getEventIdx(this, l_clearEvName[level], 0xff);
    }
    mBossClearMapToolId = 0xff;

    if (!isFirst() || level == 8) {
        mBossWarpInEventId = dComIfGp_getEventManager().getEventIdx(this, "BOSS_WARPIN", 0xff);
        mBossWarpInMapToolId = 0xff;
        mAction = 3;
        set_appear();
    } else {
        mBossWarpInEventId = dComIfGp_getEventManager().getEventIdx(this, "BOSS_WARPIN_M", 0xff);
        mBossWarpInMapToolId = 0xff;
        mAction = 0;
    }

    eventInfo.mArchiveName = l_arcName;
    mWarpCheckEventId = dComIfGp_getEventManager().getEventIdx(this, l_warp_check_evName, 0xff);
    mWarpCancelEventId = dComIfGp_getEventManager().getEventIdx(this, l_warp_cancel_evName, 0xff);

    mScaleF = 1.0f;
    execute();
    return 1;
}

/* 80579934-80579B28 000374 01F4+00 1/1 0/0 0/0 .text            CreateHeap__15daObjBossWarp_cFv */
int daObjBossWarp_c::CreateHeap() {
    J3DModelData* model_data = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 6);
    mpModel = mDoExt_J3DModel__create(model_data, 0x80000, 0x11000284);
    if (mpModel == NULL) {
        return 0;
    }

    J3DAnmTevRegKey* brk_anm = (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_arcName, 9);
    mpBrkAnm = new mDoExt_brkAnm();
    if (mpBrkAnm == NULL || !mpBrkAnm->init(model_data, brk_anm, 1, 0, 1.0f, 0, -1)) {
        return 0;
    }
    mpBrkAnm->setPlaySpeed(0.0f);

    static int const l_btk_idx[2] = {12, 13};
    static int const l_play_mode[2] = {2, 0};
    for (int i = 0; i < 2; i++) {
        J3DAnmTextureSRTKey* btk_anm =
            (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName, l_btk_idx[i]);
        mpBtkAnm[i] = new mDoExt_btkAnm();
        if (mpBtkAnm[i] == NULL ||
            !mpBtkAnm[i]->init(model_data, btk_anm, 1, l_play_mode[i], 1.0f, 0, -1))
        {
            return 0;
        }
        mpBtkAnm[i]->setPlaySpeed(0.0f);
    }

    return 1;
}

/* 80579B70-80579C30 0005B0 00C0+00 1/1 0/0 0/0 .text            create__15daObjBossWarp_cFv */
cPhs__Step daObjBossWarp_c::create() {
    fopAcM_SetupActor(this, daObjBossWarp_c);
    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&mPhaseReq, l_arcName);
    if (step == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, CheckCreateHeap, 0x18e0)) {
            return cPhs_ERROR_e;
        }
        if (!Create()) {
            return cPhs_ERROR_e;
        }
    }
    return step;
}

/* 80579C30-80579D98 000670 0168+00 3/3 0/0 0/0 .text            appear__15daObjBossWarp_cFi */
void daObjBossWarp_c::appear(int param_0) {
    mParticlePos = current.pos;
    mParticlePos.y += 2.0f;
    static u16 const l_eff_id[4] = {0x8548, 0x8549, 0x854a, 0x854b};

    for (int i = 0; i < 4; i++) {
        if (mpParticle[i] == NULL) {
            if (i == 3) {
                mpParticle[i] = dComIfGp_particle_set(l_eff_id[i], &mParticlePos, NULL, &scale);
            } else {
                mpParticle[i] = dComIfGp_particle_set(l_eff_id[i], &mParticlePos, NULL, NULL);
                if (i == 0) {
                    mpParticle[0] = NULL;
                }
            }
        }
    }

    mpBrkAnm->setPlaySpeed(1.0f);
    mpBtkAnm[0]->setPlaySpeed(1.0f);
    mpBtkAnm[1]->setPlaySpeed(1.0f);
}

/* 80579D98-80579E08 0007D8 0070+00 1/1 0/0 0/0 .text            set_appear__15daObjBossWarp_cFv */
void daObjBossWarp_c::set_appear() {
    mpBrkAnm->setFrame(mpBrkAnm->getEndFrame());
    mpBtkAnm[1]->setFrame(mpBtkAnm[1]->getEndFrame());
    appear(0);
}

/* 80579E08-80579E5C 000848 0054+00 2/2 0/0 0/0 .text            disappear__15daObjBossWarp_cFi */
void daObjBossWarp_c::disappear(int param_0) {
    for (int i = 0; i < 4; i++) {
        if (mpParticle[i] != NULL) {
            mpParticle[i]->becomeInvalidEmitter();
            mpParticle[i]->quitImmortalEmitter();
            mpParticle[i] = NULL;
        }
    }
}

/* 80579E5C-80579FF8 00089C 019C+00 2/2 0/0 0/0 .text            checkDistance__15daObjBossWarp_cFv
 */
BOOL daObjBossWarp_c::checkDistance() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    f32 dist_xz = player->current.pos.absXZ(current.pos);
    f32 dist_y = player->current.pos.y - current.pos.y;
    if (dist_xz < 150.0f && dist_y < 200.0f && dist_y > -1.0f) {
        return true;
    } else {
        return false;
    }
}

/* 80579FF8-8057A390 000A38 0398+00 2/2 0/0 0/0 .text            execute__15daObjBossWarp_cFv */
int daObjBossWarp_c::execute() {
    if (dStage_stagInfo_GetSTType(dComIfGp_getStage()->getStagInfo()) != 3) {
        u8 sw = getSwNo();
        if (sw == 0xff || fopAcM_isSwitch(this, sw)) {
            field_0x591 = true;
        } else {
            field_0x591 = false;
        }
        daPy_py_c* player = daPy_getPlayerActorClass();
        if (field_0x591) {
            appear(0);
            if (checkDistance()) {
                u8 scene = getSceneListNo();
                player->onSceneChangeArea(scene, 0xff, 0);
            }
        }
    } else {
        if (!isFirst() && !dComIfGp_evmng_checkStartDemo()) {
            field_0x595 = true;
            field_0x620 = current.pos;
        }
        event_proc_call();

        daMidna_c* midna = (daMidna_c*)daPy_py_c::getMidnaActor();
        if (field_0x595 && midna != NULL) {
            midna->onTagWaitPos(&field_0x620);
        }
        obj_ystone_class* ystone = (obj_ystone_class*)fopAcM_SearchByName(PROC_OBJ_YSTONE);
        int level = getNowLevel();

        if (ystone != NULL && midna != NULL) {
            switch (field_0x599) {
            case 0:
                break;
            case 1:
                mDoMtx_stack_c::copy(midna->getMtxHairTop());
                cXyz hair_offset = l_hair_offset[level];
                mDoMtx_stack_c::transM(hair_offset);
                mDoMtx_stack_c::ZXYrotM(
                    cM_deg2s(l_hair_rotate[level].x),
                    cM_deg2s(l_hair_rotate[level].y),
                    cM_deg2s(l_hair_rotate[level].z)
                );
                mDoMtx_stack_c::scaleM(mScaleF, mScaleF, mScaleF);
                ystone->setBaseMtx(mDoMtx_stack_c::get());
                break;
            }
        }
    }

    mpBrkAnm->play();
    mpBtkAnm[0]->play();
    mpBtkAnm[1]->play();

    if (mScalingUp) {
        cLib_chaseF(&scale.y, 1.0f, 0.016f);
    }

    if (mpParticle[3] != NULL) {
        JGeometry::TVec3<f32> scale_vec;
        JGeometry::setTVec3f(&scale.x, &scale_vec.x);
        mpParticle[3]->setGlobalScale(scale_vec);
    }

    if (mpBrkAnm != NULL && mpBrkAnm->getFrame() != 0.0f) {
        mDoAud_seStartLevel(Z2SE_OBJ_MDN_ESCAPE_HOLE, &current.pos, 0, 0);
    }

    setBaseMtx();
    return 1;
}

/* 8057A390-8057A4F4 000DD0 0164+00 1/1 0/0 0/0 .text event_proc_call__15daObjBossWarp_cFv */
void daObjBossWarp_c::event_proc_call() {
    typedef void (daObjBossWarp_c::*daObjBossWarp_action)();
    static daObjBossWarp_action l_func[11] = {
        &actionWait,
        &actionOrderEvent,
        &actionEvent,
        &actionWaitWarp,
        &actionOrderWarpEvent,
        &actionWarpEvent,
        &actionDead,
        &actionOrderChkEvent,
        &actionChkEvent,
        &actionOrderCancelEvent,
        &actionCancelEvent,
    };
    (this->*l_func[mAction])();
}

/* 8057A4F4-8057A54C 000F34 0058+00 1/0 0/0 0/0 .text            actionWait__15daObjBossWarp_cFv */
void daObjBossWarp_c::actionWait() {
    setAction(ACT_ORDER_EVENT);
    fopAcM_orderOtherEventId(this, mBossClearEventId, mBossClearMapToolId, 0xffff, 3, 1);
    eventInfo.onCondition(2);
}

/* 8057A54C-8057A610 000F8C 00C4+00 1/0 0/0 0/0 .text actionOrderEvent__15daObjBossWarp_cFv */
void daObjBossWarp_c::actionOrderEvent() {
    if (eventInfo.checkCommandDemoAccrpt()) {
        dComIfGp_event_setTalkPartner(fopAcM_SearchByName(PROC_OBJ_YSTONE));
        setAction(ACT_EVENT);
        mStaffId = dComIfGp_evmng_getMyStaffId("WARPHOLE", NULL, 0);
        demoProc();
    } else {
        fopAcM_orderOtherEventId(this, mBossClearEventId, mBossClearMapToolId, 0xffff, 3, 1);
        eventInfo.onCondition(2);
    }
}

/* 8057A610-8057A678 001050 0068+00 1/0 0/0 0/0 .text            actionEvent__15daObjBossWarp_cFv */
void daObjBossWarp_c::actionEvent() {
    if (dComIfGp_evmng_endCheck(mBossClearEventId)) {
        setAction(ACT_WAIT_WARP);
        dComIfGp_event_reset();
    } else {
        demoProc();
    }
}

/* 8057A678-8057A6E0 0010B8 0068+00 1/0 0/0 0/0 .text            actionWaitWarp__15daObjBossWarp_cFv
 */
void daObjBossWarp_c::actionWaitWarp() {
    if (checkDistance()) {
        setAction(ACT_ORDER_CHK_EVENT);
        fopAcM_orderOtherEventId(this, mWarpCheckEventId, 0xff, 0xffff, 0, 1);
        eventInfo.onCondition(2);
    }
}

/* 8057A6E0-8057A778 001120 0098+00 1/0 0/0 0/0 .text actionOrderWarpEvent__15daObjBossWarp_cFv */
void daObjBossWarp_c::actionOrderWarpEvent() {
    if (eventInfo.checkCommandDemoAccrpt()) {
        setAction(ACT_WARP_EVENT);
        mStaffId = dComIfGp_evmng_getMyStaffId("WARPHOLE", NULL, 0);
        demoProc();
    } else {
        fopAcM_orderOtherEventId(this, mBossWarpInEventId, mBossWarpInMapToolId, 0xffff, 0, 1);
        eventInfo.onCondition(2);
    }
}

/* 8057A778-8057A7C4 0011B8 004C+00 1/0 0/0 0/0 .text actionWarpEvent__15daObjBossWarp_cFv */
void daObjBossWarp_c::actionWarpEvent() {
    if (!dComIfGp_evmng_endCheck(mBossWarpInEventId)) {
        demoProc();
    }
}

/* 8057A7C4-8057A7C8 001204 0004+00 1/0 0/0 0/0 .text            actionDead__15daObjBossWarp_cFv */
void daObjBossWarp_c::actionDead() {
    /* empty function */
}

/* 8057A7C8-8057A8B4 001208 00EC+00 1/0 0/0 0/0 .text actionOrderChkEvent__15daObjBossWarp_cFv */
void daObjBossWarp_c::actionOrderChkEvent() {
    daMidna_c* midna = daPy_py_c::getMidnaActor();
    if (eventInfo.checkCommandDemoAccrpt()) {
        setAction(ACT_CHK_EVENT);
        mStaffId = dComIfGp_evmng_getMyStaffId("WARPHOLE", NULL, 0);
        attention_info.position = midna->attention_info.position;
        attention_info.position.y += 100.0f;
        eyePos = attention_info.position;
        demoProc();
    } else {
        fopAcM_orderOtherEventId(this, mWarpCheckEventId, 0xff, 0xffff, 0, 1);
        eventInfo.onCondition(2);
    }
}

/* 8057A8B4-8057A994 0012F4 00E0+00 1/0 0/0 0/0 .text            actionChkEvent__15daObjBossWarp_cFv
 */
void daObjBossWarp_c::actionChkEvent() {
    if (dComIfGp_evmng_endCheck(mWarpCheckEventId)) {
        dComIfGp_event_reset();
        if (mWarpChoice == 0) {
            setAction(ACT_ORDER_WARP_EVENT);
            fopAcM_orderOtherEventId(this, mBossWarpInEventId, mBossWarpInMapToolId, 0xffff, 0, 1);
            eventInfo.onCondition(2);
        } else if (mWarpChoice == 1) {
            setAction(ACT_ORDER_CANCEL_EVENT);
            fopAcM_orderOtherEventId(this, mWarpCancelEventId, 0xff, 0xffff, 0, 1);
            eventInfo.onCondition(2);
        }
    } else {
        demoProc();
    }
}

/* 8057A994-8057AA2C 0013D4 0098+00 1/0 0/0 0/0 .text actionOrderCancelEvent__15daObjBossWarp_cFv
 */
void daObjBossWarp_c::actionOrderCancelEvent() {
    if (eventInfo.checkCommandDemoAccrpt()) {
        setAction(ACT_CANCEL_EVENT);
        mStaffId = dComIfGp_evmng_getMyStaffId("WARPHOLE", NULL, 0);
        demoProc();
    } else {
        fopAcM_orderOtherEventId(this, mWarpCancelEventId, 0xff, 0xffff, 0, 1);
        eventInfo.onCondition(2);
    }
}

/* 8057AA2C-8057AA94 00146C 0068+00 1/0 0/0 0/0 .text actionCancelEvent__15daObjBossWarp_cFv */
void daObjBossWarp_c::actionCancelEvent() {
    if (dComIfGp_evmng_endCheck(mWarpCancelEventId)) {
        dComIfGp_event_reset();
        setAction(ACT_WAIT_WARP);
    } else {
        demoProc();
    }
}

/* 8057B490-8057B4B4 000130 0024+00 0/0 0/0 0/0 .rodata          l_dangeon_clr_bitNo$4282 */
static int const l_dangeon_clr_bitNo[9] = {
    0x37, 0x40, 0x4E, 0x109, 0x10A, 0x10B, 0x10C, -1, -1
};

/* 8057B7B0-8057B7EC -00001 003C+00 1/1 0/0 0/0 .data            action_table$4273 */
static char* action_table[15] = {
    "WAIT",
    "APPEAR",
    "DISAPPEAR",
    "SCENE_CHG",
    "STONE_FALL",
    "STONE_MIDNA",
    "WALK_TARGET1",
    "APPEAR_END",
    "STONE_DELETE",
    "STONE_PUTAWAY",
    "WCHECK",
    "SETPOS",
    "SCALING",
    "STONE_SCALE",
    "HEART_MOVE",
};

/* 8057B7EC-8057B818 -00001 002C+00 1/1 0/0 0/0 .data            @4504 */
SECTION_DATA static void* lit_4504[11] = {
    (void*)(((char*)demoProc__15daObjBossWarp_cFv) + 0x444),
    (void*)(((char*)demoProc__15daObjBossWarp_cFv) + 0x464),
    (void*)(((char*)demoProc__15daObjBossWarp_cFv) + 0x474),
    (void*)(((char*)demoProc__15daObjBossWarp_cFv) + 0x628),
    (void*)(((char*)demoProc__15daObjBossWarp_cFv) + 0x484),
    (void*)(((char*)demoProc__15daObjBossWarp_cFv) + 0x51C),
    (void*)(((char*)demoProc__15daObjBossWarp_cFv) + 0x61C),
    (void*)(((char*)demoProc__15daObjBossWarp_cFv) + 0x598),
    (void*)(((char*)demoProc__15daObjBossWarp_cFv) + 0x61C),
    (void*)(((char*)demoProc__15daObjBossWarp_cFv) + 0x54C),
    (void*)(((char*)demoProc__15daObjBossWarp_cFv) + 0x5C8),
};

/* 8057B818-8057B834 -00001 001C+00 1/1 0/0 0/0 .data            @4503 */
SECTION_DATA static void* lit_4503[7] = {
    (void*)(((char*)demoProc__15daObjBossWarp_cFv) + 0x304),
    (void*)(((char*)demoProc__15daObjBossWarp_cFv) + 0x31C),
    (void*)(((char*)demoProc__15daObjBossWarp_cFv) + 0x334),
    (void*)(((char*)demoProc__15daObjBossWarp_cFv) + 0x390),
    (void*)(((char*)demoProc__15daObjBossWarp_cFv) + 0x34C),
    (void*)(((char*)demoProc__15daObjBossWarp_cFv) + 0x364),
    (void*)(((char*)demoProc__15daObjBossWarp_cFv) + 0x37C),
};

/* 8057B834-8057B870 -00001 003C+00 1/1 0/0 0/0 .data            @4502 */
SECTION_DATA static void* lit_4502[15] = {
    (void*)(((char*)demoProc__15daObjBossWarp_cFv) + 0xF8),
    (void*)(((char*)demoProc__15daObjBossWarp_cFv) + 0x134),
    (void*)(((char*)demoProc__15daObjBossWarp_cFv) + 0x18C),
    (void*)(((char*)demoProc__15daObjBossWarp_cFv) + 0x19C),
    (void*)(((char*)demoProc__15daObjBossWarp_cFv) + 0x1C8),
    (void*)(((char*)demoProc__15daObjBossWarp_cFv) + 0x39C),
    (void*)(((char*)demoProc__15daObjBossWarp_cFv) + 0x3B4),
    (void*)(((char*)demoProc__15daObjBossWarp_cFv) + 0x424),
    (void*)(((char*)demoProc__15daObjBossWarp_cFv) + 0x424),
    (void*)(((char*)demoProc__15daObjBossWarp_cFv) + 0x3A8),
    (void*)(((char*)demoProc__15daObjBossWarp_cFv) + 0x3C4),
    (void*)(((char*)demoProc__15daObjBossWarp_cFv) + 0x3E0),
    (void*)(((char*)demoProc__15daObjBossWarp_cFv) + 0x3EC),
    (void*)(((char*)demoProc__15daObjBossWarp_cFv) + 0x424),
    (void*)(((char*)demoProc__15daObjBossWarp_cFv) + 0x3F8),
};

/* 8057B4B4-8057B4B8 000154 0004+00 0/1 0/0 0/0 .rodata          @4489 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4489 = 100000.0f;
COMPILER_STRIP_GATE(0x8057B4B4, &lit_4489);
#pragma pop

/* 8057B4B8-8057B4BC 000158 0004+00 0/1 0/0 0/0 .rodata          @4490 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4490 = 900.0f;
COMPILER_STRIP_GATE(0x8057B4B8, &lit_4490);
#pragma pop

/* 8057B4EC-8057B4EC 00018C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8057B64F = "Timer";
#pragma pop

/* 8057AA94-8057B0D8 0014D4 0644+00 11/8 0/0 0/0 .text            demoProc__15daObjBossWarp_cFv */
// NONMATCHING - regalloc
int daObjBossWarp_c::demoProc() {
    static char* action_table[15] = {
        "WAIT",
        "APPEAR",
        "DISAPPEAR",
        "SCENE_CHG",
        "STONE_FALL",
        "STONE_MIDNA",
        "WALK_TARGET1",
        "APPEAR_END",
        "STONE_DELETE",
        "STONE_PUTAWAY",
        "WCHECK",
        "SETPOS",
        "SCALING",
        "STONE_SCALE",
        "HEART_MOVE",
    };

    static int const l_dangeon_clr_bitNo[9] = {
        0x37, /* dSv_event_flag_c::M_022 - Forest Temple - Forest Temple clear (Midna creates warp hole) */
        0x40, /* dSv_event_flag_c::M_031 - Goron Mines - Goron Mines clear */
        0x4E, /* dSv_event_flag_c::M_045 - Lakebed Temple - Lakebed Temple clear */
        0x109, /* dSv_event_flag_c::F_0265 - Arbiter's Grounds - Arbiter's Grounds clear */
        0x10A, /* dSv_event_flag_c::F_0266 - Snowpeak Ruins - Snowpeak Ruins clear */
        0x10B, /* dSv_event_flag_c::F_0267 - Temple of Time - Temple of Time clear */
        0x10C,
        -1,
        -1
    };

    daPy_py_c* player = (daPy_py_c*)daPy_getPlayerActorClass();
    obj_ystone_class* ystone = (obj_ystone_class*)fopAcM_SearchByName(PROC_OBJ_YSTONE);
    cXyz unused(100000.0f, 0.0f, 0.0f);
    daMidna_c* midna = (daMidna_c*)daPy_py_c::getMidnaActor();
    daObjLife_c* life_container = (daObjLife_c*)fopAcM_SearchByName(PROC_Obj_LifeContainer);
    cXyz life_pos(900.0f, 0.0f, 0.0f);
    int act_idx = dComIfGp_evmng_getMyActIdx(mStaffId, action_table, 15, 0, 0);

    if (dComIfGp_evmng_getIsAddvance(mStaffId)) {
        switch (act_idx) {
        case 0:  // WAIT
            int* timer = dComIfGp_evmng_getMyIntegerP(mStaffId, "Timer");
            if (timer == NULL) {
                mTimer = 1;
            } else {
                mTimer = *timer;
            }
            break;
        case 1:  // APPEAR
            int level = getNowLevel();
            if (level >= 0 && level < 10 && l_dangeon_clr_bitNo[level] > 0) {
                dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[l_dangeon_clr_bitNo[level]]);
            }
            appear(0);
            break;
        case 2:  // DISAPPEAR
            disappear(0);
            break;
        case 3:  // SCENE_CHG
            int scene;
            if (isFirst()) {
                scene = getSceneListNo();
            } else {
                scene = getSceneListNo();
            }
            player->onSceneChangeArea(scene, 0xff, 0);
            break;
        case 4:  // STONE_FALL
            if (ystone != NULL) {
                mYstonePos = ystone->current.pos;
                if (getNowLevel() < 3) {
                    mYstonePos.y += 50.0f;
                } else if (getNowLevel() == 5) {
                    mYstonePos.y = player->current.pos.y + 270.0f + 120.0f;
                    ystone->setCurrentPos(mYstonePos);
                } else {
                    mYstonePos.y += 120.0f;
                }
            }
            if (getNowLevel() < 3) {
                mYstoneTargetPos.set(0.0f, 145.0f, 74.0f);
            } else {
                mYstoneTargetPos.set(0.0f, 175.0f, 54.0f);
            }
            mDoMtx_stack_c::transS(player->current.pos);
            mDoMtx_stack_c::YrotM(player->shape_angle.y);
            mDoMtx_stack_c::multVec(&mYstoneTargetPos, &mYstoneTargetPos);
            mYstonePos.x = mYstoneTargetPos.x;
            mYstonePos.z = mYstoneTargetPos.z;
            switch (getNowLevel()) {
            case 0:
                dComIfGs_onCollectCrystal(0);
                break;
            case 1:
                dComIfGs_onCollectCrystal(1);
                break;
            case 2:
                dComIfGs_onCollectCrystal(2);
                break;
            case 4:
                dComIfGs_onCollectMirror(1);
                break;
            case 5:
                dComIfGs_onCollectMirror(2);
                break;
            case 6:
                dComIfGs_onCollectMirror(3);
                break;
            }
            mCounter = 0;
            break;
        case 5:  // STONE_MIDNA
            mCounter = 0;
            break;
        case 9:  // STONE_PUTAWAY
            mCounter = 0;
            break;
        case 6:  // WALK_TARGET1
            dComIfGp_evmng_setGoal(&current.pos);
            break;
        case 7:  // APPEAR_END
            break;
        case 8:  // STONE_DELETE
            break;
        case 10:  // WCHECK
            mMsgFlow.init(this, 0xbc0, 0, NULL);
            break;
        case 11:  // SETPOS
            setGoal();
            break;
        case 12:  // SCALING
            mScalingUp = true;
            break;
        case 13:  // STONE_SCALE
            break;
        case 14:  // HEART_MOVE
            if (life_container != NULL) {
                life_container->setPos(life_pos);
            }
            break;
        }
    }

    switch (act_idx) {
    case 0:  // WAIT
        if (cLib_calcTimer(&mTimer) == 0) {
            dComIfGp_evmng_cutEnd(mStaffId);
        }
        break;
    case 1:  // APPEAR
        dComIfGp_evmng_cutEnd(mStaffId);
        break;
    case 2:  // DISAPPEAR
        dComIfGp_evmng_cutEnd(mStaffId);
        break;
    case 3:  // SCENE_CHG
        break;
    case 4:  // STONE_FALL
        if (ystone != NULL) {
            f32 dist = cLib_addCalc(&mYstonePos.y, mYstoneTargetPos.y, 0.05f, 2.0f, 0.1f);
            if (dist < 40.0f) {
                mCounter++;
                if (ystone->getMirrorMode() == 2) {
                    ystone->setMirrorMode(3);
                }
            }
            if (dist == 0.0f && mCounter > 50) {
                dComIfGp_evmng_cutEnd(mStaffId);
            }
            ystone->setCurrentPos(mYstonePos);
        }
        break;
    case 5:  // STONE_MIDNA
        mCounter++;
        if (mCounter == 12) {
            field_0x599 = 1;
        }
        dComIfGp_evmng_cutEnd(mStaffId);
        break;
    case 9:  // STONE_PUTAWAY
        mCounter++;
        if (cLib_chaseF(&mScaleF, 0.0f, 0.033f)) {
            fopAcM_delete(fopAcM_GetID(ystone));
            dComIfGp_evmng_cutEnd(mStaffId);
        }
        break;
    case 7:  // APPEAR_END
        field_0x595 = true;
        field_0x620 = midna->current.pos;
        dComIfGp_evmng_cutEnd(mStaffId);
        break;
    case 10:  // WCHECK
        if (mMsgFlow.doFlow(this, NULL, 0)) {
            dComIfGp_evmng_cutEnd(mStaffId);
        } else if (mMsgFlow.isSelectMessage()) {
            mWarpChoice = mMsgFlow.getSelectNum();
        }
        break;
    default:
        dComIfGp_evmng_cutEnd(mStaffId);
        break;
    }

    return 1;
}

/* ############################################################################################## */
/* 8057B4BC-8057B4C0 00015C 0004+00 0/0 0/0 0/0 .rodata          @4491 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4491 = 50.0f;
COMPILER_STRIP_GATE(0x8057B4BC, &lit_4491);
#pragma pop

/* 8057B4C0-8057B4C4 000160 0004+00 0/0 0/0 0/0 .rodata          @4492 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4492 = 120.0f;
COMPILER_STRIP_GATE(0x8057B4C0, &lit_4492);
#pragma pop

/* 8057B4C4-8057B4C8 000164 0004+00 0/0 0/0 0/0 .rodata          @4493 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4493 = 270.0f;
COMPILER_STRIP_GATE(0x8057B4C4, &lit_4493);
#pragma pop

/* 8057B4C8-8057B4CC 000168 0004+00 0/0 0/0 0/0 .rodata          @4494 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4494 = 145.0f;
COMPILER_STRIP_GATE(0x8057B4C8, &lit_4494);
#pragma pop

/* 8057B4CC-8057B4D0 00016C 0004+00 0/0 0/0 0/0 .rodata          @4495 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4495 = 74.0f;
COMPILER_STRIP_GATE(0x8057B4CC, &lit_4495);
#pragma pop

/* 8057B4D0-8057B4D4 000170 0004+00 0/0 0/0 0/0 .rodata          @4496 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4496 = 175.0f;
COMPILER_STRIP_GATE(0x8057B4D0, &lit_4496);
#pragma pop

/* 8057B4D4-8057B4D8 000174 0004+00 0/0 0/0 0/0 .rodata          @4497 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4497 = 54.0f;
COMPILER_STRIP_GATE(0x8057B4D4, &lit_4497);
#pragma pop

/* 8057B4D8-8057B4DC 000178 0004+00 0/0 0/0 0/0 .rodata          @4498 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4498 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x8057B4D8, &lit_4498);
#pragma pop

/* 8057B4DC-8057B4E0 00017C 0004+00 0/0 0/0 0/0 .rodata          @4499 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4499 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x8057B4DC, &lit_4499);
#pragma pop

/* 8057B4E0-8057B4E4 000180 0004+00 0/0 0/0 0/0 .rodata          @4500 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4500 = 40.0f;
COMPILER_STRIP_GATE(0x8057B4E0, &lit_4500);
#pragma pop

/* 8057B4E4-8057B4E8 000184 0004+00 0/0 0/0 0/0 .rodata          @4501 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4501 = 0x3D072B02;
COMPILER_STRIP_GATE(0x8057B4E4, &lit_4501);
#pragma pop

/* 8057B0D8-8057B190 001B18 00B8+00 1/1 0/0 0/0 .text            setGoal__15daObjBossWarp_cFv */
void daObjBossWarp_c::setGoal() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz delta = player->current.pos - current.pos;
    cXyz goal = current.pos + delta.normalizeZP() * 250.0f;
    dComIfGp_evmng_setGoal(&goal);
}

/* 8057B190-8057B23C 001BD0 00AC+00 1/1 0/0 0/0 .text            draw__15daObjBossWarp_cFv */
int daObjBossWarp_c::draw() {
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    mpBrkAnm->entry(mpModel->getModelData());
    mpBtkAnm[0]->entry(mpModel->getModelData());
    mpBtkAnm[1]->entry(mpModel->getModelData());
    mDoExt_modelUpdateDL(mpModel);
    return 1;
}

/* 8057B23C-8057B284 001C7C 0048+00 1/1 0/0 0/0 .text            _delete__15daObjBossWarp_cFv */
int daObjBossWarp_c::_delete() {
    disappear(0);
    dComIfG_resDelete(&mPhaseReq, l_arcName);
    return 1;
}

/* 8057B284-8057B2A4 001CC4 0020+00 1/0 0/0 0/0 .text daObjBossWarp_Draw__FP15daObjBossWarp_c */
static int daObjBossWarp_Draw(daObjBossWarp_c* i_this) {
    return i_this->draw();
}

/* 8057B2A4-8057B2C4 001CE4 0020+00 1/0 0/0 0/0 .text daObjBossWarp_Execute__FP15daObjBossWarp_c
 */
static int daObjBossWarp_Execute(daObjBossWarp_c* i_this) {
    return i_this->execute();
}

/* 8057B2C4-8057B2E4 001D04 0020+00 1/0 0/0 0/0 .text daObjBossWarp_Delete__FP15daObjBossWarp_c */
static int daObjBossWarp_Delete(daObjBossWarp_c* i_this) {
    return i_this->_delete();
}

/* 8057B2E4-8057B304 001D24 0020+00 1/0 0/0 0/0 .text daObjBossWarp_Create__FP10fopAc_ac_c */
static cPhs__Step daObjBossWarp_Create(fopAc_ac_c* i_this) {
    return static_cast<daObjBossWarp_c*>(i_this)->create();
}

/* 8057B304-8057B320 001D44 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_8057B304(void* _this, int* param_0) {
    // NONMATCHING
}

/* 8057B320-8057B33C 001D60 001C+00 1/1 0/0 0/0 .text            setPos__11daObjLife_cF4cXyz */
// void daObjLife_c::setPos(cXyz param_0) {
extern "C" void setPos__11daObjLife_cF4cXyz() {
    // NONMATCHING
}

/* 8057B33C-8057B358 001D7C 001C+00 1/1 0/0 0/0 .text setCurrentPos__16obj_ystone_classF4cXyz */
// void obj_ystone_class::setCurrentPos(cXyz param_0) {
extern "C" void setCurrentPos__16obj_ystone_classF4cXyz() {
    // NONMATCHING
}

/* 8057B870-8057B890 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjBossWarp_Method */
static actor_method_class l_daObjBossWarp_Method = {
    (process_method_func)daObjBossWarp_Create,
    (process_method_func)daObjBossWarp_Delete,
    (process_method_func)daObjBossWarp_Execute,
    (process_method_func)NULL,
    (process_method_func)daObjBossWarp_Draw,
};

/* 8057B890-8057B8C0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_BossWarp */
extern actor_process_profile_definition g_profile_Obj_BossWarp = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_Obj_BossWarp,
    &g_fpcLf_Method.base,
    sizeof(daObjBossWarp_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x2DA,
    &l_daObjBossWarp_Method,
    0x44000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
