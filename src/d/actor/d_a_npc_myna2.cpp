/**
 * @file d_a_npc_myna2.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_myna2.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __ct__13daNpc_myna2_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__13daNpc_myna2_cFv();
extern "C" void create__13daNpc_myna2_cFv();
extern "C" void CreateHeap__13daNpc_myna2_cFv();
extern "C" void Delete__13daNpc_myna2_cFv();
extern "C" void Execute__13daNpc_myna2_cFv();
extern "C" void Draw__13daNpc_myna2_cFv();
extern "C" void createHeapCallBack__13daNpc_myna2_cFP10fopAc_ac_c();
extern "C" void setParam__13daNpc_myna2_cFv();
extern "C" void main__13daNpc_myna2_cFv();
extern "C" void setAttnPos__13daNpc_myna2_cFv();
extern "C" void setExpressionBtp__13daNpc_myna2_cFi();
extern "C" void setMotionAnm__13daNpc_myna2_cFif();
extern "C" void setMotion__13daNpc_myna2_cFifi();
extern "C" bool drawDbgInfo__13daNpc_myna2_cFv();
extern "C" void drawOtherMdls__13daNpc_myna2_cFv();
extern "C" void getTypeFromParam__13daNpc_myna2_cFv();
extern "C" void isDelete__13daNpc_myna2_cFv();
extern "C" void reset__13daNpc_myna2_cFv();
extern "C" void playMotion__13daNpc_myna2_cFv();
extern "C" void chkAction__13daNpc_myna2_cFM13daNpc_myna2_cFPCvPvPv_i();
extern "C" void setAction__13daNpc_myna2_cFM13daNpc_myna2_cFPCvPvPv_i();
extern "C" void selectAction__13daNpc_myna2_cFv();
extern "C" void doNormalAction__13daNpc_myna2_cFi();
extern "C" void doEvent__13daNpc_myna2_cFv();
extern "C" void setLookMode__13daNpc_myna2_cFi();
extern "C" void wait__13daNpc_myna2_cFPv();
extern "C" void waitHovering__13daNpc_myna2_cFPv();
extern "C" static void s_sub__FPvPv();
extern "C" void waitFailure__13daNpc_myna2_cFPv();
extern "C" void waitGoal__13daNpc_myna2_cFPv();
extern "C" void talk__13daNpc_myna2_cFPv();
extern "C" void test__13daNpc_myna2_cFPv();
extern "C" void ECut_firstTalk__13daNpc_myna2_cFi();
extern "C" void ECut_gameFailure__13daNpc_myna2_cFi();
extern "C" void ECut_gameGoal__13daNpc_myna2_cFi();
extern "C" void ECut_gameGoalSuccess__13daNpc_myna2_cFi();
extern "C" void calcHovering__13daNpc_myna2_cFii();
extern "C" static void daNpc_myna2_Create__FPv();
extern "C" static void daNpc_myna2_Delete__FPv();
extern "C" static void daNpc_myna2_Execute__FPv();
extern "C" static void daNpc_myna2_Draw__FPv();
extern "C" static bool daNpc_myna2_IsDelete__FPv();
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
extern "C" bool ctrlBtk__8daNpcF_cFv();
extern "C" void adjustShapeAngle__8daNpcF_cFv();
extern "C" void setCollisions__8daNpcF_cFv();
extern "C" bool setExpressionAnm__8daNpcF_cFib();
extern "C" void setExpression__8daNpcF_cFif();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void func_80A88220(void* _this, int*);
extern "C" void func_80A8823C(void* _this, f32, f32);
extern "C" void func_80A88278(void* _this, int, int);
extern "C" void __sinit_d_a_npc_myna2_cpp();
extern "C" void __dt__19daNpc_myna2_Param_cFv();
extern "C" static void func_80A88410();
extern "C" static void func_80A88418();
extern "C" u8 const m__19daNpc_myna2_Param_c[116];
extern "C" extern char const* const d_a_npc_myna2__stringBase0;
extern "C" void* mEvtCutNameList__13daNpc_myna2_c[5];
extern "C" u8 mEvtCutList__13daNpc_myna2_c[60];

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void dStage_changeScene__FifUlScsi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void offSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setPtI_Id__14dEvt_control_cFUi();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
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
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void initialize__18daNpcF_ActorMngr_cFv();
extern "C" void entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c();
extern "C" void initialize__15daNpcF_Lookat_cFv();
extern "C" void execute__8daNpcF_cFv();
extern "C" void draw__8daNpcF_cFiifP11_GXColorS10i();
extern "C" void tgHitCallBack__8daNpcF_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" void setMtx__8daNpcF_cFv();
extern "C" void setMtx2__8daNpcF_cFv();
extern "C" void initialize__8daNpcF_cFv();
extern "C" void getTrnsfrmKeyAnmP__8daNpcF_cFPci();
extern "C" void getTexPtrnAnmP__8daNpcF_cFPci();
extern "C" void setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii();
extern "C" void setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi();
extern "C" void setEnvTevColor__8daNpcF_cFv();
extern "C" void setRoomNo__8daNpcF_cFv();
extern "C" void playMotionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData();
extern "C" void hitChk2__8daNpcF_cFP8dCcD_Cylii();
extern "C" void ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci();
extern "C" void orderEvent__8daNpcF_cFiPcUsUsUcUs();
extern "C" void initTalk__8daNpcF_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcF_cFPiiPP10fopAc_ac_c();
extern "C" void step__8daNpcF_cFsiii();
extern "C" void daNpcF_getGroundAngle__FP13cBgS_PolyInfos();
extern "C" void daNpcF_chkEvtBit__FUl();
extern "C" void daNpcF_onTmpBit__FUl();
extern "C" void daNpcF_offTmpBit__FUl();
extern "C" void dKy_pol_sound_get__FPC13cBgS_PolyInfo();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void getEventId__10dMsgFlow_cFPi();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void normalizeZP__4cXyzFv();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_addCalcPos2__FP4cXyzRC4cXyzff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
extern "C" void __dt__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void __ct__16Z2CreatureSumomoFv();
extern "C" void playSumomoBgm__16Z2CreatureSumomoFUl();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_test();
extern "C" void __ptmf_cmpr();
extern "C" void __ptmf_scall();
extern "C" void __cvt_fp2unsigned();
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
extern "C" extern void* __vt__16Z2CreatureSumomo[12];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80A88654-80A88654 000220 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A88654 = "FIRST_TALK";
SECTION_DEAD static char const* const stringBase_80A8865F = "GAME_FAILURE";
SECTION_DEAD static char const* const stringBase_80A8866C = "GAME_GOAL";
SECTION_DEAD static char const* const stringBase_80A88676 = "GAME_GOAL_SUCCESS";
SECTION_DEAD static char const* const stringBase_80A88688 = "MYNA_b";
SECTION_DEAD static char const* const stringBase_80A8868F = "MYNA_b_f";
SECTION_DEAD static char const* const stringBase_80A88698 = "MYNA_b_g";
SECTION_DEAD static char const* const stringBase_80A886A1 = "myna2";
SECTION_DEAD static char const* const stringBase_80A886A7 = "";
#pragma pop

/* 80A886D4-80A886DC 000020 0008+00 1/1 0/0 0/0 .data            l_bmdGetParamList */
SECTION_DATA static u8 l_bmdGetParamList[8] = {
    0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x00,
};

