/**
 * @file d_a_npc_ashB.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_ashB.h"
#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void __ct__11daNpcAshB_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__11daNpcAshB_cFv();
extern "C" void Create__11daNpcAshB_cFv();
extern "C" void CreateHeap__11daNpcAshB_cFv();
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
extern "C" void Delete__11daNpcAshB_cFv();
extern "C" void Execute__11daNpcAshB_cFv();
extern "C" void Draw__11daNpcAshB_cFv();
extern "C" void ctrlJoint__11daNpcAshB_cFP8J3DJointP8J3DModel();
extern "C" void createHeapCallBack__11daNpcAshB_cFP10fopAc_ac_c();
// extern "C" void ctrlJointCallBack__11daNpcAshB_cFP8J3DJointi();
extern "C" void setExpressionAnm__11daNpcAshB_cFib();
extern "C" void setExpressionBtp__11daNpcAshB_cFi();
extern "C" void setMotionAnm__11daNpcAshB_cFif();
extern "C" void reset__11daNpcAshB_cFv();
extern "C" void setAction__11daNpcAshB_cFM11daNpcAshB_cFPCvPvPv_b();
extern "C" void wait__11daNpcAshB_cFPv();
extern "C" void setMotion__11daNpcAshB_cFifi();
extern "C" void setExpression__11daNpcAshB_cFif();
extern "C" void talk__11daNpcAshB_cFPv();
extern "C" void demo__11daNpcAshB_cFPv();
extern "C" void EvCut_Appear__11daNpcAshB_cFi();
extern "C" static void daNpcAshB_Create__FPv();
extern "C" static void daNpcAshB_Delete__FPv();
extern "C" static void daNpcAshB_Execute__FPv();
extern "C" static void daNpcAshB_Draw__FPv();
extern "C" static bool daNpcAshB_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void setParam__11daNpcAshB_cFv();
extern "C" void main__11daNpcAshB_cFv();
extern "C" void playMotion__11daNpcAshB_cFv();
extern "C" void ctrlBtk__11daNpcAshB_cFv();
extern "C" void setAttnPos__11daNpcAshB_cFv();
extern "C" void lookat__11daNpcAshB_cFv();
extern "C" void drawOtherMdls__11daNpcAshB_cFv();
extern "C" bool drawDbgInfo__11daNpcAshB_cFv();
extern "C" void func_80961800(void* _this, s16);
extern "C" void __sinit_d_a_npc_ashB_cpp();
extern "C" void __dt__18daNpcF_ActorMngr_cFv();
extern "C" void __ct__18daNpcF_ActorMngr_cFv();
extern "C" void __dt__15daNpcF_Lookat_cFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__8daNpcF_cFv();
extern "C" void __ct__8daNpcF_cFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void adjustShapeAngle__8daNpcF_cFv();
extern "C" void setCollisions__8daNpcF_cFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__17daNpcAshB_Param_cFv();
extern "C" static void func_809620C0();
extern "C" static void func_809620C8();
extern "C" u8 const m__17daNpcAshB_Param_c[112];
extern "C" extern char const* const d_a_npc_ashB__stringBase0;
extern "C" u8 mEvtSeqList__11daNpcAshB_c[24];

//
// External References:
//

extern "C" void changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_seenActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs();
extern "C" void fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void reset__14dEvt_control_cFPv();
extern "C" void setPtI_Id__14dEvt_control_cFUi();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyNowCutName__16dEvent_manager_cFi();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void getRunEventName__16dEvent_manager_cFv();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
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
extern "C" void initialize__18daNpcF_ActorMngr_cFv();
extern "C" void entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c();
extern "C" void remove__18daNpcF_ActorMngr_cFv();
extern "C" void getActorP__18daNpcF_ActorMngr_cFv();
extern "C" void initialize__15daNpcF_MatAnm_cFv();
extern "C" void initialize__15daNpcF_Lookat_cFv();
extern "C" void setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz();
extern "C" void calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii();
extern "C" void execute__8daNpcF_cFv();
extern "C" void draw__8daNpcF_cFiifP11_GXColorS10i();
extern "C" void setMtx__8daNpcF_cFv();
extern "C" void setMtx2__8daNpcF_cFv();
extern "C" void initialize__8daNpcF_cFv();
extern "C" void getTrnsfrmKeyAnmP__8daNpcF_cFPci();
extern "C" void getTexPtrnAnmP__8daNpcF_cFPci();
extern "C" void getTexSRTKeyAnmP__8daNpcF_cFPci();
extern "C" void setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii();
extern "C" void setBckAnm__8daNpcF_cFP15J3DAnmTransformfiiib();
extern "C" void setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi();
extern "C" void setBtkAnm__8daNpcF_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi();
extern "C" void setEnvTevColor__8daNpcF_cFv();
extern "C" void setRoomNo__8daNpcF_cFv();
extern "C" void playExpressionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData();
extern "C" void playMotionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData();
extern "C" void setLookatMtx__8daNpcF_cFiPif();
extern "C" void ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci();
extern "C" void orderEvent__8daNpcF_cFiPcUsUsUcUs();
extern "C" void chkActorInSight__8daNpcF_cFP10fopAc_ac_cf();
extern "C" void chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci();
extern "C" void initTalk__8daNpcF_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcF_cFPiiPP10fopAc_ac_c();
extern "C" void turn__8daNpcF_cFsfi();
extern "C" void getDistTableIdx__8daNpcF_cFii();
extern "C" void daNpcF_chkEvtBit__FUl();
extern "C" void daNpcF_offTmpBit__FUl();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void getEventId__10dMsgFlow_cFPi();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
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
extern "C" void __ptmf_scall();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern u8 const __ptmf_null[12 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" u8 mCcDCyl__8daNpcF_c[68];
extern "C" extern void* __vt__8daNpcF_c[18];
extern "C" extern void* __vt__15daNpcF_MatAnm_c[4 + 6 /* padding */];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" extern void* __vt__14J3DMaterialAnm[4];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" void __register_global_object();

//
// Declarations:
//

