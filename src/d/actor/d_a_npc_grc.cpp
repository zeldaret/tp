/**
 * @file d_a_npc_grc.cpp
 * 
*/

#include "d/actor/d_a_npc_grc.h"
#include "Z2AudioLib/Z2Instances.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __ct__11daNpc_grC_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__11daNpc_grC_cFv();
extern "C" void create__11daNpc_grC_cFv();
extern "C" void CreateHeap__11daNpc_grC_cFv();
extern "C" void Delete__11daNpc_grC_cFv();
extern "C" void Execute__11daNpc_grC_cFv();
extern "C" void Draw__11daNpc_grC_cFv();
extern "C" void ctrlJoint__11daNpc_grC_cFP8J3DJointP8J3DModel();
extern "C" void createHeapCallBack__11daNpc_grC_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__11daNpc_grC_cFP8J3DJointi();
extern "C" void setParam__11daNpc_grC_cFv();
extern "C" void main__11daNpc_grC_cFv();
extern "C" bool ctrlBtk__11daNpc_grC_cFv();
extern "C" void setAttnPos__11daNpc_grC_cFv();
extern "C" void setExpressionAnm__11daNpc_grC_cFib();
extern "C" void setExpressionBtp__11daNpc_grC_cFi();
extern "C" void setExpression__11daNpc_grC_cFif();
extern "C" void setMotionAnm__11daNpc_grC_cFif();
extern "C" void setMotion__11daNpc_grC_cFifi();
extern "C" bool drawDbgInfo__11daNpc_grC_cFv();
extern "C" void drawOtherMdls__11daNpc_grC_cFv();
extern "C" void getTypeFromParam__11daNpc_grC_cFv();
extern "C" void isDelete__11daNpc_grC_cFv();
extern "C" void reset__11daNpc_grC_cFv();
extern "C" void playExpression__11daNpc_grC_cFv();
extern "C" void playMotion__11daNpc_grC_cFv();
extern "C" void chkAction__11daNpc_grC_cFM11daNpc_grC_cFPCvPvPv_i();
extern "C" void setAction__11daNpc_grC_cFM11daNpc_grC_cFPCvPvPv_i();
extern "C" void selectAction__11daNpc_grC_cFv();
extern "C" void doNormalAction__11daNpc_grC_cFi();
extern "C" void doEvent__11daNpc_grC_cFv();
extern "C" void setLookMode__11daNpc_grC_cFi();
extern "C" void lookat__11daNpc_grC_cFv();
extern "C" void chkFindPlayer__11daNpc_grC_cFv();
extern "C" void setExpressionTalkAfter__11daNpc_grC_cFv();
extern "C" void wait__11daNpc_grC_cFPv();
extern "C" void waitTW__11daNpc_grC_cFPv();
extern "C" void waitSpa__11daNpc_grC_cFPv();
extern "C" void waitBuyer__11daNpc_grC_cFPv();
extern "C" void talk__11daNpc_grC_cFPv();
extern "C" void test__11daNpc_grC_cFPv();
extern "C" void setPrtcl__11daNpc_grC_cFv();
extern "C" static void daNpc_grC_Create__FPv();
extern "C" static void daNpc_grC_Delete__FPv();
extern "C" static void daNpc_grC_Execute__FPv();
extern "C" static void daNpc_grC_Draw__FPv();
extern "C" static bool daNpc_grC_IsDelete__FPv();
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
extern "C" void __sinit_d_a_npc_grc_cpp();
extern "C" void adjustShapeAngle__11daNpc_grC_cFv();
extern "C" void __dt__17daNpc_grC_Param_cFv();
extern "C" static void func_809CF4F8();
extern "C" static void func_809CF500();
extern "C" u8 const m__17daNpc_grC_Param_c[108];
extern "C" extern char const* const d_a_npc_grc__stringBase0;
extern "C" void* mEvtCutNameList__11daNpc_grC_c;
extern "C" u8 mEvtCutList__11daNpc_grC_c[12];

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs();
extern "C" void fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void reset__14dEvt_control_cFPv();
extern "C" void setPtI_Id__14dEvt_control_cFUi();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void init__7dPaPo_cFP9dBgS_Acchff();
extern "C" void setEffectCenter__7dPaPo_cFPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC5csXyzPC4cXyzScff();
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
extern "C" void initialize__18daNpcF_ActorMngr_cFv();
extern "C" void entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c();
extern "C" void remove__18daNpcF_ActorMngr_cFv();
extern "C" void getActorP__18daNpcF_ActorMngr_cFv();
extern "C" void initialize__15daNpcF_Lookat_cFv();
extern "C" void setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz();
extern "C" void calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii();
extern "C" void execute__8daNpcF_cFv();
extern "C" void draw__8daNpcF_cFiifP11_GXColorS10i();
extern "C" void tgHitCallBack__8daNpcF_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" void srchAttnActor1__8daNpcF_cFPvPv();
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
extern "C" void hitChk2__8daNpcF_cFP8dCcD_Cylii();
extern "C" void setDamage__8daNpcF_cFiii();
extern "C" void ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci();
extern "C" void orderEvent__8daNpcF_cFiPcUsUsUcUs();
extern "C" void chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci();
extern "C" void initTalk__8daNpcF_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcF_cFPiiPP10fopAc_ac_c();
extern "C" void step__8daNpcF_cFsiii();
extern "C" void getDistTableIdx__8daNpcF_cFii();
extern "C" void getAttnActorP__8daNpcF_cFiPFPvPv_Pvffffsii();
extern "C" void daNpcF_chkEvtBit__FUl();
extern "C" void daNpcF_offTmpBit__FUl();
extern "C" void dKy_darkworld_check__Fv();
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
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void __dt__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_test();
extern "C" void __ptmf_cmpr();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_24();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_24();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern u8 const __ptmf_null[12 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" u8 mCcDCyl__8daNpcF_c[68];
extern "C" extern void* __vt__8daNpcF_c[18];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" void __register_global_object();

UNK_REL_DATA;

/* 809CF83C-809CF84C 000020 0010+00 1/1 0/0 0/0 .data            l_bmdGetParamList */
static int l_bmdGetParamList[4] = {
    3, 1, 3, 2,
};

/* 809CF84C-809CF8E4 000030 0098+00 1/2 0/0 0/0 .data            l_bckGetParamList */
static daNpc_GetParam1 l_bckGetParamList[19] = {
    {-1, 0},
    {0xB, 0},
    {7, 0},
    {5, 0},
    {0xD, 0},
    {0xA, 0},
    {8, 0},
    {6, 0},
    {9, 0},
    {0xC, 0},
    {0x16, 0},
    {0x13, 0},
    {0x14, 0},
    {0xF, 0},
    {0x11, 0},
    {0x15, 0},
    {0xE, 0},
    {0x10, 0},
    {0x12, 0},
};

/* 809CF8E4-809CF914 0000C8 0030+00 1/1 0/0 0/0 .data            l_btpGetParamList */
static daNpc_GetParam1 l_btpGetParamList[6] = {
    {0x1C, 0}, 
    {0x1D, 0},
    {0x1E, 0},
    {0x1F, 0},
    {0x21, 0},
    {0x20, 0},
};

/* 809CF914-809CF91C 0000F8 0008+00 0/1 0/0 0/0 .data            l_btkGetParamList */
static daNpc_GetParam1 l_btkGetParamList[1] = {
    {-1, 0},
};

/* 809CF91C-809CF924 000100 0008+00 0/1 0/0 0/0 .data            l_evtGetParamList */
static daNpc_GetParam1 l_evtGetParamList[1] = {
    {0, 0},
};

/* 809CF924-809CF930 000108 000C+00 1/0 0/0 0/0 .data            l_loadRes_GRCa */
static int l_loadRes_GRCa[3] = {
    0, 1, -1,
};

/* 809CF930-809CF93C 000114 000C+00 1/0 0/0 0/0 .data            l_loadRes_GRCa_TW */
static int l_loadRes_GRCa_TW[3] = {
    0, 2, -1,
};

/* 809CF93C-809CF948 000120 000C+00 1/0 0/0 0/0 .data            l_loadRes_GRC0 */
static int l_loadRes_GRC0[3] = {
    0, 1, -1,
};

/* 809CF948-809CF964 -00001 001C+00 2/2 0/0 0/0 .data            l_loadRes_list */
static int* l_loadRes_list[7] = {
    l_loadRes_GRCa, l_loadRes_GRCa_TW, l_loadRes_GRCa,
    l_loadRes_GRCa, l_loadRes_GRCa,    l_loadRes_GRCa,
    l_loadRes_GRC0,
};

/* 809CF964-809CF970 -00001 000C+00 5/7 0/0 0/0 .data            l_resNames */
static char* l_resNames[3] = {
    "grC",
    "grC_Mdl",
    "grC_TW",
};

/* 809CF970-809CF974 000154 0004+00 0/1 0/0 0/0 .data            l_evtNames */
static char* l_evtNames[1] = {
    NULL
};

/* 809CF974-809CF978 -00001 0004+00 0/1 0/0 0/0 .data            l_myName */
static char* l_myName = "grC";

/* 809CF978-809CF97C -00001 0004+00 0/1 0/0 0/0 .data            mEvtCutNameList__11daNpc_grC_c */
char* daNpc_grC_c::mEvtCutNameList = "";

/* 809CF97C-809CF988 000160 000C+00 1/2 0/0 0/0 .data            mEvtCutList__11daNpc_grC_c */
daNpc_grC_c::EventFn daNpc_grC_c::mEvtCutList[1] = {NULL};

/* 809CF988-809CF994 -00001 000C+00 1/1 0/0 0/0 .data            @4469 */
SECTION_DATA static void* lit_4469[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)test__11daNpc_grC_cFPv,
};