/* 80A886DC-80A88754 000028 0078+00 1/1 0/0 0/0 .data            l_bckGetParamList */
SECTION_DATA static u8 l_bckGetParamList[120] = {
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00,
};

/* 80A88754-80A8875C 0000A0 0008+00 1/1 0/0 0/0 .data            l_btpGetParamList */
SECTION_DATA static u8 l_btpGetParamList[8] = {
    0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x00,
};

/* 80A8875C-80A88784 0000A8 0028+00 0/1 0/0 0/0 .data            l_evtGetParamList */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_evtGetParamList[40] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x02,
};
#pragma pop

/* 80A88784-80A88798 -00001 0014+00 0/1 0/0 0/0 .data            l_evtNames */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtNames[5] = {
    (void*)NULL,
    (void*)&d_a_npc_myna2__stringBase0,
    (void*)(((char*)&d_a_npc_myna2__stringBase0) + 0xB),
    (void*)(((char*)&d_a_npc_myna2__stringBase0) + 0x18),
    (void*)(((char*)&d_a_npc_myna2__stringBase0) + 0x22),
};
#pragma pop

/* 80A88798-80A887A4 0000E4 000C+00 1/0 0/0 0/0 .data            l_loadRes_MYNA2a */
SECTION_DATA static u8 l_loadRes_MYNA2a[12] = {
    0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 80A887A4-80A887B0 0000F0 000C+00 1/0 0/0 0/0 .data            l_loadRes_MYNA2_GAME_FAILURE */
SECTION_DATA static u8 l_loadRes_MYNA2_GAME_FAILURE[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 80A887B0-80A887BC 0000FC 000C+00 1/0 0/0 0/0 .data            l_loadRes_MYNA2_GAME_GOAL */
SECTION_DATA static u8 l_loadRes_MYNA2_GAME_GOAL[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 80A887BC-80A887C8 000108 000C+00 1/0 0/0 0/0 .data            l_loadRes_MYNA20 */
SECTION_DATA static u8 l_loadRes_MYNA20[12] = {
    0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 80A887C8-80A887DC -00001 0014+00 2/2 0/0 0/0 .data            l_loadRes_list */
SECTION_DATA static void* l_loadRes_list[5] = {
    (void*)&l_loadRes_MYNA2a,
    (void*)&l_loadRes_MYNA2a,
    (void*)&l_loadRes_MYNA2_GAME_FAILURE,
    (void*)&l_loadRes_MYNA2_GAME_GOAL,
    (void*)&l_loadRes_MYNA20,
};

/* 80A887DC-80A887E8 -00001 000C+00 5/6 0/0 0/0 .data            l_resNames */
SECTION_DATA static void* l_resNames[3] = {
    (void*)(((char*)&d_a_npc_myna2__stringBase0) + 0x34),
    (void*)(((char*)&d_a_npc_myna2__stringBase0) + 0x3B),
    (void*)(((char*)&d_a_npc_myna2__stringBase0) + 0x44),
};

/* 80A887E8-80A887EC -00001 0004+00 0/1 0/0 0/0 .data            l_myName */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_myName = (void*)(((char*)&d_a_npc_myna2__stringBase0) + 0x4D);
#pragma pop

/* 80A887EC-80A88800 -00001 0014+00 0/1 0/0 0/0 .data            mEvtCutNameList__13daNpc_myna2_c */
#pragma push
#pragma force_active on
SECTION_DATA void* daNpc_myna2_c::mEvtCutNameList[5] = {
    (void*)(((char*)&d_a_npc_myna2__stringBase0) + 0x53),
    (void*)&d_a_npc_myna2__stringBase0,
    (void*)(((char*)&d_a_npc_myna2__stringBase0) + 0xB),
    (void*)(((char*)&d_a_npc_myna2__stringBase0) + 0x18),
    (void*)(((char*)&d_a_npc_myna2__stringBase0) + 0x22),
};
#pragma pop

/* 80A88800-80A8880C -00001 000C+00 0/1 0/0 0/0 .data            @4033 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4033[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_firstTalk__13daNpc_myna2_cFi,
};
#pragma pop

/* 80A8880C-80A88818 -00001 000C+00 0/1 0/0 0/0 .data            @4034 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4034[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_gameFailure__13daNpc_myna2_cFi,
};
#pragma pop

/* 80A88818-80A88824 -00001 000C+00 0/1 0/0 0/0 .data            @4035 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4035[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_gameGoal__13daNpc_myna2_cFi,
};
#pragma pop

/* 80A88824-80A88830 -00001 000C+00 0/1 0/0 0/0 .data            @4036 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4036[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_gameGoalSuccess__13daNpc_myna2_cFi,
};
#pragma pop

/* 80A88830-80A8886C 00017C 003C+00 0/2 0/0 0/0 .data            mEvtCutList__13daNpc_myna2_c */
#pragma push
#pragma force_active on
SECTION_DATA u8 daNpc_myna2_c::mEvtCutList[60] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80A8886C-80A88878 -00001 000C+00 1/1 0/0 0/0 .data            @4477 */
SECTION_DATA static void* lit_4477[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)test__13daNpc_myna2_cFPv,
};

/* 80A88878-80A88884 -00001 000C+00 0/1 0/0 0/0 .data            @4868 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4868[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)test__13daNpc_myna2_cFPv,
};
#pragma pop

/* 80A88884-80A88890 -00001 000C+00 0/1 0/0 0/0 .data            @4872 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4872[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitHovering__13daNpc_myna2_cFPv,
};
#pragma pop

/* 80A88890-80A8889C -00001 000C+00 0/1 0/0 0/0 .data            @4874 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4874[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitFailure__13daNpc_myna2_cFPv,
};
#pragma pop

/* 80A8889C-80A888A8 -00001 000C+00 0/1 0/0 0/0 .data            @4876 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4876[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitGoal__13daNpc_myna2_cFPv,
};
#pragma pop

/* 80A888A8-80A888B4 -00001 000C+00 0/1 0/0 0/0 .data            @4878 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4878[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__13daNpc_myna2_cFPv,
};
#pragma pop

/* 80A888B4-80A888C0 -00001 000C+00 0/1 0/0 0/0 .data            @4918 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4918[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_myna2_cFPv,
};
#pragma pop

/* 80A888C0-80A888CC -00001 000C+00 0/1 0/0 0/0 .data            @4926 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4926[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_myna2_cFPv,
};
#pragma pop

/* 80A888CC-80A88948 -00001 007C+00 1/1 0/0 0/0 .data            @5498 */
SECTION_DATA static void* lit_5498[31] = {
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x15C),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x280),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x280),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x280),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x280),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x280),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x280),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x280),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x280),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x280),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x190),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x280),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x280),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x280),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x280),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x280),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x280),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x280),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x280),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x280),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x1C4),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x280),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x280),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x280),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x280),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x1E4),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x280),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x280),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x280),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x280),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x248),
};