/* 80962438-80962534 000020 00FC+00 1/2 0/0 0/0 .data            l_bckGetParamList */
static daNpc_GetParam2 l_bckGetParamList[21] = {
    {-1, 2, 0},
    {13,0, 0},
    {14, 0, 0},
    {11, 0, 0},
    {10, 0, 0},
    {9, 0, 0},
    {12, 0, 0},
    {24, 2, 0},
    {25, 2, 0},
    {24, 2, 0},
    {21, 0, 0}, 
    {22, 0, 0},
    {20, 0, 0},
    {23, 0, 0},
    {7, 0, 0}, 
    {8, 0, 0},
    {18, 0, 0},
    {15, 0, 0},
    {16, 0, 0},
    {17, 2, 0},
    {19, 0, 0},
};

static daNpcAshB_Param_c l_HIO;

/* 80962534-80962564 00011C 0030+00 1/1 0/0 0/0 .data            l_btpGetParamList */
static daNpc_GetParam2 l_btpGetParamList[4] = {
    {38,2,0},
    {41,0,0},
    {40,0,0},
    {39,0,0},
};

/* 80962564-80962594 00014C 0030+00 1/2 0/0 0/0 .data            l_btkGetParamList */
static daNpc_GetParam2 l_btkGetParamList[4] = {
    {32,2,0},
    {34,0,0},
    {33,0,0},
    {35,0,0},
    
};

/* 80962594-80962598 -00001 0004+00 6/8 0/0 0/0 .data            l_arcNames */
static char* l_arcNames[1] = {
    "AshB",
};

/* 80962598-809625A0 -00001 0008+00 0/1 0/0 0/0 .data            l_evtNames */
static char* l_evtNames[2] = {
  "ASHB_APPEAR",
  "NO_RESPONSE",
};

/* 809625A0-809625A4 -00001 0004+00 0/2 0/0 0/0 .data            l_myName */
static char* l_myName = "AshB";

/* 809625B0-809625C8 000198 0018+00 1/2 0/0 0/0 .data            mEvtSeqList__11daNpcAshB_c */
daNpcAshB_c::EventFn daNpcAshB_c::mEvtSeqList[2] = {
    NULL,
    &EvCut_Appear
};

/* 8095DE4C-8095DFD0 0000EC 0184+00 1/1 0/0 0/0 .text            __ct__11daNpcAshB_cFv */
daNpcAshB_c::daNpcAshB_c() : daNpcF_c() {
    // NONMATCHING
}

/* 8095E060-8095E224 000300 01C4+00 1/0 0/0 0/0 .text            __dt__11daNpcAshB_cFv */
daNpcAshB_c::~daNpcAshB_c() {
    for (int i = 0; i < 1; i++) {
        dComIfG_resDelete(&mPhase[i], l_arcNames[i]);
    }

    if (heap != NULL) {
        mpMorf->stopZelAnime();
    }
}

/* ############################################################################################## */
/* 809620E4-80962154 000000 0070+00 11/11 0/0 0/0 .rodata          m__17daNpcAshB_Param_c */
daNpcAshB_Param_c::param const daNpcAshB_Param_c::m = {
    205.0f, 
    -3.0f,
    1.0f, 
    400.0f,
    255.0f,
    200.0f,
    35.0f,
    30.0f,
    0.0f, 
    0.0f, 
    15.0f,
    -15.0f,
    20.0f,
    0.0f,
    20.0f,
    -20.0f,
    0.8f,
    12.0f,
    3,
    6,
    5,
    6,
    80.0f,
    500.0f,
    300.0f,
    -300.0f,
    60,
    8,
    0,
    0,
    0,
    false,
    400.0f,
};

/* 8095E224-8095E4A0 0004C4 027C+00 1/1 0/0 0/0 .text            Create__11daNpcAshB_cFv */
cPhs__Step daNpcAshB_c::Create() {
    cPhs__Step step;

    fopAcM_SetupActor(this, daNpcAshB_c);

         /* dSv_event_flag_c::F_0361 - Arbiter's Grounds - Spun the spinning pillars */
    if (!daNpcF_chkEvtBit(0x169)
           /* dSv_event_flag_c::F_0335 - Snowpeak mountain - Obtained scribble from Ashei at mountain pass */
        || daNpcF_chkEvtBit(0x14F)) {
        return cPhs_ERROR_e;
    } else {
        mFlowID = getMessageNo();
        step = cPhs_ERROR_e;

        for (int i = 0; i < 1; i++) {
            step = (cPhs__Step)dComIfG_resLoad(&mPhase[i], l_arcNames[i]);
            if (step != cPhs_COMPLEATE_e) {
                return step;
            }
        }

        if (step == cPhs_COMPLEATE_e) {
            if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x58b0)) {
                return cPhs_ERROR_e;
            } else {
                J3DModelData* model_data = mpMorf->getModel()->getModelData();
                fopAcM_SetMtx(this, mpMorf->getModel()->getBaseTRMtx());
                fopAcM_setCullSizeBox(this, -100.0f, -50.0f, -100.0f, 100.0f, 220.0f, 100.0f);
                mCreatureSound.init(&current.pos, &eyePos, 3, 1);
                mAcchCir.SetWall(daNpcAshB_Param_c::m.mWallR,daNpcAshB_Param_c::m.mWallH);
                mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                  fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
                mAcch.SetRoofNone();
                mAcch.SetWaterNone();
                mAcch.CrrPos(dComIfG_Bgsp());
                mCcStts.Init((int)daNpcAshB_Param_c::m.mCcWeight, 0, this);
                mCyl.Set(daNpcF_c::mCcDCyl);
                mCyl.SetStts(&mCcStts);
                mCyl.SetTgType(0);
                mCyl.SetTgSPrm(0);
                mGndChk = mAcch.m_gnd;
                mGroundH = mAcch.GetGroundH();
                setEnvTevColor();
                setRoomNo();
                mpMorf->modelCalc();
                reset();
                Execute();
            }
        }
    }

    return step;
}

/* 8095E4A0-8095E758 000740 02B8+00 1/1 0/0 0/0 .text            CreateHeap__11daNpcAshB_cFv */
BOOL daNpcAshB_c::CreateHeap() {
    J3DModelData* modelData = static_cast<J3DModelData*>(dComIfG_getObjectRes(l_arcNames[0], 28));
    mpMorf = new mDoExt_McaMorfSO(modelData, NULL, NULL, NULL, -1, 1.0f, 0, -1,
                                  &mCreatureSound, 0x80000, 0x11020284);
    if (mpMorf != NULL && mpMorf->mpModel == NULL) {
        mpMorf->stopZelAnime();
        mpMorf = NULL;
    }
    if (mpMorf == NULL) {
        return false;
    }

    J3DModel* model = mpMorf->getModel();
    for (u16 jointNo = 0; jointNo < modelData->getJointNum(); jointNo++) {
        modelData->getJointNodePointer(jointNo)->setCallBack(ctrlJointCallBack);
    }
    model->setUserArea((u32)this);

    mpMatAnm = new daNpcF_MatAnm_c();
    if (mpMatAnm == NULL) {
        return false;
    } else {
        mpModel = mDoExt_J3DModel__create(static_cast<J3DModelData*>(dComIfG_getObjectRes(l_arcNames[0], 29)),0x80000,0x11000084);
        if (mpModel == NULL) {
            return false;
        } else {
            if (!setExpressionAnm(ANM_F_TALK_A, false)) {
                return false;
            }
            setMotionAnm(ANM_F_EXPLAIN_B, 0.0f);
        }
    }

    return true;
}