/* 809CF994-809CF9BC -00001 0028+00 1/1 0/0 0/0 .data            @4874 */
SECTION_DATA static void* lit_4874[10] = {
    (void*)(((char*)setExpressionAnm__11daNpc_grC_cFib) + 0x90),
    (void*)(((char*)setExpressionAnm__11daNpc_grC_cFib) + 0xAC),
    (void*)(((char*)setExpressionAnm__11daNpc_grC_cFib) + 0xCC),
    (void*)(((char*)setExpressionAnm__11daNpc_grC_cFib) + 0xEC),
    (void*)(((char*)setExpressionAnm__11daNpc_grC_cFib) + 0x10C),
    (void*)(((char*)setExpressionAnm__11daNpc_grC_cFib) + 0x12C),
    (void*)(((char*)setExpressionAnm__11daNpc_grC_cFib) + 0x14C),
    (void*)(((char*)setExpressionAnm__11daNpc_grC_cFib) + 0x168),
    (void*)(((char*)setExpressionAnm__11daNpc_grC_cFib) + 0x184),
    (void*)(((char*)setExpressionAnm__11daNpc_grC_cFib) + 0x1A0),
};

/* 809CF9BC-809CF9E0 -00001 0024+00 1/1 0/0 0/0 .data            @4946 */
SECTION_DATA static void* lit_4946[9] = {
    (void*)(((char*)setMotionAnm__11daNpc_grC_cFif) + 0xCC),
    (void*)(((char*)setMotionAnm__11daNpc_grC_cFif) + 0xCC),
    (void*)(((char*)setMotionAnm__11daNpc_grC_cFif) + 0x9C),
    (void*)(((char*)setMotionAnm__11daNpc_grC_cFif) + 0xA4),
    (void*)(((char*)setMotionAnm__11daNpc_grC_cFif) + 0xCC),
    (void*)(((char*)setMotionAnm__11daNpc_grC_cFif) + 0xAC),
    (void*)(((char*)setMotionAnm__11daNpc_grC_cFif) + 0xB4),
    (void*)(((char*)setMotionAnm__11daNpc_grC_cFif) + 0xCC),
    (void*)(((char*)setMotionAnm__11daNpc_grC_cFif) + 0xBC),
};

/* 809CF9E0-809CF9EC -00001 000C+00 0/1 0/0 0/0 .data            @5149 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5149[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)test__11daNpc_grC_cFPv,
};
#pragma pop

/* 809CF9EC-809CF9F8 -00001 000C+00 0/1 0/0 0/0 .data            @5153 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5153[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitTW__11daNpc_grC_cFPv,
};
#pragma pop

/* 809CF9F8-809CFA04 -00001 000C+00 0/1 0/0 0/0 .data            @5155 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5155[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitSpa__11daNpc_grC_cFPv,
};
#pragma pop

/* 809CFA04-809CFA10 -00001 000C+00 0/1 0/0 0/0 .data            @5157 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5157[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitBuyer__11daNpc_grC_cFPv,
};
#pragma pop

/* 809CFA10-809CFA1C -00001 000C+00 0/1 0/0 0/0 .data            @5159 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5159[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_grC_cFPv,
};
#pragma pop

/* 809CFA1C-809CFA28 -00001 000C+00 0/1 0/0 0/0 .data            @5199 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5199[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_grC_cFPv,
};
#pragma pop

/* 809CFA28-809CFA34 -00001 000C+00 0/1 0/0 0/0 .data            @5207 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5207[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_grC_cFPv,
};
#pragma pop

/* 809CFA84-809CFACC 000268 0048+00 2/2 0/0 0/0 .data            __vt__11daNpc_grC_c */
SECTION_DATA extern void* __vt__11daNpc_grC_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11daNpc_grC_cFv,
    (void*)setParam__11daNpc_grC_cFv,
    (void*)main__11daNpc_grC_cFv,
    (void*)ctrlBtk__11daNpc_grC_cFv,
    (void*)adjustShapeAngle__11daNpc_grC_cFv,
    (void*)setMtx__8daNpcF_cFv,
    (void*)setMtx2__8daNpcF_cFv,
    (void*)setAttnPos__11daNpc_grC_cFv,
    (void*)setCollisions__8daNpcF_cFv,
    (void*)setExpressionAnm__11daNpc_grC_cFib,
    (void*)setExpressionBtp__11daNpc_grC_cFi,
    (void*)setExpression__11daNpc_grC_cFif,
    (void*)setMotionAnm__11daNpc_grC_cFif,
    (void*)setMotion__11daNpc_grC_cFifi,
    (void*)drawDbgInfo__11daNpc_grC_cFv,
    (void*)drawOtherMdls__11daNpc_grC_cFv,
};