/* 80A88948-80A889C4 -00001 007C+00 1/1 0/0 0/0 .data            @5497 */
SECTION_DATA static void* lit_5497[31] = {
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0xA0),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x13C),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x13C),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x13C),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x13C),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x13C),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x13C),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x13C),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x13C),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x13C),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0xD0),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x13C),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x13C),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x13C),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x13C),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x13C),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x13C),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x13C),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x13C),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x13C),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0xE4),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x13C),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x13C),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x13C),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x13C),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x12C),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x13C),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x13C),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x13C),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x13C),
    (void*)(((char*)ECut_gameGoalSuccess__13daNpc_myna2_cFi) + 0x13C),
};

/* 80A889C4-80A889E4 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_myna2_MethodTable */
static actor_method_class daNpc_myna2_MethodTable = {
    (process_method_func)daNpc_myna2_Create__FPv,
    (process_method_func)daNpc_myna2_Delete__FPv,
    (process_method_func)daNpc_myna2_Execute__FPv,
    (process_method_func)daNpc_myna2_IsDelete__FPv,
    (process_method_func)daNpc_myna2_Draw__FPv,
};

/* 80A889E4-80A88A14 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_MYNA2 */
extern actor_process_profile_definition g_profile_MYNA2 = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_MYNA2,               // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daNpc_myna2_c),    // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  393,                      // mPriority
  &daNpc_myna2_MethodTable, // sub_method
  0x08044100,               // mStatus
  fopAc_NPC_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 80A88A14-80A88A5C 000360 0048+00 2/2 0/0 0/0 .data            __vt__13daNpc_myna2_c */
SECTION_DATA extern void* __vt__13daNpc_myna2_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpc_myna2_cFv,
    (void*)setParam__13daNpc_myna2_cFv,
    (void*)main__13daNpc_myna2_cFv,
    (void*)ctrlBtk__8daNpcF_cFv,
    (void*)adjustShapeAngle__8daNpcF_cFv,
    (void*)setMtx__8daNpcF_cFv,
    (void*)setMtx2__8daNpcF_cFv,
    (void*)setAttnPos__13daNpc_myna2_cFv,
    (void*)setCollisions__8daNpcF_cFv,
    (void*)setExpressionAnm__8daNpcF_cFib,
    (void*)setExpressionBtp__13daNpc_myna2_cFi,
    (void*)setExpression__8daNpcF_cFif,
    (void*)setMotionAnm__13daNpc_myna2_cFif,
    (void*)setMotion__13daNpc_myna2_cFifi,
    (void*)drawDbgInfo__13daNpc_myna2_cFv,
    (void*)drawOtherMdls__13daNpc_myna2_cFv,
};

/* 80A88A5C-80A88A68 0003A8 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80A88A68-80A88A8C 0003B4 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A88418,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A88410,
};

/* 80A88A8C-80A88A98 0003D8 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80A88A98-80A88AA4 0003E4 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80A88AA4-80A88AB0 0003F0 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80A88AB0-80A88ABC 0003FC 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcF_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcF_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcF_ActorMngr_cFv,
};

/* 80A88ABC-80A88AC8 000408 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80A88AC8-80A88AD4 000414 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80A88AD4-80A88AE0 000420 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcF_Lookat_c */
SECTION_DATA extern void* __vt__15daNpcF_Lookat_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcF_Lookat_cFv,
};

/* 80A83E8C-80A84010 0000EC 0184+00 1/1 0/0 0/0 .text            __ct__13daNpc_myna2_cFv */
daNpc_myna2_c::daNpc_myna2_c() {
    // NONMATCHING
}

