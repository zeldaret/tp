/**
 * @file d_a_npc_midp.cpp
 * 
*/

#include "d/actor/d_a_npc_midp.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__12daNpc_midP_cFv();
extern "C" void create__12daNpc_midP_cFv();
extern "C" void CreateHeap__12daNpc_midP_cFv();
extern "C" void __dt__15J3DTevKColorAnmFv();
extern "C" void __ct__15J3DTevKColorAnmFv();
extern "C" void __dt__14J3DTevColorAnmFv();
extern "C" void __ct__14J3DTevColorAnmFv();
extern "C" void __dt__11J3DTexNoAnmFv();
extern "C" void __ct__11J3DTexNoAnmFv();
extern "C" void __dt__12J3DTexMtxAnmFv();
extern "C" void __ct__12J3DTexMtxAnmFv();
extern "C" void __dt__14J3DMatColorAnmFv();
extern "C" void __ct__14J3DMatColorAnmFv();
extern "C" void Delete__12daNpc_midP_cFv();
extern "C" void Execute__12daNpc_midP_cFv();
extern "C" void Draw__12daNpc_midP_cFv();
extern "C" void createHeapCallBack__12daNpc_midP_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__12daNpc_midP_cFP8J3DJointi();
extern "C" void getType__12daNpc_midP_cFv();
extern "C" void isDelete__12daNpc_midP_cFv();
extern "C" void reset__12daNpc_midP_cFv();
extern "C" void afterJntAnm__12daNpc_midP_cFi();
extern "C" void ctrlBtk__12daNpc_midP_cFv();
extern "C" void setParam__12daNpc_midP_cFv();
extern "C" void setAfterTalkMotion__12daNpc_midP_cFv();
extern "C" void srchActors__12daNpc_midP_cFv();
extern "C" void evtTalk__12daNpc_midP_cFv();
extern "C" void evtCutProc__12daNpc_midP_cFv();
extern "C" void action__12daNpc_midP_cFv();
extern "C" void beforeMove__12daNpc_midP_cFv();
extern "C" void setAttnPos__12daNpc_midP_cFv();
extern "C" void setCollision__12daNpc_midP_cFv();
extern "C" bool drawDbgInfo__12daNpc_midP_cFv();
extern "C" void drawGhost__12daNpc_midP_cFv();
extern "C" void selectAction__12daNpc_midP_cFv();
extern "C" void chkAction__12daNpc_midP_cFM12daNpc_midP_cFPCvPvPv_i();
extern "C" void setAction__12daNpc_midP_cFM12daNpc_midP_cFPCvPvPv_i();
extern "C" void wait__12daNpc_midP_cFPv();
extern "C" void talk__12daNpc_midP_cFPv();
// extern "C" static void daNpc_midP_Create__FPv();
// extern "C" static void daNpc_midP_Delete__FPv();
// extern "C" static void daNpc_midP_Execute__FPv();
// extern "C" static void daNpc_midP_Draw__FPv();
// extern "C" static bool daNpc_midP_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__8daNpcT_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __dt__5csXyzFv();
extern "C" void
__ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" void __ct__5csXyzFv();
extern "C" void __dt__15daNpcT_JntAnm_cFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__18daNpcT_ActorMngr_cFv();
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs();
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs();
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi();
extern "C" s32 getFootLJointNo__8daNpcT_cFv();
extern "C" s32 getFootRJointNo__8daNpcT_cFv();
extern "C" s32 getEyeballMaterialNo__8daNpcT_cFv();
extern "C" bool checkChangeEvt__8daNpcT_cFv();
extern "C" bool evtEndProc__8daNpcT_cFv();
extern "C" void afterMoved__8daNpcT_cFv();
extern "C" bool chkXYItems__8daNpcT_cFv();
extern "C" void decTmr__8daNpcT_cFv();
extern "C" void drawOtherMdl__8daNpcT_cFv();
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi();
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi();
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c();
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c();
extern "C" void changeAnm__8daNpcT_cFPiPi();
extern "C" void changeBck__8daNpcT_cFPiPi();
extern "C" void changeBtp__8daNpcT_cFPiPi();
extern "C" void changeBtk__8daNpcT_cFPiPi();
extern "C" void __sinit_d_a_npc_midp_cpp();
extern "C" void
__ct__12daNpc_midP_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" s32 getEyeballRMaterialNo__12daNpc_midP_cFv();
extern "C" s32 getEyeballLMaterialNo__12daNpc_midP_cFv();
extern "C" s32 getHeadJointNo__12daNpc_midP_cFv();
extern "C" s32 getNeckJointNo__12daNpc_midP_cFv();
extern "C" s32 getBackboneJointNo__12daNpc_midP_cFv();
extern "C" void checkChangeJoint__12daNpc_midP_cFi();
extern "C" void checkRemoveJoint__12daNpc_midP_cFi();
extern "C" void __dt__18daNpc_midP_Param_cFv();
// extern "C" static void func_80A7399C();
// extern "C" static void func_80A739A4();
extern "C" u8 const m__18daNpc_midP_Param_c[140];
extern "C" extern char const* const d_a_npc_midp__stringBase0;
extern "C" void* mCutNameList__12daNpc_midP_c;
extern "C" u8 mCutList__12daNpc_midP_c[12];

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWallR__12dBgS_AcchCirFf();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void initialize__18daNpcT_ActorMngr_cFv();
extern "C" void entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c();
extern "C" void remove__18daNpcT_ActorMngr_cFv();
extern "C" void getActorP__18daNpcT_ActorMngr_cFv();
extern "C" void initialize__15daNpcT_MatAnm_cFv();
extern "C" void initialize__22daNpcT_MotionSeqMngr_cFv();
extern "C" void initialize__15daNpcT_JntAnm_cFv();
extern "C" void setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz();
extern "C" void calcJntRad__15daNpcT_JntAnm_cFfff();
extern "C" void calc__19daNpcT_DmgStagger_cFi();
extern "C" void tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" void loadRes__8daNpcT_cFPCScPPCc();
extern "C" void deleteRes__8daNpcT_cFPCScPPCc();
extern "C" void execute__8daNpcT_cFv();
extern "C" void draw__8daNpcT_cFiifP11_GXColorS10fiii();
extern "C" void setEnvTevColor__8daNpcT_cFv();
extern "C" void setRoomNo__8daNpcT_cFv();
extern "C" void setMtx__8daNpcT_cFv();
extern "C" void ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel();
extern "C" void evtProc__8daNpcT_cFv();
extern "C" void setFootPos__8daNpcT_cFv();
extern "C" void setFootPrtcl__8daNpcT_cFP4cXyzff();
extern "C" bool checkCullDraw__8daNpcT_cFv();
extern "C" void twilight__8daNpcT_cFv();
extern "C" void evtOrder__8daNpcT_cFv();
extern "C" void evtChange__8daNpcT_cFv();
extern "C" void clrParam__8daNpcT_cFv();
extern "C" void setFaceMotionAnm__8daNpcT_cFib();
extern "C" void setMotionAnm__8daNpcT_cFifi();
extern "C" void setAngle__8daNpcT_cFs();
extern "C" void chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs();
extern "C" void srchPlayerActor__8daNpcT_cFv();
extern "C" void step__8daNpcT_cFsiiii();
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void __dt__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void getTexNo__16J3DAnmTexPatternCFUsPUs();
extern "C" void initialize__14J3DMaterialAnmFv();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_test();
extern "C" void __ptmf_cmpr();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_22();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern u8 const __ptmf_null[12 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" u8 mCcDCyl__8daNpcT_c[68];
extern "C" extern void* __vt__8daNpcT_c[49];
extern "C" extern void* __vt__15daNpcT_MatAnm_c[4 + 1 /* padding */];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" extern void* __vt__14J3DMaterialAnm[4];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" void __register_global_object();

UNK_REL_DATA

/* 80A73AD4-80A73ADC 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
static int l_bmdData[2][1] = {
    {9}, {1}
};

/* 80A73ADC-80A73AEC -00001 0010+00 0/1 0/0 0/0 .data            l_evtList */
static daNpcT_evtData_c l_evtList[2] = {
    {"", 0},
    {"NO_RESPONSE", 0},
};

/* 80A73AEC-80A73AF4 -00001 0008+00 2/3 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[2] = {
    "",
    "midP"
};

/* 80A73AF4-80A73AF8 000040 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
static s8 l_loadResPtrn0[1 + 1 /* padding */] = {
    1,
    -1
};