/* 8095E914-8095E948 000BB4 0034+00 1/1 0/0 0/0 .text            Delete__11daNpcAshB_cFv */
int daNpcAshB_c::Delete() {
    this->~daNpcAshB_c();
    return 1;
}

/* 8095E948-8095E96C 000BE8 0024+00 2/2 0/0 0/0 .text            Execute__11daNpcAshB_cFv */
int daNpcAshB_c::Execute() {
    execute();
    return 1;
}

/* 8095E96C-8095E9C8 000C0C 005C+00 1/1 0/0 0/0 .text            Draw__11daNpcAshB_cFv */
int daNpcAshB_c::Draw() {
    mpMorf->getModel()->getModelData()->getMaterialNodePointer(2)->setMaterialAnm(mpMatAnm);
    draw(false, false, daNpcAshB_Param_c::m.mShadowDepth, NULL, false);
    return 1;
}

/* 8095E9C8-8095EB94 000C68 01CC+00 1/1 0/0 0/0 .text
 * ctrlJoint__11daNpcAshB_cFP8J3DJointP8J3DModel                */
bool daNpcAshB_c::ctrlJoint(J3DJoint* i_joint, J3DModel* i_model) {
    int jointNo = i_joint->getJntNo();
    int lookatJoints[3] = {1, 9, 10};

    if (jointNo == 0) {
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(1));
        mDoMtx_stack_c::multVecZero(&mLookatPos[0]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(9));
        mDoMtx_stack_c::multVecZero(&mLookatPos[1]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(10));
        mDoMtx_stack_c::multVecZero(&mLookatPos[2]);
    }

    mDoMtx_stack_c::copy(i_model->getAnmMtx(jointNo));
    switch (jointNo) {
    case 1:
    case 9:
    case 10:
        setLookatMtx(jointNo, lookatJoints, daNpcAshB_Param_c::m.mNeckAngleScl);
        break;
    }

    i_model->setAnmMtx(jointNo, mDoMtx_stack_c::get());
    cMtx_copy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
    
    if ((jointNo == 10 || jointNo == 19) && (mAnmFlags & ANM_PLAY_BCK)) {
        J3DAnmTransform* bckAnm = mBckAnm.getBckAnm();
        mBckAnm.changeBckOnly(mpMorf->getAnm());
        mpMorf->changeAnm(bckAnm);
    }

    return true;
}

/* 8095EB94-8095EBB4 000E34 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__11daNpcAshB_cFP10fopAc_ac_c              */
BOOL daNpcAshB_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return static_cast<daNpcAshB_c*>(i_this)->CreateHeap();
}

/* 8095EBB4-8095EC00 000E54 004C+00 1/1 0/0 0/0 .text ctrlJointCallBack__11daNpcAshB_cFP8J3DJointi
 */
BOOL daNpcAshB_c::ctrlJointCallBack(J3DJoint* i_joint, int param_1) {
    if (param_1 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpcAshB_c* _this = (daNpcAshB_c*)model->getUserArea();
        if (_this != NULL) {
            _this->ctrlJoint(i_joint, model);
        }
    }
    return 1;
}

inline void daNpcAshB_c::setLookMode(int i_lookMode) {
    if (i_lookMode != mLookMode) {
        mLookMode = i_lookMode;
    }
}

inline BOOL daNpcAshB_c::chkFindPlayer() {
    BOOL ret;
    if (!chkActorInSight(daPy_getPlayerActorClass(), daNpcAshB_Param_c::m.mAttnFovY)) {
        mActorMngr[0].remove();
        ret = false;
    } else {
        if (mActorMngr[0].getActorP() == NULL) {
            ret = chkPlayerInSpeakArea(this);
        } else {
            ret = chkPlayerInTalkArea(this);
        }
        if (ret) {
            mActorMngr[0].entry(daPy_getPlayerActorClass());
        } else {
            mActorMngr[0].remove();
        }
    }
    return ret;
}