/* 809CFACC-809CFAD8 0002B0 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 809CFAD8-809CFAFC 0002BC 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809CF500,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809CF4F8,
};

/* 809CFAFC-809CFB08 0002E0 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 809CFB08-809CFB14 0002EC 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 809CFB14-809CFB20 0002F8 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 809CFB20-809CFB2C 000304 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcF_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcF_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcF_ActorMngr_cFv,
};

/* 809CFB2C-809CFB38 000310 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 809CFB38-809CFB44 00031C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 809CFB44-809CFB50 000328 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcF_Lookat_c */
SECTION_DATA extern void* __vt__15daNpcF_Lookat_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcF_Lookat_cFv,
};

/* 809CB4CC-809CB650 0000EC 0184+00 1/1 0/0 0/0 .text            __ct__11daNpc_grC_cFv */
daNpc_grC_c::daNpc_grC_c() {}

/* 809CB6E0-809CB8E0 000300 0200+00 1/0 0/0 0/0 .text            __dt__11daNpc_grC_cFv */
daNpc_grC_c::~daNpc_grC_c() {
    // NONMATCHING
    for (int i = 0; l_loadRes_list[mType][i] >= 0; i++) {
        dComIfG_resDelete(&mPhases[i], l_resNames[l_loadRes_list[mType][i]]);
    }

    if (heap != NULL) {
        mpMorf->stopZelAnime();
    }
}

/* 809CF51C-809CF588 000000 006C+00 13/13 0/0 0/0 .rodata          m__17daNpc_grC_Param_c */
daNpc_grC_HIOParam const daNpc_grC_Param_c::m = {
    40.0f,
    -3.0f,
    1.0f,
    400.0f,
    255.0f,
    140.0f,
    35.0f,
    50.0f,
    0.0f,
    0.0f,
    10.0f,
    -10.0f,
    30.0f,
    -30.0f,
    45.0f,
    -45.0f,
    0.6f,
    12.0f,
    4,
    6,
    6,
    6,
    180.0f,
    500.0f,
    300.0f,
    -300.0f,
    60,
    8,
    0,
    0,
    0,
    false,
    false,
};

/* 809CB8E0-809CBBD4 000500 02F4+00 1/1 0/0 0/0 .text            create__11daNpc_grC_cFv */
cPhs__Step daNpc_grC_c::create() {
    fopAcM_SetupActor(this, daNpc_grC_c);

    mTwilight = dKy_darkworld_check();
    mType = getTypeFromParam();

    if (home.angle.x != 0xFFFF) {
        field_0xe40 = home.angle.x;
    } else {
        field_0xe40 = -1;
    }

    if (isDelete()) {
        return cPhs_ERROR_e;
    }

    int res_count = 0;
    int i = 0;
    for (; l_loadRes_list[mType][i] >= 0; i++) {
        cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&mPhases[i], l_resNames[l_loadRes_list[mType][i]]);

        if (step == cPhs_ERROR_e || step == cPhs_UNK3_e) {
            return cPhs_ERROR_e;
        }

        if (step == cPhs_COMPLEATE_e) {
            res_count++;
        }
    }

    if (res_count == i) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x36E0)) {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, mpMorf->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -300.0f, -50.0f, -300.0f, 300.0f, 450.0f, 300.0f);

        mSound.init(&current.pos, &eyePos, 3, 1);

        mAcchCir.SetWall(daNpc_grC_Param_c::m.common.width, daNpc_grC_Param_c::m.common.knee_length);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                  fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mPaPo.init(&mAcch, daNpc_grC_Param_c::m.common.height, daNpc_grC_Param_c::m.common.height);
        mCcStts.Init(daNpc_grC_Param_c::m.common.weight, 0, this);
        field_0xcc4.Set(mCcDCyl);
        field_0xcc4.SetStts(&mCcStts);
        field_0xcc4.SetTgHitCallback(tgHitCallBack);
        mAcch.CrrPos(dComIfG_Bgsp());

        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();

        setEnvTevColor();
        setRoomNo();
        reset();
        Execute();

        return cPhs_COMPLEATE_e;
    } else {
        return cPhs_INIT_e;
    }
}

/* 809CBBD4-809CBDC4 0007F4 01F0+00 1/1 0/0 0/0 .text            CreateHeap__11daNpc_grC_cFv */
int daNpc_grC_c::CreateHeap() {
    J3DModelData* mdlData_p = NULL;

    if (mTwilight) {
        if (l_bmdGetParamList[2] >= 0) {
            mdlData_p = (J3DModelData*)dComIfG_getObjectRes(l_resNames[l_bmdGetParamList[3]], l_bmdGetParamList[2]);
        }
    } else if (l_bmdGetParamList[0] >= 0) {
        mdlData_p = (J3DModelData*)dComIfG_getObjectRes(l_resNames[l_bmdGetParamList[1]], l_bmdGetParamList[0]);
    }

    JUT_ASSERT(452, 0 != mdlData_p);

    mpMorf = new mDoExt_McaMorfSO(mdlData_p, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound, 0x80000, 0x11020284);
    if (mpMorf != NULL && mpMorf->getModel() == NULL) {
        mpMorf->stopZelAnime();
        mpMorf = NULL;
    }

    if (mpMorf == NULL) {
        return 0;
    }

    J3DModel* model = mpMorf->getModel();
    for (u16 i = 0; i < mdlData_p->getJointNum(); i++) {
        mdlData_p->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }
    model->setUserArea((u32)this);

    field_0xbd8 = 0;

    if (!setExpressionAnm(5, false)) {
        return 0;
    }

    setMotionAnm(10, 0.0f);

    return 1;
}

/* 809CBDC4-809CBDF8 0009E4 0034+00 1/1 0/0 0/0 .text            Delete__11daNpc_grC_cFv */
int daNpc_grC_c::Delete() {
    this->~daNpc_grC_c();
    return 1;
}

/* 809CBDF8-809CBE18 000A18 0020+00 2/2 0/0 0/0 .text            Execute__11daNpc_grC_cFv */
int daNpc_grC_c::Execute() {
    return execute();
}

/* 809CBE18-809CBE8C 000A38 0074+00 1/1 0/0 0/0 .text            Draw__11daNpc_grC_cFv */
int daNpc_grC_c::Draw() {
    // NONMATCHING
    draw(chkAction(&daNpc_grC_c::test), FALSE, daNpc_grC_Param_c::m.common.real_shadow_size, NULL, FALSE);
}