/* 80A73AF8-80A73B00 -00001 0008+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
static s8* l_loadResPtrnList[2] = {
    l_loadResPtrn0,
    l_loadResPtrn0,
};

/* 80A73B00-80A73B1C 00004C 001C+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
static daNpcT_faceMotionAnmData_c l_faceMotionAnmData = {
    -1, 0, 0, 15, 2, 1, 1
};

/* 80A73B1C-80A73B38 000068 001C+00 0/1 0/0 0/0 .data            l_motionAnmData */
static daNpcT_motionAnmData_c l_motionAnmData = {
    6, 2, 1, 12, 0, 1, 1, 0
};

/* 80A73B38-80A73B48 000084 0010+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData[4] = {
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}
};

/* 80A73B48-80A73B58 000094 0010+00 0/1 0/0 0/0 .data            l_motionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData[4] = {
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}
};

/* 80A73B58-80A73B5C -00001 0004+00 1/1 0/0 0/0 .data            mCutNameList__12daNpc_midP_c */
char* daNpc_midP_c::mCutNameList = "";

/* 80A73B5C-80A73B68 0000A8 000C+00 2/2 0/0 0/0 .data            mCutList__12daNpc_midP_c */
daNpc_midP_c::cutFunc daNpc_midP_c::mCutList[1] = { 0 };

