/**
 * @file d_a_npc_bouS.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_bouS.h"
#include "dol2asm.h"
#include "d/d_camera.h"

//
// Forward References:
//

extern "C" void __ct__11daNpcBouS_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__11daNpcBouS_cFv();
extern "C" void Create__11daNpcBouS_cFv();
extern "C" void CreateHeap__11daNpcBouS_cFv();
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
extern "C" void Delete__11daNpcBouS_cFv();
extern "C" void Execute__11daNpcBouS_cFv();
extern "C" void Draw__11daNpcBouS_cFv();
extern "C" void ctrlJoint__11daNpcBouS_cFP8J3DJointP8J3DModel();
extern "C" void createHeapCallBack__11daNpcBouS_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__11daNpcBouS_cFP8J3DJointi();
extern "C" void setExpressionAnm__11daNpcBouS_cFib();
extern "C" void setExpressionBtp__11daNpcBouS_cFi();
extern "C" void setMotionAnm__11daNpcBouS_cFif();
extern "C" void reset__11daNpcBouS_cFv();
extern "C" void setAction__11daNpcBouS_cFM11daNpcBouS_cFPCvPvPv_b();
extern "C" static void s_sub__FPvPv();
extern "C" void checkInstructionTag__11daNpcBouS_cFP10fopAc_ac_c();
extern "C" void wait__11daNpcBouS_cFPv();
extern "C" void setMotion__11daNpcBouS_cFifi();
extern "C" void setExpression__11daNpcBouS_cFif();
extern "C" void talk__11daNpcBouS_cFPv();
extern "C" void demo__11daNpcBouS_cFPv();
extern "C" void instruction__11daNpcBouS_cFPv();
extern "C" void checkIntroDemoStart__11daNpcBouS_cFv();
extern "C" void EvCut_BousIntroSumo1__11daNpcBouS_cFi();
extern "C" void EvCut_BousIntroSumo2__11daNpcBouS_cFi();
extern "C" void EvCut_BousIntroSumo3__11daNpcBouS_cFi();
extern "C" static void daNpcBouS_Create__FPv();
extern "C" static void daNpcBouS_Delete__FPv();
extern "C" static void daNpcBouS_Execute__FPv();
extern "C" static void daNpcBouS_Draw__FPv();
extern "C" static bool daNpcBouS_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void setParam__11daNpcBouS_cFv();
extern "C" void main__11daNpcBouS_cFv();
extern "C" void playMotion__11daNpcBouS_cFv();
extern "C" void ctrlBtk__11daNpcBouS_cFv();
extern "C" void setAttnPos__11daNpcBouS_cFv();
extern "C" void lookat__11daNpcBouS_cFv();
extern "C" bool drawDbgInfo__11daNpcBouS_cFv();
extern "C" void drawOtherMdls__11daNpcBouS_cFv();
extern "C" void func_80977AC4(void* _this, s16);
extern "C" void __sinit_d_a_npc_bouS_cpp();
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
extern "C" void setCollisions__8daNpcF_cFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void adjustShapeAngle__11daNpcBouS_cFv();
extern "C" void __dt__17daNpcBouS_Param_cFv();
extern "C" static void func_809783EC();
extern "C" static void func_809783F4();
extern "C" u8 const m__17daNpcBouS_Param_c[140];
extern "C" extern char const* const d_a_npc_bouS__stringBase0;
extern "C" u8 mEvtSeqList__11daNpcBouS_c[48];

//
// External References:
//

extern "C" void fadeOut__13mDoGph_gInf_cFf();
extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcEx_SearchByID__FUi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void isTbox__12dSv_memBit_cCFi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setPtI_Id__14dEvt_control_cFUi();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyNowCutName__16dEvent_manager_cFi();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWallR__12dBgS_AcchCirFf();
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
extern "C" void checkItemGet__FUci();
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
extern "C" void changeEvent__8daNpcF_cFPcPcUsUs();
extern "C" void chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci();
extern "C" void initTalk__8daNpcF_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcF_cFPiiPP10fopAc_ac_c();
extern "C" void turn__8daNpcF_cFsfi();
extern "C" void setAngle__8daNpcF_cFs();
extern "C" void getDistTableIdx__8daNpcF_cFii();
extern "C" void daNpcF_chkEvtBit__FUl();
extern "C" void Stop__9dCamera_cFv();
extern "C" void Set__9dCamera_cF4cXyz4cXyzfs();
extern "C" void dCam_getBody__Fv();
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
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_chaseS__FPsss();
extern "C" void cLib_chasePosXZ__FP4cXyzRC4cXyzf();
extern "C" void cLib_chaseAngleS__FPsss();
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
extern "C" void checkStartUp__15daNpcWrestler_cFv();

//
// Declarations:
//

/* ############################################################################################## */
/* 80978758-80978758 000348 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80978758 = "Bou";
SECTION_DEAD static char const* const stringBase_8097875C = "Bou4";
SECTION_DEAD static char const* const stringBase_80978761 = "BOUS_INTRO_SUMO1";
SECTION_DEAD static char const* const stringBase_80978772 = "BOUS_INTRO_SUMO2";
SECTION_DEAD static char const* const stringBase_80978783 = "BOUS_INTRO_SUMO3";
SECTION_DEAD static char const* const stringBase_80978794 = "BouS";
#pragma pop

/* 809787C4-809788D8 000020 0114+00 1/2 0/0 0/0 .data            l_bckGetParamList */
SECTION_DATA static u8 l_bckGetParamList[276] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0A,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0F,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x16,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01,
};

