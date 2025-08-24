/**
 * @file d_a_npc_kasi_mich.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_kasi_mich.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __ct__15daNpcKasiMich_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__15daNpcKasiMich_cFv();
extern "C" void Create__15daNpcKasiMich_cFv();
extern "C" void CreateHeap__15daNpcKasiMich_cFv();
extern "C" void Delete__15daNpcKasiMich_cFv();
extern "C" void Execute__15daNpcKasiMich_cFv();
extern "C" void Draw__15daNpcKasiMich_cFv();
extern "C" void ctrlJoint__15daNpcKasiMich_cFP8J3DJointP8J3DModel();
extern "C" void createHeapCallBack__15daNpcKasiMich_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__15daNpcKasiMich_cFP8J3DJointi();
extern "C" void setParam__15daNpcKasiMich_cFv();
extern "C" void main__15daNpcKasiMich_cFv();
extern "C" void setAttnPos__15daNpcKasiMich_cFv();
extern "C" void setMotionAnm__15daNpcKasiMich_cFif();
extern "C" void setMotion__15daNpcKasiMich_cFifi();
extern "C" bool drawDbgInfo__15daNpcKasiMich_cFv();
extern "C" void reset__15daNpcKasiMich_cFv();
extern "C" void playMotion__15daNpcKasiMich_cFv();
extern "C" void playMotionAnmLoop__15daNpcKasiMich_cFPPPQ28daNpcF_c18daNpcF_anmPlayData();
extern "C" void setAction__15daNpcKasiMich_cFM15daNpcKasiMich_cFPCvPvi_i();
extern "C" void setLookMode__15daNpcKasiMich_cFi();
extern "C" void lookat__15daNpcKasiMich_cFv();
extern "C" void step__15daNpcKasiMich_cFsi();
extern "C" void chkFindPlayer__15daNpcKasiMich_cFv();
extern "C" void wait__15daNpcKasiMich_cFi();
extern "C" void fear__15daNpcKasiMich_cFi();
extern "C" void srchWolfTag__15daNpcKasiMich_cFv();
extern "C" void _srch_escape_tag__15daNpcKasiMich_cFPvPv();
extern "C" void getWolfPathNearIdx__15daNpcKasiMich_cFv();
extern "C" void chace_st__15daNpcKasiMich_cFi();
extern "C" void chace__15daNpcKasiMich_cFi();
extern "C" void getChacePos__15daNpcKasiMich_cFv();
extern "C" void turn_link__15daNpcKasiMich_cFi();
extern "C" void turn_home__15daNpcKasiMich_cFi();
extern "C" void turn_center__15daNpcKasiMich_cFi();
extern "C" void talk_dummy__15daNpcKasiMich_cFi();
extern "C" void kya__15daNpcKasiMich_cFi();
extern "C" void kya2__15daNpcKasiMich_cFi();
extern "C" void kya_stop__15daNpcKasiMich_cFi();
extern "C" void iyan__15daNpcKasiMich_cFi();
extern "C" void escape__15daNpcKasiMich_cFi();
extern "C" void iyan_look__15daNpcKasiMich_cFi();
extern "C" void turn_hana__15daNpcKasiMich_cFi();
extern "C" void wait_dummy__15daNpcKasiMich_cFi();
extern "C" void cheer__15daNpcKasiMich_cFi();
extern "C" void _turn_to_link__15daNpcKasiMich_cFs();
extern "C" void _turn_pos__15daNpcKasiMich_cFRC4cXyzs();
extern "C" void actor_front_check__15daNpcKasiMich_cFP10fopAc_ac_c();
extern "C" void _getOffset__15daNpcKasiMich_cFRC4cXyzR4cXyz();
extern "C" static void daNpcKasiMich_Create__FPv();
extern "C" static void daNpcKasiMich_Delete__FPv();
extern "C" static void daNpcKasiMich_Execute__FPv();
extern "C" static void daNpcKasiMich_Draw__FPv();
extern "C" static bool daNpcKasiMich_IsDelete__FPv();
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
extern "C" void __sinit_d_a_npc_kasi_mich_cpp();
extern "C" void adjustShapeAngle__15daNpcKasiMich_cFv();
extern "C" void __dt__21daNpcKasiMich_Param_cFv();
extern "C" static void func_80A2A028();
extern "C" static void func_80A2A030();
extern "C" u8 const m__21daNpcKasiMich_Param_c[116];
extern "C" extern char const* const d_a_npc_kasi_mich__stringBase0;
extern "C" u8 mEvtSeqList__15daNpcKasiMich_c[12];
extern "C" u8 mTargetTag__15daNpcKasiMich_c[4];
extern "C" u8 mTargetTagDist__15daNpcKasiMich_c[4];

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
/* 80A2A298-80A2A298 00024C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A2A298 = "kasi_mich";
SECTION_DEAD static char const* const stringBase_80A2A2A2 = "girls";
SECTION_DEAD static char const* const stringBase_80A2A2A8 = "Wgeneral";
#pragma pop

/* 80A2A2D4-80A2A394 000020 00C0+00 1/1 0/0 0/0 .data            l_bckGetParamList */
SECTION_DATA static u8 l_bckGetParamList[192] = {
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1A,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1E,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
};