/* 80A70C6C-80A70D90 0000EC 0124+00 1/0 0/0 0/0 .text            __dt__12daNpc_midP_cFv */
daNpc_midP_c::~daNpc_midP_c() {
    OS_REPORT("|%06d:%x|daNpc_midP_c -> デストラクト\n", g_Counter, this);
    if (heap != 0) {
        mpMorf[0]->stopZelAnime();
    }
    deleteRes(l_loadResPtrnList[mType], (char const**)l_resNameList);
}

/* ############################################################################################## */
/* 80A739C0-80A73A4C 000000 008C+00 6/6 0/0 0/0 .rodata          m__18daNpc_midP_Param_c */
daNpc_midP_Param_c::Data const daNpc_midP_Param_c::m = {
    210.0f, -3.0f, 1.0f, 500.0f, 255.0f, 190.0f, 35.0f, 30.0f, 0.0f, 0.0f, 10.0f, -10.0f,
    30.0f, -10.0f, 45.0f, -45.0f, 0.6f, 12.0f, 3, 6, 5, 6, 110.0f, 0.0f, 0.0f, 0.0f, 60,
    8, 0.0f, 0.0f, 4.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f,
};

/* 80A70D90-80A71074 000210 02E4+00 1/1 0/0 0/0 .text            create__12daNpc_midP_cFv */
int daNpc_midP_c::create() {
    fopAcM_SetupActor2(this, daNpc_midP_c, &l_faceMotionAnmData, &l_motionAnmData, l_faceMotionSequenceData, 4,
        l_motionSequenceData, 4, l_evtList, l_resNameList);
    
    mType = getType();
    mFlowNodeNo = getFlowNodeNo();
    mTwilight = 0;

    int rv = loadRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
    if (rv == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0)) {
            OS_REPORT("===>isDelete:TRUE\n");
            return cPhs_ERROR_e;
        }
        OS_REPORT("\n");

        OS_REPORT("\t(%s:%d) flowNo:%d, PathID:%02x<%08x> ", fopAcM_getProcNameString(this), mType,
        mFlowNodeNo, getPathID(), fopAcM_GetParam(this));
        if (isDelete()) {
            OS_REPORT("===>isDelete:TRUE\n");
            return cPhs_ERROR_e;
        }

        J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
        fopAcM_SetMtx(this, mpMorf[0]->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -300.0f, -50.0f, -300.0f, 300.0f, 450.0f, 300.0f);
        fopAcM_OnStatus(this, 0x8000000);

        mSound.init(&current.pos, &eyePos, 3, 1);

        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
            fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mCcStts.Init(daNpc_midP_Param_c::m.field_0x10, 0, this);
        mCyl.Set(mCcDCyl);
        mCyl.SetStts(&mCcStts);
        mCyl.SetTgHitCallback(tgHitCallBack);

        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();
        if (mGroundH != -1000000000.0f) {
            setEnvTevColor();
            setRoomNo();
        }
        
        current.pos = home.pos;
        old.pos = current.pos;
        reset();
        mCreating = true;
        Execute();
        mCreating = false;
    }

    return rv;
}