/* 809788D8-80978914 000134 003C+00 1/1 0/0 0/0 .data            l_btpGetParamList */
SECTION_DATA static u8 l_btpGetParamList[60] = {
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00,
    0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
};

/* 80978914-80978920 000170 000C+00 1/2 0/0 0/0 .data            l_btkGetParamList */
SECTION_DATA static u8 l_btkGetParamList[12] = {
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
};

/* 80978920-80978928 -00001 0008+00 6/7 0/0 0/0 .data            l_arcNames */
SECTION_DATA static void* l_arcNames[2] = {
    (void*)&d_a_npc_bouS__stringBase0,
    (void*)(((char*)&d_a_npc_bouS__stringBase0) + 0x4),
};

/* 80978928-80978938 -00001 0010+00 3/4 0/0 0/0 .data            l_evtNames */
SECTION_DATA static void* l_evtNames[4] = {
    (void*)NULL,
    (void*)(((char*)&d_a_npc_bouS__stringBase0) + 0x9),
    (void*)(((char*)&d_a_npc_bouS__stringBase0) + 0x1A),
    (void*)(((char*)&d_a_npc_bouS__stringBase0) + 0x2B),
};

/* 80978938-8097893C -00001 0004+00 0/2 0/0 0/0 .data            l_myName */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_myName = (void*)(((char*)&d_a_npc_bouS__stringBase0) + 0x3C);
#pragma pop

/* 8097893C-80978948 -00001 000C+00 0/1 0/0 0/0 .data            @4036 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4036[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_BousIntroSumo1__11daNpcBouS_cFi,
};
#pragma pop

/* 80978948-80978954 -00001 000C+00 0/1 0/0 0/0 .data            @4037 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4037[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_BousIntroSumo2__11daNpcBouS_cFi,
};
#pragma pop

/* 80978954-80978960 -00001 000C+00 0/1 0/0 0/0 .data            @4038 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4038[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)EvCut_BousIntroSumo3__11daNpcBouS_cFi,
};
#pragma pop

/* 80978960-80978990 0001BC 0030+00 0/2 0/0 0/0 .data            mEvtSeqList__11daNpcBouS_c */
#pragma push
#pragma force_active on
SECTION_DATA u8 daNpcBouS_c::mEvtSeqList[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80978990-809789AC -00001 001C+00 1/1 0/0 0/0 .data            @4655 */
SECTION_DATA static void* lit_4655[7] = {
    (void*)(((char*)setExpressionAnm__11daNpcBouS_cFib) + 0xA0),
    (void*)(((char*)setExpressionAnm__11daNpcBouS_cFib) + 0xBC),
    (void*)(((char*)setExpressionAnm__11daNpcBouS_cFib) + 0xD8),
    (void*)(((char*)setExpressionAnm__11daNpcBouS_cFib) + 0xF4),
    (void*)(((char*)setExpressionAnm__11daNpcBouS_cFib) + 0x110),
    (void*)(((char*)setExpressionAnm__11daNpcBouS_cFib) + 0x12C),
    (void*)(((char*)setExpressionAnm__11daNpcBouS_cFib) + 0x148),
};

/* 809789AC-809789B8 -00001 000C+00 1/1 0/0 0/0 .data            @4702 */
SECTION_DATA static void* lit_4702[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo__11daNpcBouS_cFPv,
};

/* 809789B8-809789C4 -00001 000C+00 1/1 0/0 0/0 .data            @4705 */
SECTION_DATA static void* lit_4705[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpcBouS_cFPv,
};

/* 809789C4-809789D0 -00001 000C+00 0/1 0/0 0/0 .data            @4885 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4885[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpcBouS_cFPv,
};
#pragma pop

/* 809789D0-809789DC -00001 000C+00 0/1 0/0 0/0 .data            @4888 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4888[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo__11daNpcBouS_cFPv,
};
#pragma pop

/* 809789DC-809789E8 -00001 000C+00 0/1 0/0 0/0 .data            @4893 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4893[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo__11daNpcBouS_cFPv,
};
#pragma pop

/* 809789E8-809789F4 -00001 000C+00 0/1 0/0 0/0 .data            @5012 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5012[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)instruction__11daNpcBouS_cFPv,
};
#pragma pop

/* 809789F4-80978A00 -00001 000C+00 0/1 0/0 0/0 .data            @5015 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5015[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpcBouS_cFPv,
};
#pragma pop

/* 80978A00-80978A0C -00001 000C+00 0/1 0/0 0/0 .data            @5018 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5018[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpcBouS_cFPv,
};
#pragma pop

/* 80978A0C-80978A18 -00001 000C+00 0/1 0/0 0/0 .data            @5117 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5117[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpcBouS_cFPv,
};
#pragma pop

/* 80978A18-80978A24 -00001 000C+00 1/1 0/0 0/0 .data            @5163 */
SECTION_DATA static void* lit_5163[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpcBouS_cFPv,
};

/* 80978A24-80978A30 -00001 000C+00 1/1 0/0 0/0 .data            @5426 */
SECTION_DATA static void* lit_5426[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)instruction__11daNpcBouS_cFPv,
};

/* 80978A30-80978A3C -00001 000C+00 1/1 0/0 0/0 .data            @5429 */
SECTION_DATA static void* lit_5429[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpcBouS_cFPv,
};