/* 80A2A394-80A2A3A0 0000E0 000C+00 0/0 0/0 0/0 .data            l_btpGetParamList */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_btpGetParamList[12] = {
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80A2A3A0-80A2A3AC -00001 000C+00 5/6 0/0 0/0 .data            l_arcNames */
SECTION_DATA static void* l_arcNames[3] = {
    (void*)&d_a_npc_kasi_mich__stringBase0,
    (void*)(((char*)&d_a_npc_kasi_mich__stringBase0) + 0xA),
    (void*)(((char*)&d_a_npc_kasi_mich__stringBase0) + 0x10),
};

/* 80A2A3AC-80A2A3B0 0000F8 0004+00 1/2 0/0 0/0 .data            l_evtNames */
SECTION_DATA static u8 l_evtNames[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};

/* 80A2A3B0-80A2A3B4 -00001 0004+00 0/0 0/0 0/0 .data            l_myName */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_myName = (void*)&d_a_npc_kasi_mich__stringBase0;
#pragma pop

/* 80A2A3B4-80A2A3C0 000100 000C+00 1/1 0/0 0/0 .data            mEvtSeqList__15daNpcKasiMich_c */
SECTION_DATA u8 daNpcKasiMich_c::mEvtSeqList[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80A2A3C0-80A2A3CC -00001 000C+00 0/1 0/0 0/0 .data            @4365 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4365[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daNpcKasiMich_cFi,
};
#pragma pop

/* 80A2A3CC-80A2A3D8 -00001 000C+00 0/1 0/0 0/0 .data            @4366 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4366[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)chace__15daNpcKasiMich_cFi,
};
#pragma pop

/* 80A2A3D8-80A2A3E4 -00001 000C+00 0/1 0/0 0/0 .data            @4367 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4367[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)turn_link__15daNpcKasiMich_cFi,
};
#pragma pop

/* 80A2A3E4-80A2A3F0 -00001 000C+00 0/1 0/0 0/0 .data            @4368 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4368[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)turn_home__15daNpcKasiMich_cFi,
};
#pragma pop

/* 80A2A3F0-80A2A3FC -00001 000C+00 0/1 0/0 0/0 .data            @4369 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4369[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk_dummy__15daNpcKasiMich_cFi,
};
#pragma pop

/* 80A2A3FC-80A2A408 -00001 000C+00 0/1 0/0 0/0 .data            @4370 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4370[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)escape__15daNpcKasiMich_cFi,
};
#pragma pop

/* 80A2A408-80A2A414 -00001 000C+00 0/1 0/0 0/0 .data            @4371 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4371[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)turn_center__15daNpcKasiMich_cFi,
};
#pragma pop

/* 80A2A414-80A2A420 -00001 000C+00 0/1 0/0 0/0 .data            @4372 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4372[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait_dummy__15daNpcKasiMich_cFi,
};
#pragma pop

/* 80A2A420-80A2A42C -00001 000C+00 0/1 0/0 0/0 .data            @4373 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4373[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cheer__15daNpcKasiMich_cFi,
};
#pragma pop

/* 80A2A42C-80A2A438 -00001 000C+00 0/1 0/0 0/0 .data            @4374 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4374[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)chace_st__15daNpcKasiMich_cFi,
};
#pragma pop

/* 80A2A438-80A2A444 -00001 000C+00 0/1 0/0 0/0 .data            @4375 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4375[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)kya__15daNpcKasiMich_cFi,
};
#pragma pop

/* 80A2A444-80A2A450 -00001 000C+00 0/1 0/0 0/0 .data            @4376 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4376[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)iyan__15daNpcKasiMich_cFi,
};
#pragma pop

/* 80A2A450-80A2A45C -00001 000C+00 0/1 0/0 0/0 .data            @4377 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4377[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)kya_stop__15daNpcKasiMich_cFi,
};
#pragma pop

/* 80A2A45C-80A2A468 -00001 000C+00 0/1 0/0 0/0 .data            @4378 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4378[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait_dummy__15daNpcKasiMich_cFi,
};
#pragma pop

/* 80A2A468-80A2A474 -00001 000C+00 0/1 0/0 0/0 .data            @4379 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4379[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)iyan_look__15daNpcKasiMich_cFi,
};
#pragma pop

/* 80A2A474-80A2A480 -00001 000C+00 0/1 0/0 0/0 .data            @4380 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4380[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)turn_hana__15daNpcKasiMich_cFi,
};
#pragma pop

/* 80A2A480-80A2A48C -00001 000C+00 0/1 0/0 0/0 .data            @4381 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4381[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait_dummy__15daNpcKasiMich_cFi,
};
#pragma pop

/* 80A2A48C-80A2A498 -00001 000C+00 0/1 0/0 0/0 .data            @4382 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4382[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)kya2__15daNpcKasiMich_cFi,
};
#pragma pop

/* 80A2A498-80A2A4A4 -00001 000C+00 0/1 0/0 0/0 .data            @4383 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4383[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)fear__15daNpcKasiMich_cFi,
};
#pragma pop

/* 80A2A4A4-80A2A594 0001F0 00F0+00 0/1 0/0 0/0 .data            sSygnalAct$4364 */
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

/* 80A2A594-80A2A5A0 -00001 000C+00 1/1 0/0 0/0 .data            @4488 */
SECTION_DATA static void* lit_4488[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daNpcKasiMich_cFi,
};

/* 80A2A5A0-80A2A5AC -00001 000C+00 0/1 0/0 0/0 .data            @4777 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4777[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)chace__15daNpcKasiMich_cFi,
};
#pragma pop

/* 80A2A5AC-80A2A5B8 -00001 000C+00 0/1 0/0 0/0 .data            @4780 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4780[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)turn_link__15daNpcKasiMich_cFi,
};
#pragma pop

/* 80A2A5B8-80A2A5C4 -00001 000C+00 0/0 0/0 0/0 .data            @4960 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4960[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daNpcKasiMich_cFi,
};
#pragma pop

/* 80A2A5C4-80A2A5D0 -00001 000C+00 0/0 0/0 0/0 .data            @4968 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4968[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daNpcKasiMich_cFi,
};
#pragma pop

/* 80A2A5D0-80A2A5DC -00001 000C+00 0/0 0/0 0/0 .data            @5003 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5003[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daNpcKasiMich_cFi,
};
#pragma pop

/* 80A2A5DC-80A2A5E8 -00001 000C+00 1/1 0/0 0/0 .data            @5026 */
SECTION_DATA static void* lit_5026[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)chace__15daNpcKasiMich_cFi,
};

/* 80A2A5E8-80A2A5F4 -00001 000C+00 1/1 0/0 0/0 .data            @5043 */
SECTION_DATA static void* lit_5043[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daNpcKasiMich_cFi,
};

/* 80A2A5F4-80A2A600 -00001 000C+00 1/1 0/0 0/0 .data            @5046 */
SECTION_DATA static void* lit_5046[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)chace_st__15daNpcKasiMich_cFi,
};

/* 80A2A600-80A2A60C -00001 000C+00 0/0 0/0 0/0 .data            @5106 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5106[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)chace__15daNpcKasiMich_cFi,
};
#pragma pop

/* 80A2A60C-80A2A618 -00001 000C+00 1/1 0/0 0/0 .data            @5120 */
SECTION_DATA static void* lit_5120[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daNpcKasiMich_cFi,
};

/* 80A2A618-80A2A624 -00001 000C+00 1/1 0/0 0/0 .data            @5134 */
SECTION_DATA static void* lit_5134[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait_dummy__15daNpcKasiMich_cFi,
};