/* 80A71074-80A71300 0004F4 028C+00 1/1 0/0 0/0 .text            CreateHeap__12daNpc_midP_cFv */
int daNpc_midP_c::CreateHeap() {
    J3DModelData* modelData = static_cast<J3DModelData*>(dComIfG_getObjectRes(
        l_resNameList[l_bmdData[0][1]], l_bmdData[0][0]));

    mpMorf[0] = new mDoExt_McaMorfSO(modelData, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound,
        0x80000, 0x11020284);
    if (mpMorf[0] == NULL || mpMorf[0]->getModel() == NULL) {
        if (mpMorf[0] != NULL) {
            mpMorf[0]->stopZelAnime();
        }
        return 0;
    }

    J3DModel* model = mpMorf[0]->getModel();
    for (u16 i = 0; i < modelData->getJointNum(); i++) {
        modelData->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }

    model->setUserArea((u32)this);
    for (int i = 0; i < 2; i++) {
        mpMatAnm[i] = new daNpcT_MatAnm_c();

        if (mpMatAnm[i] == NULL) {
            return 0;
        }
    }

    if (setFaceMotionAnm(0, false) && setMotionAnm(0, 0.0f, 0) != 0) {
        return 1;
    } else {
        return 0;
    }
}

/* 80A71300-80A7133C 000780 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80A7133C-80A71354 0007BC 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80A71354-80A71390 0007D4 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80A71390-80A713A8 000810 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80A713A8-80A713F0 000828 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80A713F0-80A71414 000870 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80A71414-80A71450 000894 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80A71450-80A71468 0008D0 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80A71468-80A714A4 0008E8 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80A714A4-80A714BC 000924 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80A714BC-80A714F0 00093C 0034+00 1/1 0/0 0/0 .text            Delete__12daNpc_midP_cFv */
void daNpc_midP_c::Delete() {
    // NONMATCHING
}

/* 80A714F0-80A71510 000970 0020+00 2/2 0/0 0/0 .text            Execute__12daNpc_midP_cFv */
void daNpc_midP_c::Execute() {
    // NONMATCHING
}

/* 80A71510-80A715D4 000990 00C4+00 1/1 0/0 0/0 .text            Draw__12daNpc_midP_cFv */
void daNpc_midP_c::Draw() {
    // NONMATCHING
}

/* 80A715D4-80A715F4 000A54 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__12daNpc_midP_cFP10fopAc_ac_c             */
int daNpc_midP_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80A715F4-80A7164C 000A74 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__12daNpc_midP_cFP8J3DJointi                */
int daNpc_midP_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80A7164C-80A7166C 000ACC 0020+00 1/1 0/0 0/0 .text            getType__12daNpc_midP_cFv */
u8 daNpc_midP_c::getType() {
    // NONMATCHING
}

/* 80A7166C-80A7168C 000AEC 0020+00 1/1 0/0 0/0 .text            isDelete__12daNpc_midP_cFv */
int daNpc_midP_c::isDelete() {
    // NONMATCHING
}

/* 80A7168C-80A717D4 000B0C 0148+00 1/1 0/0 0/0 .text            reset__12daNpc_midP_cFv */
void daNpc_midP_c::reset() {
    // NONMATCHING
}