/* 809CBE8C-809CC0C0 000AAC 0234+00 1/1 0/0 0/0 .text            ctrlJoint__11daNpc_grC_cFP8J3DJointP8J3DModel */
int daNpc_grC_c::ctrlJoint(J3DJoint* i_joint, J3DModel* i_model) {
    int jntNo = i_joint->getJntNo();
    int i_jointList[3] = {1, 3, 4};

    if (jntNo == 0) {
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(1));
        mDoMtx_stack_c::multVecZero(&mLookatPos[0]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(3));
        mDoMtx_stack_c::multVecZero(&mLookatPos[1]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
        mDoMtx_stack_c::multVecZero(&mLookatPos[2]);
    }

    mDoMtx_stack_c::copy(i_model->getAnmMtx(jntNo));

    switch (jntNo) {
        case 1:
        case 3:
        case 4:
            setLookatMtx(jntNo, i_jointList, daNpc_grC_Param_c::m.common.neck_rotation_ratio);
            break;
    }

    if (jntNo == 1) {
        mDoMtx_stack_c::YrotM(-field_0x908[0].z);
        mDoMtx_stack_c::ZrotM(field_0x908[0].x);
    } else if (jntNo == 4) {
        mDoMtx_stack_c::YrotM(-field_0x908[2].z);
        mDoMtx_stack_c::ZrotM(field_0x908[2].x);
    }

    i_model->setAnmMtx(jntNo, mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);

    if ((jntNo == 4 || jntNo == 7) && (mAnmFlags & 0x100) != 0) {
        J3DAnmTransform* anm = mBckAnm.getBckAnm();
        mBckAnm.changeBckOnly(mpMorf->getAnm());
        mpMorf->changeAnm(anm);
    }

    return 1;
}

/* 809CC0C0-809CC0E0 000CE0 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__11daNpc_grC_cFP10fopAc_ac_c */
int daNpc_grC_c::createHeapCallBack(fopAc_ac_c* a_this) {
    daNpc_grC_c* i_this = (daNpc_grC_c*)a_this;
    return i_this->CreateHeap();
}

/* 809CC0E0-809CC12C 000D00 004C+00 2/2 0/0 0/0 .text ctrlJointCallBack__11daNpc_grC_cFP8J3DJointi */
int daNpc_grC_c::ctrlJointCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpc_grC_c* i_this = (daNpc_grC_c*)model->getUserArea();

        if (i_this != NULL) {
            i_this->ctrlJoint(i_joint, model);
        }
    }

    return 1;
}

/* 809CC12C-809CC26C 000D4C 0140+00 1/0 0/0 0/0 .text            setParam__11daNpc_grC_cFv */
void daNpc_grC_c::setParam() {
    ActionFn action = mNextAction;
    u32 uVar1 = 10;
    selectAction();

    if (!mTwilight && daPy_py_c::checkNowWolf()) {
        uVar1 = 0;
    }

    if (mNextAction != action) {
        for (int i = 2; i < 2; i++) {
            mActorMngr[i].initialize();
        }
    }

    field_0xe30 = 0;
    field_0xe34 = 0;

    s16 talk_distance = daNpc_grC_Param_c::m.common.talk_distance;
    s16 talk_angle = daNpc_grC_Param_c::m.common.talk_angle;

    attention_info.distances[fopAc_attn_LOCK_e] = getDistTableIdx(daNpc_grC_Param_c::m.common.attention_distance, daNpc_grC_Param_c::m.common.attention_angle);
    attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
    attention_info.distances[fopAc_attn_SPEAK_e] = getDistTableIdx(talk_distance, talk_angle);
    attention_info.flags = uVar1;

    scale.set(daNpc_grC_Param_c::m.common.scale, daNpc_grC_Param_c::m.common.scale, daNpc_grC_Param_c::m.common.scale);
    mAcchCir.SetWallR(daNpc_grC_Param_c::m.common.width);
    mAcchCir.SetWallH(daNpc_grC_Param_c::m.common.knee_length);
    gravity = daNpc_grC_Param_c::m.common.gravity;
}

/* 809CC26C-809CC3EC 000E8C 0180+00 1/0 0/0 0/0 .text            main__11daNpc_grC_cFv */
BOOL daNpc_grC_c::main() {
    if (!doEvent()) {
        doNormalAction(1);
    }

    if (checkHide()) {
        attention_info.flags = 0;
    }

    if (!daNpc_grC_Param_c::m.common.debug_mode_ON && (!dComIfGp_event_runCheck() || (mOrderNewEvt && dComIfGp_getEvent().isOrderOK()))) {
        if (mOrderEvtNo != 0) {
            eventInfo.setArchiveName(l_resNames[l_evtGetParamList[mOrderEvtNo].arcIdx]);
        }

        orderEvent(field_0xe51, l_evtNames[l_evtGetParamList[mOrderEvtNo].fileIdx], 0xFFFF, 40, 0xFF, 1);
    }

    if (field_0x9ee) {
        mExpressionMorfOverride = 0.0f;
        mMotionMorfOverride = 0.0f;
        field_0x9ee = false;
    }

    playExpression();
    playMotion();

    return TRUE;
}

/* 809CC3EC-809CC3F4 00100C 0008+00 1/0 0/0 0/0 .text            ctrlBtk__11daNpc_grC_cFv */
BOOL daNpc_grC_c::ctrlBtk() {
    return FALSE;
}

UNK_REL_BSS;

/* 809CFBB4-809CFBB8 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daNpc_grC_Param_c l_HIO;

/* 809CC3F4-809CC930 001014 053C+00 1/0 0/0 0/0 .text            setAttnPos__11daNpc_grC_cFv */
void daNpc_grC_c::setAttnPos() {
    static cXyz eyeOffset(16.0f, 60.0f, 0.0f);

    cXyz sp7c, sp88, sp94, spa0;
    f32 attention_offset = daNpc_grC_Param_c::m.common.attention_offset;

    mDoMtx_stack_c::YrotS(field_0x990);
    cLib_addCalc2(&field_0x984[0], 0.0f, 0.1f, 125.0f);
    cLib_addCalc2(&field_0x984[2], 0.0f, 0.1f, 125.0f);

    for (int i = 0; i < 3; i++) {
        sp94.set(0.0f, 0.0f, field_0x984[i] * cM_ssin(field_0x992));
        mDoMtx_stack_c::multVec(&sp94, &spa0);
        field_0x908[i].x = -spa0.z;
        field_0x908[i].z = -spa0.x;
    }

    cLib_chaseS(&field_0x992, 0, 0x555);

    if (mLookMode == 1) {
        for (int i = 0; i < 3; i++) {
            mLookatAngle[i].setall(0);
        }
    }

    J3DModelData* mdlData_p = mpMorf->getModel()->getModelData();
    for (u16 i = 0; i < mdlData_p->getJointNum(); i++) {
        mdlData_p->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }

    setMtx();
    lookat();
    setPrtcl();

    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
    mDoMtx_stack_c::multVecZero(&mHeadPos);
    mDoMtx_stack_c::multVec(&eyeOffset, &eyePos);
    mDoMtx_stack_c::multVec(&eyeOffset, &sp94);

    mHeadAngle.x = cLib_targetAngleX(&mHeadPos, &sp94);
    mHeadAngle.y = cLib_targetAngleY(&mHeadPos, &sp94);

    cXyz* attnPos = mLookat.getAttnPos();
    if (attnPos != NULL) {
        sp88 = *attnPos - eyePos;
        mEyeAngle.y = -(mLookatAngle[2].y + mCurAngle.y);
        mEyeAngle.y += cM_atan2s(sp88.x, sp88.z);
        mEyeAngle.x = -cM_atan2s(sp88.y, sp88.absXZ());
    } else {
        mEyeAngle.y = 0;
        mEyeAngle.x = 0;
    }

    f32 fVar1 = 0.0f;
    f32 fVar2 = 0.0f;

    attention_info.position = mHeadPos;
    attention_info.position.y += attention_offset;

    if (!mHide) {
        if (!mIsDamaged) {
            field_0xcc4.SetTgType(0xD8FBFDFF);
            field_0xcc4.SetTgSPrm(0x1F);
            field_0xcc4.OnTgNoHitMark();
        } else {
            field_0xcc4.SetTgType(0);
            field_0xcc4.SetTgSPrm(0);
        }

        field_0xcc4.SetCoSPrm(0x79);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(1));
        mDoMtx_stack_c::multVecZero(&sp7c);
        sp7c.y = current.pos.y;
        field_0xcc4.SetC(sp7c);
        field_0xcc4.SetH(daNpc_grC_Param_c::m.common.height + fVar1);
        field_0xcc4.SetR(daNpc_grC_Param_c::m.common.width + fVar2);
        dComIfG_Ccsp()->Set(&field_0xcc4);
    }

    field_0xcc4.ClrTgHit();
}

