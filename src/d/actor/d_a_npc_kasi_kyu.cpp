/**
 * @file d_a_npc_kasi_kyu.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_kasi_kyu.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __ct__14daNpcKasiKyu_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__14daNpcKasiKyu_cFv();
extern "C" void Create__14daNpcKasiKyu_cFv();
extern "C" void CreateHeap__14daNpcKasiKyu_cFv();
extern "C" void Delete__14daNpcKasiKyu_cFv();
extern "C" void Execute__14daNpcKasiKyu_cFv();
extern "C" void Draw__14daNpcKasiKyu_cFv();
extern "C" void ctrlJoint__14daNpcKasiKyu_cFP8J3DJointP8J3DModel();
extern "C" void createHeapCallBack__14daNpcKasiKyu_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__14daNpcKasiKyu_cFP8J3DJointi();
extern "C" void setParam__14daNpcKasiKyu_cFv();
extern "C" void main__14daNpcKasiKyu_cFv();
extern "C" void setAttnPos__14daNpcKasiKyu_cFv();
extern "C" void setMotionAnm__14daNpcKasiKyu_cFif();
extern "C" void setMotion__14daNpcKasiKyu_cFifi();
extern "C" bool drawDbgInfo__14daNpcKasiKyu_cFv();
extern "C" void reset__14daNpcKasiKyu_cFv();
extern "C" void playMotion__14daNpcKasiKyu_cFv();
extern "C" void playMotionAnmLoop__14daNpcKasiKyu_cFPPPQ28daNpcF_c18daNpcF_anmPlayData();
extern "C" void setAction__14daNpcKasiKyu_cFM14daNpcKasiKyu_cFPCvPvi_i();
extern "C" void setLookMode__14daNpcKasiKyu_cFi();
extern "C" void lookat__14daNpcKasiKyu_cFv();
extern "C" void step__14daNpcKasiKyu_cFsi();
extern "C" void chkFindPlayer__14daNpcKasiKyu_cFv();
extern "C" void wait__14daNpcKasiKyu_cFi();
extern "C" void fear__14daNpcKasiKyu_cFi();
extern "C" void srchWolfTag__14daNpcKasiKyu_cFv();
extern "C" void _srch_escape_tag__14daNpcKasiKyu_cFPvPv();
extern "C" void getWolfPathNearIdx__14daNpcKasiKyu_cFv();
extern "C" void chace_st__14daNpcKasiKyu_cFi();
extern "C" void chace__14daNpcKasiKyu_cFi();
extern "C" void getChacePos__14daNpcKasiKyu_cFv();
extern "C" void turn_link__14daNpcKasiKyu_cFi();
extern "C" void turn_home__14daNpcKasiKyu_cFi();
extern "C" void turn_center__14daNpcKasiKyu_cFi();
extern "C" void talk_dummy__14daNpcKasiKyu_cFi();
extern "C" void kya__14daNpcKasiKyu_cFi();
extern "C" void kya2__14daNpcKasiKyu_cFi();
extern "C" void kya_stop__14daNpcKasiKyu_cFi();
extern "C" void iyan__14daNpcKasiKyu_cFi();
extern "C" void iyan_look__14daNpcKasiKyu_cFi();
extern "C" void turn_hana__14daNpcKasiKyu_cFi();
extern "C" void escape__14daNpcKasiKyu_cFi();
extern "C" void wait_dummy__14daNpcKasiKyu_cFi();
extern "C" void cheer__14daNpcKasiKyu_cFi();
extern "C" void _turn_to_link__14daNpcKasiKyu_cFs();
extern "C" void _turn_pos__14daNpcKasiKyu_cFRC4cXyzs();
extern "C" void actor_front_check__14daNpcKasiKyu_cFP10fopAc_ac_c();
extern "C" void _getOffset__14daNpcKasiKyu_cFRC4cXyzR4cXyz();
extern "C" static void daNpcKasiKyu_Create__FPv();
extern "C" static void daNpcKasiKyu_Delete__FPv();
extern "C" static void daNpcKasiKyu_Execute__FPv();
extern "C" static void daNpcKasiKyu_Draw__FPv();
extern "C" static bool daNpcKasiKyu_IsDelete__FPv();
extern "C" void __dt__13daNpcF_Path_cFv();
extern "C" void __dt__16daNpcF_SPCurve_cFv();
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
extern "C" void setCollisions__8daNpcF_cFv();
extern "C" bool setExpressionAnm__8daNpcF_cFib();
extern "C" bool setExpressionBtp__8daNpcF_cFi();
extern "C" void setExpression__8daNpcF_cFif();
extern "C" void drawOtherMdls__8daNpcF_cFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __sinit_d_a_npc_kasi_kyu_cpp();
extern "C" void adjustShapeAngle__14daNpcKasiKyu_cFv();
extern "C" void __dt__20daNpcKasiKyu_Param_cFv();
extern "C" static void func_80A25894();
extern "C" static void func_80A2589C();
extern "C" u8 const m__20daNpcKasiKyu_Param_c[116];
extern "C" extern char const* const d_a_npc_kasi_kyu__stringBase0;
extern "C" u8 mEvtSeqList__14daNpcKasiKyu_c[12];
extern "C" u8 mTargetTag__14daNpcKasiKyu_c[4];
extern "C" u8 mTargetTagDist__14daNpcKasiKyu_c[4];

//
// External References:
//

extern "C" void ZXYrotS__14mDoMtx_stack_cFRC5csXyz();
extern "C" void setMorf__13mDoExt_morf_cFf();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
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
extern "C" void initialize__16daNpcF_SPCurve_cFP5dPathi();
extern "C" void initialize__13daNpcF_Path_cFv();
extern "C" void setPathInfo__13daNpcF_Path_cFUcScUc();
extern "C" void getDstPos__13daNpcF_Path_cF4cXyzR4cXyz();
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
extern "C" void setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii();
extern "C" void setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi();
extern "C" void setEnvTevColor__8daNpcF_cFv();
extern "C" void setRoomNo__8daNpcF_cFv();
extern "C" void playMotionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData();
extern "C" void setLookatMtx__8daNpcF_cFiPif();
extern "C" void orderEvent__8daNpcF_cFiPcUsUsUcUs();
extern "C" void chkActorInSight__8daNpcF_cFP10fopAc_ac_cf();
extern "C" void chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci();
extern "C" void turn__8daNpcF_cFsfi();
extern "C" void getDistTableIdx__8daNpcF_cFii();
extern "C" void daNpcF_chkEvtBit__FUl();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
extern "C" void cLib_distanceAngleS__Fss();
extern "C" void __ct__17Z2CreatureCitizenFv();
extern "C" void __dt__17Z2CreatureCitizenFv();
extern "C" void init__17Z2CreatureCitizenFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
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
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80A25B0C-80A25B0C 000254 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A25B0C = "kasi_kyu";
SECTION_DEAD static char const* const stringBase_80A25B15 = "girls";
SECTION_DEAD static char const* const stringBase_80A25B1B = "Wgeneral";
#pragma pop

/* 80A25B44-80A25C04 000020 00C0+00 1/1 0/0 0/0 .data            l_bckGetParamList */
SECTION_DATA static u8 l_bckGetParamList[192] = {
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1A,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1E,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
};