/* 80A717D4-80A71860 000C54 008C+00 1/0 0/0 0/0 .text            afterJntAnm__12daNpc_midP_cFi */
void daNpc_midP_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A73A70-80A73A74 0000B0 0004+00 3/3 0/0 0/0 .rodata          @4551 */
SECTION_RODATA static f32 const lit_4551 = -1.0f;
COMPILER_STRIP_GATE(0x80A73A70, &lit_4551);

/* 80A71860-80A7199C 000CE0 013C+00 1/0 0/0 0/0 .text            ctrlBtk__12daNpc_midP_cFv */
BOOL daNpc_midP_c::ctrlBtk() {
    // NONMATCHING
}

/* 80A7199C-80A71A98 000E1C 00FC+00 1/0 0/0 0/0 .text            setParam__12daNpc_midP_cFv */
void daNpc_midP_c::setParam() {
    // NONMATCHING
}

/* 80A71A98-80A71AF8 000F18 0060+00 1/0 0/0 0/0 .text setAfterTalkMotion__12daNpc_midP_cFv */
void daNpc_midP_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 80A71AF8-80A71AFC 000F78 0004+00 1/1 0/0 0/0 .text            srchActors__12daNpc_midP_cFv */
void daNpc_midP_c::srchActors() {
    /* empty function */
}

/* 80A71AFC-80A71BFC 000F7C 0100+00 1/0 0/0 0/0 .text            evtTalk__12daNpc_midP_cFv */
BOOL daNpc_midP_c::evtTalk() {
    // NONMATCHING
}

/* 80A71BFC-80A71CC4 00107C 00C8+00 1/0 0/0 0/0 .text            evtCutProc__12daNpc_midP_cFv */
BOOL daNpc_midP_c::evtCutProc() {
    // NONMATCHING
}

/* 80A71CC4-80A71DB0 001144 00EC+00 1/0 0/0 0/0 .text            action__12daNpc_midP_cFv */
void daNpc_midP_c::action() {
    // NONMATCHING
}

/* 80A71DB0-80A71E28 001230 0078+00 1/0 0/0 0/0 .text            beforeMove__12daNpc_midP_cFv */
void daNpc_midP_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A73A74-80A73A78 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4720 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4720 = 10.0f;
COMPILER_STRIP_GATE(0x80A73A74, &lit_4720);
#pragma pop

/* 80A73A78-80A73A7C 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4721 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4721 = -30.0f;
COMPILER_STRIP_GATE(0x80A73A78, &lit_4721);
#pragma pop

/* 80A73A7C-80A73A80 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4722 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4722 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x80A73A7C, &lit_4722);
#pragma pop

/* 80A73A80-80A73A88 0000C0 0008+00 1/3 0/0 0/0 .rodata          @4724 */
SECTION_RODATA static u8 const lit_4724[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A73A80, &lit_4724);

/* 80A71E28-80A72064 0012A8 023C+00 1/0 0/0 0/0 .text            setAttnPos__12daNpc_midP_cFv */
void daNpc_midP_c::setAttnPos() {
    // NONMATCHING
}

/* 80A72064-80A7216C 0014E4 0108+00 1/0 0/0 0/0 .text            setCollision__12daNpc_midP_cFv */
void daNpc_midP_c::setCollision() {
    // NONMATCHING
}

/* 80A7216C-80A72174 0015EC 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__12daNpc_midP_cFv */
int daNpc_midP_c::drawDbgInfo() {
    return 0;
}

/* 80A72174-80A721E0 0015F4 006C+00 1/0 0/0 0/0 .text            drawGhost__12daNpc_midP_cFv */
void daNpc_midP_c::drawGhost() {
    // NONMATCHING
}

/* 80A721E0-80A72228 001660 0048+00 1/1 0/0 0/0 .text            selectAction__12daNpc_midP_cFv */
void daNpc_midP_c::selectAction() {
    // NONMATCHING
}

/* 80A72228-80A72254 0016A8 002C+00 1/1 0/0 0/0 .text
 * chkAction__12daNpc_midP_cFM12daNpc_midP_cFPCvPvPv_i          */