/* 809CC930-809CCB78 001550 0248+00 2/0 0/0 0/0 .text            setExpressionAnm__11daNpc_grC_cFib */
bool daNpc_grC_c::setExpressionAnm(int i_idx, bool i_modify) {
    // NONMATCHING
    J3DAnmTransform* anm = NULL;
    int i_attr = J3DFrameCtrl::EMode_NONE;

    mAnmFlags &= 0xFFFFE03F;

    if (l_bckGetParamList[i_idx].fileIdx >= 0) {
        anm = getTrnsfrmKeyAnmP(l_resNames[l_bckGetParamList[i_idx].arcIdx], l_bckGetParamList[i_idx].fileIdx);
    }

    bool bVar1 = false;
    switch (i_idx) {
        case 0:
            bVar1 = setExpressionBtp(0);
            break;

        case 1:
            bVar1 = setExpressionBtp(0);
            i_attr = J3DFrameCtrl::EMode_LOOP;
            break;

        case 2:
            bVar1 = setExpressionBtp(0);
            i_attr = J3DFrameCtrl::EMode_LOOP;
            break;

        case 3:
            bVar1 = setExpressionBtp(0);
            i_attr = J3DFrameCtrl::EMode_LOOP;
            break;

        case 4:
            bVar1 = setExpressionBtp(4);
            i_attr = J3DFrameCtrl::EMode_LOOP;
            break;

        case 5:
            bVar1 = setExpressionBtp(0);
            i_attr = J3DFrameCtrl::EMode_LOOP;
            break;

        case 6:
            bVar1 = setExpressionBtp(1);
            break;

        case 7:
            bVar1 = setExpressionBtp(2);
            break;

        case 8:
            bVar1 = setExpressionBtp(3);
            break;

        case 9:
            bVar1 = setExpressionBtp(5);
            i_attr = J3DFrameCtrl::EMode_LOOP;
            break;

        default:
            anm = NULL;
            break;
    }

    if (!bVar1) {
        return false;
    }

    if (anm == NULL) {
        return true;
    }

    if (setBckAnm(anm, 1.0f, i_attr, 0, -1, i_modify)) {
        mAnmFlags |= ANM_PAUSE_BCK | ANM_PLAY_BCK;
        mExpressionLoops = 0;
        return true;
    }

    return false;
}

/* 809CCB78-809CCCA4 001798 012C+00 1/0 0/0 0/0 .text            setExpressionBtp__11daNpc_grC_cFi */
bool daNpc_grC_c::setExpressionBtp(int i_idx) {
    J3DAnmTexPattern* anm = NULL;
    int i_attr = J3DFrameCtrl::EMode_NONE;

    mAnmFlags &= 0xFFFFF57F;

    if (l_btpGetParamList[i_idx].fileIdx >= 0) {
        anm = getTexPtrnAnmP(l_resNames[l_btpGetParamList[i_idx].arcIdx], l_btpGetParamList[i_idx].fileIdx);
    }

    switch (i_idx) {
        case 0:
            i_attr = J3DFrameCtrl::EMode_LOOP;
            break;

        case 1:
        case 2:
        case 3:
            break;
        
        case 4:
            i_attr = J3DFrameCtrl::EMode_LOOP;
            break;

        case 5:
            i_attr = J3DFrameCtrl::EMode_LOOP;
            break;

        default:
            anm = NULL;
            break;
    }

    if (anm == NULL) {
        return true;
    }

    if (setBtpAnm(anm, mpMorf->getModel()->getModelData(), 1.0f, i_attr)) {
        mAnmFlags |= ANM_PAUSE_BTP | ANM_PLAY_BTP;

        if (i_idx == 0) {
            mAnmFlags |= ANM_FLAG_800;
        }

        return true;
    }

    return false;
}

/* 809CCCA4-809CCCD0 0018C4 002C+00 1/0 0/0 0/0 .text            setExpression__11daNpc_grC_cFif */
void daNpc_grC_c::setExpression(int i_expression, f32 i_morf) {
    if (i_expression >= 0 && i_expression < 0xF) {
        mExpression = i_expression;
        mExpressionMorfOverride = i_morf;
        mExpressionPrevPhase = -1;
        mExpressionPhase = 0;
    }
}

/* 809CCCD0-809CCE70 0018F0 01A0+00 2/0 0/0 0/0 .text            setMotionAnm__11daNpc_grC_cFif */
void daNpc_grC_c::setMotionAnm(int i_idx, f32 i_morf) {
    // NONMATCHING
    J3DAnmTransformKey* anm = NULL;
    J3DAnmTextureSRTKey* i_btk = NULL;
    int i_attr = J3DFrameCtrl::EMode_LOOP;

    mAnmFlags &= 0xFFFFFFC0;

    if (l_bckGetParamList[i_idx].fileIdx >= 0) {
        anm = getTrnsfrmKeyAnmP(l_resNames[l_bckGetParamList[i_idx].arcIdx], l_bckGetParamList[i_idx].fileIdx);
    }

    switch (i_idx) {
        case 0xA:
        case 0xB:
        case 0xE:
        case 0x11:
            break;
        
        case 0xC:
            i_attr = J3DFrameCtrl::EMode_NONE;
            break;

        case 0xD:
            i_attr = J3DFrameCtrl::EMode_NONE;
            break;

        case 0xF:
            i_attr = J3DFrameCtrl::EMode_NONE;
            break;

        case 0x10:
            i_attr = J3DFrameCtrl::EMode_NONE;
            break;

        case 0x12:
            i_attr = J3DFrameCtrl::EMode_NONE;
            break;

        default:
            anm = NULL;
            i_btk = NULL;
            break;
    }

    if (l_btkGetParamList[0].fileIdx >= 0) {
        i_btk = getTexSRTKeyAnmP(l_resNames[l_btkGetParamList[0].arcIdx], l_btkGetParamList[0].fileIdx);
    }

    if (i_btk != NULL && setBtkAnm(i_btk, mpMorf->getModel()->getModelData(), 1.0f, J3DFrameCtrl::EMode_LOOP)) {
        mAnmFlags |= ANM_PAUSE_BTK | ANM_PLAY_BTK;
    }

    if (anm != NULL && setMcaMorfAnm(anm, 1.0f, i_morf, i_attr, 0, -1)) {
        mAnmFlags |= ANM_PLAY_MORF | ANM_PAUSE_MORF;
        mMotionLoops = 0;
    }
}