/* 80A25C04-80A25C10 0000E0 000C+00 0/0 0/0 0/0 .data            l_btpGetParamList */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_btpGetParamList[12] = {
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80A25C10-80A25C1C -00001 000C+00 5/6 0/0 0/0 .data            l_arcNames */
SECTION_DATA static void* l_arcNames[3] = {
    (void*)&d_a_npc_kasi_kyu__stringBase0,
    (void*)(((char*)&d_a_npc_kasi_kyu__stringBase0) + 0x9),
    (void*)(((char*)&d_a_npc_kasi_kyu__stringBase0) + 0xF),
};

/* 80A25C1C-80A25C20 0000F8 0004+00 1/2 0/0 0/0 .data            l_evtNames */
SECTION_DATA static u8 l_evtNames[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};

/* 80A25C20-80A25C24 -00001 0004+00 0/0 0/0 0/0 .data            l_myName */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_myName = (void*)&d_a_npc_kasi_kyu__stringBase0;
#pragma pop

/* 80A25C24-80A25C30 000100 000C+00 1/1 0/0 0/0 .data            mEvtSeqList__14daNpcKasiKyu_c */
SECTION_DATA u8 daNpcKasiKyu_c::mEvtSeqList[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80A25C30-80A25C3C -00001 000C+00 0/1 0/0 0/0 .data            @4365 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4365[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__14daNpcKasiKyu_cFi,
};
#pragma pop

/* 80A25C3C-80A25C48 -00001 000C+00 0/1 0/0 0/0 .data            @4366 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4366[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)chace__14daNpcKasiKyu_cFi,
};
#pragma pop

/* 80A25C48-80A25C54 -00001 000C+00 0/1 0/0 0/0 .data            @4367 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4367[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)turn_link__14daNpcKasiKyu_cFi,
};
#pragma pop

/* 80A25C54-80A25C60 -00001 000C+00 0/1 0/0 0/0 .data            @4368 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4368[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)turn_home__14daNpcKasiKyu_cFi,
};
#pragma pop

/* 80A25C60-80A25C6C -00001 000C+00 0/1 0/0 0/0 .data            @4369 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4369[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk_dummy__14daNpcKasiKyu_cFi,
};
#pragma pop

/* 80A25C6C-80A25C78 -00001 000C+00 0/1 0/0 0/0 .data            @4370 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4370[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)escape__14daNpcKasiKyu_cFi,
};
#pragma pop

/* 80A25C78-80A25C84 -00001 000C+00 0/1 0/0 0/0 .data            @4371 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4371[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)turn_center__14daNpcKasiKyu_cFi,
};
#pragma pop

/* 80A25C84-80A25C90 -00001 000C+00 0/1 0/0 0/0 .data            @4372 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4372[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait_dummy__14daNpcKasiKyu_cFi,
};
#pragma pop

/* 80A25C90-80A25C9C -00001 000C+00 0/1 0/0 0/0 .data            @4373 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4373[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cheer__14daNpcKasiKyu_cFi,
};
#pragma pop

/* 80A25C9C-80A25CA8 -00001 000C+00 0/1 0/0 0/0 .data            @4374 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4374[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)chace_st__14daNpcKasiKyu_cFi,
};
#pragma pop

/* 80A25CA8-80A25CB4 -00001 000C+00 0/1 0/0 0/0 .data            @4375 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4375[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)kya__14daNpcKasiKyu_cFi,
};
#pragma pop

/* 80A25CB4-80A25CC0 -00001 000C+00 0/1 0/0 0/0 .data            @4376 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4376[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)iyan__14daNpcKasiKyu_cFi,
};
#pragma pop

/* 80A25CC0-80A25CCC -00001 000C+00 0/1 0/0 0/0 .data            @4377 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4377[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)kya_stop__14daNpcKasiKyu_cFi,
};
#pragma pop

/* 80A25CCC-80A25CD8 -00001 000C+00 0/1 0/0 0/0 .data            @4378 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4378[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)iyan_look__14daNpcKasiKyu_cFi,
};
#pragma pop

/* 80A25CD8-80A25CE4 -00001 000C+00 0/1 0/0 0/0 .data            @4379 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4379[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait_dummy__14daNpcKasiKyu_cFi,
};
#pragma pop

/* 80A25CE4-80A25CF0 -00001 000C+00 0/1 0/0 0/0 .data            @4380 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4380[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)turn_hana__14daNpcKasiKyu_cFi,
};
#pragma pop

/* 80A25CF0-80A25CFC -00001 000C+00 0/1 0/0 0/0 .data            @4381 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4381[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)kya2__14daNpcKasiKyu_cFi,
};
#pragma pop

/* 80A25CFC-80A25D08 -00001 000C+00 0/1 0/0 0/0 .data            @4382 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4382[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)kya_stop__14daNpcKasiKyu_cFi,
};
#pragma pop

/* 80A25D08-80A25D14 -00001 000C+00 0/1 0/0 0/0 .data            @4383 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4383[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)fear__14daNpcKasiKyu_cFi,
};
#pragma pop

/* 80A25D14-80A25E04 0001F0 00F0+00 0/1 0/0 0/0 .data            sSygnalAct$4364 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 sSygnalAct[240] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80A25E04-80A25E10 -00001 000C+00 1/1 0/0 0/0 .data            @4488 */
SECTION_DATA static void* lit_4488[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__14daNpcKasiKyu_cFi,
};

/* 80A25E10-80A25E1C -00001 000C+00 0/1 0/0 0/0 .data            @4777 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4777[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)chace__14daNpcKasiKyu_cFi,
};
#pragma pop

/* 80A25E1C-80A25E28 -00001 000C+00 0/1 0/0 0/0 .data            @4780 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4780[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)turn_link__14daNpcKasiKyu_cFi,
};
#pragma pop

/* 80A25E28-80A25E34 -00001 000C+00 0/0 0/0 0/0 .data            @4960 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4960[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__14daNpcKasiKyu_cFi,
};
#pragma pop

/* 80A25E34-80A25E40 -00001 000C+00 0/0 0/0 0/0 .data            @4968 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4968[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__14daNpcKasiKyu_cFi,
};
#pragma pop

/* 80A25E40-80A25E4C -00001 000C+00 0/0 0/0 0/0 .data            @5003 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5003[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__14daNpcKasiKyu_cFi,
};
#pragma pop

/* 80A25E4C-80A25E58 -00001 000C+00 1/1 0/0 0/0 .data            @5026 */
SECTION_DATA static void* lit_5026[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)chace__14daNpcKasiKyu_cFi,
};

/* 80A25E58-80A25E64 -00001 000C+00 1/1 0/0 0/0 .data            @5043 */
SECTION_DATA static void* lit_5043[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__14daNpcKasiKyu_cFi,
};

/* 80A25E64-80A25E70 -00001 000C+00 1/1 0/0 0/0 .data            @5046 */
SECTION_DATA static void* lit_5046[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)chace_st__14daNpcKasiKyu_cFi,
};