/* 80A2A624-80A2A630 -00001 000C+00 1/1 0/0 0/0 .data            @5148 */
SECTION_DATA static void* lit_5148[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait_dummy__15daNpcKasiMich_cFi,
};

/* 80A2A630-80A2A63C -00001 000C+00 1/1 0/0 0/0 .data            @5201 */
SECTION_DATA static void* lit_5201[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daNpcKasiMich_cFi,
};

/* 80A2A63C-80A2A648 -00001 000C+00 1/1 0/0 0/0 .data            @5209 */
SECTION_DATA static void* lit_5209[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait_dummy__15daNpcKasiMich_cFi,
};

/* 80A2A648-80A2A654 -00001 000C+00 1/1 0/0 0/0 .data            @5261 */
SECTION_DATA static void* lit_5261[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait_dummy__15daNpcKasiMich_cFi,
};

/* 80A2A654-80A2A674 -00001 0020+00 1/0 0/0 0/0 .data            daNpcKasiMich_MethodTable */
static actor_method_class daNpcKasiMich_MethodTable = {
    (process_method_func)daNpcKasiMich_Create__FPv,
    (process_method_func)daNpcKasiMich_Delete__FPv,
    (process_method_func)daNpcKasiMich_Execute__FPv,
    (process_method_func)daNpcKasiMich_IsDelete__FPv,
    (process_method_func)daNpcKasiMich_Draw__FPv,
};

/* 80A2A674-80A2A6A4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_KASIMICH */
extern actor_process_profile_definition g_profile_NPC_KASIMICH = {
  fpcLy_CURRENT_e,            // mLayerID
  7,                          // mListID
  fpcPi_CURRENT_e,            // mListPrio
  PROC_NPC_KASIMICH,          // mProcName
  &g_fpcLf_Method.base,      // sub_method
  sizeof(daNpcKasiMich_c),    // mSize
  0,                          // mSizeOther
  0,                          // mParameters
  &g_fopAc_Method.base,       // sub_method
  422,                        // mPriority
  &daNpcKasiMich_MethodTable, // sub_method
  0x00040108,                 // mStatus
  fopAc_NPC_e,                // mActorType
  fopAc_CULLBOX_CUSTOM_e,     // cullType
};

/* 80A2A6A4-80A2A6EC 0003F0 0048+00 2/2 0/0 0/0 .data            __vt__15daNpcKasiMich_c */
SECTION_DATA extern void* __vt__15daNpcKasiMich_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcKasiMich_cFv,
    (void*)setParam__15daNpcKasiMich_cFv,
    (void*)main__15daNpcKasiMich_cFv,
    (void*)ctrlBtk__8daNpcF_cFv,
    (void*)adjustShapeAngle__15daNpcKasiMich_cFv,
    (void*)setMtx__8daNpcF_cFv,
    (void*)setMtx2__8daNpcF_cFv,
    (void*)setAttnPos__15daNpcKasiMich_cFv,
    (void*)setCollisions__8daNpcF_cFv,
    (void*)setExpressionAnm__8daNpcF_cFib,
    (void*)setExpressionBtp__8daNpcF_cFi,
    (void*)setExpression__8daNpcF_cFif,
    (void*)setMotionAnm__15daNpcKasiMich_cFif,
    (void*)setMotion__15daNpcKasiMich_cFifi,
    (void*)drawDbgInfo__15daNpcKasiMich_cFv,
    (void*)drawOtherMdls__8daNpcF_cFv,
};

/* 80A2A6EC-80A2A6F8 000438 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80A2A6F8-80A2A71C 000444 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A2A030,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A2A028,
};

/* 80A2A71C-80A2A728 000468 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80A2A728-80A2A734 000474 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80A2A734-80A2A740 000480 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80A2A740-80A2A74C 00048C 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcF_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcF_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcF_ActorMngr_cFv,
};

/* 80A2A74C-80A2A758 000498 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80A2A758-80A2A764 0004A4 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80A2A764-80A2A770 0004B0 000C+00 4/4 0/0 0/0 .data            __vt__16daNpcF_SPCurve_c */
SECTION_DATA extern void* __vt__16daNpcF_SPCurve_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16daNpcF_SPCurve_cFv,
};

/* 80A2A770-80A2A77C 0004BC 000C+00 3/3 0/0 0/0 .data            __vt__13daNpcF_Path_c */
SECTION_DATA extern void* __vt__13daNpcF_Path_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcF_Path_cFv,
};

/* 80A2A77C-80A2A788 0004C8 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcF_Lookat_c */
SECTION_DATA extern void* __vt__15daNpcF_Lookat_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcF_Lookat_cFv,
};

/* 80A261CC-80A26384 0000EC 01B8+00 1/1 0/0 0/0 .text            __ct__15daNpcKasiMich_cFv */
daNpcKasiMich_c::daNpcKasiMich_c() {
    // NONMATCHING
}

/* 80A26384-80A263CC 0002A4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80A263CC-80A26414 0002EC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80A26414-80A26624 000334 0210+00 1/0 0/0 0/0 .text            __dt__15daNpcKasiMich_cFv */
daNpcKasiMich_c::~daNpcKasiMich_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A2A04C-80A2A0C0 000000 0074+00 17/17 0/0 0/0 .rodata          m__21daNpcKasiMich_Param_c */
SECTION_RODATA u8 const daNpcKasiMich_Param_c::m[116] = {
    0x42, 0x5C, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xFA, 0x00,
    0x00, 0x43, 0x58, 0x00, 0x00, 0x43, 0x0C, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xF0,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1,
    0x20, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00,
    0xC2, 0x34, 0x00, 0x00, 0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x02, 0x00,
    0x06, 0x00, 0x03, 0x00, 0x06, 0x42, 0x70, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00, 0x43, 0x96,
    0x00, 0x00, 0xC3, 0x96, 0x00, 0x00, 0x00, 0x3C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x41, 0x80, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A2A04C, &daNpcKasiMich_Param_c::m);