/* 80978A3C-80978A5C -00001 0020+00 1/0 0/0 0/0 .data            daNpcBouS_MethodTable */
static actor_method_class daNpcBouS_MethodTable = {
    (process_method_func)daNpcBouS_Create__FPv,
    (process_method_func)daNpcBouS_Delete__FPv,
    (process_method_func)daNpcBouS_Execute__FPv,
    (process_method_func)daNpcBouS_IsDelete__FPv,
    (process_method_func)daNpcBouS_Draw__FPv,
};

/* 80978A5C-80978A8C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_BOU_S */
extern actor_process_profile_definition g_profile_NPC_BOU_S = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_BOU_S,         // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpcBouS_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  325,                    // mPriority
  &daNpcBouS_MethodTable, // sub_method
  0x00044100,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80978A8C-80978A98 0002E8 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80978A98-80978AE0 0002F4 0048+00 2/2 0/0 0/0 .data            __vt__11daNpcBouS_c */
SECTION_DATA extern void* __vt__11daNpcBouS_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11daNpcBouS_cFv,
    (void*)setParam__11daNpcBouS_cFv,
    (void*)main__11daNpcBouS_cFv,
    (void*)ctrlBtk__11daNpcBouS_cFv,
    (void*)adjustShapeAngle__11daNpcBouS_cFv,
    (void*)setMtx__8daNpcF_cFv,
    (void*)setMtx2__8daNpcF_cFv,
    (void*)setAttnPos__11daNpcBouS_cFv,
    (void*)setCollisions__8daNpcF_cFv,
    (void*)setExpressionAnm__11daNpcBouS_cFib,
    (void*)setExpressionBtp__11daNpcBouS_cFi,
    (void*)setExpression__11daNpcBouS_cFif,
    (void*)setMotionAnm__11daNpcBouS_cFif,
    (void*)setMotion__11daNpcBouS_cFifi,
    (void*)drawDbgInfo__11daNpcBouS_cFv,
    (void*)drawOtherMdls__11daNpcBouS_cFv,
};

/* 80978AE0-80978AEC 00033C 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80978AEC-80978B10 000348 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809783F4,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809783EC,
};

/* 80978B10-80978B1C 00036C 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80978B1C-80978B28 000378 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80978B28-80978B34 000384 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80978B34-80978B40 000390 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcF_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcF_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcF_ActorMngr_cFv,
};

/* 80978B40-80978B4C 00039C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80978B4C-80978B58 0003A8 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80978B58-80978B64 0003B4 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcF_Lookat_c */
SECTION_DATA extern void* __vt__15daNpcF_Lookat_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcF_Lookat_cFv,
};

/* 8097354C-809736D0 0000EC 0184+00 1/1 0/0 0/0 .text            __ct__11daNpcBouS_cFv */
daNpcBouS_c::daNpcBouS_c() {
    // NONMATCHING
}

/* 809736D0-80973718 000270 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80973718-80973760 0002B8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80973760-80973948 000300 01E8+00 1/0 0/0 0/0 .text            __dt__11daNpcBouS_cFv */
daNpcBouS_c::~daNpcBouS_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80978410-8097849C 000000 008C+00 13/13 0/0 0/0 .rodata          m__17daNpcBouS_Param_c */
SECTION_RODATA u8 const daNpcBouS_Param_c::m[140] = {
    0x43, 0x5C, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x00, 0x13, 0x00, 0x06,
    0x42, 0xA0, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0xC3, 0x96, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x43, 0x5C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0xC8, 0x00, 0x00, 0x42, 0xA0, 0x00, 0x00,
    0x44, 0x23, 0xB2, 0x3D, 0xEB, 0x51, 0xA3, 0xC6, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80978410, &daNpcBouS_Param_c::m);

/* 8097849C-809784A0 00008C 0004+00 0/1 0/0 0/0 .rodata          @4394 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4394 = -160.0f;
COMPILER_STRIP_GATE(0x8097849C, &lit_4394);
#pragma pop

/* 809784A0-809784A4 000090 0004+00 0/1 0/0 0/0 .rodata          @4395 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4395 = -50.0f;
COMPILER_STRIP_GATE(0x809784A0, &lit_4395);
#pragma pop

/* 809784A4-809784A8 000094 0004+00 0/1 0/0 0/0 .rodata          @4396 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4396 = 160.0f;
COMPILER_STRIP_GATE(0x809784A4, &lit_4396);
#pragma pop

/* 809784A8-809784AC 000098 0004+00 0/2 0/0 0/0 .rodata          @4397 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4397 = 220.0f;
COMPILER_STRIP_GATE(0x809784A8, &lit_4397);
#pragma pop

/* 80973948-80973B9C 0004E8 0254+00 1/1 0/0 0/0 .text            Create__11daNpcBouS_cFv */
void daNpcBouS_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809784AC-809784B0 00009C 0004+00 4/4 0/0 0/0 .rodata          @4446 */
SECTION_RODATA static f32 const lit_4446 = 1.0f;
COMPILER_STRIP_GATE(0x809784AC, &lit_4446);

/* 809784B0-809784B4 0000A0 0004+00 2/8 0/0 0/0 .rodata          @4447 */
SECTION_RODATA static u8 const lit_4447[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809784B0, &lit_4447);

/* 80973B9C-80973E0C 00073C 0270+00 1/1 0/0 0/0 .text            CreateHeap__11daNpcBouS_cFv */
void daNpcBouS_c::CreateHeap() {
    // NONMATCHING
}