/* 80A25E70-80A25E7C -00001 000C+00 0/0 0/0 0/0 .data            @5106 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5106[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)chace__14daNpcKasiKyu_cFi,
};
#pragma pop

/* 80A25E7C-80A25E88 -00001 000C+00 1/1 0/0 0/0 .data            @5120 */
SECTION_DATA static void* lit_5120[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__14daNpcKasiKyu_cFi,
};

/* 80A25E88-80A25E94 -00001 000C+00 1/1 0/0 0/0 .data            @5134 */
SECTION_DATA static void* lit_5134[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait_dummy__14daNpcKasiKyu_cFi,
};

/* 80A25E94-80A25EA0 -00001 000C+00 1/1 0/0 0/0 .data            @5148 */
SECTION_DATA static void* lit_5148[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait_dummy__14daNpcKasiKyu_cFi,
};

/* 80A25EA0-80A25EAC -00001 000C+00 1/1 0/0 0/0 .data            @5201 */
SECTION_DATA static void* lit_5201[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__14daNpcKasiKyu_cFi,
};

/* 80A25EAC-80A25EB8 -00001 000C+00 1/1 0/0 0/0 .data            @5209 */
SECTION_DATA static void* lit_5209[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait_dummy__14daNpcKasiKyu_cFi,
};

/* 80A25EB8-80A25EC4 -00001 000C+00 1/1 0/0 0/0 .data            @5237 */
SECTION_DATA static void* lit_5237[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait_dummy__14daNpcKasiKyu_cFi,
};

/* 80A25EC4-80A25EE4 -00001 0020+00 1/0 0/0 0/0 .data            daNpcKasiKyu_MethodTable */
static actor_method_class daNpcKasiKyu_MethodTable = {
    (process_method_func)daNpcKasiKyu_Create__FPv,
    (process_method_func)daNpcKasiKyu_Delete__FPv,
    (process_method_func)daNpcKasiKyu_Execute__FPv,
    (process_method_func)daNpcKasiKyu_IsDelete__FPv,
    (process_method_func)daNpcKasiKyu_Draw__FPv,
};

/* 80A25EE4-80A25F14 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_KASIKYU */
extern actor_process_profile_definition g_profile_NPC_KASIKYU = {
  fpcLy_CURRENT_e,           // mLayerID
  7,                         // mListID
  fpcPi_CURRENT_e,           // mListPrio
  PROC_NPC_KASIKYU,          // mProcName
  &g_fpcLf_Method.base,     // sub_method
  sizeof(daNpcKasiKyu_c),    // mSize
  0,                         // mSizeOther
  0,                         // mParameters
  &g_fopAc_Method.base,      // sub_method
  421,                       // mPriority
  &daNpcKasiKyu_MethodTable, // sub_method
  0x00040108,                // mStatus
  fopAc_NPC_e,               // mActorType
  fopAc_CULLBOX_CUSTOM_e,    // cullType
};

/* 80A25F14-80A25F5C 0003F0 0048+00 2/2 0/0 0/0 .data            __vt__14daNpcKasiKyu_c */
SECTION_DATA extern void* __vt__14daNpcKasiKyu_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14daNpcKasiKyu_cFv,
    (void*)setParam__14daNpcKasiKyu_cFv,
    (void*)main__14daNpcKasiKyu_cFv,
    (void*)ctrlBtk__8daNpcF_cFv,
    (void*)adjustShapeAngle__14daNpcKasiKyu_cFv,
    (void*)setMtx__8daNpcF_cFv,
    (void*)setMtx2__8daNpcF_cFv,
    (void*)setAttnPos__14daNpcKasiKyu_cFv,
    (void*)setCollisions__8daNpcF_cFv,
    (void*)setExpressionAnm__8daNpcF_cFib,
    (void*)setExpressionBtp__8daNpcF_cFi,
    (void*)setExpression__8daNpcF_cFif,
    (void*)setMotionAnm__14daNpcKasiKyu_cFif,
    (void*)setMotion__14daNpcKasiKyu_cFifi,
    (void*)drawDbgInfo__14daNpcKasiKyu_cFv,
    (void*)drawOtherMdls__8daNpcF_cFv,
};

/* 80A25F5C-80A25F68 000438 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80A25F68-80A25F8C 000444 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A2589C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A25894,
};

/* 80A25F8C-80A25F98 000468 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80A25F98-80A25FA4 000474 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80A25FA4-80A25FB0 000480 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80A25FB0-80A25FBC 00048C 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcF_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcF_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcF_ActorMngr_cFv,
};

/* 80A25FBC-80A25FC8 000498 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80A25FC8-80A25FD4 0004A4 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80A25FD4-80A25FE0 0004B0 000C+00 4/4 0/0 0/0 .data            __vt__16daNpcF_SPCurve_c */
SECTION_DATA extern void* __vt__16daNpcF_SPCurve_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16daNpcF_SPCurve_cFv,
};

/* 80A25FE0-80A25FEC 0004BC 000C+00 3/3 0/0 0/0 .data            __vt__13daNpcF_Path_c */
SECTION_DATA extern void* __vt__13daNpcF_Path_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcF_Path_cFv,
};

/* 80A25FEC-80A25FF8 0004C8 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcF_Lookat_c */
SECTION_DATA extern void* __vt__15daNpcF_Lookat_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcF_Lookat_cFv,
};

/* 80A219CC-80A21B84 0000EC 01B8+00 1/1 0/0 0/0 .text            __ct__14daNpcKasiKyu_cFv */
daNpcKasiKyu_c::daNpcKasiKyu_c() {
    // NONMATCHING
}