void daNpc_midP_c::chkAction(int (daNpc_midP_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80A72254-80A722FC 0016D4 00A8+00 2/2 0/0 0/0 .text
 * setAction__12daNpc_midP_cFM12daNpc_midP_cFPCvPvPv_i          */
void daNpc_midP_c::setAction(int (daNpc_midP_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80A722FC-80A72548 00177C 024C+00 1/0 0/0 0/0 .text            wait__12daNpc_midP_cFPv */
void daNpc_midP_c::wait(void* param_0) {
    // NONMATCHING
}

/* 80A72548-80A72754 0019C8 020C+00 2/0 0/0 0/0 .text            talk__12daNpc_midP_cFPv */
void daNpc_midP_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80A72754-80A72774 001BD4 0020+00 1/0 0/0 0/0 .text            daNpc_midP_Create__FPv */
static void daNpc_midP_Create(void* param_0) {
    // NONMATCHING
}

/* 80A72774-80A72794 001BF4 0020+00 1/0 0/0 0/0 .text            daNpc_midP_Delete__FPv */
static void daNpc_midP_Delete(void* param_0) {
    // NONMATCHING
}

/* 80A72794-80A727B4 001C14 0020+00 1/0 0/0 0/0 .text            daNpc_midP_Execute__FPv */
static void daNpc_midP_Execute(void* param_0) {
    // NONMATCHING
}

/* 80A727B4-80A727D4 001C34 0020+00 1/0 0/0 0/0 .text            daNpc_midP_Draw__FPv */
static void daNpc_midP_Draw(void* param_0) {
    // NONMATCHING
}

/* 80A727D4-80A727DC 001C54 0008+00 1/0 0/0 0/0 .text            daNpc_midP_IsDelete__FPv */
static bool daNpc_midP_IsDelete(void* param_0) {
    return true;
}

/* 80A727DC-80A7280C 001C5C 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80A7280C-80A72854 001C8C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80A72854-80A72BDC 001CD4 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80A72BDC-80A72C18 00205C 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80A72C18-80A72C54 002098 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80A72C54-80A73058 0020D4 0404+00 1/1 0/0 0/0 .text
 * __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
// daNpcT_c::daNpcT_c(daNpcT_faceMotionAnmData_c const* param_0,
//                       daNpcT_motionAnmData_c const* param_1,
// daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2, int param_3,
//                          daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4, int param_5,
//                       daNpcT_evtData_c const* param_6, char** param_7) {
extern "C" void __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc() {
    // NONMATCHING
}

/* 80A73058-80A7305C 0024D8 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80A7305C-80A73158 0024DC 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80A73158-80A7315C 0025D8 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80A7315C-80A731A4 0025DC 0048+00 1/0 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80A731A4-80A731EC 002624 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80A731EC-80A7325C 00266C 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80A7325C-80A732B8 0026DC 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80A732B8-80A73328 002738 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80A73328-80A73370 0027A8 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80A73370-80A7348C 0027F0 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A73A88-80A73A90 0000C8 0008+00 0/1 0/0 0/0 .rodata          @4782 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4782[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A73A88, &lit_4782);
#pragma pop

/* 80A73A90-80A73A98 0000D0 0008+00 0/1 0/0 0/0 .rodata          @4783 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4783[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A73A90, &lit_4783);
#pragma pop

/* 80A73A98-80A73AA0 0000D8 0008+00 0/1 0/0 0/0 .rodata          @4784 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4784[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A73A98, &lit_4784);
#pragma pop

/* 80A7348C-80A73694 00290C 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 80A73694-80A73698 002B14 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80A736B8-80A736C0 002B38 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 80A736C4-80A736CC 002B44 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80A736CC-80A736E4 002B4C 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80A736E4-80A736E8 002B64 0004+00 1/0 0/0 0/0 .text            drawOtherMdl__8daNpcT_cFv */
// void daNpcT_c::drawOtherMdl() {
extern "C" void drawOtherMdl__8daNpcT_cFv() {
    /* empty function */
}

/* 80A736E8-80A736F0 002B68 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80A736F0-80A736F8 002B70 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80A736F8-80A73728 002B78 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80A73728-80A73758 002BA8 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80A73758-80A7375C 002BD8 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80A7375C-80A73760 002BDC 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80A73760-80A73764 002BE0 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80A73764-80A73768 002BE4 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* ############################################################################################## */
/* 80A73D3C-80A73D48 000288 000C+00 2/2 0/0 0/0 .data            __vt__18daNpc_midP_Param_c */
SECTION_DATA extern void* __vt__18daNpc_midP_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpc_midP_Param_cFv,
};

/* 80A73D50-80A73D5C 000008 000C+00 1/1 0/0 0/0 .bss             @3811 */
static u8 lit_3811[12];

/* 80A73D5C-80A73D60 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80A73768-80A737D0 002BE8 0068+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_midp_cpp */
void __sinit_d_a_npc_midp_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80A73768, __sinit_d_a_npc_midp_cpp);
#pragma pop

// /* 80A737D0-80A7387C 002C50 00AC+00 1/1 0/0 0/0 .text
//  * __ct__12daNpc_midP_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
//  */
// daNpc_midP_c::daNpc_midP_c(daNpcT_faceMotionAnmData_c const* param_0,
//                                daNpcT_motionAnmData_c const* param_1,
//                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
//                                int param_3,
//                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
//                                int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
//     // NONMATCHING
// }

/* 80A7387C-80A738C4 002CFC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80A738C4-80A7390C 002D44 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80A7390C-80A73914 002D8C 0008+00 1/0 0/0 0/0 .text getEyeballRMaterialNo__12daNpc_midP_cFv */
s32 daNpc_midP_c::getEyeballRMaterialNo() {
    return 3;
}

/* 80A73914-80A7391C 002D94 0008+00 1/0 0/0 0/0 .text getEyeballLMaterialNo__12daNpc_midP_cFv */
s32 daNpc_midP_c::getEyeballLMaterialNo() {
    return 2;
}

/* 80A7391C-80A73924 002D9C 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__12daNpc_midP_cFv */
s32 daNpc_midP_c::getHeadJointNo() {
    return 4;
}

/* 80A73924-80A7392C 002DA4 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__12daNpc_midP_cFv */
s32 daNpc_midP_c::getNeckJointNo() {
    return 3;
}

/* 80A7392C-80A73934 002DAC 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__12daNpc_midP_cFv */
s32 daNpc_midP_c::getBackboneJointNo() {
    return 2;
}

/* 80A73934-80A73944 002DB4 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__12daNpc_midP_cFi
 */
BOOL daNpc_midP_c::checkChangeJoint(int param_1) {
    // NONMATCHING
}

/* 80A73944-80A73954 002DC4 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__12daNpc_midP_cFi
 */
BOOL daNpc_midP_c::checkRemoveJoint(int param_1) {
    // NONMATCHING
}

/* 80A73954-80A7399C 002DD4 0048+00 2/1 0/0 0/0 .text            __dt__18daNpc_midP_Param_cFv */
daNpc_midP_Param_c::~daNpc_midP_Param_c() {
    // NONMATCHING
}

// /* 80A7399C-80A739A4 002E1C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
// static void func_80A7399C() {
//     // NONMATCHING
// }

// /* 80A739A4-80A739AC 002E24 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
// static void func_80A739A4() {
//     // NONMATCHING
// }

/* 80A73AA0-80A73AA0 0000E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/* 80A73B8C-80A73BAC -00001 0020+00 1/0 0/0 0/0 .data            daNpc_midP_MethodTable */
static actor_method_class daNpc_midP_MethodTable = {
    (process_method_func)daNpc_midP_Create,
    (process_method_func)daNpc_midP_Delete,
    (process_method_func)daNpc_midP_Execute,
    (process_method_func)daNpc_midP_IsDelete,
    (process_method_func)daNpc_midP_Draw,
};

/* 80A73BAC-80A73BDC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_MIDP */
extern actor_process_profile_definition g_profile_NPC_MIDP = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_NPC_MIDP,           // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daNpc_midP_c),    // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  354,                     // mPriority
  &daNpc_midP_MethodTable, // sub_method
  0x00044108,              // mStatus
  fopAc_NPC_e,             // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};