/* 80973E0C-80973E48 0009AC 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80973E48-80973E60 0009E8 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80973E60-80973E9C 000A00 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80973E9C-80973EB4 000A3C 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80973EB4-80973EFC 000A54 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80973EFC-80973F20 000A9C 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80973F20-80973F5C 000AC0 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80973F5C-80973F74 000AFC 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80973F74-80973FB0 000B14 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80973FB0-80973FC8 000B50 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80973FC8-80973FFC 000B68 0034+00 1/1 0/0 0/0 .text            Delete__11daNpcBouS_cFv */
void daNpcBouS_c::Delete() {
    // NONMATCHING
}

/* 80973FFC-80974020 000B9C 0024+00 2/2 0/0 0/0 .text            Execute__11daNpcBouS_cFv */
void daNpcBouS_c::Execute() {
    // NONMATCHING
}

/* 80974020-80974090 000BC0 0070+00 1/1 0/0 0/0 .text            Draw__11daNpcBouS_cFv */
void daNpcBouS_c::Draw() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809784B4-809784C0 0000A4 000C+00 1/1 0/0 0/0 .rodata          @4497 */
SECTION_RODATA static u8 const lit_4497[12] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04,
};
COMPILER_STRIP_GATE(0x809784B4, &lit_4497);

/* 80974090-809742BC 000C30 022C+00 1/1 0/0 0/0 .text
 * ctrlJoint__11daNpcBouS_cFP8J3DJointP8J3DModel                */
void daNpcBouS_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 809742BC-809742DC 000E5C 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__11daNpcBouS_cFP10fopAc_ac_c              */
void daNpcBouS_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 809742DC-80974328 000E7C 004C+00 1/1 0/0 0/0 .text ctrlJointCallBack__11daNpcBouS_cFP8J3DJointi
 */
void daNpcBouS_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80974328-80974514 000EC8 01EC+00 2/0 0/0 0/0 .text            setExpressionAnm__11daNpcBouS_cFib
 */
void daNpcBouS_c::setExpressionAnm(int param_0, bool param_1) {
    // NONMATCHING
}

/* 80974514-809745F4 0010B4 00E0+00 1/0 0/0 0/0 .text            setExpressionBtp__11daNpcBouS_cFi
 */
void daNpcBouS_c::setExpressionBtp(int param_0) {
    // NONMATCHING
}