/* 80A84010-80A84058 000270 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80A84058-80A840A0 0002B8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80A840A0-80A842C8 000300 0228+00 1/0 0/0 0/0 .text            __dt__13daNpc_myna2_cFv */
daNpc_myna2_c::~daNpc_myna2_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A88434-80A884A8 000000 0074+00 14/14 0/0 0/0 .rodata          m__19daNpc_myna2_Param_c */
SECTION_RODATA u8 const daNpc_myna2_Param_c::m[116] = {
    0x42, 0x70, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x44, 0x16, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x42, 0x20,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00,
    0x06, 0x00, 0x05, 0x00, 0x06, 0x43, 0x34, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00, 0x43, 0x96,
    0x00, 0x00, 0xC3, 0x96, 0x00, 0x00, 0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x44, 0x2F, 0x00, 0x00, 0x45, 0x1C, 0x40, 0x00,
};
COMPILER_STRIP_GATE(0x80A88434, &daNpc_myna2_Param_c::m);

/* 80A884A8-80A884BC 000074 0014+00 0/1 0/0 0/0 .rodata          heapSize$4340 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const heapSize[20] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x24, 0x50, 0x00, 0x00,
    0x24, 0x40, 0x00, 0x00, 0x24, 0x50, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A884A8, &heapSize);
#pragma pop

/* 80A884BC-80A884C0 000088 0004+00 0/1 0/0 0/0 .rodata          @4428 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4428 = -300.0f;
COMPILER_STRIP_GATE(0x80A884BC, &lit_4428);
#pragma pop

/* 80A884C0-80A884C4 00008C 0004+00 0/1 0/0 0/0 .rodata          @4429 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4429 = -50.0f;
COMPILER_STRIP_GATE(0x80A884C0, &lit_4429);
#pragma pop

/* 80A884C4-80A884C8 000090 0004+00 0/1 0/0 0/0 .rodata          @4430 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4430 = 300.0f;
COMPILER_STRIP_GATE(0x80A884C4, &lit_4430);
#pragma pop

/* 80A884C8-80A884CC 000094 0004+00 0/1 0/0 0/0 .rodata          @4431 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4431 = 450.0f;
COMPILER_STRIP_GATE(0x80A884C8, &lit_4431);
#pragma pop

/* 80A842C8-80A845AC 000528 02E4+00 1/1 0/0 0/0 .text            create__13daNpc_myna2_cFv */
void daNpc_myna2_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A884CC-80A884D0 000098 0004+00 4/5 0/0 0/0 .rodata          @4462 */
SECTION_RODATA static f32 const lit_4462 = 1.0f;
COMPILER_STRIP_GATE(0x80A884CC, &lit_4462);

/* 80A884D0-80A884D4 00009C 0004+00 2/9 0/0 0/0 .rodata          @4463 */
SECTION_RODATA static u8 const lit_4463[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A884D0, &lit_4463);

/* 80A845AC-80A846E0 00080C 0134+00 1/1 0/0 0/0 .text            CreateHeap__13daNpc_myna2_cFv */
void daNpc_myna2_c::CreateHeap() {
    // NONMATCHING
}

/* 80A846E0-80A84714 000940 0034+00 1/1 0/0 0/0 .text            Delete__13daNpc_myna2_cFv */
void daNpc_myna2_c::Delete() {
    // NONMATCHING
}

/* 80A84714-80A84734 000974 0020+00 2/2 0/0 0/0 .text            Execute__13daNpc_myna2_cFv */
void daNpc_myna2_c::Execute() {
    // NONMATCHING
}

/* 80A84734-80A847A8 000994 0074+00 1/1 0/0 0/0 .text            Draw__13daNpc_myna2_cFv */
void daNpc_myna2_c::Draw() {
    // NONMATCHING
}

/* 80A847A8-80A847C8 000A08 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__13daNpc_myna2_cFP10fopAc_ac_c            */
void daNpc_myna2_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80A847C8-80A848B4 000A28 00EC+00 1/0 0/0 0/0 .text            setParam__13daNpc_myna2_cFv */
void daNpc_myna2_c::setParam() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A884D4-80A884D8 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4577 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4577 = 3.0f / 20.0f;
COMPILER_STRIP_GATE(0x80A884D4, &lit_4577);
#pragma pop

/* 80A884D8-80A884DC 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4578 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4578 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80A884D8, &lit_4578);
#pragma pop

/* 80A848B4-80A84B64 000B14 02B0+00 1/0 0/0 0/0 .text            main__13daNpc_myna2_cFv */
void daNpc_myna2_c::main() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A884DC-80A884E0 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4644 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4644 = 30.0f;
COMPILER_STRIP_GATE(0x80A884DC, &lit_4644);
#pragma pop

/* 80A884E0-80A884E4 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4645 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4645 = 10.0f;
COMPILER_STRIP_GATE(0x80A884E0, &lit_4645);
#pragma pop

/* 80A88B38-80A88B44 000048 000C+00 1/1 0/0 0/0 .bss             @4032 */
static u8 lit_4032[12];

/* 80A88B44-80A88B48 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80A88B48-80A88B58 000058 000C+04 0/1 0/0 0/0 .bss             @4583 */
#pragma push
#pragma force_active on
static u8 lit_4583[12 + 4 /* padding */];
#pragma pop

/* 80A88B58-80A88B64 000068 000C+00 0/1 0/0 0/0 .bss             eyeOffset$4582 */
#pragma push
#pragma force_active on
static u8 eyeOffset[12];
#pragma pop

/* 80A84B64-80A84DAC 000DC4 0248+00 1/0 0/0 0/0 .text            setAttnPos__13daNpc_myna2_cFv */
void daNpc_myna2_c::setAttnPos() {
    // NONMATCHING
}

/* 80A84DAC-80A84EAC 00100C 0100+00 1/0 0/0 0/0 .text            setExpressionBtp__13daNpc_myna2_cFi
 */
void daNpc_myna2_c::setExpressionBtp(int param_0) {
    // NONMATCHING
}