inline void daNpcAshB_c::playExpression() {
    daNpcF_anmPlayData dat0 = {ANM_F_TALK_A, daNpcAshB_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat0[1] = {&dat0};
    daNpcF_anmPlayData dat1 = {ANM_F_TALK_B, daNpcAshB_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat1[1] = {&dat1};
    daNpcF_anmPlayData dat2 = {ANM_F_SILENT, 0.0f, 0};
    daNpcF_anmPlayData* pDat2[1] = {&dat2};
    daNpcF_anmPlayData dat3 = {ANM_F_COOL, daNpcAshB_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat3[1] = {&dat3};
    daNpcF_anmPlayData dat4 = {ANM_F_ASK, daNpcAshB_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat4[1] = {&dat4};
    daNpcF_anmPlayData dat5 = {ANM_F_EXPLAIN_A, daNpcAshB_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat5[1] = {&dat5};
    daNpcF_anmPlayData dat6 = {ANM_NONE, daNpcAshB_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat6[1] = {&dat6};

    daNpcF_anmPlayData** ppDat[7] = {
    pDat0,
    pDat1,
    pDat2,
    pDat3,
    pDat4,
    pDat5,
    pDat6,
    };
    if (mExpression >= 0 && mExpression < 7) {
        playExpressionAnm(ppDat);
    }
}

/* 8095EC00-8095EE00 000EA0 0200+00 2/0 0/0 0/0 .text            setExpressionAnm__11daNpcAshB_cFib
 */
bool daNpcAshB_c::setExpressionAnm(int i_idx, bool i_modify) {
    if (i_idx < 0 || i_idx > 6) {
        return false;
    }
    mAnmFlags &= ~ANM_EXPRESSION_FLAGS;

    J3DAnmTransform* bckAnm;
    if (l_bckGetParamList[i_idx].fileIdx >= 0) {
        bckAnm = getTrnsfrmKeyAnmP(l_arcNames[l_bckGetParamList[i_idx].arcIdx],
                                   l_bckGetParamList[i_idx].fileIdx);
    } else {
        bckAnm = NULL;
    }

    s32 attr = l_bckGetParamList[i_idx].attr;
    bool res = false;
    switch (i_idx) {
    case ANM_NONE:
        res = setExpressionBtp(0);
        break;
    case ANM_F_TALK_A:
        res = setExpressionBtp(0);
        break;
    case ANM_F_TALK_B:
        res = setExpressionBtp(0);
        break;
    case ANM_F_SILENT:
        res = setExpressionBtp(2);
        break;
    case ANM_F_COOL:
        res = setExpressionBtp(3);
        break;
    case ANM_F_ASK:
        res = setExpressionBtp(0);
        break;
    case ANM_F_EXPLAIN_A:
        res = setExpressionBtp(0);
        break;
    default:
        bckAnm = NULL;
        break;
    }

    if (!res) {
        return false;
    }

    if (bckAnm == NULL) {
        return true;
    }

    if (setBckAnm(bckAnm, 1.0f, attr, 0, -1, i_modify)) {
        mAnmFlags |= ANM_PAUSE_BCK | ANM_PLAY_BCK;
        mExpressionLoops = 0;
        return true;
    }

    return false;
}

/* 8095EE00-8095EEE0 0010A0 00E0+00 1/0 0/0 0/0 .text            setExpressionBtp__11daNpcAshB_cFi
 */
bool daNpcAshB_c::setExpressionBtp(int i_idx) {
    J3DAnmTexPattern* btpAnm = getTexPtrnAnmP(l_arcNames[l_btpGetParamList[i_idx].arcIdx],
                                              l_btpGetParamList[i_idx].fileIdx);
    s32 attr = l_btpGetParamList[i_idx].attr;
    mAnmFlags &= ~(ANM_PAUSE_BTP | ANM_PLAY_BTP | ANM_FLAG_800);
    if (btpAnm == NULL) {
        return true;
    }
    if (setBtpAnm(btpAnm, mpMorf->getModel()->getModelData(), 1.0f, attr)) {
        mAnmFlags |= ANM_PAUSE_BTP | ANM_PLAY_BTP;
        if (i_idx == 0) {
            mAnmFlags |= ANM_FLAG_800;
        }
        return true;
    }
    return false;
}

/* 8095EEE0-8095F0A4 001180 01C4+00 1/0 0/0 0/0 .text            setMotionAnm__11daNpcAshB_cFif */
void daNpcAshB_c::setMotionAnm(int i_idx, f32 i_morf) {
    if (i_idx < 7 || i_idx >= 21) {
        return;
    }

    int iVar5 = 0;
    switch (i_idx) {
    case 0x10:
        iVar5 = 1;
        break;
    case 0x12:
        iVar5 = 2;
        break;
    case 0x14:
        iVar5 = 3;
        break;
    }
    
    J3DAnmTransformKey* morfAnm = getTrnsfrmKeyAnmP(l_arcNames[l_bckGetParamList[i_idx].arcIdx],
                                                    l_bckGetParamList[i_idx].fileIdx);
    J3DAnmTextureSRTKey* btkAnm = getTexSRTKeyAnmP(l_arcNames[l_btkGetParamList[iVar5].arcIdx],
                                                   l_btkGetParamList[iVar5].fileIdx);

    int oiVar5 = l_bckGetParamList[i_idx].attr;
    int iVar4 = l_btkGetParamList[iVar5].attr;


    mAnmFlags &= 0xffffffc0;
    if (i_idx == 12) {
        bool unused_bool = setExpressionBtp(1);
        (void) unused_bool;
    }

    if (morfAnm && setMcaMorfAnm(morfAnm,1.0f,i_morf,oiVar5,0,-1)) {
        mAnmFlags |= 9;
        mMotionLoops = 0;
    }

    if (btkAnm && setBtkAnm(btkAnm,mpMorf->getModel()->getModelData(),1.0,iVar4)) {
        mAnmFlags |= 0x12;
    }
}

/* 8095F0A4-8095F21C 001344 0178+00 1/1 0/0 0/0 .text            reset__11daNpcAshB_cFv */
void daNpcAshB_c::reset() {
    initialize();
    mpMatAnm->initialize();
    mLookat.initialize();

    for (int i = 0; i < 1; i++) {
        mActorMngr[i].initialize();
    }

    field_0xddc = 0;
    field_0xde0 = 0;


    mpActionFn = NULL;
    mLookMode = -1;
    mMode = 0;
    current.pos = home.pos;
    old.pos = current.pos;
    current.angle.set(0, home.angle.y, 0);
    old.angle = current.angle;
    shape_angle = current.angle;
    mCurAngle = current.angle;
    mOldAngle = mCurAngle;
    speedF = 0.0f;
    speed.setall(0.0f);
    mItemPartnerId = -1;
    mOrderEvtNo = 0;
    mExpressionMorfOverride = 0;
    mMotionMorfOverride = 0;
    field_0xded = 0;
    field_0xdee = 0;

    setAction(&wait);
}

/* 8095F21C-8095F2C4 0014BC 00A8+00 1/1 0/0 0/0 .text
 * setAction__11daNpcAshB_cFM11daNpcAshB_cFPCvPvPv_b            */
bool daNpcAshB_c::setAction(daNpcAshB_c::ActionFn i_actionFn) {
    mMode = 3;
    if (mpActionFn != NULL) {
        (this->*mpActionFn)(NULL);
    }
    mMode = 0;
    this->mpActionFn = i_actionFn;
    if (mpActionFn != NULL) {
        (this->*mpActionFn)(NULL);
    }
    return true;
}

bool daNpcAshB_c::step(s16 i_targetAngle, int param_2, f32 i_rate) {
    if (mTurnMode == 0) {
        if (param_2 != 0) {
            s16 diff = i_targetAngle - mCurAngle.y;
            if ((int)fabsf(cM_sht2d(diff)) > 40) {
                setExpression(6, -1.0f);
                setMotion(10, -1.0f, 0);
            }
        }

        mTurnTargetAngle = i_targetAngle;
        mTurnAmount = 0;

        if (mCurAngle.y == mTurnTargetAngle) {
            mTurnMode++;
        }

        current.angle.y = mCurAngle.y;
        shape_angle.y = current.angle.y;
        mTurnMode++;
    } else if (mTurnMode == 1) {
        if (turn(mTurnTargetAngle, i_rate, 0)) {
            shape_angle.y = current.angle.y;
            mCurAngle.y = current.angle.y;
            mOldAngle.y = current.angle.y;
            mTurnMode++;
        } else {
            shape_angle.y = current.angle.y;
            mCurAngle.y = current.angle.y;
        }
    }

    return mTurnMode > 1;
}

/* 8095F2C4-8095FC70 001564 09AC+00 4/0 0/0 0/0 .text            wait__11daNpcAshB_cFPv */
// NONMATCHING - float literals, regalloc, wrong variable order loads. the shitty trifecta
bool daNpcAshB_c::wait(void* param_0) {
    switch (mMode) {
    case 0:
        setExpression(EXPR_EXPLAIN_B, -1.0f);
        setMotion(MOT_WAIT_A, -1.0f, false);
        field_0xdea = mCurAngle.y;
        mTurnMode = 0;
        speedF = 0.0f;
        mMode = 2;
        break;
    case 2:
        if (field_0xdee != 0) {
            setLookMode(LOOK_PLAYER);

            if (field_0xdea == mCurAngle.y) {
                s16 res = cM_deg2s(daNpcAshB_Param_c::m.mBodyLeftAngle + daNpcAshB_Param_c::m.mHeadLeftAngle);

                if (fopAcM_seenPlayerAngleY(this) > res) {
                    field_0xdea = fopAcM_searchPlayerAngleY(this);
                }
            } else {
                if (step(mCurAngle.y,1,15.0f)) {
                    setExpression(EXPR_EXPLAIN_B, -1.0f);
                    setMotion(MOT_WAIT_A, -1.0f, false);
                    mTurnMode = 0;
                }
            }

            if (fopAcM_searchPlayerDistanceXZ(this) > daNpcAshB_Param_c::m.field_0x6c) {
                field_0xdee = 0;
            }
            
        } else {
            if (mActorMngr[0].getActorP()) {
                if (!chkFindPlayer())
                    mTurnMode = 0;
            } else {
                if (chkFindPlayer())
                    mTurnMode = 0;
            }

            if (mActorMngr[0].getActorP()) {
                setLookMode(LOOK_PLAYER);
                
            } else {
                setLookMode(LOOK_NONE);

                if (home.angle.y != mCurAngle.y) {
                    if (step(home.angle.y,1,15.0f)) {
                        setExpression(EXPR_EXPLAIN_B, -1.0f);
                        setMotion(MOT_WAIT_A, -1.0f, false);
                        mTurnMode = 0;
                    }
                }
            }
        }
             /* dSv_event_flag_c::F_0335 - Snowpeak mountain - Obtained scribble from Ashei at mountain pass */
        if (!daNpcF_chkEvtBit(0x14F)
            && field_0xded == 0 && !daPy_py_c::checkNowWolf()) {
            f32 res = pow(600.0f, 2.0f);
            if (fopAcM_searchPlayerDistanceXZ2(this) <= res) {
                daNpcF_offTmpBit(0xb);
                daNpcF_offTmpBit(0xc);
                daNpcF_offTmpBit(0xd);
                mOrderEvtNo = 1;
            }
        }

        if (dComIfGp_event_runCheck() != false) {
            if (eventInfo.checkCommandTalk()) {
                if (dComIfGp_event_chkTalkXY()) {
                    if (!dComIfGp_evmng_ChkPresentEnd()) {
                        return true;
                    } else {
                        u8 preitemno = dComIfGp_event_getPreItemNo();
                        if (preitemno == fpcNm_ITEM_ASHS_SCRIBBLING) {
                            mFlowID = 504;
                            setAction(&wait);
                        } else {
                            s16 evt_idx = dComIfGp_getEventManager().getEventIdx(this,"NO_RESPONSE",0xff);
                            dComIfGp_getEvent().reset(this);
                            fopAcM_orderChangeEventId(this, evt_idx, 1, -1);
                            
                        }
                    }
                    
                } else {
                    setAction(&wait);
                }
            } else {
                int mystaffid = dComIfGp_getEventManager().getMyStaffId(l_myName, NULL, 0);
                if (mystaffid != -1) {
                    setAction(&wait);
                }
            }
        } else {
            if (mOrderEvtNo != 0) {
                eventInfo.setArchiveName(l_arcNames[0]);
            }

            orderEvent(field_0xdec,l_evtNames[mOrderEvtNo*1],-1, 40, -1, 1);

                /* dSv_event_flag_c::F_0335 - Snowpeak mountain - Obtained scribble from Ashei at mountain pass */
            if (daNpcF_chkEvtBit(0x14F)) {
                eventInfo.onCondition(0x20);
            }
            
        }
        break;
    case 3:
        break;
    default:
        JUT_ASSERT(0x579, 0);
    }

    return true;
}

/* 8095FC70-8095FD34 001F10 00C4+00 1/0 0/0 0/0 .text            setMotion__11daNpcAshB_cFifi */
void daNpcAshB_c::setMotion(int i_motion, f32 i_morf, BOOL i_restart) {
    s16 motion = (s16)i_motion;

    switch (motion) {
    case 0:
        if (field_0xded != 0)
            motion = 1;
        break;
    case 1:
        if (field_0xded == 0)
            motion = 0;
        break;
    case 10:
        if (field_0xded == 0)
            motion = 11;
        break;
    case 11:
        if (field_0xded != 0)
            motion = 10;
        break;

    }

    if (i_restart || mMotion != motion) {
        if (i_motion >= 0 && i_motion < 12) {
            mMotion = motion;
            mMotionMorfOverride = i_morf;
            mMotionPrevPhase = -1;
            mMotionPhase = 0;
        }
    }
}

/* 8095FD34-8095FD9C 001FD4 0068+00 1/0 0/0 0/0 .text            setExpression__11daNpcAshB_cFif */
void daNpcAshB_c::setExpression(int i_expression, f32 i_morf) {
    switch (i_expression) {
    case 0:
        if (field_0xded != 0)
            i_expression = 1;
        break;
    case 1:
        if (field_0xded == 0)
            i_expression = 0;
        break;
    }
    
    if (i_expression >= 0 && i_expression < 7) {
        mExpression = i_expression;
        mExpressionMorfOverride = i_morf;
        mExpressionPrevPhase = -1;
        mExpressionPhase = 0;
    }
}
/* 8095FD9C-809602E0 00203C 0544+00 2/0 0/0 0/0 .text            talk__11daNpcAshB_cFPv */
// NONMATCHING float literals
bool daNpcAshB_c::talk(void* param_0) {
    bool ret = false;

    switch (mMode) {
    case 0:
        initTalk(mFlowID, NULL);
        mTurnMode = 0;
        mMsgTimer = 0;
        field_0xdec = 0;
        field_0xdee = 1;
        speedF = 0.0f;
        setLookMode(LOOK_PLAYER_TALK);
        mMode = 2;
        break;
    case 2:
        if (mCurAngle.y == fopAcM_searchPlayerAngleY(this)) {
            if (talkProc(NULL, 1, NULL)) {
                mActorMngr[0].entry(daPy_getPlayerActorClass());
                int evt_id = 0;
                if (mFlow.getEventId(&evt_id) == 1) {
                    mItemPartnerId = fopAcM_createItemForPresentDemo(&current.pos,evt_id,0,-1,-1,0,0);
                    if (mItemPartnerId != 0xffffffff) {
                        s16 evt_idx = dComIfGp_getEventManager().getEventIdx(this, "DEFAULT_GETITEM", 0xff);
                        dComIfGp_getEvent().reset(this);
                        fopAcM_orderChangeEventId(this, evt_idx, 1, -1);
                        field_0x9ec = 1;
                        setAction(&wait);
                    }
                } else {
                    setAction(&wait);
                }
                
                ret = true;
            } else {
                s32 prev_msg_timer = mMsgTimer;
                int expression, motion;
                if (ctrlMsgAnm(expression, motion, this, 0)) {
                    setExpression(expression, -1.0f);
                    setMotion(motion, -1.0f, false);
                } else {
                    if (prev_msg_timer != 0 && mMsgTimer == 0 && mExpression != 2) {
                        setExpressionTalkAfter();
                    }
                }
            }
        } else {
            s16 angle = fopAcM_searchPlayerAngleY(this);

            if (step(angle, 1, 15.0f)) {
                setMotion(0, -1.0f, false);
                mTurnMode = 0;
            }
        }
        
        if (ret) {
            mFlowID = getMessageNo();
        }
        break;
    case 3:
        setExpression(EXPR_EXPLAIN_B, -1.0f);
        if (!field_0x9ec) {
            dComIfGp_event_reset();    
        }

        field_0x9ec = false;
        break;
    }

    return ret;
}

/* 809602E0-809604C8 002580 01E8+00 1/0 0/0 0/0 .text            demo__11daNpcAshB_cFPv */
// NONMATCHING - extra instruction at dComIfGp_event_runCheck() causing regalloc issues?
bool daNpcAshB_c::demo(void* param_0) {
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();

    switch (mMode) {
    case 0:
        setExpression(EXPR_EXPLAIN_B, -1.0f);
        setMotion(MOT_WAIT_A, -1.0f, false);
        mMode = 2;
        // fallthrough

    case 2:
        if (dComIfGp_event_runCheck()) {
            if (!eventInfo.checkCommandTalk()) {
                s32 staff_id = eventManager.getMyStaffId(l_myName, NULL, 0);
                if (staff_id != -1) {
                    mStaffID = staff_id;
                    if ((this->*(mEvtSeqList[mOrderEvtNo]))(staff_id)) {
                        eventManager.cutEnd(staff_id);
                    }
                }

                if (eventInfo.checkCommandDemoAccrpt() && mEventIdx != -1 && eventManager.endCheck(mEventIdx)) {
                    dComIfGp_event_reset();
                    mOrderEvtNo = 0;
                    mEventIdx = -1;
                    setAction(&wait);
                }
            }
        }
        
        break;

    case 3:
        break;
    }

    return true;
}

/* 809604C8-809609A8 002768 04E0+00 3/0 0/0 0/0 .text            EvCut_Appear__11daNpcAshB_cFi */
// NONMATCHING literals
BOOL daNpcAshB_c::EvCut_Appear(int i_staffID) {
    int local_30[2];
    dEvent_manager_c& evtMgr = dComIfGp_getEventManager();
    int* cut_name = (int*)evtMgr.getMyNowCutName(i_staffID);

    if (evtMgr.getIsAddvance(i_staffID)) {
        switch (*cut_name) {
        // '0001', '0003', etc. wouldn't match?
        case 0x30303031:
            setLookMode(LOOK_ACTOR);
            break;
        case 0x30303033:
            setLookMode(LOOK_PLAYER);
            mTurnMode = 0;
            break;
        case 0x30303034:
        case 0x30303036:
        case 0x30303037:
        case 0x30303039:
            initTalk(mFlowID, NULL);
            break;
        case 0x30303035:
            setExpression(6,6.0f);
            setMotion(2, 2.0f, false);
            mMsgTimer = 0;
            break;
        case 0x30303038:
            local_30[0] = 0;
            if (mFlow.getEventId(local_30) == 1) {
                mItemPartnerId = fopAcM_createItemForPresentDemo(&current.pos,local_30[0], 0, -1, -1, 0, 0);
                dComIfGp_event_setItemPartnerId(mItemPartnerId);
                mItemPartnerId = -1;
            }
            break;
        }
    }

    switch (*cut_name) {
        case 0x30303031:
        case 0x30303032:
        return TRUE;
        case 0x30303033:
            if (step(fopAcM_searchPlayerAngleY(this), 1, 20.0f) != 0) {
                setLookMode(2);
                setMotion(0, -1.0f, 0);
                mTurnMode = 0;
                return TRUE;
            }
            break;
        case 0x30303034:
        case 0x30303036:
        case 0x30303037:
        case 0x30303039:
            if (talkProc(NULL, TRUE, NULL)) {
                return TRUE;
            }
            break;
        case 0x30303035:
            if (mMotionPhase > 1) {
                mpMorf->getModel()->getModelData()->getMaterialNodePointer(4)->getShape()->hide();
                return TRUE;
            }

            if (mMotionPhase == 1) {
                setExpression(6,0.0f);
                f32 subtract = mpMorf->getEndFrame() - 1.0f;
                if (mpMorf->getFrame() > subtract) {
                    field_0xded = 1;
                }
            }
            break;
        case 0x30303038:
            field_0x9eb = true;
            return TRUE;
    }

    int timer = mMsgTimer;
    int expression;
    int motion;

    if (ctrlMsgAnm(expression, motion, this, FALSE) != 0) {
        if (!field_0x9eb) {
            setExpression(expression, -1.0f);
            setMotion(motion, -1.0f, FALSE);
        }
    } else {
        if (timer != 0 && mMsgTimer == 0 && !field_0x9eb && mExpression != 2) {
            setExpressionTalkAfter();
        }
    }

    return FALSE;
}

/* 809609A8-809609C8 002C48 0020+00 1/0 0/0 0/0 .text            daNpcAshB_Create__FPv */
static cPhs__Step daNpcAshB_Create(void* i_this) {
    return static_cast<daNpcAshB_c*>(i_this)->Create();
}

/* 809609C8-809609E8 002C68 0020+00 1/0 0/0 0/0 .text            daNpcAshB_Delete__FPv */
static int daNpcAshB_Delete(void* i_this) {
    return static_cast<daNpcAshB_c*>(i_this)->Delete();
}

/* 809609E8-80960A08 002C88 0020+00 1/0 0/0 0/0 .text            daNpcAshB_Execute__FPv */
static int daNpcAshB_Execute(void* i_this) {
    return static_cast<daNpcAshB_c*>(i_this)->Execute();
}

/* 80960A08-80960A28 002CA8 0020+00 1/0 0/0 0/0 .text            daNpcAshB_Draw__FPv */
static int daNpcAshB_Draw(void* i_this) {
    return static_cast<daNpcAshB_c*>(i_this)->Draw();
}

/* 80960A28-80960A30 002CC8 0008+00 1/0 0/0 0/0 .text            daNpcAshB_IsDelete__FPv */
static bool daNpcAshB_IsDelete(void* param_0) {
    return true;
}

/* 80960A60-80960AE8 002D00 0088+00 1/0 0/0 0/0 .text            setParam__11daNpcAshB_cFv */
void daNpcAshB_c::setParam() {
    attention_info.flags = daPy_py_c::checkNowWolf() ? 0 : 10;
    attention_info.distances[0] = getDistTableIdx(daNpcAshB_Param_c::m.mTalkDistIdx,daNpcAshB_Param_c::m.mTalkAngleIdx);
    attention_info.distances[1] = attention_info.distances[0];
    attention_info.distances[3] = getDistTableIdx(daNpcAshB_Param_c::m.mSpeakDistIdx,daNpcAshB_Param_c::m.mSpeakAngleIdx);
}

/* 80960AE8-80960D64 002D88 027C+00 1/0 0/0 0/0 .text            main__11daNpcAshB_cFv */
BOOL daNpcAshB_c::main() {
    if (mpActionFn != NULL)
        (this->*mpActionFn)(NULL);

    if (mItemPartnerId != -1 && dComIfGp_event_runCheck() != 0 && !strcmp(dComIfGp_getEventManager().getRunEventName(), "DEFAULT_GETITEM")) {
        dComIfGp_event_setItemPartnerId(mItemPartnerId);
        mItemPartnerId = -1;
    }

    playExpression();
    playMotion();
    return true;
}

/* 80960D64-80961188 003004 0424+00 1/1 0/0 0/0 .text            playMotion__11daNpcAshB_cFv */
// NONMATCHING - no clue
void daNpcAshB_c::playMotion() {
    daNpcF_anmPlayData dat0 = {7, daNpcAshB_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat0[1] = {&dat0};

    daNpcF_anmPlayData dat1 = {8, daNpcAshB_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat1[1] = {&dat1};

    daNpcF_anmPlayData dat2a = {0xC, daNpcAshB_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat2b = {0xD, 0.0f, 1};
    daNpcF_anmPlayData dat2c = {8, 0.0f, 0};
    daNpcF_anmPlayData* pDat2[3] = {&dat2a, &dat2b, &dat2c};

    daNpcF_anmPlayData dat3a = {0xE, daNpcAshB_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat3b = {8, 0.0f, 0};
    daNpcF_anmPlayData* pDat3[2] = {&dat3a, &dat3b};

    daNpcF_anmPlayData dat4a = {0xF, daNpcAshB_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat4b = {8, 0.0f, 0};
    daNpcF_anmPlayData* pDat4[2] = {&dat4a, &dat4b};

    daNpcF_anmPlayData dat5a = {0x10, daNpcAshB_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat5b = {8, 0.0f, 0};
    daNpcF_anmPlayData* pDat5[2] = {&dat5a, &dat5b};

    daNpcF_anmPlayData dat6a = {0x11, daNpcAshB_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat6b = {8, 0.0f, 0};
    daNpcF_anmPlayData* pDat6[2] = {&dat6a, &dat6b};

    daNpcF_anmPlayData dat7a = {0x12, daNpcAshB_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat7b = {0x13, 0.0f, 0};
    daNpcF_anmPlayData* pDat7[2] = {&dat7a, &dat7b};

    daNpcF_anmPlayData dat8 = {0x13, daNpcAshB_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat8[1] = {&dat8};

    daNpcF_anmPlayData dat9a = {0x14, daNpcAshB_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat9b = {8, 0.0f, 0};
    daNpcF_anmPlayData* pDat9[2] = {&dat9a, &dat9b};

    daNpcF_anmPlayData dat10 = {0xA, 4.0f, 1};
    daNpcF_anmPlayData* pDat10[2] = {&dat10, NULL};
    daNpcF_anmPlayData dat11 = {0xB, 4.0f, 1};
    daNpcF_anmPlayData* pDat11[2] = {&dat11, NULL};

    daNpcF_anmPlayData** ppDat[12] = {
        pDat0,
        pDat1,
        pDat2,
        pDat3,
        pDat4,
        pDat5,
        pDat6,
        pDat7,
        pDat8,
        pDat9,
        pDat10,
        pDat11,
    };
    if (mMotion >= 0 && mMotion < 12) {
        playMotionAnm(ppDat);
    }
}

/* 80961188-80961264 003428 00DC+00 1/0 0/0 0/0 .text            ctrlBtk__11daNpcAshB_cFv */
// NONMATCHING inlining issues
BOOL daNpcAshB_c::ctrlBtk() {
    if (mpMatAnm != NULL) {
        J3DAnmTextureSRTKey* btkAnm = NULL;
        btkAnm = getTexSRTKeyAnmP(l_arcNames[l_btkGetParamList[0].arcIdx],l_btkGetParamList[0].fileIdx);

        if (btkAnm == mBtkAnm.getBtkAnm()) {
            mpMatAnm->setNowOffsetX(cM_ssin(mEyeAngle.y) * 0.2f * -1.0f);
            mpMatAnm->setNowOffsetY(cM_ssin(mEyeAngle.x) * 0.2f);
            mpMatAnm->onEyeMoveFlag();
            return true;
        }
        mpMatAnm->offEyeMoveFlag();
    }
    return false;
}

/* 80961264-80961574 003504 0310+00 1/0 0/0 0/0 .text            setAttnPos__11daNpcAshB_cFv */
// float literals
void daNpcAshB_c::setAttnPos() {
    if (mLookMode == 1) {
        for (int i  = 0; i < 3; i++) {
            mLookatAngle[i].setall(0);
        }
    }

    setMtx();
    lookat();

    cXyz vec(10.0f,10.0f,0.0f);
    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(10));
    mDoMtx_stack_c::multVecZero(&mHeadPos);
    mDoMtx_stack_c::multVec(&vec, &eyePos);
    vec.x = 0.0f;
    mDoMtx_stack_c::multVec(&vec, &vec);


    mHeadAngle.x = cLib_targetAngleX(&mHeadPos,&vec);
    mHeadAngle.y = cLib_targetAngleY(&mHeadPos,&vec);
    cXyz* attnPos = mLookat.getAttnPos();

    if (attnPos != NULL) {
        cXyz local_48 = *attnPos - eyePos;
        mEyeAngle.y = -(mLookatAngle[2].y + mCurAngle.y);
        mEyeAngle.y += cM_atan2s(local_48.x, local_48.z);
        mEyeAngle.x = mHeadAngle.x - cM_atan2s(local_48.y, local_48.absXZ());
        // mEyeAngle.x += mHeadAngle.x;
    } else {
        mEyeAngle.y = 0;
        mEyeAngle.x = 0;
    }

    attention_info.position.set(current.pos.x,
                                current.pos.y + daNpcAshB_Param_c::m.mAttnOffsetY,
                                current.pos.z);

    mCyl.SetC(current.pos);
    mCyl.SetH(daNpcAshB_Param_c::m.mCylH);
    mCyl.SetR(daNpcAshB_Param_c::m.mWallR);

    dComIfG_Ccsp()->Set(&mCyl);
}

/* 80961574-80961770 003814 01FC+00 1/1 0/0 0/0 .text            lookat__11daNpcAshB_cFv */
// NONMATCHING literal issues
void daNpcAshB_c::lookat() {
    fopAc_ac_c* actor = NULL;
    J3DModel* model = mpMorf->getModel();
    BOOL snap = false;
    f32 body_down_angle = daNpcAshB_Param_c::m.mBodyDownAngle;
    f32 body_up_angle = daNpcAshB_Param_c::m.mBodyUpAngle;
    f32 body_right_angle = daNpcAshB_Param_c::m.mBodyRightAngle;
    f32 body_left_angle = daNpcAshB_Param_c::m.mBodyLeftAngle;
    f32 head_down_angle = daNpcAshB_Param_c::m.mHeadDownAngle;
    f32 head_up_angle = daNpcAshB_Param_c::m.mHeadUpAngle;
    f32 head_right_angle = daNpcAshB_Param_c::m.mHeadRightAngle;
    f32 head_left_angle = daNpcAshB_Param_c::m.mHeadLeftAngle;

    s16 angle_delta = mCurAngle.y - mOldAngle.y;

    cXyz lookat_pos[3] = {mLookatPos[0], mLookatPos[1], mLookatPos[2]};
    csXyz* lookat_angle[3] = {&mLookatAngle[0], &mLookatAngle[1], &mLookatAngle[2]};

    switch (mLookMode) {
    case LOOK_NONE:
        break;
    case LOOK_RESET:
        snap = true;
        break;
    case LOOK_PLAYER:
    case LOOK_PLAYER_TALK:
        actor = daPy_getPlayerActorClass();
        if (mLookMode != LOOK_PLAYER_TALK) {
            break;
        }
        head_right_angle = -80.0f;
        head_left_angle = 80.0f;
        break;
    case LOOK_ACTOR:
        actor = daPy_getPlayerActorClass();
        body_right_angle = 0.0f;
        body_left_angle = 0.0f;
        break;
    }

    if (actor != NULL) {
        mLookPos = actor->attention_info.position;
        if (mLookMode != LOOK_PLAYER && mLookMode != LOOK_PLAYER_TALK) {
            mLookPos.y -= 40.0f;
        }
        mLookat.setAttnPos(&mLookPos);
    } else {
        mLookat.setAttnPos(NULL);
    }

    mLookat.setParam(body_down_angle, body_up_angle, body_right_angle, body_left_angle,
                     0.0f, 0.0f, 0.0f, 0.0f,
                     head_down_angle, head_up_angle, head_right_angle, head_left_angle,
                     mCurAngle.y, lookat_pos);
    mLookat.calc(this, model->getBaseTRMtx(), lookat_angle, snap, angle_delta, false);
}

/* 80961770-809617F8 003A10 0088+00 1/0 0/0 0/0 .text            drawOtherMdls__11daNpcAshB_cFv */
void daNpcAshB_c::drawOtherMdls() {
    if (field_0xded != 0) {
        J3DModel* model = mpMorf->getModel();
        MtxP src = model->getAnmMtx(24);
        mDoMtx_stack_c::copy(src);
        mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
        g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
        mDoExt_modelUpdateDL(mpModel);
    }
}

/* 809617F8-80961800 003A98 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpcAshB_cFv */
BOOL daNpcAshB_c::drawDbgInfo() {
    return false;
}

/* 80962680-809626A0 -00001 0020+00 1/0 0/0 0/0 .data            daNpcAshB_MethodTable */
static actor_method_class daNpcAshB_MethodTable = {
    (process_method_func)daNpcAshB_Create,
    (process_method_func)daNpcAshB_Delete,
    (process_method_func)daNpcAshB_Execute,
    (process_method_func)daNpcAshB_IsDelete,
    (process_method_func)daNpcAshB_Draw,
};

/* 809626A0-809626D0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_ASHB */
extern actor_process_profile_definition g_profile_NPC_ASHB = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_ASHB,          // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpcAshB_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  412,                    // mPriority
  &daNpcAshB_MethodTable, // sub_method
  0x00040100,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