/* 80A2A0C0-80A2A0C4 000074 0004+00 0/1 0/0 0/0 .rodata          @4197 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4197 = -60.0f;
COMPILER_STRIP_GATE(0x80A2A0C0, &lit_4197);
#pragma pop

/* 80A2A0C4-80A2A0C8 000078 0004+00 0/1 0/0 0/0 .rodata          @4198 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4198 = -10.0f;
COMPILER_STRIP_GATE(0x80A2A0C4, &lit_4198);
#pragma pop

/* 80A2A0C8-80A2A0CC 00007C 0004+00 0/1 0/0 0/0 .rodata          @4199 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4199 = 60.0f;
COMPILER_STRIP_GATE(0x80A2A0C8, &lit_4199);
#pragma pop

/* 80A2A0CC-80A2A0D0 000080 0004+00 0/1 0/0 0/0 .rodata          @4200 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4200 = 220.0f;
COMPILER_STRIP_GATE(0x80A2A0CC, &lit_4200);
#pragma pop

/* 80A26624-80A268A0 000544 027C+00 1/1 0/0 0/0 .text            Create__15daNpcKasiMich_cFv */
void daNpcKasiMich_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A2A0D0-80A2A0D4 000084 0004+00 4/8 0/0 0/0 .rodata          @4247 */
SECTION_RODATA static f32 const lit_4247 = 1.0f;
COMPILER_STRIP_GATE(0x80A2A0D0, &lit_4247);

/* 80A2A0D4-80A2A0D8 000088 0004+00 0/1 0/0 0/0 .rodata          @4248 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4248 = 0x3F5CF29A;
COMPILER_STRIP_GATE(0x80A2A0D4, &lit_4248);
#pragma pop

/* 80A2A0D8-80A2A0DC 00008C 0004+00 8/16 0/0 0/0 .rodata          @4249 */
SECTION_RODATA static f32 const lit_4249 = -1.0f;
COMPILER_STRIP_GATE(0x80A2A0D8, &lit_4249);

/* 80A268A0-80A26A24 0007C0 0184+00 1/1 0/0 0/0 .text            CreateHeap__15daNpcKasiMich_cFv */
void daNpcKasiMich_c::CreateHeap() {
    // NONMATCHING
}

/* 80A26A24-80A26A58 000944 0034+00 1/1 0/0 0/0 .text            Delete__15daNpcKasiMich_cFv */
void daNpcKasiMich_c::Delete() {
    // NONMATCHING
}

/* 80A26A58-80A26A84 000978 002C+00 2/2 0/0 0/0 .text            Execute__15daNpcKasiMich_cFv */
void daNpcKasiMich_c::Execute() {
    // NONMATCHING
}

/* 80A26A84-80A26AD0 0009A4 004C+00 1/1 0/0 0/0 .text            Draw__15daNpcKasiMich_cFv */
void daNpcKasiMich_c::Draw() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A2A0DC-80A2A0E8 000090 000C+00 1/1 0/0 0/0 .rodata          @4270 */
SECTION_RODATA static u8 const lit_4270[12] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
};
COMPILER_STRIP_GATE(0x80A2A0DC, &lit_4270);

/* 80A26AD0-80A26C5C 0009F0 018C+00 1/1 0/0 0/0 .text
 * ctrlJoint__15daNpcKasiMich_cFP8J3DJointP8J3DModel            */
void daNpcKasiMich_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 80A26C5C-80A26C7C 000B7C 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__15daNpcKasiMich_cFP10fopAc_ac_c          */
void daNpcKasiMich_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80A26C7C-80A26CC8 000B9C 004C+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__15daNpcKasiMich_cFP8J3DJointi             */
void daNpcKasiMich_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80A26CC8-80A26D34 000BE8 006C+00 1/0 0/0 0/0 .text            setParam__15daNpcKasiMich_cFv */
void daNpcKasiMich_c::setParam() {
    // NONMATCHING
}

/* 80A2A7E0-80A2A7EC 000048 000C+00 1/1 0/0 0/0 .bss             @3807 */
static u8 lit_3807[12];

/* 80A2A7EC-80A2A7F0 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80A2A7F0-80A2A7F4 000058 0004+00 1/2 0/0 0/0 .bss             mTargetTag__15daNpcKasiMich_c */
u8 daNpcKasiMich_c::mTargetTag[4];

/* 80A2A7F4-80A2A7F8 00005C 0004+00 0/1 0/0 0/0 .bss             mTargetTagDist__15daNpcKasiMich_c
 */
#pragma push
#pragma force_active on
u8 daNpcKasiMich_c::mTargetTagDist[4];
#pragma pop

/* 80A2A7F8-80A2A7FC -00001 0004+00 2/3 0/0 0/0 .bss             None */
/* 80A2A7F8 0002+00 data_80A2A7F8 mWolfAngle__15daNpcKasiMich_c */
/* 80A2A7FA 0002+00 data_80A2A7FA None */
static u8 struct_80A2A7F8[4];

/* 80A26D34-80A26FDC 000C54 02A8+00 1/0 0/0 0/0 .text            main__15daNpcKasiMich_cFv */
void daNpcKasiMich_c::main() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A2A0E8-80A2A0EC 00009C 0004+00 0/1 0/0 0/0 .rodata          @4447 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4447 = 10.0f;
COMPILER_STRIP_GATE(0x80A2A0E8, &lit_4447);
#pragma pop

/* 80A2A0EC-80A2A0F0 0000A0 0004+00 1/3 0/0 0/0 .rodata          @4448 */
SECTION_RODATA static f32 const lit_4448 = 15.0f;
COMPILER_STRIP_GATE(0x80A2A0EC, &lit_4448);

/* 80A2A0F0-80A2A0F4 0000A4 0004+00 13/22 0/0 0/0 .rodata          @4449 */
SECTION_RODATA static u8 const lit_4449[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A2A0F0, &lit_4449);

/* 80A26FDC-80A27184 000EFC 01A8+00 1/0 0/0 0/0 .text            setAttnPos__15daNpcKasiMich_cFv */
void daNpcKasiMich_c::setAttnPos() {
    // NONMATCHING
}

/* 80A27184-80A27254 0010A4 00D0+00 1/0 0/0 0/0 .text            setMotionAnm__15daNpcKasiMich_cFif
 */