/* 80A84EAC-80A84FEC 00110C 0140+00 1/0 0/0 0/0 .text            setMotionAnm__13daNpc_myna2_cFif */
bool daNpc_myna2_c::setMotionAnm(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 80A84FEC-80A85030 00124C 0044+00 1/0 0/0 0/0 .text            setMotion__13daNpc_myna2_cFifi */
void daNpc_myna2_c::setMotion(int param_0, f32 param_1, int param_2) {
    // NONMATCHING
}

/* 80A85030-80A85038 001290 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__13daNpc_myna2_cFv */
bool daNpc_myna2_c::drawDbgInfo() {
    return false;
}

/* 80A85038-80A8503C 001298 0004+00 1/0 0/0 0/0 .text            drawOtherMdls__13daNpc_myna2_cFv */
void daNpc_myna2_c::drawOtherMdls() {
    /* empty function */
}

/* 80A8503C-80A85094 00129C 0058+00 1/1 0/0 0/0 .text            getTypeFromParam__13daNpc_myna2_cFv
 */
void daNpc_myna2_c::getTypeFromParam() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A88654-80A88654 000220 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A886A8 = "F_SP115";
#pragma pop

/* 80A85094-80A85160 0012F4 00CC+00 1/1 0/0 0/0 .text            isDelete__13daNpc_myna2_cFv */
void daNpc_myna2_c::isDelete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A884E4-80A884E8 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4806 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4806 = 3000.0f;
COMPILER_STRIP_GATE(0x80A884E4, &lit_4806);
#pragma pop

/* 80A884E8-80A884EC 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4807 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4807 = 2000.0f;
COMPILER_STRIP_GATE(0x80A884E8, &lit_4807);
#pragma pop

/* 80A884EC-80A884F0 0000B8 0004+00 0/2 0/0 0/0 .rodata          @4808 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4808 = 50.0f;
COMPILER_STRIP_GATE(0x80A884EC, &lit_4808);
#pragma pop

/* 80A85160-80A85358 0013C0 01F8+00 1/1 0/0 0/0 .text            reset__13daNpc_myna2_cFv */
void daNpc_myna2_c::reset() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A884F0-80A884FC 0000BC 000C+00 0/1 0/0 0/0 .rodata          @4812 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4812[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A884F0, &lit_4812);
#pragma pop

/* 80A884FC-80A88500 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4813 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4813[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A884FC, &lit_4813);
#pragma pop

/* 80A88500-80A8850C 0000CC 000C+00 0/1 0/0 0/0 .rodata          @4814 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4814[12] = {
    0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A88500, &lit_4814);
#pragma pop

/* 80A8850C-80A88510 0000D8 0004+00 0/1 0/0 0/0 .rodata          @4815 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4815[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A8850C, &lit_4815);
#pragma pop

/* 80A88510-80A8851C 0000DC 000C+00 0/1 0/0 0/0 .rodata          @4816 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4816[12] = {
    0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A88510, &lit_4816);
#pragma pop

/* 80A8851C-80A88520 0000E8 0004+00 0/1 0/0 0/0 .rodata          @4817 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4817[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A8851C, &lit_4817);
#pragma pop

/* 80A88520-80A8852C 0000EC 000C+00 0/1 0/0 0/0 .rodata          @4818 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4818[12] = {
    0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A88520, &lit_4818);
#pragma pop

/* 80A8852C-80A88538 0000F8 000C+00 0/1 0/0 0/0 .rodata          @4819 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4819[12] = {
    0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A8852C, &lit_4819);
#pragma pop

/* 80A88538-80A88540 000104 0008+00 0/1 0/0 0/0 .rodata          @4820 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4820[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A88538, &lit_4820);
#pragma pop

/* 80A88540-80A8854C 00010C 000C+00 0/1 0/0 0/0 .rodata          @4821 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4821[12] = {
    0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A88540, &lit_4821);
#pragma pop

/* 80A8854C-80A88558 000118 000C+00 0/1 0/0 0/0 .rodata          @4822 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4822[12] = {
    0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A8854C, &lit_4822);
#pragma pop

/* 80A88558-80A88560 000124 0008+00 0/1 0/0 0/0 .rodata          @4823 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4823[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A88558, &lit_4823);
#pragma pop

/* 80A88560-80A8856C 00012C 000C+00 0/1 0/0 0/0 .rodata          @4824 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4824[12] = {
    0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A88560, &lit_4824);
#pragma pop

/* 80A8856C-80A88578 000138 000C+00 0/1 0/0 0/0 .rodata          @4825 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4825[12] = {
    0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A8856C, &lit_4825);
#pragma pop

/* 80A88578-80A88580 000144 0008+00 0/1 0/0 0/0 .rodata          @4826 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4826[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A88578, &lit_4826);
#pragma pop

/* 80A88580-80A8858C 00014C 000C+00 0/1 0/0 0/0 .rodata          @4827 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4827[12] = {
    0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A88580, &lit_4827);
#pragma pop

/* 80A8858C-80A88590 000158 0004+00 0/1 0/0 0/0 .rodata          @4828 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4828[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A8858C, &lit_4828);
#pragma pop

/* 80A88590-80A8859C 00015C 000C+00 0/1 0/0 0/0 .rodata          @4829 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4829[12] = {
    0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A88590, &lit_4829);
#pragma pop

/* 80A8859C-80A885A0 000168 0004+00 0/1 0/0 0/0 .rodata          @4830 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4830[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A8859C, &lit_4830);
#pragma pop

/* 80A85358-80A855E8 0015B8 0290+00 1/1 0/0 0/0 .text            playMotion__13daNpc_myna2_cFv */
void daNpc_myna2_c::playMotion() {
    // NONMATCHING
}

/* 80A855E8-80A85614 001848 002C+00 2/2 0/0 0/0 .text
 * chkAction__13daNpc_myna2_cFM13daNpc_myna2_cFPCvPvPv_i        */
void daNpc_myna2_c::chkAction(int (daNpc_myna2_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80A85614-80A856BC 001874 00A8+00 2/2 0/0 0/0 .text
 * setAction__13daNpc_myna2_cFM13daNpc_myna2_cFPCvPvPv_i        */
void daNpc_myna2_c::setAction(int (daNpc_myna2_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80A856BC-80A857B0 00191C 00F4+00 1/1 0/0 0/0 .text            selectAction__13daNpc_myna2_cFv */
void daNpc_myna2_c::selectAction() {
    // NONMATCHING
}

/* 80A857B0-80A85894 001A10 00E4+00 1/1 0/0 0/0 .text            doNormalAction__13daNpc_myna2_cFi
 */
void daNpc_myna2_c::doNormalAction(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A885A0-80A885C0 00016C 0020+00 0/0 0/0 0/0 .rodata          @4831 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4831[32] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A885A0, &lit_4831);
#pragma pop

/* 80A885C0-80A885C4 00018C 0004+00 4/6 0/0 0/0 .rodata          @4982 */
SECTION_RODATA static f32 const lit_4982 = -1.0f;
COMPILER_STRIP_GATE(0x80A885C0, &lit_4982);

/* 80A85894-80A85BA4 001AF4 0310+00 1/1 0/0 0/0 .text            doEvent__13daNpc_myna2_cFv */
void daNpc_myna2_c::doEvent() {
    // NONMATCHING
}

/* 80A85BA4-80A85BC8 001E04 0024+00 7/7 0/0 0/0 .text            setLookMode__13daNpc_myna2_cFi */
void daNpc_myna2_c::setLookMode(int param_0) {
    // NONMATCHING
}

/* 80A85BC8-80A85C60 001E28 0098+00 1/0 0/0 0/0 .text            wait__13daNpc_myna2_cFPv */
void daNpc_myna2_c::wait(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A885C4-80A885CC 000190 0008+00 0/2 0/0 0/0 .rodata          @5186 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5186[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A885C4, &lit_5186);
#pragma pop

/* 80A885CC-80A885D4 000198 0008+00 0/2 0/0 0/0 .rodata          @5187 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5187[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A885CC, &lit_5187);
#pragma pop

/* 80A885D4-80A885DC 0001A0 0008+00 0/2 0/0 0/0 .rodata          @5188 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5188[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A885D4, &lit_5188);
#pragma pop

/* 80A885DC-80A885E0 0001A8 0004+00 0/2 0/0 0/0 .rodata          @5189 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5189 = 100.0f;
COMPILER_STRIP_GATE(0x80A885DC, &lit_5189);
#pragma pop

/* 80A85C60-80A8613C 001EC0 04DC+00 1/0 0/0 0/0 .text            waitHovering__13daNpc_myna2_cFPv */
void daNpc_myna2_c::waitHovering(void* param_0) {
    // NONMATCHING
}

/* 80A8613C-80A86194 00239C 0058+00 1/1 0/0 0/0 .text            s_sub__FPvPv */
static void s_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80A86194-80A862BC 0023F4 0128+00 1/0 0/0 0/0 .text            waitFailure__13daNpc_myna2_cFPv */
void daNpc_myna2_c::waitFailure(void* param_0) {
    // NONMATCHING
}

/* 80A862BC-80A86400 00251C 0144+00 1/0 0/0 0/0 .text            waitGoal__13daNpc_myna2_cFPv */
void daNpc_myna2_c::waitGoal(void* param_0) {
    // NONMATCHING
}

/* 80A86400-80A865FC 002660 01FC+00 2/0 0/0 0/0 .text            talk__13daNpc_myna2_cFPv */
void daNpc_myna2_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80A865FC-80A866B0 00285C 00B4+00 2/0 0/0 0/0 .text            test__13daNpc_myna2_cFPv */
void daNpc_myna2_c::test(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A885E0-80A885E4 0001AC 0004+00 1/2 0/0 0/0 .rodata          @5358 */
SECTION_RODATA static f32 const lit_5358 = 160.0f;
COMPILER_STRIP_GATE(0x80A885E0, &lit_5358);

/* 80A88654-80A88654 000220 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A886B0 = "prm";
#pragma pop

/* 80A866B0-80A8684C 002910 019C+00 1/0 0/0 0/0 .text            ECut_firstTalk__13daNpc_myna2_cFi
 */
void daNpc_myna2_c::ECut_firstTalk(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A885E4-80A885E8 0001B0 0004+00 0/3 0/0 0/0 .rodata          @5391 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5391 = 500.0f;
COMPILER_STRIP_GATE(0x80A885E4, &lit_5391);
#pragma pop

/* 80A8684C-80A86A0C 002AAC 01C0+00 1/0 0/0 0/0 .text            ECut_gameFailure__13daNpc_myna2_cFi
 */
void daNpc_myna2_c::ECut_gameFailure(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A885E8-80A885EC 0001B4 0004+00 0/1 0/0 0/0 .rodata          @5440 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5440 = 150.0f;
COMPILER_STRIP_GATE(0x80A885E8, &lit_5440);
#pragma pop

/* 80A86A0C-80A86BEC 002C6C 01E0+00 1/0 0/0 0/0 .text            ECut_gameGoal__13daNpc_myna2_cFi */
void daNpc_myna2_c::ECut_gameGoal(int param_0) {
    // NONMATCHING
}

/* 80A86BEC-80A86E8C 002E4C 02A0+00 3/0 0/0 0/0 .text ECut_gameGoalSuccess__13daNpc_myna2_cFi */
void daNpc_myna2_c::ECut_gameGoalSuccess(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A885EC-80A885F0 0001B8 0004+00 0/1 0/0 0/0 .rodata          @5799 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5799 = 5.0f;
COMPILER_STRIP_GATE(0x80A885EC, &lit_5799);
#pragma pop

/* 80A885F0-80A885F4 0001BC 0004+00 0/1 0/0 0/0 .rodata          @5800 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5800 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80A885F0, &lit_5800);
#pragma pop

/* 80A885F4-80A885F8 0001C0 0004+00 0/1 0/0 0/0 .rodata          @5801 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5801 = 1.5f;
COMPILER_STRIP_GATE(0x80A885F4, &lit_5801);
#pragma pop

/* 80A885F8-80A885FC 0001C4 0004+00 0/1 0/0 0/0 .rodata          @5802 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5802 = -25.0f;
COMPILER_STRIP_GATE(0x80A885F8, &lit_5802);
#pragma pop

/* 80A885FC-80A88600 0001C8 0004+00 0/1 0/0 0/0 .rodata          @5803 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5803 = 0.5f;
COMPILER_STRIP_GATE(0x80A885FC, &lit_5803);
#pragma pop

/* 80A88600-80A88604 0001CC 0004+00 0/1 0/0 0/0 .rodata          @5804 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5804 = 120.0f;
COMPILER_STRIP_GATE(0x80A88600, &lit_5804);
#pragma pop

/* 80A88604-80A88608 0001D0 0004+00 0/1 0/0 0/0 .rodata          @5805 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5805 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80A88604, &lit_5805);
#pragma pop

/* 80A88608-80A8860C 0001D4 0004+00 0/1 0/0 0/0 .rodata          @5806 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5806 = -1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80A88608, &lit_5806);
#pragma pop

/* 80A8860C-80A88610 0001D8 0004+00 0/1 0/0 0/0 .rodata          @5807 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5807 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80A8860C, &lit_5807);
#pragma pop

/* 80A88610-80A88614 0001DC 0004+00 0/1 0/0 0/0 .rodata          @5808 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5808 = -1.5f;
COMPILER_STRIP_GATE(0x80A88610, &lit_5808);
#pragma pop

/* 80A88614-80A88618 0001E0 0004+00 0/1 0/0 0/0 .rodata          @5809 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5809 = 3.0f;
COMPILER_STRIP_GATE(0x80A88614, &lit_5809);
#pragma pop

/* 80A88618-80A8861C 0001E4 0004+00 0/1 0/0 0/0 .rodata          @5810 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5810 = 40.0f;
COMPILER_STRIP_GATE(0x80A88618, &lit_5810);
#pragma pop

/* 80A8861C-80A88620 0001E8 0004+00 0/1 0/0 0/0 .rodata          @5811 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5811 = 20.0f;
COMPILER_STRIP_GATE(0x80A8861C, &lit_5811);
#pragma pop

/* 80A88620-80A88624 0001EC 0004+00 0/1 0/0 0/0 .rodata          @5812 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5812 = 70.0f;
COMPILER_STRIP_GATE(0x80A88620, &lit_5812);
#pragma pop

/* 80A88624-80A88628 0001F0 0004+00 0/1 0/0 0/0 .rodata          @5813 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5813 = -7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80A88624, &lit_5813);
#pragma pop

/* 80A88628-80A8862C 0001F4 0004+00 0/1 0/0 0/0 .rodata          @5814 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5814 = 7.0f / 5.0f;
COMPILER_STRIP_GATE(0x80A88628, &lit_5814);
#pragma pop

/* 80A8862C-80A88634 0001F8 0004+04 0/1 0/0 0/0 .rodata          @5815 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5815[1 + 1 /* padding */] = {
    2.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80A8862C, &lit_5815);
#pragma pop

/* 80A88634-80A8863C 000200 0008+00 0/1 0/0 0/0 .rodata          @5816 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5816[8] = {
    0x3F, 0xB9, 0x99, 0x99, 0x99, 0x99, 0x99, 0x9A,
};
COMPILER_STRIP_GATE(0x80A88634, &lit_5816);
#pragma pop

/* 80A8863C-80A88640 000208 0004+00 0/1 0/0 0/0 .rodata          @5817 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5817 = 6.0f;
COMPILER_STRIP_GATE(0x80A8863C, &lit_5817);
#pragma pop

/* 80A88640-80A88644 00020C 0004+00 0/1 0/0 0/0 .rodata          @5818 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5818 = 4096.0f;
COMPILER_STRIP_GATE(0x80A88640, &lit_5818);
#pragma pop

/* 80A88644-80A8864C 000210 0004+04 0/1 0/0 0/0 .rodata          @5819 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5819[1 + 1 /* padding */] = {
    6144.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80A88644, &lit_5819);
#pragma pop

/* 80A86E8C-80A879A0 0030EC 0B14+00 6/6 0/0 0/0 .text            calcHovering__13daNpc_myna2_cFii */
void daNpc_myna2_c::calcHovering(int param_0, int param_1) {
    // NONMATCHING
}

/* 80A879A0-80A879C0 003C00 0020+00 1/0 0/0 0/0 .text            daNpc_myna2_Create__FPv */
static void daNpc_myna2_Create(void* param_0) {
    // NONMATCHING
}

/* 80A879C0-80A879E0 003C20 0020+00 1/0 0/0 0/0 .text            daNpc_myna2_Delete__FPv */
static void daNpc_myna2_Delete(void* param_0) {
    // NONMATCHING
}

/* 80A879E0-80A87A00 003C40 0020+00 1/0 0/0 0/0 .text            daNpc_myna2_Execute__FPv */
static void daNpc_myna2_Execute(void* param_0) {
    // NONMATCHING
}

/* 80A87A00-80A87A20 003C60 0020+00 1/0 0/0 0/0 .text            daNpc_myna2_Draw__FPv */
static void daNpc_myna2_Draw(void* param_0) {
    // NONMATCHING
}

/* 80A87A20-80A87A28 003C80 0008+00 1/0 0/0 0/0 .text            daNpc_myna2_IsDelete__FPv */
static bool daNpc_myna2_IsDelete(void* param_0) {
    return true;
}

/* 80A87A28-80A87A70 003C88 0048+00 5/4 0/0 0/0 .text            __dt__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::~daNpcF_ActorMngr_c() {
extern "C" void __dt__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80A87A70-80A87AAC 003CD0 003C+00 2/2 0/0 0/0 .text            __ct__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::daNpcF_ActorMngr_c() {
extern "C" void __ct__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80A87AAC-80A87B7C 003D0C 00D0+00 1/0 0/0 0/0 .text            __dt__15daNpcF_Lookat_cFv */
// daNpcF_Lookat_c::~daNpcF_Lookat_c() {
extern "C" void __dt__15daNpcF_Lookat_cFv() {
    // NONMATCHING
}

/* 80A87B7C-80A87BB8 003DDC 003C+00 5/5 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80A87BB8-80A87BBC 003E18 0004+00 2/2 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80A87BBC-80A87BF8 003E1C 003C+00 6/6 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80A87BF8-80A87BFC 003E58 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80A87BFC-80A87E48 003E5C 024C+00 1/1 0/0 0/0 .text            __dt__8daNpcF_cFv */
// daNpcF_c::~daNpcF_c() {
extern "C" void __dt__8daNpcF_cFv() {
    // NONMATCHING
}

/* 80A87E48-80A88038 0040A8 01F0+00 1/1 0/0 0/0 .text            __ct__8daNpcF_cFv */
// daNpcF_c::daNpcF_c() {
extern "C" void __ct__8daNpcF_cFv() {
    // NONMATCHING
}

/* 80A88038-80A880A8 004298 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80A880A8-80A88104 004308 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80A88104-80A88174 004364 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80A88174-80A881BC 0043D4 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80A881BC-80A881C4 00441C 0008+00 1/0 0/0 0/0 .text            ctrlBtk__8daNpcF_cFv */
// bool daNpcF_c::ctrlBtk() {
extern "C" bool ctrlBtk__8daNpcF_cFv() {
    return false;
}

/* 80A881C4-80A881C8 004424 0004+00 1/0 0/0 0/0 .text            adjustShapeAngle__8daNpcF_cFv */
// void daNpcF_c::adjustShapeAngle() {
extern "C" void adjustShapeAngle__8daNpcF_cFv() {
    /* empty function */
}

/* 80A881C8-80A881CC 004428 0004+00 1/0 0/0 0/0 .text            setCollisions__8daNpcF_cFv */
// void daNpcF_c::setCollisions() {
extern "C" void setCollisions__8daNpcF_cFv() {
    /* empty function */
}

/* 80A881CC-80A881D4 00442C 0008+00 1/0 0/0 0/0 .text            setExpressionAnm__8daNpcF_cFib */
// bool daNpcF_c::setExpressionAnm(int param_0, bool param_1) {
extern "C" bool setExpressionAnm__8daNpcF_cFib() {
    return true;
}

/* 80A881D4-80A881D8 004434 0004+00 1/0 0/0 0/0 .text            setExpression__8daNpcF_cFif */
// void daNpcF_c::setExpression(int param_0, f32 param_1) {
extern "C" void setExpression__8daNpcF_cFif() {
    /* empty function */
}

/* 80A881D8-80A88220 004438 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80A88220-80A8823C 004480 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_80A88220(void* _this, int* param_0) {
    // NONMATCHING
}

/* 80A8823C-80A88278 00449C 003C+00 1/1 0/0 0/0 .text            cLib_getRndValue<f>__Fff */
extern "C" void func_80A8823C(void* _this, f32 param_0, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A8864C-80A88654 000218 0008+00 1/1 0/0 0/0 .rodata          @5872 */
SECTION_RODATA static u8 const lit_5872[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A8864C, &lit_5872);

/* 80A88278-80A882F4 0044D8 007C+00 1/1 0/0 0/0 .text            cLib_getRndValue<i>__Fii */
extern "C" void func_80A88278(void* _this, int param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A88AE0-80A88AEC 00042C 000C+00 2/2 0/0 0/0 .data            __vt__19daNpc_myna2_Param_c */
SECTION_DATA extern void* __vt__19daNpc_myna2_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__19daNpc_myna2_Param_cFv,
};

/* 80A882F4-80A883C8 004554 00D4+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_myna2_cpp */
void __sinit_d_a_npc_myna2_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80A882F4, __sinit_d_a_npc_myna2_cpp);
#pragma pop

/* 80A883C8-80A88410 004628 0048+00 2/1 0/0 0/0 .text            __dt__19daNpc_myna2_Param_cFv */
daNpc_myna2_Param_c::~daNpc_myna2_Param_c() {
    // NONMATCHING
}

/* 80A88410-80A88418 004670 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80A88410() {
    // NONMATCHING
}

/* 80A88418-80A88420 004678 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80A88418() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A88B64-80A88B68 000074 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80A88B64[4];
#pragma pop

/* 80A88B68-80A88B6C 000078 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80A88B68[4];
#pragma pop

/* 80A88B6C-80A88B70 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80A88B6C[4];
#pragma pop

/* 80A88B70-80A88B74 000080 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80A88B70[4];
#pragma pop

/* 80A88B74-80A88B78 000084 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A88B74[4];
#pragma pop

/* 80A88B78-80A88B7C 000088 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A88B78[4];
#pragma pop

/* 80A88B7C-80A88B80 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80A88B7C[4];
#pragma pop

/* 80A88B80-80A88B84 000090 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80A88B80[4];
#pragma pop

/* 80A88B84-80A88B88 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80A88B84[4];
#pragma pop

/* 80A88B88-80A88B8C 000098 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80A88B88[4];
#pragma pop

/* 80A88B8C-80A88B90 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80A88B8C[4];
#pragma pop

/* 80A88B90-80A88B94 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80A88B90[4];
#pragma pop

/* 80A88B94-80A88B98 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80A88B94[4];
#pragma pop

/* 80A88B98-80A88B9C 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A88B98[4];
#pragma pop

/* 80A88B9C-80A88BA0 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80A88B9C[4];
#pragma pop

/* 80A88BA0-80A88BA4 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80A88BA0[4];
#pragma pop

/* 80A88BA4-80A88BA8 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80A88BA4[4];
#pragma pop

/* 80A88BA8-80A88BAC 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80A88BA8[4];
#pragma pop

/* 80A88BAC-80A88BB0 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80A88BAC[4];
#pragma pop

/* 80A88BB0-80A88BB4 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80A88BB0[4];
#pragma pop

/* 80A88BB4-80A88BB8 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80A88BB4[4];
#pragma pop

/* 80A88BB8-80A88BBC 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A88BB8[4];
#pragma pop

/* 80A88BBC-80A88BC0 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A88BBC[4];
#pragma pop

/* 80A88BC0-80A88BC4 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A88BC0[4];
#pragma pop

/* 80A88BC4-80A88BC8 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80A88BC4[4];
#pragma pop

/* 80A88654-80A88654 000220 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