/* 80A21B84-80A21BCC 0002A4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80A21BCC-80A21C14 0002EC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80A21C14-80A21E24 000334 0210+00 1/0 0/0 0/0 .text            __dt__14daNpcKasiKyu_cFv */
daNpcKasiKyu_c::~daNpcKasiKyu_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A258B8-80A2592C 000000 0074+00 18/18 0/0 0/0 .rodata          m__20daNpcKasiKyu_Param_c */
SECTION_RODATA u8 const daNpcKasiKyu_Param_c::m[116] = {
    0x42, 0x5C, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xFA, 0x00,
    0x00, 0x43, 0x58, 0x00, 0x00, 0x43, 0x0C, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xF0,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1,
    0x20, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00,
    0xC2, 0x34, 0x00, 0x00, 0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x02, 0x00,
    0x06, 0x00, 0x03, 0x00, 0x06, 0x42, 0x70, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00, 0x43, 0x96,
    0x00, 0x00, 0xC3, 0x96, 0x00, 0x00, 0x00, 0x3C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x41, 0x80, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A258B8, &daNpcKasiKyu_Param_c::m);

/* 80A2592C-80A25930 000074 0004+00 0/1 0/0 0/0 .rodata          @4197 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4197 = -60.0f;
COMPILER_STRIP_GATE(0x80A2592C, &lit_4197);
#pragma pop

/* 80A25930-80A25934 000078 0004+00 0/1 0/0 0/0 .rodata          @4198 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4198 = -10.0f;
COMPILER_STRIP_GATE(0x80A25930, &lit_4198);
#pragma pop

/* 80A25934-80A25938 00007C 0004+00 0/1 0/0 0/0 .rodata          @4199 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4199 = 60.0f;
COMPILER_STRIP_GATE(0x80A25934, &lit_4199);
#pragma pop

/* 80A25938-80A2593C 000080 0004+00 0/1 0/0 0/0 .rodata          @4200 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4200 = 220.0f;
COMPILER_STRIP_GATE(0x80A25938, &lit_4200);
#pragma pop

/* 80A21E24-80A220A0 000544 027C+00 1/1 0/0 0/0 .text            Create__14daNpcKasiKyu_cFv */
void daNpcKasiKyu_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A2593C-80A25940 000084 0004+00 4/8 0/0 0/0 .rodata          @4247 */
SECTION_RODATA static f32 const lit_4247 = 1.0f;
COMPILER_STRIP_GATE(0x80A2593C, &lit_4247);

/* 80A25940-80A25944 000088 0004+00 0/1 0/0 0/0 .rodata          @4248 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4248 = 0x3F5CF29A;
COMPILER_STRIP_GATE(0x80A25940, &lit_4248);
#pragma pop

/* 80A25944-80A25948 00008C 0004+00 7/16 0/0 0/0 .rodata          @4249 */
SECTION_RODATA static f32 const lit_4249 = -1.0f;
COMPILER_STRIP_GATE(0x80A25944, &lit_4249);

/* 80A220A0-80A22224 0007C0 0184+00 1/1 0/0 0/0 .text            CreateHeap__14daNpcKasiKyu_cFv */
void daNpcKasiKyu_c::CreateHeap() {
    // NONMATCHING
}

/* 80A22224-80A22258 000944 0034+00 1/1 0/0 0/0 .text            Delete__14daNpcKasiKyu_cFv */
void daNpcKasiKyu_c::Delete() {
    // NONMATCHING
}

/* 80A22258-80A22284 000978 002C+00 2/2 0/0 0/0 .text            Execute__14daNpcKasiKyu_cFv */
void daNpcKasiKyu_c::Execute() {
    // NONMATCHING
}

/* 80A22284-80A222D0 0009A4 004C+00 1/1 0/0 0/0 .text            Draw__14daNpcKasiKyu_cFv */
void daNpcKasiKyu_c::Draw() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A25948-80A25954 000090 000C+00 1/1 0/0 0/0 .rodata          @4270 */
SECTION_RODATA static u8 const lit_4270[12] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
};
COMPILER_STRIP_GATE(0x80A25948, &lit_4270);

/* 80A222D0-80A2245C 0009F0 018C+00 1/1 0/0 0/0 .text
 * ctrlJoint__14daNpcKasiKyu_cFP8J3DJointP8J3DModel             */
void daNpcKasiKyu_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 80A2245C-80A2247C 000B7C 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__14daNpcKasiKyu_cFP10fopAc_ac_c           */
void daNpcKasiKyu_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80A2247C-80A224C8 000B9C 004C+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__14daNpcKasiKyu_cFP8J3DJointi              */
void daNpcKasiKyu_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80A224C8-80A22534 000BE8 006C+00 1/0 0/0 0/0 .text            setParam__14daNpcKasiKyu_cFv */
void daNpcKasiKyu_c::setParam() {
    // NONMATCHING
}

/* 80A26050-80A2605C 000048 000C+00 1/1 0/0 0/0 .bss             @3807 */
static u8 lit_3807[12];

/* 80A2605C-80A26060 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80A26060-80A26064 000058 0004+00 1/2 0/0 0/0 .bss             mTargetTag__14daNpcKasiKyu_c */
u8 daNpcKasiKyu_c::mTargetTag[4];

/* 80A26064-80A26068 00005C 0004+00 0/1 0/0 0/0 .bss             mTargetTagDist__14daNpcKasiKyu_c */
#pragma push
#pragma force_active on
u8 daNpcKasiKyu_c::mTargetTagDist[4];
#pragma pop

/* 80A26068-80A2606C -00001 0004+00 2/3 0/0 0/0 .bss             None */
/* 80A26068 0002+00 data_80A26068 mWolfAngle__14daNpcKasiKyu_c */
/* 80A2606A 0002+00 data_80A2606A None */
static u8 struct_80A26068[4];

/* 80A22534-80A227DC 000C54 02A8+00 1/0 0/0 0/0 .text            main__14daNpcKasiKyu_cFv */
void daNpcKasiKyu_c::main() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A25954-80A25958 00009C 0004+00 0/1 0/0 0/0 .rodata          @4447 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4447 = 10.0f;
COMPILER_STRIP_GATE(0x80A25954, &lit_4447);
#pragma pop

/* 80A25958-80A2595C 0000A0 0004+00 1/3 0/0 0/0 .rodata          @4448 */
SECTION_RODATA static f32 const lit_4448 = 15.0f;
COMPILER_STRIP_GATE(0x80A25958, &lit_4448);

/* 80A2595C-80A25960 0000A4 0004+00 12/22 0/0 0/0 .rodata          @4449 */
SECTION_RODATA static u8 const lit_4449[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A2595C, &lit_4449);