/* 809745F4-80974730 001194 013C+00 1/0 0/0 0/0 .text            setMotionAnm__11daNpcBouS_cFif */
bool daNpcBouS_c::setMotionAnm(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 80974730-809748F0 0012D0 01C0+00 1/1 0/0 0/0 .text            reset__11daNpcBouS_cFv */
void daNpcBouS_c::reset() {
    // NONMATCHING
}

/* 809748F0-80974998 001490 00A8+00 1/1 0/0 0/0 .text
 * setAction__11daNpcBouS_cFM11daNpcBouS_cFPCvPvPv_b            */
void daNpcBouS_c::setAction(bool (daNpcBouS_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80974998-80974A04 001538 006C+00 1/1 0/0 0/0 .text            s_sub__FPvPv */
static void s_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80974A04-80974A28 0015A4 0024+00 1/1 0/0 0/0 .text
 * checkInstructionTag__11daNpcBouS_cFP10fopAc_ac_c             */
void daNpcBouS_c::checkInstructionTag(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809784C0-809784CC 0000B0 000C+00 0/1 0/0 0/0 .rodata          @4730 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4730[12] = {
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809784C0, &lit_4730);
#pragma pop

/* 809784CC-809784D0 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4731 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4731[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809784CC, &lit_4731);
#pragma pop

/* 809784D0-809784DC 0000C0 000C+00 0/1 0/0 0/0 .rodata          @4732 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4732[12] = {
    0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809784D0, &lit_4732);
#pragma pop

/* 809784DC-809784E0 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4733 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4733[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809784DC, &lit_4733);
#pragma pop

/* 809784E0-809784EC 0000D0 000C+00 0/1 0/0 0/0 .rodata          @4734 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4734[12] = {
    0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809784E0, &lit_4734);
#pragma pop

/* 809784EC-809784F8 0000DC 000C+00 0/1 0/0 0/0 .rodata          @4735 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4735[12] = {
    0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809784EC, &lit_4735);
#pragma pop

/* 809784F8-80978500 0000E8 0008+00 0/1 0/0 0/0 .rodata          @4736 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4736[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809784F8, &lit_4736);
#pragma pop

/* 80978500-8097850C 0000F0 000C+00 0/1 0/0 0/0 .rodata          @4737 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4737[12] = {
    0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80978500, &lit_4737);
#pragma pop

/* 8097850C-80978518 0000FC 000C+00 0/1 0/0 0/0 .rodata          @4738 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4738[12] = {
    0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8097850C, &lit_4738);
#pragma pop

/* 80978518-80978520 000108 0008+00 0/1 0/0 0/0 .rodata          @4739 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4739[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80978518, &lit_4739);
#pragma pop

/* 80978520-8097852C 000110 000C+00 0/1 0/0 0/0 .rodata          @4740 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4740[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80978520, &lit_4740);
#pragma pop

/* 8097852C-80978530 00011C 0004+00 0/1 0/0 0/0 .rodata          @4741 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4741[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8097852C, &lit_4741);
#pragma pop

/* 80978530-80978548 000120 0018+00 0/0 0/0 0/0 .rodata          @4742 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4742[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80978530, &lit_4742);
#pragma pop

/* 80978548-80978554 000138 000C+00 0/1 0/0 0/0 .rodata          @4746 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4746[12] = {
    0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80978548, &lit_4746);
#pragma pop

/* 80978554-80978558 000144 0004+00 0/1 0/0 0/0 .rodata          @4747 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4747[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80978554, &lit_4747);
#pragma pop

/* 80978558-80978564 000148 000C+00 0/1 0/0 0/0 .rodata          @4748 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4748[12] = {
    0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80978558, &lit_4748);
#pragma pop

/* 80978564-80978568 000154 0004+00 0/1 0/0 0/0 .rodata          @4749 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4749[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80978564, &lit_4749);
#pragma pop

/* 80978568-80978574 000158 000C+00 0/1 0/0 0/0 .rodata          @4750 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4750[12] = {
    0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80978568, &lit_4750);
#pragma pop

/* 80978574-80978578 000164 0004+00 0/1 0/0 0/0 .rodata          @4751 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4751[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80978574, &lit_4751);
#pragma pop

/* 80978578-80978584 000168 000C+00 0/1 0/0 0/0 .rodata          @4752 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4752[12] = {
    0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80978578, &lit_4752);
#pragma pop

/* 80978584-80978590 000174 000C+00 0/1 0/0 0/0 .rodata          @4753 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4753[12] = {
    0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80978584, &lit_4753);
#pragma pop

/* 80978590-80978598 000180 0008+00 0/1 0/0 0/0 .rodata          @4754 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4754[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80978590, &lit_4754);
#pragma pop

/* 80978598-809785A4 000188 000C+00 0/1 0/0 0/0 .rodata          @4755 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4755[12] = {
    0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80978598, &lit_4755);
#pragma pop

/* 809785A4-809785B0 000194 000C+00 0/1 0/0 0/0 .rodata          @4756 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4756[12] = {
    0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809785A4, &lit_4756);
#pragma pop

/* 809785B0-809785B8 0001A0 0008+00 0/1 0/0 0/0 .rodata          @4757 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4757[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809785B0, &lit_4757);
#pragma pop

/* 809785B8-809785C4 0001A8 000C+00 0/1 0/0 0/0 .rodata          @4758 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4758[12] = {
    0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809785B8, &lit_4758);
#pragma pop

/* 809785C4-809785D0 0001B4 000C+00 0/1 0/0 0/0 .rodata          @4759 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4759[12] = {
    0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809785C4, &lit_4759);
#pragma pop

/* 809785D0-809785D8 0001C0 0008+00 0/1 0/0 0/0 .rodata          @4760 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4760[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809785D0, &lit_4760);
#pragma pop

/* 809785D8-809785E4 0001C8 000C+00 0/1 0/0 0/0 .rodata          @4761 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4761[12] = {
    0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809785D8, &lit_4761);
#pragma pop

/* 809785E4-809785F0 0001D4 000C+00 0/1 0/0 0/0 .rodata          @4762 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4762[12] = {
    0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809785E4, &lit_4762);
#pragma pop

/* 809785F0-809785F8 0001E0 0008+00 0/1 0/0 0/0 .rodata          @4763 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4763[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809785F0, &lit_4763);
#pragma pop

/* 809785F8-80978604 0001E8 000C+00 0/1 0/0 0/0 .rodata          @4764 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4764[12] = {
    0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809785F8, &lit_4764);
#pragma pop

/* 80978604-80978610 0001F4 000C+00 0/1 0/0 0/0 .rodata          @4765 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4765[12] = {
    0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80978604, &lit_4765);
#pragma pop

/* 80978610-80978618 000200 0008+00 0/1 0/0 0/0 .rodata          @4766 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4766[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80978610, &lit_4766);
#pragma pop

/* 80978618-80978624 000208 000C+00 0/1 0/0 0/0 .rodata          @4767 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4767[12] = {
    0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80978618, &lit_4767);
#pragma pop

/* 80978624-80978630 000214 000C+00 0/1 0/0 0/0 .rodata          @4768 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4768[12] = {
    0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80978624, &lit_4768);
#pragma pop

/* 80978630-80978638 000220 0008+00 0/1 0/0 0/0 .rodata          @4769 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4769[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80978630, &lit_4769);
#pragma pop

/* 80978638-80978644 000228 000C+00 0/1 0/0 0/0 .rodata          @4770 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4770[12] = {
    0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80978638, &lit_4770);
#pragma pop

/* 80978644-80978648 000234 0004+00 0/1 0/0 0/0 .rodata          @4771 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4771[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80978644, &lit_4771);
#pragma pop

/* 80978648-80978654 000238 000C+00 0/1 0/0 0/0 .rodata          @4772 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4772[12] = {
    0x00, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80978648, &lit_4772);
#pragma pop

/* 80978654-80978660 000244 000C+00 0/1 0/0 0/0 .rodata          @4773 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4773[12] = {
    0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80978654, &lit_4773);
#pragma pop

/* 80978660-80978668 000250 0008+00 0/1 0/0 0/0 .rodata          @4774 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4774[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80978660, &lit_4774);
#pragma pop

/* 80978668-80978674 000258 000C+00 0/1 0/0 0/0 .rodata          @4775 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4775[12] = {
    0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80978668, &lit_4775);
#pragma pop

/* 80978674-80978678 000264 0004+00 0/1 0/0 0/0 .rodata          @4776 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4776[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80978674, &lit_4776);
#pragma pop

/* 80978678-80978684 000268 000C+00 0/1 0/0 0/0 .rodata          @4777 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4777[12] = {
    0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80978678, &lit_4777);
#pragma pop

/* 80978684-80978688 000274 0004+00 0/1 0/0 0/0 .rodata          @4778 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4778[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80978684, &lit_4778);
#pragma pop

/* 80978688-80978694 000278 000C+00 0/1 0/0 0/0 .rodata          @4779 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4779[12] = {
    0x00, 0x0C, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80978688, &lit_4779);
#pragma pop

/* 80978694-80978698 000284 0004+00 0/1 0/0 0/0 .rodata          @4780 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4780[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80978694, &lit_4780);
#pragma pop

/* 80978698-809786E8 000288 0050+00 0/0 0/0 0/0 .rodata          @4781 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4781[80] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80978698, &lit_4781);
#pragma pop

/* 809786E8-809786F4 0002D8 000C+00 0/1 0/0 0/0 .rodata          @4795 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4795[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809786E8, &lit_4795);
#pragma pop

/* 809786F4-809786F8 0002E4 0004+00 3/8 0/0 0/0 .rodata          @4984 */
SECTION_RODATA static f32 const lit_4984 = -1.0f;
COMPILER_STRIP_GATE(0x809786F4, &lit_4984);

/* 809786F8-809786FC 0002E8 0004+00 0/3 0/0 0/0 .rodata          @4985 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4985 = 0x3BB40000;
COMPILER_STRIP_GATE(0x809786F8, &lit_4985);
#pragma pop

/* 809786FC-80978700 0002EC 0004+00 0/3 0/0 0/0 .rodata          @4986 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4986 = 15.0f;
COMPILER_STRIP_GATE(0x809786FC, &lit_4986);
#pragma pop

/* 80978700-80978708 0002F0 0008+00 0/3 0/0 0/0 .rodata          @4988 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4988[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80978700, &lit_4988);
#pragma pop

/* 80974A28-809750BC 0015C8 0694+00 6/0 0/0 0/0 .text            wait__11daNpcBouS_cFPv */
void daNpcBouS_c::wait(void* param_0) {
    // NONMATCHING
}

/* 809750BC-80975104 001C5C 0048+00 1/0 0/0 0/0 .text            setMotion__11daNpcBouS_cFifi */
void daNpcBouS_c::setMotion(int param_0, f32 param_1, int param_2) {
    // NONMATCHING
}

/* 80975104-80975130 001CA4 002C+00 1/0 0/0 0/0 .text            setExpression__11daNpcBouS_cFif */
void daNpcBouS_c::setExpression(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 80978BB8-80978BC4 000048 000C+00 0/1 0/0 0/0 .bss             @4034 */
#pragma push
#pragma force_active on
static u8 lit_4034[12];
#pragma pop

/* 80978BC4-80978BD0 000054 000C+00 3/4 0/0 0/0 .bss             l_createPos */
static u8 l_createPos[12];

/* 80975130-80975748 001CD0 0618+00 1/0 0/0 0/0 .text            talk__11daNpcBouS_cFPv */
void daNpcBouS_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80975748-80975930 0022E8 01E8+00 3/0 0/0 0/0 .text            demo__11daNpcBouS_cFPv */
void daNpcBouS_c::demo(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80978708-8097870C 0002F8 0004+00 0/1 0/0 0/0 .rodata          @5270 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5270 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80978708, &lit_5270);
#pragma pop

/* 8097870C-80978710 0002FC 0004+00 0/1 0/0 0/0 .rodata          @5271 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5271 = -1.0f / 20.0f;
COMPILER_STRIP_GATE(0x8097870C, &lit_5271);
#pragma pop

/* 80975930-80975ED8 0024D0 05A8+00 2/0 0/0 0/0 .text            instruction__11daNpcBouS_cFPv */
void daNpcBouS_c::instruction(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80978758-80978758 000348 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80978799 = "R_SP01";
#pragma pop

/* 80975ED8-80975FDC 002A78 0104+00 1/1 0/0 0/0 .text checkIntroDemoStart__11daNpcBouS_cFv */
void daNpcBouS_c::checkIntroDemoStart() {
    // NONMATCHING
}

/* 80975FDC-80976284 002B7C 02A8+00 1/0 0/0 0/0 .text EvCut_BousIntroSumo1__11daNpcBouS_cFi */
void daNpcBouS_c::EvCut_BousIntroSumo1(int param_0) {
    // NONMATCHING
}

/* 80976284-80976654 002E24 03D0+00 1/0 0/0 0/0 .text EvCut_BousIntroSumo2__11daNpcBouS_cFi */
void daNpcBouS_c::EvCut_BousIntroSumo2(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80978710-80978714 000300 0004+00 0/1 0/0 0/0 .rodata          @5465 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5465 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x80978710, &lit_5465);
#pragma pop

/* 80978714-80978718 000304 0004+00 0/1 0/0 0/0 .rodata          @5466 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5466 = 2.5f;
COMPILER_STRIP_GATE(0x80978714, &lit_5466);
#pragma pop

/* 80978758-80978758 000348 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809787A0 = "pos";
#pragma pop

/* 80976654-80976B48 0031F4 04F4+00 1/0 0/0 0/0 .text EvCut_BousIntroSumo3__11daNpcBouS_cFi */
void daNpcBouS_c::EvCut_BousIntroSumo3(int param_0) {
    // NONMATCHING
}

/* 80976B48-80976B68 0036E8 0020+00 1/0 0/0 0/0 .text            daNpcBouS_Create__FPv */
static void daNpcBouS_Create(void* param_0) {
    // NONMATCHING
}

/* 80976B68-80976B88 003708 0020+00 1/0 0/0 0/0 .text            daNpcBouS_Delete__FPv */
static void daNpcBouS_Delete(void* param_0) {
    // NONMATCHING
}

/* 80976B88-80976BA8 003728 0020+00 1/0 0/0 0/0 .text            daNpcBouS_Execute__FPv */
static void daNpcBouS_Execute(void* param_0) {
    // NONMATCHING
}

/* 80976BA8-80976BC8 003748 0020+00 1/0 0/0 0/0 .text            daNpcBouS_Draw__FPv */
static void daNpcBouS_Draw(void* param_0) {
    // NONMATCHING
}

/* 80976BC8-80976BD0 003768 0008+00 1/0 0/0 0/0 .text            daNpcBouS_IsDelete__FPv */
static bool daNpcBouS_IsDelete(void* param_0) {
    return true;
}

/* 80976BD0-80976C00 003770 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80976C00-80976C9C 0037A0 009C+00 1/0 0/0 0/0 .text            setParam__11daNpcBouS_cFv */
void daNpcBouS_c::setParam() {
    // NONMATCHING
}

/* 80976C9C-80976EEC 00383C 0250+00 1/0 0/0 0/0 .text            main__11daNpcBouS_cFv */
void daNpcBouS_c::main() {
    // NONMATCHING
}

/* 80976EEC-80977368 003A8C 047C+00 1/1 0/0 0/0 .text            playMotion__11daNpcBouS_cFv */
void daNpcBouS_c::playMotion() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80978718-8097871C 000308 0004+00 1/1 0/0 0/0 .rodata          @5583 */
SECTION_RODATA static f32 const lit_5583 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80978718, &lit_5583);

/* 80977368-80977444 003F08 00DC+00 1/0 0/0 0/0 .text            ctrlBtk__11daNpcBouS_cFv */
void daNpcBouS_c::ctrlBtk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8097871C-80978720 00030C 0004+00 0/1 0/0 0/0 .rodata          @5691 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5691 = -10.0f;
COMPILER_STRIP_GATE(0x8097871C, &lit_5691);
#pragma pop

/* 80978720-80978724 000310 0004+00 0/1 0/0 0/0 .rodata          @5692 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5692 = 10.0f;
COMPILER_STRIP_GATE(0x80978720, &lit_5692);
#pragma pop

/* 80978724-80978728 000314 0004+00 0/1 0/0 0/0 .rodata          @5693 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5693 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80978724, &lit_5693);
#pragma pop

/* 80978728-80978730 000318 0004+04 0/1 0/0 0/0 .rodata          @5694 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5694[1 + 1 /* padding */] = {
    125.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80978728, &lit_5694);
#pragma pop

/* 80978730-80978738 000320 0008+00 0/1 0/0 0/0 .rodata          @5695 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5695[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80978730, &lit_5695);
#pragma pop

/* 80978738-80978740 000328 0008+00 0/1 0/0 0/0 .rodata          @5696 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5696[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80978738, &lit_5696);
#pragma pop

/* 80978740-80978748 000330 0008+00 0/1 0/0 0/0 .rodata          @5697 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5697[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80978740, &lit_5697);
#pragma pop

/* 80978BD0-80978BDC 000060 000C+00 0/1 0/0 0/0 .bss             @4035 */
#pragma push
#pragma force_active on
static u8 lit_4035[12];
#pragma pop

/* 80978BDC-80978BE0 00006C 0004+00 0/1 0/0 0/0 .bss             l_HIO */
#pragma push
#pragma force_active on
static u8 l_HIO[4];
#pragma pop

/* 80978BE0-80978BEC 000070 000C+00 1/1 0/0 0/0 .bss             @4616 */
static u8 lit_4616[12];

/* 80978BEC-80978BF0 00007C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80978BEC[4];
#pragma pop

/* 80978BF0-80978BF4 000080 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80978BF0[4];
#pragma pop

/* 80978BF4-80978BF8 000084 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80978BF4[4];
#pragma pop

/* 80978BF8-80978BFC 000088 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80978BF8[4];
#pragma pop

/* 80978BFC-80978C00 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80978BFC[4];
#pragma pop

/* 80978C00-80978C04 000090 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80978C00[4];
#pragma pop

/* 80978C04-80978C08 000094 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80978C04[4];
#pragma pop

/* 80978C08-80978C0C 000098 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80978C08[4];
#pragma pop

/* 80978C0C-80978C10 00009C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80978C0C[4];
#pragma pop

/* 80978C10-80978C14 0000A0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80978C10[4];
#pragma pop

/* 80978C14-80978C18 0000A4 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80978C14[4];
#pragma pop

/* 80978C18-80978C1C 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80978C18[4];
#pragma pop

/* 80978C1C-80978C20 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80978C1C[4];
#pragma pop

/* 80978C20-80978C24 0000B0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80978C20[4];
#pragma pop

/* 80978C24-80978C28 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80978C24[4];
#pragma pop

/* 80978C28-80978C2C 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80978C28[4];
#pragma pop

/* 80978C2C-80978C30 0000BC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80978C2C[4];
#pragma pop

/* 80978C30-80978C34 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80978C30[4];
#pragma pop

/* 80978C34-80978C38 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80978C34[4];
#pragma pop

/* 80978C38-80978C3C 0000C8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80978C38[4];
#pragma pop

/* 80978C3C-80978C40 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80978C3C[4];
#pragma pop

/* 80978C40-80978C44 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80978C40[4];
#pragma pop

/* 80978C44-80978C48 0000D4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80978C44[4];
#pragma pop

/* 80978C48-80978C4C 0000D8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80978C48[4];
#pragma pop

/* 80978C4C-80978C50 0000DC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80978C4C[4];
#pragma pop

/* 80978C50-80978C54 0000E0 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80978C50[4];

/* 80978C54-80978C60 0000E4 000C+00 1/1 0/0 0/0 .bss
 * eyeOffset$localstatic3$setAttnPos__11daNpcBouS_cFv           */
static u8 data_80978C54[12];

/* 80977444-809778D8 003FE4 0494+00 1/0 0/0 0/0 .text            setAttnPos__11daNpcBouS_cFv */
void daNpcBouS_c::setAttnPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80978748-8097874C 000338 0004+00 0/1 0/0 0/0 .rodata          @5740 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5740 = -80.0f;
COMPILER_STRIP_GATE(0x80978748, &lit_5740);
#pragma pop

/* 8097874C-80978750 00033C 0004+00 0/1 0/0 0/0 .rodata          @5741 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5741 = 80.0f;
COMPILER_STRIP_GATE(0x8097874C, &lit_5741);
#pragma pop

/* 80978750-80978754 000340 0004+00 0/1 0/0 0/0 .rodata          @5742 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5742 = 40.0f;
COMPILER_STRIP_GATE(0x80978750, &lit_5742);
#pragma pop

/* 809778D8-80977AB8 004478 01E0+00 1/1 0/0 0/0 .text            lookat__11daNpcBouS_cFv */
void daNpcBouS_c::lookat() {
    // NONMATCHING
}

/* 80977AB8-80977AC0 004658 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpcBouS_cFv */
bool daNpcBouS_c::drawDbgInfo() {
    return false;
}

/* 80977AC0-80977AC4 004660 0004+00 1/0 0/0 0/0 .text            drawOtherMdls__11daNpcBouS_cFv */
void daNpcBouS_c::drawOtherMdls() {
    /* empty function */
}

/* 80977AC4-80977AD0 004664 000C+00 2/2 0/0 0/0 .text sinShort__Q25JMath18TSinCosTable<13,f>CFs */
extern "C" void func_80977AC4(void* _this, s16 param_0) /* const */ {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80978754-80978758 000344 0004+00 1/1 0/0 0/0 .rodata          @5753 */
SECTION_RODATA static f32 const lit_5753 = 1000000000.0f;
COMPILER_STRIP_GATE(0x80978754, &lit_5753);

/* 80978B64-80978B70 0003C0 000C+00 2/2 0/0 0/0 .data            __vt__17daNpcBouS_Param_c */
SECTION_DATA extern void* __vt__17daNpcBouS_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daNpcBouS_Param_cFv,
};

/* 80977AD0-80977BC0 004670 00F0+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_bouS_cpp */
void __sinit_d_a_npc_bouS_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80977AD0, __sinit_d_a_npc_bouS_cpp);
#pragma pop

/* 80977BC0-80977C08 004760 0048+00 5/4 0/0 0/0 .text            __dt__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::~daNpcF_ActorMngr_c() {
extern "C" void __dt__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80977C08-80977C44 0047A8 003C+00 2/2 0/0 0/0 .text            __ct__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::daNpcF_ActorMngr_c() {
extern "C" void __ct__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80977C44-80977D14 0047E4 00D0+00 1/0 0/0 0/0 .text            __dt__15daNpcF_Lookat_cFv */
// daNpcF_Lookat_c::~daNpcF_Lookat_c() {
extern "C" void __dt__15daNpcF_Lookat_cFv() {
    // NONMATCHING
}

/* 80977D14-80977D50 0048B4 003C+00 5/5 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80977D50-80977D54 0048F0 0004+00 2/2 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80977D54-80977D90 0048F4 003C+00 7/7 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80977D90-80977D94 004930 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80977D94-80977FE0 004934 024C+00 1/1 0/0 0/0 .text            __dt__8daNpcF_cFv */
// daNpcF_c::~daNpcF_c() {
extern "C" void __dt__8daNpcF_cFv() {
    // NONMATCHING
}

/* 80977FE0-809781D0 004B80 01F0+00 1/1 0/0 0/0 .text            __ct__8daNpcF_cFv */
// daNpcF_c::daNpcF_c() {
extern "C" void __ct__8daNpcF_cFv() {
    // NONMATCHING
}

/* 809781D0-80978240 004D70 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80978240-8097829C 004DE0 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 8097829C-8097830C 004E3C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 8097830C-80978354 004EAC 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80978354-80978358 004EF4 0004+00 1/0 0/0 0/0 .text            setCollisions__8daNpcF_cFv */
// void daNpcF_c::setCollisions() {
extern "C" void setCollisions__8daNpcF_cFv() {
    /* empty function */
}

/* 80978358-809783A0 004EF8 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 809783A0-809783A4 004F40 0004+00 1/0 0/0 0/0 .text            adjustShapeAngle__11daNpcBouS_cFv
 */
void daNpcBouS_c::adjustShapeAngle() {
    /* empty function */
}

/* 809783A4-809783EC 004F44 0048+00 2/1 0/0 0/0 .text            __dt__17daNpcBouS_Param_cFv */
daNpcBouS_Param_c::~daNpcBouS_Param_c() {
    // NONMATCHING
}

/* 809783EC-809783F4 004F8C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_809783EC() {
    // NONMATCHING
}

/* 809783F4-809783FC 004F94 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_809783F4() {
    // NONMATCHING
}

/* 80978758-80978758 000348 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