/* 809CCE70-809CCEB4 001A90 0044+00 1/0 0/0 0/0 .text            setMotion__11daNpc_grC_cFifi */
void daNpc_grC_c::setMotion(int i_motion, f32 i_morf, int param_3) {
    s16 motion = i_motion;
    if ((param_3 != 0 || mMotion != motion) && i_motion >= 0 && i_motion < 9) {
        mMotion = motion;
        mMotionMorfOverride = i_morf;
        mMotionPrevPhase = -1;
        mMotionPhase = 0;
    }
}

/* 809CCEB4-809CCEBC 001AD4 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpc_grC_cFv */
int daNpc_grC_c::drawDbgInfo() {
    return 0;
}

/* 809CCEBC-809CCEC0 001ADC 0004+00 1/0 0/0 0/0 .text            drawOtherMdls__11daNpc_grC_cFv */
void daNpc_grC_c::drawOtherMdls() {
    /* empty function */
}

/* 809CCEC0-809CCF38 001AE0 0078+00 1/1 0/0 0/0 .text            getTypeFromParam__11daNpc_grC_cFv */
u8 daNpc_grC_c::getTypeFromParam() {
    switch (fopAcM_GetParam(this) & 0xFF) {
        case 0:
        default:
            return mTwilight ? 1 : 0;
            
        case 1:
            return 2;

        case 2:
            if (mTwilight) {
                return 1;
            }

            return 3;

        case 3:
            return 4;

        case 4:
            return 5;
    }
}

/* 809CCF38-809CCFBC 001B58 0084+00 1/1 0/0 0/0 .text            isDelete__11daNpc_grC_cFv */
BOOL daNpc_grC_c::isDelete() {
    if ((mType == 6 || mType == 0 || mType == 1) || (mType == 2 &&
        /*dSv_event_flag_c::M_031 - Goron Mines - Goron Mines clear */
        daNpcF_chkEvtBit(64)) ||
        mType == 3 || mType == 4 || mType == 5) {
        return FALSE;
    }

    return TRUE;
}

/* 809CCFBC-809CD1B4 001BDC 01F8+00 1/1 0/0 0/0 .text            reset__11daNpc_grC_cFv */
void daNpc_grC_c::reset() {
    initialize();
    mLookat.initialize();

    for (int i = 0; i < 2; i++) {
        mActorMngr[i].initialize();
    }

    mNextAction = NULL;
    mAction = NULL;
    field_0xe30 = 0;
    field_0xe34 = 0;
    field_0xe38 = 0;
    field_0xe3c = 0;
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
    field_0x9ee = true;
    field_0xe51 = 0;
    field_0xe50 = 0;
    field_0xe4c = fpcM_ERROR_PROCESS_ID_e;

    if (mType == 3) {
        /* dSv_event_flag_c::F_0377 - Castle Town - Goron spring water shop open! */
        if (!daNpcF_chkEvtBit(377)) {
            field_0xe50 = 1;
        }
    } else if (mType == 4) {
        setExpression(0xE, -1.0f);
        setMotion(5, -1.0f, 0);
    }
}