/* 80A227DC-80A22984 000EFC 01A8+00 1/0 0/0 0/0 .text            setAttnPos__14daNpcKasiKyu_cFv */
void daNpcKasiKyu_c::setAttnPos() {
    // NONMATCHING
}

/* 80A22984-80A22A54 0010A4 00D0+00 1/0 0/0 0/0 .text            setMotionAnm__14daNpcKasiKyu_cFif
 */
bool daNpcKasiKyu_c::setMotionAnm(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 80A22A54-80A22A9C 001174 0048+00 1/0 0/0 0/0 .text            setMotion__14daNpcKasiKyu_cFifi */
void daNpcKasiKyu_c::setMotion(int param_0, f32 param_1, int param_2) {
    // NONMATCHING
}

/* 80A22A9C-80A22AA4 0011BC 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__14daNpcKasiKyu_cFv */
bool daNpcKasiKyu_c::drawDbgInfo() {
    return false;
}

/* 80A22AA4-80A22CD8 0011C4 0234+00 1/1 0/0 0/0 .text            reset__14daNpcKasiKyu_cFv */
void daNpcKasiKyu_c::reset() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A25960-80A2596C 0000A8 000C+00 0/1 0/0 0/0 .rodata          @4534 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4534[12] = {
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A25960, &lit_4534);
#pragma pop

/* 80A2596C-80A25970 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4535 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4535[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A2596C, &lit_4535);
#pragma pop

/* 80A25970-80A2597C 0000B8 000C+00 0/1 0/0 0/0 .rodata          @4536 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4536[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A25970, &lit_4536);
#pragma pop

/* 80A2597C-80A25980 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4537 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4537[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A2597C, &lit_4537);
#pragma pop

/* 80A25980-80A2598C 0000C8 000C+00 0/1 0/0 0/0 .rodata          @4538 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4538[12] = {
    0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A25980, &lit_4538);
#pragma pop

/* 80A2598C-80A25990 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4539 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4539[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A2598C, &lit_4539);
#pragma pop

/* 80A25990-80A2599C 0000D8 000C+00 0/1 0/0 0/0 .rodata          @4540 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4540[12] = {
    0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A25990, &lit_4540);
#pragma pop

/* 80A2599C-80A259A0 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4541 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4541[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A2599C, &lit_4541);
#pragma pop

/* 80A259A0-80A259AC 0000E8 000C+00 0/1 0/0 0/0 .rodata          @4542 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4542[12] = {
    0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A259A0, &lit_4542);
#pragma pop

/* 80A259AC-80A259B0 0000F4 0004+00 0/1 0/0 0/0 .rodata          @4543 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4543[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A259AC, &lit_4543);
#pragma pop

/* 80A259B0-80A259BC 0000F8 000C+00 0/1 0/0 0/0 .rodata          @4544 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4544[12] = {
    0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A259B0, &lit_4544);
#pragma pop

/* 80A259BC-80A259C0 000104 0004+00 0/1 0/0 0/0 .rodata          @4545 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4545[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A259BC, &lit_4545);
#pragma pop

/* 80A259C0-80A259CC 000108 000C+00 0/1 0/0 0/0 .rodata          @4546 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4546[12] = {
    0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A259C0, &lit_4546);
#pragma pop

/* 80A259CC-80A259D0 000114 0004+00 0/1 0/0 0/0 .rodata          @4547 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4547[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A259CC, &lit_4547);
#pragma pop

/* 80A259D0-80A259DC 000118 000C+00 0/1 0/0 0/0 .rodata          @4548 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4548[12] = {
    0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A259D0, &lit_4548);
#pragma pop

/* 80A259DC-80A259E0 000124 0004+00 0/1 0/0 0/0 .rodata          @4549 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4549[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A259DC, &lit_4549);
#pragma pop

/* 80A259E0-80A259EC 000128 000C+00 0/1 0/0 0/0 .rodata          @4550 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4550[12] = {
    0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A259E0, &lit_4550);
#pragma pop

/* 80A259EC-80A259F0 000134 0004+00 0/1 0/0 0/0 .rodata          @4551 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4551[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A259EC, &lit_4551);
#pragma pop

/* 80A259F0-80A259FC 000138 000C+00 0/1 0/0 0/0 .rodata          @4552 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4552[12] = {
    0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A259F0, &lit_4552);
#pragma pop

/* 80A259FC-80A25A00 000144 0004+00 0/1 0/0 0/0 .rodata          @4553 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4553[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A259FC, &lit_4553);
#pragma pop

/* 80A25A00-80A25A0C 000148 000C+00 0/1 0/0 0/0 .rodata          @4554 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4554[12] = {
    0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A25A00, &lit_4554);
#pragma pop

/* 80A25A0C-80A25A10 000154 0004+00 0/1 0/0 0/0 .rodata          @4555 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4555[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A25A0C, &lit_4555);
#pragma pop

/* 80A25A10-80A25A1C 000158 000C+00 0/1 0/0 0/0 .rodata          @4556 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4556[12] = {
    0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A25A10, &lit_4556);
#pragma pop

/* 80A25A1C-80A25A28 000164 000C+00 0/1 0/0 0/0 .rodata          @4557 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4557[12] = {
    0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A25A1C, &lit_4557);
#pragma pop

/* 80A25A28-80A25A34 000170 000C+00 0/1 0/0 0/0 .rodata          @4558 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4558[12] = {
    0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A25A28, &lit_4558);
#pragma pop

/* 80A25A34-80A25A40 00017C 000C+00 0/1 0/0 0/0 .rodata          @4559 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4559[12] = {
    0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A25A34, &lit_4559);
#pragma pop

/* 80A25A40-80A25A4C 000188 000C+00 0/1 0/0 0/0 .rodata          @4560 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4560[12] = {
    0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A25A40, &lit_4560);
#pragma pop

/* 80A25A4C-80A25A58 000194 000C+00 0/1 0/0 0/0 .rodata          @4561 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4561[12] = {
    0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A25A4C, &lit_4561);
#pragma pop

/* 80A25A58-80A25A70 0001A0 0018+00 0/0 0/0 0/0 .rodata          @4562 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4562[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A25A58, &lit_4562);
#pragma pop

/* 80A25A70-80A25A7C 0001B8 000C+00 0/1 0/0 0/0 .rodata          @4563 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4563[12] = {
    0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A25A70, &lit_4563);
#pragma pop

/* 80A25A7C-80A25A88 0001C4 000C+00 0/1 0/0 0/0 .rodata          @4564 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4564[12] = {
    0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A25A7C, &lit_4564);
#pragma pop

/* 80A25A88-80A25A90 0001D0 0008+00 0/1 0/0 0/0 .rodata          @4565 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4565[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A25A88, &lit_4565);
#pragma pop

/* 80A22CD8-80A2310C 0013F8 0434+00 1/1 0/0 0/0 .text            playMotion__14daNpcKasiKyu_cFv */
void daNpcKasiKyu_c::playMotion() {
    // NONMATCHING
}

/* 80A2310C-80A23284 00182C 0178+00 1/1 0/0 0/0 .text
 * playMotionAnmLoop__14daNpcKasiKyu_cFPPPQ28daNpcF_c18daNpcF_anmPlayData */
void daNpcKasiKyu_c::playMotionAnmLoop(daNpcF_c::daNpcF_anmPlayData*** param_0) {
    // NONMATCHING
}

/* 80A23284-80A2332C 0019A4 00A8+00 10/10 0/0 0/0 .text
 * setAction__14daNpcKasiKyu_cFM14daNpcKasiKyu_cFPCvPvi_i       */
void daNpcKasiKyu_c::setAction(int (daNpcKasiKyu_c::*param_0)(int)) {
    // NONMATCHING
}

/* 80A2332C-80A23350 001A4C 0024+00 8/8 0/0 0/0 .text            setLookMode__14daNpcKasiKyu_cFi */
void daNpcKasiKyu_c::setLookMode(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A25A90-80A25AC4 0001D8 0034+00 0/0 0/0 0/0 .rodata          @4566 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4566[52] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A25A90, &lit_4566);
#pragma pop

/* 80A25AC4-80A25AD0 00020C 000C+00 0/1 0/0 0/0 .rodata          @4647 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4647[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A25AC4, &lit_4647);
#pragma pop

/* 80A25AD0-80A25AD4 000218 0004+00 0/1 0/0 0/0 .rodata          @4695 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4695 = -80.0f;
COMPILER_STRIP_GATE(0x80A25AD0, &lit_4695);
#pragma pop

/* 80A25AD4-80A25AD8 00021C 0004+00 0/1 0/0 0/0 .rodata          @4696 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4696 = 80.0f;
COMPILER_STRIP_GATE(0x80A25AD4, &lit_4696);
#pragma pop

/* 80A25AD8-80A25ADC 000220 0004+00 0/1 0/0 0/0 .rodata          @4697 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4697 = 40.0f;
COMPILER_STRIP_GATE(0x80A25AD8, &lit_4697);
#pragma pop

/* 80A23350-80A23530 001A70 01E0+00 1/1 0/0 0/0 .text            lookat__14daNpcKasiKyu_cFv */
void daNpcKasiKyu_c::lookat() {
    // NONMATCHING
}

/* 80A23530-80A23624 001C50 00F4+00 1/1 0/0 0/0 .text            step__14daNpcKasiKyu_cFsi */
void daNpcKasiKyu_c::step(s16 param_0, int param_1) {
    // NONMATCHING
}

/* 80A23624-80A23708 001D44 00E4+00 1/1 0/0 0/0 .text            chkFindPlayer__14daNpcKasiKyu_cFv
 */
void daNpcKasiKyu_c::chkFindPlayer() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A25ADC-80A25AE0 000224 0004+00 0/1 0/0 0/0 .rodata          @4830 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4830 = 450.0f;
COMPILER_STRIP_GATE(0x80A25ADC, &lit_4830);
#pragma pop

/* 80A25AE0-80A25AE8 000228 0008+00 0/1 0/0 0/0 .rodata          @4831 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4831[8] = {
    0x40, 0x7F, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A25AE0, &lit_4831);
#pragma pop

/* 80A25AE8-80A25AF0 000230 0008+00 0/1 0/0 0/0 .rodata          @4832 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4832[8] = {
    0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A25AE8, &lit_4832);
#pragma pop

/* 80A23708-80A23AB4 001E28 03AC+00 8/0 0/0 0/0 .text            wait__14daNpcKasiKyu_cFi */
void daNpcKasiKyu_c::wait(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A25AF0-80A25AF4 000238 0004+00 0/1 0/0 0/0 .rodata          @4879 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4879 = 1.5f;
COMPILER_STRIP_GATE(0x80A25AF0, &lit_4879);
#pragma pop

/* 80A23AB4-80A23C90 0021D4 01DC+00 1/0 0/0 0/0 .text            fear__14daNpcKasiKyu_cFi */
void daNpcKasiKyu_c::fear(int param_0) {
    // NONMATCHING
}

/* 80A23C90-80A23CF8 0023B0 0068+00 1/1 0/0 0/0 .text            srchWolfTag__14daNpcKasiKyu_cFv */
void daNpcKasiKyu_c::srchWolfTag() {
    // NONMATCHING
}

/* 80A23CF8-80A23DC8 002418 00D0+00 1/1 0/0 0/0 .text _srch_escape_tag__14daNpcKasiKyu_cFPvPv */
void daNpcKasiKyu_c::_srch_escape_tag(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80A23DC8-80A23EFC 0024E8 0134+00 1/1 0/0 0/0 .text getWolfPathNearIdx__14daNpcKasiKyu_cFv */
void daNpcKasiKyu_c::getWolfPathNearIdx() {
    // NONMATCHING
}

/* 80A23EFC-80A23FA0 00261C 00A4+00 2/0 0/0 0/0 .text            chace_st__14daNpcKasiKyu_cFi */
void daNpcKasiKyu_c::chace_st(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A25AF4-80A25AF8 00023C 0004+00 0/1 0/0 0/0 .rodata          @5067 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5067 = 14.0f;
COMPILER_STRIP_GATE(0x80A25AF4, &lit_5067);
#pragma pop

/* 80A25AF8-80A25AFC 000240 0004+00 0/1 0/0 0/0 .rodata          @5068 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5068 = 400.0f;
COMPILER_STRIP_GATE(0x80A25AF8, &lit_5068);
#pragma pop

/* 80A23FA0-80A24110 0026C0 0170+00 4/0 0/0 0/0 .text            chace__14daNpcKasiKyu_cFi */
void daNpcKasiKyu_c::chace(int param_0) {
    // NONMATCHING
}

/* 80A24110-80A241CC 002830 00BC+00 1/1 0/0 0/0 .text            getChacePos__14daNpcKasiKyu_cFv */
void daNpcKasiKyu_c::getChacePos() {
    // NONMATCHING
}

/* 80A241CC-80A2428C 0028EC 00C0+00 2/0 0/0 0/0 .text            turn_link__14daNpcKasiKyu_cFi */
void daNpcKasiKyu_c::turn_link(int param_0) {
    // NONMATCHING
}

/* 80A2428C-80A24370 0029AC 00E4+00 1/0 0/0 0/0 .text            turn_home__14daNpcKasiKyu_cFi */
void daNpcKasiKyu_c::turn_home(int param_0) {
    // NONMATCHING
}

/* 80A24370-80A24440 002A90 00D0+00 1/0 0/0 0/0 .text            turn_center__14daNpcKasiKyu_cFi */
void daNpcKasiKyu_c::turn_center(int param_0) {
    // NONMATCHING
}

/* 80A24440-80A244B8 002B60 0078+00 1/0 0/0 0/0 .text            talk_dummy__14daNpcKasiKyu_cFi */
void daNpcKasiKyu_c::talk_dummy(int param_0) {
    // NONMATCHING
}

/* 80A244B8-80A24590 002BD8 00D8+00 1/0 0/0 0/0 .text            kya__14daNpcKasiKyu_cFi */
void daNpcKasiKyu_c::kya(int param_0) {
    // NONMATCHING
}

/* 80A24590-80A24628 002CB0 0098+00 1/0 0/0 0/0 .text            kya2__14daNpcKasiKyu_cFi */
void daNpcKasiKyu_c::kya2(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A25AFC-80A25B00 000244 0004+00 1/1 0/0 0/0 .rodata          @5219 */
SECTION_RODATA static f32 const lit_5219 = 19.0f;
COMPILER_STRIP_GATE(0x80A25AFC, &lit_5219);

/* 80A24628-80A246FC 002D48 00D4+00 2/0 0/0 0/0 .text            kya_stop__14daNpcKasiKyu_cFi */
void daNpcKasiKyu_c::kya_stop(int param_0) {
    // NONMATCHING
}

/* 80A246FC-80A24774 002E1C 0078+00 1/0 0/0 0/0 .text            iyan__14daNpcKasiKyu_cFi */
void daNpcKasiKyu_c::iyan(int param_0) {
    // NONMATCHING
}

/* 80A24774-80A2484C 002E94 00D8+00 1/0 0/0 0/0 .text            iyan_look__14daNpcKasiKyu_cFi */
void daNpcKasiKyu_c::iyan_look(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A25B00-80A25B04 000248 0004+00 0/1 0/0 0/0 .rodata          @5256 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5256 = -3200.0f;
COMPILER_STRIP_GATE(0x80A25B00, &lit_5256);
#pragma pop

/* 80A25B04-80A25B08 00024C 0004+00 0/1 0/0 0/0 .rodata          @5257 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5257 = 1500.0f;
COMPILER_STRIP_GATE(0x80A25B04, &lit_5257);
#pragma pop

/* 80A2484C-80A2493C 002F6C 00F0+00 1/0 0/0 0/0 .text            turn_hana__14daNpcKasiKyu_cFi */
void daNpcKasiKyu_c::turn_hana(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A25B08-80A25B0C 000250 0004+00 0/1 0/0 0/0 .rodata          @5281 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5281 = 1.75f;
COMPILER_STRIP_GATE(0x80A25B08, &lit_5281);
#pragma pop

/* 80A2493C-80A24A54 00305C 0118+00 1/0 0/0 0/0 .text            escape__14daNpcKasiKyu_cFi */
void daNpcKasiKyu_c::escape(int param_0) {
    // NONMATCHING
}

/* 80A24A54-80A24AD8 003174 0084+00 6/0 0/0 0/0 .text            wait_dummy__14daNpcKasiKyu_cFi */
void daNpcKasiKyu_c::wait_dummy(int param_0) {
    // NONMATCHING
}

/* 80A24AD8-80A24CC4 0031F8 01EC+00 1/0 0/0 0/0 .text            cheer__14daNpcKasiKyu_cFi */
void daNpcKasiKyu_c::cheer(int param_0) {
    // NONMATCHING
}

/* 80A24CC4-80A24D10 0033E4 004C+00 3/3 0/0 0/0 .text            _turn_to_link__14daNpcKasiKyu_cFs
 */
void daNpcKasiKyu_c::_turn_to_link(s16 param_0) {
    // NONMATCHING
}

/* 80A24D10-80A24D6C 003430 005C+00 6/6 0/0 0/0 .text _turn_pos__14daNpcKasiKyu_cFRC4cXyzs */
void daNpcKasiKyu_c::_turn_pos(cXyz const& param_0, s16 param_1) {
    // NONMATCHING
}

/* 80A24D6C-80A24E44 00348C 00D8+00 2/2 0/0 0/0 .text
 * actor_front_check__14daNpcKasiKyu_cFP10fopAc_ac_c            */
void daNpcKasiKyu_c::actor_front_check(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80A24E44-80A24EB0 003564 006C+00 1/1 0/0 0/0 .text _getOffset__14daNpcKasiKyu_cFRC4cXyzR4cXyz
 */
void daNpcKasiKyu_c::_getOffset(cXyz const& param_0, cXyz& param_1) {
    // NONMATCHING
}

/* 80A24EB0-80A24ED0 0035D0 0020+00 1/0 0/0 0/0 .text            daNpcKasiKyu_Create__FPv */
static void daNpcKasiKyu_Create(void* param_0) {
    // NONMATCHING
}

/* 80A24ED0-80A24EF0 0035F0 0020+00 1/0 0/0 0/0 .text            daNpcKasiKyu_Delete__FPv */
static void daNpcKasiKyu_Delete(void* param_0) {
    // NONMATCHING
}

/* 80A24EF0-80A24F10 003610 0020+00 1/0 0/0 0/0 .text            daNpcKasiKyu_Execute__FPv */
static void daNpcKasiKyu_Execute(void* param_0) {
    // NONMATCHING
}

/* 80A24F10-80A24F30 003630 0020+00 1/0 0/0 0/0 .text            daNpcKasiKyu_Draw__FPv */
static void daNpcKasiKyu_Draw(void* param_0) {
    // NONMATCHING
}

/* 80A24F30-80A24F38 003650 0008+00 1/0 0/0 0/0 .text            daNpcKasiKyu_IsDelete__FPv */
static bool daNpcKasiKyu_IsDelete(void* param_0) {
    return true;
}

/* 80A24F38-80A24F98 003658 0060+00 1/0 0/0 0/0 .text            __dt__13daNpcF_Path_cFv */
// daNpcF_Path_c::~daNpcF_Path_c() {
extern "C" void __dt__13daNpcF_Path_cFv() {
    // NONMATCHING
}

/* 80A24F98-80A24FE0 0036B8 0048+00 1/0 0/0 0/0 .text            __dt__16daNpcF_SPCurve_cFv */
// daNpcF_SPCurve_c::~daNpcF_SPCurve_c() {
extern "C" void __dt__16daNpcF_SPCurve_cFv() {
    // NONMATCHING
}

/* 80A24FE0-80A25028 003700 0048+00 5/4 0/0 0/0 .text            __dt__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::~daNpcF_ActorMngr_c() {
extern "C" void __dt__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80A25028-80A25064 003748 003C+00 2/2 0/0 0/0 .text            __ct__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::daNpcF_ActorMngr_c() {
extern "C" void __ct__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80A25064-80A25134 003784 00D0+00 1/0 0/0 0/0 .text            __dt__15daNpcF_Lookat_cFv */
// daNpcF_Lookat_c::~daNpcF_Lookat_c() {
extern "C" void __dt__15daNpcF_Lookat_cFv() {
    // NONMATCHING
}

/* 80A25134-80A25170 003854 003C+00 5/5 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80A25170-80A25174 003890 0004+00 2/2 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80A25174-80A251B0 003894 003C+00 5/5 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80A251B0-80A251B4 0038D0 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80A251B4-80A25400 0038D4 024C+00 1/1 0/0 0/0 .text            __dt__8daNpcF_cFv */
// daNpcF_c::~daNpcF_c() {
extern "C" void __dt__8daNpcF_cFv() {
    // NONMATCHING
}

/* 80A25400-80A255F0 003B20 01F0+00 1/1 0/0 0/0 .text            __ct__8daNpcF_cFv */
// daNpcF_c::daNpcF_c() {
extern "C" void __ct__8daNpcF_cFv() {
    // NONMATCHING
}

/* 80A255F0-80A25660 003D10 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80A25660-80A256BC 003D80 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80A256BC-80A2572C 003DDC 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80A2572C-80A25774 003E4C 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80A25774-80A2577C 003E94 0008+00 1/0 0/0 0/0 .text            ctrlBtk__8daNpcF_cFv */
// bool daNpcF_c::ctrlBtk() {
extern "C" bool ctrlBtk__8daNpcF_cFv() {
    return false;
}

/* 80A2577C-80A25780 003E9C 0004+00 1/0 0/0 0/0 .text            setCollisions__8daNpcF_cFv */
// void daNpcF_c::setCollisions() {
extern "C" void setCollisions__8daNpcF_cFv() {
    /* empty function */
}

/* 80A25780-80A25788 003EA0 0008+00 1/0 0/0 0/0 .text            setExpressionAnm__8daNpcF_cFib */
// bool daNpcF_c::setExpressionAnm(int param_0, bool param_1) {
extern "C" bool setExpressionAnm__8daNpcF_cFib() {
    return true;
}

/* 80A25788-80A25790 003EA8 0008+00 1/0 0/0 0/0 .text            setExpressionBtp__8daNpcF_cFi */
// bool daNpcF_c::setExpressionBtp(int param_0) {
extern "C" bool setExpressionBtp__8daNpcF_cFi() {
    return true;
}

/* 80A25790-80A25794 003EB0 0004+00 1/0 0/0 0/0 .text            setExpression__8daNpcF_cFif */
// void daNpcF_c::setExpression(int param_0, f32 param_1) {
extern "C" void setExpression__8daNpcF_cFif() {
    /* empty function */
}

/* 80A25794-80A25798 003EB4 0004+00 1/0 0/0 0/0 .text            drawOtherMdls__8daNpcF_cFv */
// void daNpcF_c::drawOtherMdls() {
extern "C" void drawOtherMdls__8daNpcF_cFv() {
    /* empty function */
}

/* 80A25798-80A257E0 003EB8 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A25FF8-80A26004 0004D4 000C+00 2/2 0/0 0/0 .data            __vt__20daNpcKasiKyu_Param_c */
SECTION_DATA extern void* __vt__20daNpcKasiKyu_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__20daNpcKasiKyu_Param_cFv,
};

/* 80A257E0-80A25848 003F00 0068+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_kasi_kyu_cpp */
void __sinit_d_a_npc_kasi_kyu_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80A257E0, __sinit_d_a_npc_kasi_kyu_cpp);
#pragma pop

/* 80A25848-80A2584C 003F68 0004+00 1/0 0/0 0/0 .text adjustShapeAngle__14daNpcKasiKyu_cFv */
void daNpcKasiKyu_c::adjustShapeAngle() {
    /* empty function */
}

/* 80A2584C-80A25894 003F6C 0048+00 2/1 0/0 0/0 .text            __dt__20daNpcKasiKyu_Param_cFv */
daNpcKasiKyu_Param_c::~daNpcKasiKyu_Param_c() {
    // NONMATCHING
}

/* 80A25894-80A2589C 003FB4 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80A25894() {
    // NONMATCHING
}

/* 80A2589C-80A258A4 003FBC 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80A2589C() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A2606C-80A26070 000064 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80A2606C[4];
#pragma pop

/* 80A26070-80A26074 000068 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80A26070[4];
#pragma pop

/* 80A26074-80A26078 00006C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80A26074[4];
#pragma pop

/* 80A26078-80A2607C 000070 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80A26078[4];
#pragma pop

/* 80A2607C-80A26080 000074 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A2607C[4];
#pragma pop

/* 80A26080-80A26084 000078 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A26080[4];
#pragma pop

/* 80A26084-80A26088 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80A26084[4];
#pragma pop

/* 80A26088-80A2608C 000080 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80A26088[4];
#pragma pop

/* 80A2608C-80A26090 000084 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80A2608C[4];
#pragma pop

/* 80A26090-80A26094 000088 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80A26090[4];
#pragma pop

/* 80A26094-80A26098 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80A26094[4];
#pragma pop

/* 80A26098-80A2609C 000090 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80A26098[4];
#pragma pop

/* 80A2609C-80A260A0 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80A2609C[4];
#pragma pop

/* 80A260A0-80A260A4 000098 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A260A0[4];
#pragma pop

/* 80A260A4-80A260A8 00009C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80A260A4[4];
#pragma pop

/* 80A260A8-80A260AC 0000A0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80A260A8[4];
#pragma pop

/* 80A260AC-80A260B0 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80A260AC[4];
#pragma pop

/* 80A260B0-80A260B4 0000A8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80A260B0[4];
#pragma pop

/* 80A260B4-80A260B8 0000AC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80A260B4[4];
#pragma pop

/* 80A260B8-80A260BC 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80A260B8[4];
#pragma pop

/* 80A260BC-80A260C0 0000B4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80A260BC[4];
#pragma pop

/* 80A260C0-80A260C4 0000B8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A260C0[4];
#pragma pop

/* 80A260C4-80A260C8 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A260C4[4];
#pragma pop

/* 80A260C8-80A260CC 0000C0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A260C8[4];
#pragma pop

/* 80A260CC-80A260D0 0000C4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80A260CC[4];
#pragma pop

/* 80A25B0C-80A25B0C 000254 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