bool daNpcKasiMich_c::setMotionAnm(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 80A27254-80A2729C 001174 0048+00 1/0 0/0 0/0 .text            setMotion__15daNpcKasiMich_cFifi */
void daNpcKasiMich_c::setMotion(int param_0, f32 param_1, int param_2) {
    // NONMATCHING
}

/* 80A2729C-80A272A4 0011BC 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__15daNpcKasiMich_cFv */
bool daNpcKasiMich_c::drawDbgInfo() {
    return false;
}

/* 80A272A4-80A274D8 0011C4 0234+00 1/1 0/0 0/0 .text            reset__15daNpcKasiMich_cFv */
void daNpcKasiMich_c::reset() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A2A0F4-80A2A100 0000A8 000C+00 0/1 0/0 0/0 .rodata          @4534 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4534[12] = {
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A2A0F4, &lit_4534);
#pragma pop

/* 80A2A100-80A2A104 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4535 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4535[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A2A100, &lit_4535);
#pragma pop

/* 80A2A104-80A2A110 0000B8 000C+00 0/1 0/0 0/0 .rodata          @4536 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4536[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A2A104, &lit_4536);
#pragma pop

/* 80A2A110-80A2A114 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4537 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4537[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A2A110, &lit_4537);
#pragma pop

/* 80A2A114-80A2A120 0000C8 000C+00 0/1 0/0 0/0 .rodata          @4538 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4538[12] = {
    0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A2A114, &lit_4538);
#pragma pop

/* 80A2A120-80A2A124 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4539 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4539[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A2A120, &lit_4539);
#pragma pop

/* 80A2A124-80A2A130 0000D8 000C+00 0/1 0/0 0/0 .rodata          @4540 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4540[12] = {
    0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A2A124, &lit_4540);
#pragma pop

/* 80A2A130-80A2A134 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4541 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4541[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A2A130, &lit_4541);
#pragma pop

/* 80A2A134-80A2A140 0000E8 000C+00 0/1 0/0 0/0 .rodata          @4542 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4542[12] = {
    0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A2A134, &lit_4542);
#pragma pop

/* 80A2A140-80A2A144 0000F4 0004+00 0/1 0/0 0/0 .rodata          @4543 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4543[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A2A140, &lit_4543);
#pragma pop

/* 80A2A144-80A2A150 0000F8 000C+00 0/1 0/0 0/0 .rodata          @4544 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4544[12] = {
    0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A2A144, &lit_4544);
#pragma pop

/* 80A2A150-80A2A154 000104 0004+00 0/1 0/0 0/0 .rodata          @4545 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4545[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A2A150, &lit_4545);
#pragma pop

/* 80A2A154-80A2A160 000108 000C+00 0/1 0/0 0/0 .rodata          @4546 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4546[12] = {
    0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A2A154, &lit_4546);
#pragma pop

/* 80A2A160-80A2A164 000114 0004+00 0/1 0/0 0/0 .rodata          @4547 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4547[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A2A160, &lit_4547);
#pragma pop

/* 80A2A164-80A2A170 000118 000C+00 0/1 0/0 0/0 .rodata          @4548 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4548[12] = {
    0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A2A164, &lit_4548);
#pragma pop

/* 80A2A170-80A2A174 000124 0004+00 0/1 0/0 0/0 .rodata          @4549 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4549[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A2A170, &lit_4549);
#pragma pop

/* 80A2A174-80A2A180 000128 000C+00 0/1 0/0 0/0 .rodata          @4550 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4550[12] = {
    0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A2A174, &lit_4550);
#pragma pop

/* 80A2A180-80A2A184 000134 0004+00 0/1 0/0 0/0 .rodata          @4551 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4551[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A2A180, &lit_4551);
#pragma pop

/* 80A2A184-80A2A190 000138 000C+00 0/1 0/0 0/0 .rodata          @4552 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4552[12] = {
    0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A2A184, &lit_4552);
#pragma pop

/* 80A2A190-80A2A194 000144 0004+00 0/1 0/0 0/0 .rodata          @4553 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4553[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A2A190, &lit_4553);
#pragma pop

/* 80A2A194-80A2A1A0 000148 000C+00 0/1 0/0 0/0 .rodata          @4554 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4554[12] = {
    0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A2A194, &lit_4554);
#pragma pop

/* 80A2A1A0-80A2A1A4 000154 0004+00 0/1 0/0 0/0 .rodata          @4555 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4555[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A2A1A0, &lit_4555);
#pragma pop

/* 80A2A1A4-80A2A1B0 000158 000C+00 0/1 0/0 0/0 .rodata          @4556 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4556[12] = {
    0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A2A1A4, &lit_4556);
#pragma pop

/* 80A2A1B0-80A2A1BC 000164 000C+00 0/1 0/0 0/0 .rodata          @4557 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4557[12] = {
    0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A2A1B0, &lit_4557);
#pragma pop

/* 80A2A1BC-80A2A1C8 000170 000C+00 0/1 0/0 0/0 .rodata          @4558 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4558[12] = {
    0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A2A1BC, &lit_4558);
#pragma pop

/* 80A2A1C8-80A2A1D4 00017C 000C+00 0/1 0/0 0/0 .rodata          @4559 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4559[12] = {
    0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A2A1C8, &lit_4559);
#pragma pop

/* 80A2A1D4-80A2A1E0 000188 000C+00 0/1 0/0 0/0 .rodata          @4560 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4560[12] = {
    0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A2A1D4, &lit_4560);
#pragma pop

/* 80A2A1E0-80A2A1EC 000194 000C+00 0/1 0/0 0/0 .rodata          @4561 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4561[12] = {
    0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A2A1E0, &lit_4561);
#pragma pop

/* 80A2A1EC-80A2A204 0001A0 0018+00 0/0 0/0 0/0 .rodata          @4562 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4562[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A2A1EC, &lit_4562);
#pragma pop

/* 80A2A204-80A2A210 0001B8 000C+00 0/1 0/0 0/0 .rodata          @4563 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4563[12] = {
    0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A2A204, &lit_4563);
#pragma pop

/* 80A2A210-80A2A21C 0001C4 000C+00 0/1 0/0 0/0 .rodata          @4564 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4564[12] = {
    0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A2A210, &lit_4564);
#pragma pop

/* 80A2A21C-80A2A224 0001D0 0008+00 0/1 0/0 0/0 .rodata          @4565 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4565[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A2A21C, &lit_4565);
#pragma pop

/* 80A274D8-80A2790C 0013F8 0434+00 1/1 0/0 0/0 .text            playMotion__15daNpcKasiMich_cFv */
void daNpcKasiMich_c::playMotion() {
    // NONMATCHING
}

/* 80A2790C-80A27A84 00182C 0178+00 1/1 0/0 0/0 .text
 * playMotionAnmLoop__15daNpcKasiMich_cFPPPQ28daNpcF_c18daNpcF_anmPlayData */
void daNpcKasiMich_c::playMotionAnmLoop(daNpcF_c::daNpcF_anmPlayData*** param_0) {
    // NONMATCHING
}

/* 80A27A84-80A27B2C 0019A4 00A8+00 10/10 0/0 0/0 .text
 * setAction__15daNpcKasiMich_cFM15daNpcKasiMich_cFPCvPvi_i     */
void daNpcKasiMich_c::setAction(int (daNpcKasiMich_c::*param_0)(int)) {
    // NONMATCHING
}

/* 80A27B2C-80A27B50 001A4C 0024+00 8/8 0/0 0/0 .text            setLookMode__15daNpcKasiMich_cFi */
void daNpcKasiMich_c::setLookMode(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A2A224-80A2A258 0001D8 0034+00 0/0 0/0 0/0 .rodata          @4566 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4566[52] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A2A224, &lit_4566);
#pragma pop

/* 80A2A258-80A2A264 00020C 000C+00 0/1 0/0 0/0 .rodata          @4647 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4647[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A2A258, &lit_4647);
#pragma pop

/* 80A2A264-80A2A268 000218 0004+00 0/1 0/0 0/0 .rodata          @4695 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4695 = -80.0f;
COMPILER_STRIP_GATE(0x80A2A264, &lit_4695);
#pragma pop

/* 80A2A268-80A2A26C 00021C 0004+00 0/1 0/0 0/0 .rodata          @4696 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4696 = 80.0f;
COMPILER_STRIP_GATE(0x80A2A268, &lit_4696);
#pragma pop

/* 80A2A26C-80A2A270 000220 0004+00 0/1 0/0 0/0 .rodata          @4697 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4697 = 40.0f;
COMPILER_STRIP_GATE(0x80A2A26C, &lit_4697);
#pragma pop

/* 80A27B50-80A27D30 001A70 01E0+00 1/1 0/0 0/0 .text            lookat__15daNpcKasiMich_cFv */
void daNpcKasiMich_c::lookat() {
    // NONMATCHING
}

/* 80A27D30-80A27E24 001C50 00F4+00 1/1 0/0 0/0 .text            step__15daNpcKasiMich_cFsi */
void daNpcKasiMich_c::step(s16 param_0, int param_1) {
    // NONMATCHING
}

/* 80A27E24-80A27F08 001D44 00E4+00 1/1 0/0 0/0 .text            chkFindPlayer__15daNpcKasiMich_cFv
 */
void daNpcKasiMich_c::chkFindPlayer() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A2A270-80A2A274 000224 0004+00 0/1 0/0 0/0 .rodata          @4830 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4830 = 450.0f;
COMPILER_STRIP_GATE(0x80A2A270, &lit_4830);
#pragma pop

/* 80A2A274-80A2A27C 000228 0008+00 0/1 0/0 0/0 .rodata          @4831 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4831[8] = {
    0x40, 0x7F, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A2A274, &lit_4831);
#pragma pop

/* 80A2A27C-80A2A284 000230 0008+00 0/1 0/0 0/0 .rodata          @4832 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4832[8] = {
    0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A2A27C, &lit_4832);
#pragma pop

/* 80A27F08-80A282B4 001E28 03AC+00 8/0 0/0 0/0 .text            wait__15daNpcKasiMich_cFi */
void daNpcKasiMich_c::wait(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A2A284-80A2A288 000238 0004+00 0/1 0/0 0/0 .rodata          @4879 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4879 = 1.5f;
COMPILER_STRIP_GATE(0x80A2A284, &lit_4879);
#pragma pop

/* 80A282B4-80A28490 0021D4 01DC+00 1/0 0/0 0/0 .text            fear__15daNpcKasiMich_cFi */
void daNpcKasiMich_c::fear(int param_0) {
    // NONMATCHING
}

/* 80A28490-80A284F8 0023B0 0068+00 1/1 0/0 0/0 .text            srchWolfTag__15daNpcKasiMich_cFv */
void daNpcKasiMich_c::srchWolfTag() {
    // NONMATCHING
}

/* 80A284F8-80A285C8 002418 00D0+00 1/1 0/0 0/0 .text _srch_escape_tag__15daNpcKasiMich_cFPvPv */
void daNpcKasiMich_c::_srch_escape_tag(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80A285C8-80A286FC 0024E8 0134+00 1/1 0/0 0/0 .text getWolfPathNearIdx__15daNpcKasiMich_cFv */
void daNpcKasiMich_c::getWolfPathNearIdx() {
    // NONMATCHING
}

/* 80A286FC-80A287A0 00261C 00A4+00 2/0 0/0 0/0 .text            chace_st__15daNpcKasiMich_cFi */
void daNpcKasiMich_c::chace_st(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A2A288-80A2A28C 00023C 0004+00 0/1 0/0 0/0 .rodata          @5067 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5067 = 14.0f;
COMPILER_STRIP_GATE(0x80A2A288, &lit_5067);
#pragma pop

/* 80A2A28C-80A2A290 000240 0004+00 0/1 0/0 0/0 .rodata          @5068 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5068 = 400.0f;
COMPILER_STRIP_GATE(0x80A2A28C, &lit_5068);
#pragma pop

/* 80A287A0-80A28910 0026C0 0170+00 4/0 0/0 0/0 .text            chace__15daNpcKasiMich_cFi */
void daNpcKasiMich_c::chace(int param_0) {
    // NONMATCHING
}

/* 80A28910-80A289CC 002830 00BC+00 1/1 0/0 0/0 .text            getChacePos__15daNpcKasiMich_cFv */
void daNpcKasiMich_c::getChacePos() {
    // NONMATCHING
}

/* 80A289CC-80A28A8C 0028EC 00C0+00 2/0 0/0 0/0 .text            turn_link__15daNpcKasiMich_cFi */
void daNpcKasiMich_c::turn_link(int param_0) {
    // NONMATCHING
}

/* 80A28A8C-80A28B70 0029AC 00E4+00 1/0 0/0 0/0 .text            turn_home__15daNpcKasiMich_cFi */
void daNpcKasiMich_c::turn_home(int param_0) {
    // NONMATCHING
}

/* 80A28B70-80A28C40 002A90 00D0+00 1/0 0/0 0/0 .text            turn_center__15daNpcKasiMich_cFi */
void daNpcKasiMich_c::turn_center(int param_0) {
    // NONMATCHING
}

/* 80A28C40-80A28CB8 002B60 0078+00 1/0 0/0 0/0 .text            talk_dummy__15daNpcKasiMich_cFi */
void daNpcKasiMich_c::talk_dummy(int param_0) {
    // NONMATCHING
}

/* 80A28CB8-80A28D90 002BD8 00D8+00 1/0 0/0 0/0 .text            kya__15daNpcKasiMich_cFi */
void daNpcKasiMich_c::kya(int param_0) {
    // NONMATCHING
}

/* 80A28D90-80A28E28 002CB0 0098+00 1/0 0/0 0/0 .text            kya2__15daNpcKasiMich_cFi */
void daNpcKasiMich_c::kya2(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A2A290-80A2A294 000244 0004+00 1/1 0/0 0/0 .rodata          @5219 */
SECTION_RODATA static f32 const lit_5219 = 19.0f;
COMPILER_STRIP_GATE(0x80A2A290, &lit_5219);

/* 80A28E28-80A28EFC 002D48 00D4+00 1/0 0/0 0/0 .text            kya_stop__15daNpcKasiMich_cFi */
void daNpcKasiMich_c::kya_stop(int param_0) {
    // NONMATCHING
}

/* 80A28EFC-80A28F74 002E1C 0078+00 1/0 0/0 0/0 .text            iyan__15daNpcKasiMich_cFi */
void daNpcKasiMich_c::iyan(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A2A294-80A2A298 000248 0004+00 0/1 0/0 0/0 .rodata          @5251 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5251 = 1.75f;
COMPILER_STRIP_GATE(0x80A2A294, &lit_5251);
#pragma pop

/* 80A28F74-80A2908C 002E94 0118+00 1/0 0/0 0/0 .text            escape__15daNpcKasiMich_cFi */
void daNpcKasiMich_c::escape(int param_0) {
    // NONMATCHING
}

/* 80A2908C-80A29164 002FAC 00D8+00 1/0 0/0 0/0 .text            iyan_look__15daNpcKasiMich_cFi */
void daNpcKasiMich_c::iyan_look(int param_0) {
    // NONMATCHING
}

/* 80A29164-80A291E8 003084 0084+00 1/0 0/0 0/0 .text            turn_hana__15daNpcKasiMich_cFi */
void daNpcKasiMich_c::turn_hana(int param_0) {
    // NONMATCHING
}

/* 80A291E8-80A2926C 003108 0084+00 7/0 0/0 0/0 .text            wait_dummy__15daNpcKasiMich_cFi */
void daNpcKasiMich_c::wait_dummy(int param_0) {
    // NONMATCHING
}

/* 80A2926C-80A29458 00318C 01EC+00 1/0 0/0 0/0 .text            cheer__15daNpcKasiMich_cFi */
void daNpcKasiMich_c::cheer(int param_0) {
    // NONMATCHING
}

/* 80A29458-80A294A4 003378 004C+00 3/3 0/0 0/0 .text            _turn_to_link__15daNpcKasiMich_cFs
 */
void daNpcKasiMich_c::_turn_to_link(s16 param_0) {
    // NONMATCHING
}

/* 80A294A4-80A29500 0033C4 005C+00 5/5 0/0 0/0 .text _turn_pos__15daNpcKasiMich_cFRC4cXyzs */
void daNpcKasiMich_c::_turn_pos(cXyz const& param_0, s16 param_1) {
    // NONMATCHING
}

/* 80A29500-80A295D8 003420 00D8+00 2/2 0/0 0/0 .text
 * actor_front_check__15daNpcKasiMich_cFP10fopAc_ac_c           */
void daNpcKasiMich_c::actor_front_check(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80A295D8-80A29644 0034F8 006C+00 1/1 0/0 0/0 .text _getOffset__15daNpcKasiMich_cFRC4cXyzR4cXyz
 */
void daNpcKasiMich_c::_getOffset(cXyz const& param_0, cXyz& param_1) {
    // NONMATCHING
}

/* 80A29644-80A29664 003564 0020+00 1/0 0/0 0/0 .text            daNpcKasiMich_Create__FPv */
static void daNpcKasiMich_Create(void* param_0) {
    // NONMATCHING
}

/* 80A29664-80A29684 003584 0020+00 1/0 0/0 0/0 .text            daNpcKasiMich_Delete__FPv */
static void daNpcKasiMich_Delete(void* param_0) {
    // NONMATCHING
}

/* 80A29684-80A296A4 0035A4 0020+00 1/0 0/0 0/0 .text            daNpcKasiMich_Execute__FPv */
static void daNpcKasiMich_Execute(void* param_0) {
    // NONMATCHING
}

/* 80A296A4-80A296C4 0035C4 0020+00 1/0 0/0 0/0 .text            daNpcKasiMich_Draw__FPv */
static void daNpcKasiMich_Draw(void* param_0) {
    // NONMATCHING
}

/* 80A296C4-80A296CC 0035E4 0008+00 1/0 0/0 0/0 .text            daNpcKasiMich_IsDelete__FPv */
static bool daNpcKasiMich_IsDelete(void* param_0) {
    return true;
}

/* 80A296CC-80A2972C 0035EC 0060+00 1/0 0/0 0/0 .text            __dt__13daNpcF_Path_cFv */
// daNpcF_Path_c::~daNpcF_Path_c() {
extern "C" void __dt__13daNpcF_Path_cFv() {
    // NONMATCHING
}

/* 80A2972C-80A29774 00364C 0048+00 1/0 0/0 0/0 .text            __dt__16daNpcF_SPCurve_cFv */
// daNpcF_SPCurve_c::~daNpcF_SPCurve_c() {
extern "C" void __dt__16daNpcF_SPCurve_cFv() {
    // NONMATCHING
}

/* 80A29774-80A297BC 003694 0048+00 5/4 0/0 0/0 .text            __dt__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::~daNpcF_ActorMngr_c() {
extern "C" void __dt__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80A297BC-80A297F8 0036DC 003C+00 2/2 0/0 0/0 .text            __ct__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::daNpcF_ActorMngr_c() {
extern "C" void __ct__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80A297F8-80A298C8 003718 00D0+00 1/0 0/0 0/0 .text            __dt__15daNpcF_Lookat_cFv */
// daNpcF_Lookat_c::~daNpcF_Lookat_c() {
extern "C" void __dt__15daNpcF_Lookat_cFv() {
    // NONMATCHING
}

/* 80A298C8-80A29904 0037E8 003C+00 5/5 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80A29904-80A29908 003824 0004+00 2/2 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80A29908-80A29944 003828 003C+00 5/5 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80A29944-80A29948 003864 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80A29948-80A29B94 003868 024C+00 1/1 0/0 0/0 .text            __dt__8daNpcF_cFv */
// daNpcF_c::~daNpcF_c() {
extern "C" void __dt__8daNpcF_cFv() {
    // NONMATCHING
}

/* 80A29B94-80A29D84 003AB4 01F0+00 1/1 0/0 0/0 .text            __ct__8daNpcF_cFv */
// daNpcF_c::daNpcF_c() {
extern "C" void __ct__8daNpcF_cFv() {
    // NONMATCHING
}

/* 80A29D84-80A29DF4 003CA4 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80A29DF4-80A29E50 003D14 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80A29E50-80A29EC0 003D70 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80A29EC0-80A29F08 003DE0 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80A29F08-80A29F10 003E28 0008+00 1/0 0/0 0/0 .text            ctrlBtk__8daNpcF_cFv */
// bool daNpcF_c::ctrlBtk() {
extern "C" bool ctrlBtk__8daNpcF_cFv() {
    return false;
}

/* 80A29F10-80A29F14 003E30 0004+00 1/0 0/0 0/0 .text            setCollisions__8daNpcF_cFv */
// void daNpcF_c::setCollisions() {
extern "C" void setCollisions__8daNpcF_cFv() {
    /* empty function */
}

/* 80A29F14-80A29F1C 003E34 0008+00 1/0 0/0 0/0 .text            setExpressionAnm__8daNpcF_cFib */
// bool daNpcF_c::setExpressionAnm(int param_0, bool param_1) {
extern "C" bool setExpressionAnm__8daNpcF_cFib() {
    return true;
}

/* 80A29F1C-80A29F24 003E3C 0008+00 1/0 0/0 0/0 .text            setExpressionBtp__8daNpcF_cFi */
// bool daNpcF_c::setExpressionBtp(int param_0) {
extern "C" bool setExpressionBtp__8daNpcF_cFi() {
    return true;
}

/* 80A29F24-80A29F28 003E44 0004+00 1/0 0/0 0/0 .text            setExpression__8daNpcF_cFif */
// void daNpcF_c::setExpression(int param_0, f32 param_1) {
extern "C" void setExpression__8daNpcF_cFif() {
    /* empty function */
}

/* 80A29F28-80A29F2C 003E48 0004+00 1/0 0/0 0/0 .text            drawOtherMdls__8daNpcF_cFv */
// void daNpcF_c::drawOtherMdls() {
extern "C" void drawOtherMdls__8daNpcF_cFv() {
    /* empty function */
}

/* 80A29F2C-80A29F74 003E4C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A2A788-80A2A794 0004D4 000C+00 2/2 0/0 0/0 .data            __vt__21daNpcKasiMich_Param_c */
SECTION_DATA extern void* __vt__21daNpcKasiMich_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__21daNpcKasiMich_Param_cFv,
};

/* 80A29F74-80A29FDC 003E94 0068+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_kasi_mich_cpp */
void __sinit_d_a_npc_kasi_mich_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80A29F74, __sinit_d_a_npc_kasi_mich_cpp);
#pragma pop

/* 80A29FDC-80A29FE0 003EFC 0004+00 1/0 0/0 0/0 .text adjustShapeAngle__15daNpcKasiMich_cFv */
void daNpcKasiMich_c::adjustShapeAngle() {
    /* empty function */
}

/* 80A29FE0-80A2A028 003F00 0048+00 2/1 0/0 0/0 .text            __dt__21daNpcKasiMich_Param_cFv */
daNpcKasiMich_Param_c::~daNpcKasiMich_Param_c() {
    // NONMATCHING
}

/* 80A2A028-80A2A030 003F48 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80A2A028() {
    // NONMATCHING
}

/* 80A2A030-80A2A038 003F50 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80A2A030() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A2A7FC-80A2A800 000064 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80A2A7FC[4];
#pragma pop

/* 80A2A800-80A2A804 000068 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80A2A800[4];
#pragma pop

/* 80A2A804-80A2A808 00006C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80A2A804[4];
#pragma pop

/* 80A2A808-80A2A80C 000070 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80A2A808[4];
#pragma pop

/* 80A2A80C-80A2A810 000074 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A2A80C[4];
#pragma pop

/* 80A2A810-80A2A814 000078 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A2A810[4];
#pragma pop

/* 80A2A814-80A2A818 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80A2A814[4];
#pragma pop

/* 80A2A818-80A2A81C 000080 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80A2A818[4];
#pragma pop

/* 80A2A81C-80A2A820 000084 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80A2A81C[4];
#pragma pop

/* 80A2A820-80A2A824 000088 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80A2A820[4];
#pragma pop

/* 80A2A824-80A2A828 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80A2A824[4];
#pragma pop

/* 80A2A828-80A2A82C 000090 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80A2A828[4];
#pragma pop

/* 80A2A82C-80A2A830 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80A2A82C[4];
#pragma pop

/* 80A2A830-80A2A834 000098 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A2A830[4];
#pragma pop

/* 80A2A834-80A2A838 00009C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80A2A834[4];
#pragma pop

/* 80A2A838-80A2A83C 0000A0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80A2A838[4];
#pragma pop

/* 80A2A83C-80A2A840 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80A2A83C[4];
#pragma pop

/* 80A2A840-80A2A844 0000A8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80A2A840[4];
#pragma pop

/* 80A2A844-80A2A848 0000AC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80A2A844[4];
#pragma pop

/* 80A2A848-80A2A84C 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80A2A848[4];
#pragma pop

/* 80A2A84C-80A2A850 0000B4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80A2A84C[4];
#pragma pop

/* 80A2A850-80A2A854 0000B8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A2A850[4];
#pragma pop

/* 80A2A854-80A2A858 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A2A854[4];
#pragma pop

/* 80A2A858-80A2A85C 0000C0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A2A858[4];
#pragma pop

/* 80A2A85C-80A2A860 0000C4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80A2A85C[4];
#pragma pop

/* 80A2A298-80A2A298 00024C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