/* 809CD1B4-809CD4AC 001DD4 02F8+00 1/1 0/0 0/0 .text            playExpression__11daNpc_grC_cFv */
void daNpc_grC_c::playExpression() {
    daNpcF_anmPlayData dat0a = {0x5, daNpc_grC_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat0b = {0x1, daNpc_grC_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat0[2] = {&dat0a, &dat0b};
    daNpcF_anmPlayData dat1a = {0x6, daNpc_grC_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat1b = {0x2, daNpc_grC_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat1[2] = {&dat1a, &dat1b};
    daNpcF_anmPlayData dat2a = {0x7, daNpc_grC_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat2b = {0x3, daNpc_grC_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat2[2] = {&dat2a, &dat2b};
    daNpcF_anmPlayData dat3a = {0x8, daNpc_grC_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat3b = {0x4, daNpc_grC_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat3[2] = {&dat3a, &dat3b};
    daNpcF_anmPlayData dat4 = {0x9, daNpc_grC_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat4[1] = {&dat4};
    daNpcF_anmPlayData dat5 = {0x2, daNpc_grC_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat5[1] = {&dat5};
    daNpcF_anmPlayData dat6 = {0x3, daNpc_grC_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat6[1] = {&dat6};
    daNpcF_anmPlayData dat7 = {0x4, daNpc_grC_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat7[1] = {&dat7};
    daNpcF_anmPlayData dat8 = {0x0, daNpc_grC_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat8[1] = {&dat8};

    daNpcF_anmPlayData** ppDat[15] = {
        pDat0,
        pDat1,
        pDat2,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        pDat3,
        pDat4,
        pDat5,
        pDat6,
        pDat7,
        pDat8,
    };

    if (mExpression >= 0 && mExpression < 0xF) {
        playExpressionAnm(ppDat);
    }
}

/* 809CD4AC-809CD794 0020CC 02E8+00 1/1 0/0 0/0 .text            playMotion__11daNpc_grC_cFv */
void daNpc_grC_c::playMotion() {
    daNpcF_anmPlayData dat0 = {0xA, daNpc_grC_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat0[1] = {&dat0};
    daNpcF_anmPlayData dat1a = {0x10, daNpc_grC_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat1b = {0xA, 0.0f, 0};
    daNpcF_anmPlayData* pDat1[2] = {&dat1a, &dat1b};
    daNpcF_anmPlayData dat2 = {0xB, daNpc_grC_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat2[1] = {&dat2};
    daNpcF_anmPlayData dat3a = {0xC, daNpc_grC_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat3b = {0xA, 0.0f, 0};
    daNpcF_anmPlayData* pDat3[2] = {&dat3a, &dat3b};
    daNpcF_anmPlayData dat4a = {0xF, daNpc_grC_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat4b = {0xE, 0.0f, 0};
    daNpcF_anmPlayData* pDat4[2] = {&dat4a, &dat4b};
    daNpcF_anmPlayData dat5 = {0xE, daNpc_grC_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat5[1] = {&dat5};
    daNpcF_anmPlayData dat6a = {0xD, daNpc_grC_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat6b = {0x11, 0.0f, 0};
    daNpcF_anmPlayData* pDat6[2] = {&dat6a, &dat6b};
    daNpcF_anmPlayData dat7 = {0x11, daNpc_grC_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat7[1] = {&dat7};
    daNpcF_anmPlayData dat8 = {0x12, daNpc_grC_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat8[1] = {&dat8};

    daNpcF_anmPlayData** ppDat[9] = {
        pDat0,
        pDat1,
        pDat2,
        pDat3,
        pDat4,
        pDat5,
        pDat6,
        pDat7,
        pDat8,
    };

    if (mMotion >= 0 && mMotion < 9) {
        playMotionAnm(ppDat);
    }
}

/* 809CD794-809CD7C0 0023B4 002C+00 2/2 0/0 0/0 .text            chkAction__11daNpc_grC_cFM11daNpc_grC_cFPCvPvPv_i */
BOOL daNpc_grC_c::chkAction(ActionFn action) {
    return mAction == action;
}

/* 809CD7C0-809CD868 0023E0 00A8+00 2/2 0/0 0/0 .text            setAction__11daNpc_grC_cFM11daNpc_grC_cFPCvPvPv_i */
BOOL daNpc_grC_c::setAction(ActionFn action) {
    mMode = 3;

    if (mAction) {
        (this->*mAction)(NULL);
    }

    mMode = 0;
    mAction = action;

    if (mAction) {
        (this->*mAction)(NULL);
    }

    return TRUE;
}

/* 809CD868-809CD960 002488 00F8+00 1/1 0/0 0/0 .text            selectAction__11daNpc_grC_cFv */
BOOL daNpc_grC_c::selectAction() {
    // NONMATCHING
    mNextAction = NULL;

    if (daNpc_grC_Param_c::m.common.debug_mode_ON) {
        mNextAction = &daNpc_grC_c::test;
    } else {
        switch (mType) {
            case 1:
                mNextAction = &daNpc_grC_c::waitTW;
                break;

            case 2:
                mNextAction = &daNpc_grC_c::waitSpa;
                break;

            case 4:
                mNextAction = &daNpc_grC_c::waitBuyer;
                break;

            default:
                mNextAction = &daNpc_grC_c::wait;
                break;
        }
    }

    return TRUE;
}

/* 809CD960-809CDA74 002580 0114+00 1/1 0/0 0/0 .text            doNormalAction__11daNpc_grC_cFi */
void daNpc_grC_c::doNormalAction(int param_1) {
    if (param_1 != 0 && hitChk2(&field_0xcc4, TRUE, FALSE)) {
        int iVar1;
        if (mCutType == 8) {
            iVar1 = 20;
        } else {
            iVar1 = daNpc_grC_Param_c::m.common.damage_time;
        }

        setDamage(iVar1, 14, 0);
        setLookMode(LOOK_RESET);
    } else if (mIsDamaged && mDamageTimer == 0) {
        mMode = 0;
        mIsDamaged = false;
    }

    mOrderEvtNo = 0;

    if (mNextAction) {
        if (mAction == mNextAction) {
            (this->*mAction)(NULL);
        } else {
            setAction(mNextAction);
        }
    }
}

/* 809CDA74-809CDD50 002694 02DC+00 1/1 0/0 0/0 .text            doEvent__11daNpc_grC_cFv */
BOOL daNpc_grC_c::doEvent() {
    // NONMATCHING
    BOOL rv = FALSE;

    if (dComIfGp_event_runCheck() != 0) {
        dEvent_manager_c& eventManager = dComIfGp_getEventManager();

        if (field_0xe51 == 0) {
            mOrderNewEvt = false;
        } else {
            mOrderNewEvt = true;
        }

        if (eventInfo.checkCommandTalk()) {
            if (chkAction(&daNpc_grC_c::talk)) {
                (this->*mAction)(NULL);
            } else if (dComIfGp_event_chkTalkXY() == 0 || dComIfGp_evmng_ChkPresentEnd()) {
                setAction(&daNpc_grC_c::talk);
            }

            rv = TRUE;
        } else {
            if (field_0xe4c != fpcM_ERROR_PROCESS_ID_e) {
                dComIfGp_event_setItemPartnerId(field_0xe4c);
                field_0xe4c = fpcM_ERROR_PROCESS_ID_e;
            }

            int staffId = eventManager.getMyStaffId(l_myName, NULL, 0);
            if (staffId != -1) {
                mStaffID = staffId;
                int evtCutNo = eventManager.getMyActIdx(staffId, &mEvtCutNameList, 1, 0, 0);

                JUT_ASSERT(1774, (0 <= evtCutNo) && (evtCutNo < NUM_EVT_CUTS_e));
                JUT_ASSERT(1775, 0 != mEvtCutList[evtCutNo]);

                if ((this->*mEvtCutList[evtCutNo])(staffId)) {
                    eventManager.cutEnd(staffId);
                }

                rv = TRUE;
            }

            if (eventInfo.checkCommandDemoAccrpt() && mEventIdx != -1 && eventManager.endCheck(mEventIdx) != 0) {
                dComIfGp_event_reset();
                mOrderEvtNo = 0;
                mEventIdx = -1;
            }
        }

        int iVar1, i_expression, i_motion;
        iVar1 = mMsgTimer;

        if (ctrlMsgAnm(i_expression, i_motion, this, FALSE) != 0) {
            if (!field_0x9eb) {
                setExpression(i_expression, -1.0f);
                setMotion(i_motion, -1.0f, 0);
            }
        } else if (iVar1 != 0 && !field_0x9eb) {
            setExpressionTalkAfter();
        }
    } else {
        mMsgTimer = 0;

        if (mStaffID != -1) {
            mAction = NULL;
            mStaffID = -1;
        }
    }

    return rv;
}

/* 809CDD50-809CDD74 002970 0024+00 7/7 0/0 0/0 .text            setLookMode__11daNpc_grC_cFi */
void daNpc_grC_c::setLookMode(int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809CF7B4-809CF7D8 000298 0024+00 0/0 0/0 0/0 .rodata          @5114 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5114[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CF7B4, &lit_5114);
#pragma pop

/* 809CF7D8-809CF7E4 0002BC 000C+00 0/1 0/0 0/0 .rodata          @5264 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5264[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CF7D8, &lit_5264);
#pragma pop

/* 809CF7E4-809CF7E8 0002C8 0004+00 0/1 0/0 0/0 .rodata          @5317 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5317 = -80.0f;
COMPILER_STRIP_GATE(0x809CF7E4, &lit_5317);
#pragma pop

/* 809CF7E8-809CF7EC 0002CC 0004+00 0/1 0/0 0/0 .rodata          @5318 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5318 = 80.0f;
COMPILER_STRIP_GATE(0x809CF7E8, &lit_5318);
#pragma pop

/* 809CF7EC-809CF7F0 0002D0 0004+00 0/1 0/0 0/0 .rodata          @5319 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5319 = 40.0f;
COMPILER_STRIP_GATE(0x809CF7EC, &lit_5319);
#pragma pop

/* 809CDD74-809CDFFC 002994 0288+00 1/1 0/0 0/0 .text            lookat__11daNpc_grC_cFv */
void daNpc_grC_c::lookat() {
    // NONMATCHING
}

/* 809CDFFC-809CE12C 002C1C 0130+00 3/3 0/0 0/0 .text            chkFindPlayer__11daNpc_grC_cFv */
void daNpc_grC_c::chkFindPlayer() {
    // NONMATCHING
}

/* 809CE12C-809CE1F8 002D4C 00CC+00 1/1 0/0 0/0 .text setExpressionTalkAfter__11daNpc_grC_cFv */
void daNpc_grC_c::setExpressionTalkAfter() {
    // NONMATCHING
}

/* 809CE1F8-809CE3A8 002E18 01B0+00 1/0 0/0 0/0 .text            wait__11daNpc_grC_cFPv */
BOOL daNpc_grC_c::wait(void* param_0) {
    // NONMATCHING
}

/* 809CE3A8-809CE490 002FC8 00E8+00 1/0 0/0 0/0 .text            waitTW__11daNpc_grC_cFPv */
BOOL daNpc_grC_c::waitTW(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809CF7F0-809CF7F0 0002D4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809CF804 = "F_SP110";
#pragma pop

/* 809CE490-809CE688 0030B0 01F8+00 1/0 0/0 0/0 .text            waitSpa__11daNpc_grC_cFPv */
BOOL daNpc_grC_c::waitSpa(void* param_0) {
    // NONMATCHING
}

/* 809CE688-809CE7C4 0032A8 013C+00 1/0 0/0 0/0 .text            waitBuyer__11daNpc_grC_cFPv */
BOOL daNpc_grC_c::waitBuyer(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809CF7F0-809CF7F0 0002D4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809CF80C = "DEFAULT_GETITEM";
#pragma pop

/* 809CE7C4-809CEA6C 0033E4 02A8+00 2/0 0/0 0/0 .text            talk__11daNpc_grC_cFPv */
BOOL daNpc_grC_c::talk(void* param_0) {
    // NONMATCHING
}

/* 809CEA6C-809CEB50 00368C 00E4+00 2/0 0/0 0/0 .text            test__11daNpc_grC_cFPv */
BOOL daNpc_grC_c::test(void* param_0) {
    // NONMATCHING
}

/* 809CEB50-809CEBDC 003770 008C+00 1/1 0/0 0/0 .text            setPrtcl__11daNpc_grC_cFv */
void daNpc_grC_c::setPrtcl() {
    // NONMATCHING
}

/* 809CEBDC-809CEBFC 0037FC 0020+00 1/0 0/0 0/0 .text            daNpc_grC_Create__FPv */
static void daNpc_grC_Create(void* param_0) {
    // NONMATCHING
}

/* 809CEBFC-809CEC1C 00381C 0020+00 1/0 0/0 0/0 .text            daNpc_grC_Delete__FPv */
static void daNpc_grC_Delete(void* param_0) {
    // NONMATCHING
}

/* 809CEC1C-809CEC3C 00383C 0020+00 1/0 0/0 0/0 .text            daNpc_grC_Execute__FPv */
static void daNpc_grC_Execute(void* param_0) {
    // NONMATCHING
}

/* 809CEC3C-809CEC5C 00385C 0020+00 1/0 0/0 0/0 .text            daNpc_grC_Draw__FPv */
static void daNpc_grC_Draw(void* param_0) {
    // NONMATCHING
}

/* 809CEC5C-809CEC64 00387C 0008+00 1/0 0/0 0/0 .text            daNpc_grC_IsDelete__FPv */
static bool daNpc_grC_IsDelete(void* param_0) {
    return true;
}

/* 809CEC64-809CECAC 003884 0048+00 5/4 0/0 0/0 .text            __dt__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::~daNpcF_ActorMngr_c() {
extern "C" void __dt__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 809CECAC-809CECE8 0038CC 003C+00 2/2 0/0 0/0 .text            __ct__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::daNpcF_ActorMngr_c() {
extern "C" void __ct__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 809CECE8-809CEDB8 003908 00D0+00 1/0 0/0 0/0 .text            __dt__15daNpcF_Lookat_cFv */
// daNpcF_Lookat_c::~daNpcF_Lookat_c() {
extern "C" void __dt__15daNpcF_Lookat_cFv() {
    // NONMATCHING
}

/* 809CEDB8-809CEDF4 0039D8 003C+00 5/5 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 809CEDF4-809CEDF8 003A14 0004+00 2/2 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 809CEDF8-809CEE34 003A18 003C+00 6/6 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 809CEE34-809CEE38 003A54 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 809CEE38-809CF084 003A58 024C+00 1/1 0/0 0/0 .text            __dt__8daNpcF_cFv */
// daNpcF_c::~daNpcF_c() {
extern "C" void __dt__8daNpcF_cFv() {
    // NONMATCHING
}

/* 809CF084-809CF274 003CA4 01F0+00 1/1 0/0 0/0 .text            __ct__8daNpcF_cFv */
// daNpcF_c::daNpcF_c() {
extern "C" void __ct__8daNpcF_cFv() {
    // NONMATCHING
}

/* 809CF274-809CF2E4 003E94 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 809CF2E4-809CF340 003F04 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 809CF340-809CF3B0 003F60 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 809CF3B0-809CF3F8 003FD0 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 809CF3F8-809CF3FC 004018 0004+00 1/0 0/0 0/0 .text            setCollisions__8daNpcF_cFv */
// void daNpcF_c::setCollisions() {
extern "C" void setCollisions__8daNpcF_cFv() {
    /* empty function */
}

/* 809CF3FC-809CF444 00401C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809CFB50-809CFB5C 000334 000C+00 2/2 0/0 0/0 .data            __vt__17daNpc_grC_Param_c */
SECTION_DATA extern void* __vt__17daNpc_grC_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daNpc_grC_Param_cFv,
};

/* 809CF4AC-809CF4B0 0040CC 0004+00 1/0 0/0 0/0 .text            adjustShapeAngle__11daNpc_grC_cFv
 */
void daNpc_grC_c::adjustShapeAngle() {
    /* empty function */
}

/* 809CF4F8-809CF500 004118 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_809CF4F8() {
    // NONMATCHING
}

/* 809CF500-809CF508 004120 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_809CF500() {
    // NONMATCHING
}

AUDIO_INSTANCES;

/* 809CFA34-809CFA54 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_grC_MethodTable */
static actor_method_class daNpc_grC_MethodTable = {
    (process_method_func)daNpc_grC_Create,
    (process_method_func)daNpc_grC_Delete,
    (process_method_func)daNpc_grC_Execute,
    (process_method_func)daNpc_grC_IsDelete,
    (process_method_func)daNpc_grC_Draw,
};

/* 809CFA54-809CFA84 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_GRC */
extern actor_process_profile_definition g_profile_NPC_GRC = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_GRC,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpc_grC_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  307,                    // mPriority
  &daNpc_grC_MethodTable, // sub_method
  0x00044100,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
