/**
 * @file d_a_npc_kasi_hana.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_kasi_hana.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void calcEscapeForm__15daNpcKasi_Mng_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void calcCenterPos__15daNpcKasi_Mng_cFv();
extern "C" void getDistFromCenter__15daNpcKasi_Mng_cFv();
extern "C" void getOffsetFromLeader__15daNpcKasi_Mng_cFRC4cXyzR4cXyz();
extern "C" void __dt__5csXyzFv();
extern "C" void initPath__15daNpcKasi_Mng_cFUcUs();
extern "C" void getPlNearPoint__15daNpcKasi_Mng_cFv();
extern "C" void getSygnalInfo__15daNpcKasi_Mng_cFv();
extern "C" void sendInfo__15daNpcKasi_Mng_cFv();
extern "C" void offTalk__15daNpcKasi_Mng_cFv();
extern "C" void chkTalk__15daNpcKasi_Mng_cFv();
extern "C" void chkFear__15daNpcKasi_Mng_cFv();
extern "C" void chkEscape__15daNpcKasi_Mng_cFv();
extern "C" void createHearts__15daNpcKasi_Mng_cFv();
extern "C" void allDemoMove__15daNpcKasi_Mng_cFv();
extern "C" void allDemoNotMove__15daNpcKasi_Mng_cFv();
extern "C" void isMiniGamePlaying__15daNpcKasi_Mng_cFv();
extern "C" void schMemberActor__15daNpcKasi_Mng_cFv();
extern "C" void schDanchoActor__15daNpcKasi_Mng_cFv();
extern "C" void deleteAllMember__15daNpcKasi_Mng_cFv();
extern "C" void chgWeightHeavy__15daNpcKasi_Mng_cFv();
extern "C" void chgWeightLight__15daNpcKasi_Mng_cFv();
extern "C" void __ct__15daNpcKasiHana_cFv();
extern "C" void __dt__15daNpcKasiHana_cFv();
extern "C" void Create__15daNpcKasiHana_cFv();
extern "C" void CreateHeap__15daNpcKasiHana_cFv();
extern "C" void Delete__15daNpcKasiHana_cFv();
extern "C" void Execute__15daNpcKasiHana_cFv();
extern "C" void Draw__15daNpcKasiHana_cFv();
extern "C" void ctrlJoint__15daNpcKasiHana_cFP8J3DJointP8J3DModel();
extern "C" void createHeapCallBack__15daNpcKasiHana_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__15daNpcKasiHana_cFP8J3DJointi();
extern "C" void setParam__15daNpcKasiHana_cFv();
extern "C" void main__15daNpcKasiHana_cFv();
extern "C" void setAttnPos__15daNpcKasiHana_cFv();
extern "C" void setMotionAnm__15daNpcKasiHana_cFif();
extern "C" void setMotion__15daNpcKasiHana_cFifi();
extern "C" bool drawDbgInfo__15daNpcKasiHana_cFv();
extern "C" void reset__15daNpcKasiHana_cFv();
extern "C" void playMotion__15daNpcKasiHana_cFv();
extern "C" void playMotionAnmLoop__15daNpcKasiHana_cFPPPQ28daNpcF_c18daNpcF_anmPlayData();
extern "C" void setAction__15daNpcKasiHana_cFM15daNpcKasiHana_cFPCvPvi_i();
extern "C" void setLookMode__15daNpcKasiHana_cFi();
extern "C" void lookat__15daNpcKasiHana_cFv();
extern "C" void step__15daNpcKasiHana_cFsi();
extern "C" void chkFindPlayer__15daNpcKasiHana_cFv();
extern "C" void wait__15daNpcKasiHana_cFi();
extern "C" void chace_st__15daNpcKasiHana_cFi();
extern "C" void chace__15daNpcKasiHana_cFi();
extern "C" void getChacePos__15daNpcKasiHana_cFv();
extern "C" void turn__15daNpcKasiHana_cFi();
extern "C" void fear__15daNpcKasiHana_cFi();
extern "C" void srchWolfTag__15daNpcKasiHana_cFv();
extern "C" void _srch_escape_tag__15daNpcKasiHana_cFPvPv();
extern "C" void getWolfPathNearIdx__15daNpcKasiHana_cFv();
extern "C" void talk__15daNpcKasiHana_cFi();
extern "C" void demo__15daNpcKasiHana_cFi();
extern "C" void escape__15daNpcKasiHana_cFi();
extern "C" void cheer__15daNpcKasiHana_cFi();
extern "C" void _turn_to_link__15daNpcKasiHana_cFs();
extern "C" void _turn_pos__15daNpcKasiHana_cFRC4cXyzs();
extern "C" void actor_front_check__15daNpcKasiHana_cFP10fopAc_ac_c();
extern "C" void _getOffset__15daNpcKasiHana_cFRC4cXyzR4cXyz();
extern "C" void _Evt_Kasi_Appear__15daNpcKasiHana_cFi();
extern "C" void _Evt_Kasi_Appear_CutInit__15daNpcKasiHana_cFRCi();
extern "C" void _Evt_Kasi_Appear_CutMain__15daNpcKasiHana_cFRCi();
extern "C" void _Evt_Kasi_Talk__15daNpcKasiHana_cFi();
extern "C" void _Evt_Kasi_Talk_CutInit__15daNpcKasiHana_cFRCi();
extern "C" void _Evt_Kasi_Talk_CutMain__15daNpcKasiHana_cFRCii();
extern "C" void _Evt_Kasi__15daNpcKasiHana_cFi();
extern "C" void _Evt_Kasi_CutInit__15daNpcKasiHana_cFRCi();
extern "C" void _Evt_Kasi_CutMain__15daNpcKasiHana_cFRCi();
extern "C" void _Evt_Kasi_Cheer__15daNpcKasiHana_cFi();
extern "C" void _Evt_Kasi_Cheer_CutInit__15daNpcKasiHana_cFRCi();
extern "C" void _Evt_Kasi_Cheer_CutMain__15daNpcKasiHana_cFRCii();
extern "C" void _Evt_Kasi_Cheer2__15daNpcKasiHana_cFi();
extern "C" void _Evt_Kasi_Cheer2_CutInit__15daNpcKasiHana_cFRCi();
extern "C" void _Evt_Kasi_Cheer2_CutMain__15daNpcKasiHana_cFRCii();
extern "C" static void daNpcKasiHana_Create__FPv();
extern "C" static void daNpcKasiHana_Delete__FPv();
extern "C" static void daNpcKasiHana_Execute__FPv();
extern "C" static void daNpcKasiHana_Draw__FPv();
extern "C" static bool daNpcKasiHana_IsDelete__FPv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void getCenterPos__15daNpcKasi_Mng_cFv();
extern "C" void adjustShapeAngle__15daNpcKasiHana_cFv();
extern "C" void __dt__21daNpcKasiHana_Param_cFv();
extern "C" static void func_80A206C4();
extern "C" static void func_80A206CC();
extern "C" void __dt__13daNpcF_Path_cFv();
extern "C" void __dt__16daNpcF_SPCurve_cFv();
extern "C" void __dt__18daNpcF_ActorMngr_cFv();
extern "C" void __ct__18daNpcF_ActorMngr_cFv();
extern "C" void __dt__15daNpcF_Lookat_cFv();
extern "C" void __ct__5csXyzFv();
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
extern "C" void func_80A20F04(void* _this, int, int);
extern "C" void __sinit_d_a_npc_kasi_hana_cpp();
extern "C" u8 const m__21daNpcKasiHana_Param_c[124];
extern "C" extern char const* const d_a_npc_kasi_hana__stringBase0;
extern "C" u8 mEvtSeqList__15daNpcKasiHana_c[72];
extern "C" u8 mTargetTag__15daNpcKasiHana_c[4];
extern "C" u8 mTargetTagDist__15daNpcKasiHana_c[4];
extern "C" u8 mWolfAngle__15daNpcKasiHana_c[2 + 2 /* padding */];

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
extern "C" void fopAcM_SearchByName__FsPP10fopAc_ac_c();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_fastCreateItem__FPC4cXyziiPC5csXyzPC4cXyzPfPfiiPFPv_i();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_TimerStop__Fi();
extern "C" void dComIfG_TimerReStart__Fi();
extern "C" void onSwitch__12dSv_danBit_cFi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
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
extern "C" void reverse__13daNpcF_Path_cFv();
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
extern "C" void ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci();
extern "C" void orderEvent__8daNpcF_cFiPcUsUsUcUs();
extern "C" void changeEvent__8daNpcF_cFPcPcUsUs();
extern "C" void chkActorInSight__8daNpcF_cFP10fopAc_ac_cf();
extern "C" void chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci();
extern "C" void initTalk__8daNpcF_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcF_cFPiiPP10fopAc_ac_c();
extern "C" void turn__8daNpcF_cFsfi();
extern "C" void getDistTableIdx__8daNpcF_cFii();
extern "C" void daNpcF_chkEvtBit__FUl();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void dTimer_show__Fv();
extern "C" void dTimer_hide__Fv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ct__5csXyzFsss();
extern "C" void cM_rndF__Ff();
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
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __ct__17Z2CreatureCitizenFv();
extern "C" void __dt__17Z2CreatureCitizenFv();
extern "C" void init__17Z2CreatureCitizenFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_test();
extern "C" void __ptmf_cmpr();
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
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80A21080-80A21084 000000 0004+00 26/26 0/0 0/0 .rodata          @3908 */
SECTION_RODATA static u8 const lit_3908[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A21080, &lit_3908);

/* 80A21084-80A21088 000004 0004+00 0/1 0/0 0/0 .rodata          @3909 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3909 = -70.0f;
COMPILER_STRIP_GATE(0x80A21084, &lit_3909);
#pragma pop

/* 80A21088-80A2108C 000008 0004+00 0/1 0/0 0/0 .rodata          @3910 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3910 = -140.0f;
COMPILER_STRIP_GATE(0x80A21088, &lit_3910);
#pragma pop

/* 80A1AFAC-80A1B09C 0000EC 00F0+00 1/1 0/0 0/0 .text            calcEscapeForm__15daNpcKasi_Mng_cFv
 */
void daNpcKasi_Mng_c::calcEscapeForm() {
    // NONMATCHING
}

/* 80A1B09C-80A1B0D8 0001DC 003C+00 5/5 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A2108C-80A21090 00000C 0004+00 1/1 0/0 0/0 .rodata          @3944 */
SECTION_RODATA static f32 const lit_3944 = 3.0f;
COMPILER_STRIP_GATE(0x80A2108C, &lit_3944);

/* 80A1B0D8-80A1B1C8 000218 00F0+00 2/2 0/0 0/0 .text            calcCenterPos__15daNpcKasi_Mng_cFv
 */
void daNpcKasi_Mng_c::calcCenterPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A21090-80A21098 000010 0004+04 9/20 0/0 0/0 .rodata          @3998 */
SECTION_RODATA static f32 const lit_3998[1 + 1 /* padding */] = {
    -1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80A21090, &lit_3998);

/* 80A21098-80A210A0 000018 0008+00 0/1 0/0 0/0 .rodata          @3999 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3999[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A21098, &lit_3999);
#pragma pop

/* 80A210A0-80A210A8 000020 0008+00 0/1 0/0 0/0 .rodata          @4000 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4000[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A210A0, &lit_4000);
#pragma pop

/* 80A210A8-80A210B0 000028 0008+00 0/1 0/0 0/0 .rodata          @4001 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4001[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A210A8, &lit_4001);
#pragma pop

/* 80A1B1C8-80A1B35C 000308 0194+00 1/1 0/0 0/0 .text getDistFromCenter__15daNpcKasi_Mng_cFv */
void daNpcKasi_Mng_c::getDistFromCenter() {
    // NONMATCHING
}

/* 80A1B35C-80A1B3D4 00049C 0078+00 1/1 0/0 0/0 .text
 * getOffsetFromLeader__15daNpcKasi_Mng_cFRC4cXyzR4cXyz         */
void daNpcKasi_Mng_c::getOffsetFromLeader(cXyz const& param_0, cXyz& param_1) {
    // NONMATCHING
}

/* 80A1B3D4-80A1B410 000514 003C+00 5/5 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80A1B410-80A1B48C 000550 007C+00 1/1 0/0 0/0 .text            initPath__15daNpcKasi_Mng_cFUcUs */
void daNpcKasi_Mng_c::initPath(u8 param_0, u16 param_1) {
    // NONMATCHING
}

/* 80A1B48C-80A1B5F0 0005CC 0164+00 1/1 0/0 0/0 .text            getPlNearPoint__15daNpcKasi_Mng_cFv
 */
void daNpcKasi_Mng_c::getPlNearPoint() {
    // NONMATCHING
}

/* 80A1B5F0-80A1B628 000730 0038+00 1/1 0/0 0/0 .text            getSygnalInfo__15daNpcKasi_Mng_cFv
 */
void daNpcKasi_Mng_c::getSygnalInfo() {
    // NONMATCHING
}

/* 80A1B628-80A1B6F8 000768 00D0+00 1/1 0/0 0/0 .text            sendInfo__15daNpcKasi_Mng_cFv */
void daNpcKasi_Mng_c::sendInfo() {
    // NONMATCHING
}

/* 80A1B6F8-80A1B774 000838 007C+00 1/1 0/0 0/0 .text            offTalk__15daNpcKasi_Mng_cFv */
void daNpcKasi_Mng_c::offTalk() {
    // NONMATCHING
}

/* 80A1B774-80A1B810 0008B4 009C+00 1/1 0/0 0/0 .text            chkTalk__15daNpcKasi_Mng_cFv */
void daNpcKasi_Mng_c::chkTalk() {
    // NONMATCHING
}

/* 80A1B810-80A1B884 000950 0074+00 1/1 0/0 0/0 .text            chkFear__15daNpcKasi_Mng_cFv */
void daNpcKasi_Mng_c::chkFear() {
    // NONMATCHING
}

/* 80A1B884-80A1B920 0009C4 009C+00 1/1 0/0 0/0 .text            chkEscape__15daNpcKasi_Mng_cFv */
void daNpcKasi_Mng_c::chkEscape() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A210B0-80A210BC 000030 000C+00 0/1 0/0 0/0 .rodata          @4181 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4181[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A210B0, &lit_4181);
#pragma pop

/* 80A210BC-80A210C0 00003C 0004+00 0/1 0/0 0/0 .rodata          @4210 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4210 = 30.0f;
COMPILER_STRIP_GATE(0x80A210BC, &lit_4210);
#pragma pop

/* 80A210C0-80A210C4 000040 0004+00 3/8 0/0 0/0 .rodata          @4211 */
SECTION_RODATA static f32 const lit_4211 = 1.0f;
COMPILER_STRIP_GATE(0x80A210C0, &lit_4211);

/* 80A210C4-80A210C8 000044 0004+00 0/1 0/0 0/0 .rodata          @4212 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4212 = 115.0f;
COMPILER_STRIP_GATE(0x80A210C4, &lit_4212);
#pragma pop

/* 80A1B920-80A1BAAC 000A60 018C+00 1/1 0/0 0/0 .text            createHearts__15daNpcKasi_Mng_cFv
 */
void daNpcKasi_Mng_c::createHearts() {
    // NONMATCHING
}

/* 80A1BAAC-80A1BB24 000BEC 0078+00 1/1 0/0 0/0 .text            allDemoMove__15daNpcKasi_Mng_cFv */
void daNpcKasi_Mng_c::allDemoMove() {
    // NONMATCHING
}

/* 80A1BB24-80A1BB9C 000C64 0078+00 1/1 0/0 0/0 .text            allDemoNotMove__15daNpcKasi_Mng_cFv
 */
void daNpcKasi_Mng_c::allDemoNotMove() {
    // NONMATCHING
}

/* 80A1BB9C-80A1BBE0 000CDC 0044+00 2/2 0/0 0/0 .text isMiniGamePlaying__15daNpcKasi_Mng_cFv */
void daNpcKasi_Mng_c::isMiniGamePlaying() {
    // NONMATCHING
}

/* 80A1BBE0-80A1BC88 000D20 00A8+00 1/1 0/0 0/0 .text            schMemberActor__15daNpcKasi_Mng_cFv
 */
void daNpcKasi_Mng_c::schMemberActor() {
    // NONMATCHING
}

/* 80A1BC88-80A1BCF0 000DC8 0068+00 1/1 0/0 0/0 .text            schDanchoActor__15daNpcKasi_Mng_cFv
 */
void daNpcKasi_Mng_c::schDanchoActor() {
    // NONMATCHING
}

/* 80A1BCF0-80A1BD6C 000E30 007C+00 2/2 0/0 0/0 .text deleteAllMember__15daNpcKasi_Mng_cFv */
void daNpcKasi_Mng_c::deleteAllMember() {
    // NONMATCHING
}

/* 80A1BD6C-80A1BDD8 000EAC 006C+00 1/1 0/0 0/0 .text            chgWeightHeavy__15daNpcKasi_Mng_cFv
 */
void daNpcKasi_Mng_c::chgWeightHeavy() {
    // NONMATCHING
}

/* 80A1BDD8-80A1BE44 000F18 006C+00 1/1 0/0 0/0 .text            chgWeightLight__15daNpcKasi_Mng_cFv
 */
void daNpcKasi_Mng_c::chgWeightLight() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A21358-80A21358 0002D8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A21358 = "kasi_hana";
SECTION_DEAD static char const* const stringBase_80A21362 = "girls";
SECTION_DEAD static char const* const stringBase_80A21368 = "Wgeneral";
SECTION_DEAD static char const* const stringBase_80A21371 = "KASIMASI_APPEAR";
SECTION_DEAD static char const* const stringBase_80A21381 = "KASIMASI_TALK";
SECTION_DEAD static char const* const stringBase_80A2138F = "KASIMASI_HEART";
SECTION_DEAD static char const* const stringBase_80A2139E = "KASIMASI_CHEER";
SECTION_DEAD static char const* const stringBase_80A213AD = "KASIMASI_CHEER2";
#pragma pop

/* 80A213F4-80A214A8 000020 00B4+00 1/1 0/0 0/0 .data            l_bckGetParamList */
SECTION_DATA static u8 l_bckGetParamList[180] = {
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,
    0x04, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00,
    0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02, 0x00,
    0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00,
    0x1E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00,
    0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02, 0x00,
    0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00,
    0x1F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
};

/* 80A214A8-80A214B4 0000D4 000C+00 0/0 0/0 0/0 .data            l_btpGetParamList */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_btpGetParamList[12] = {
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80A214B4-80A214C0 -00001 000C+00 5/7 0/0 0/0 .data            l_arcNames */
SECTION_DATA static void* l_arcNames[3] = {
    (void*)&d_a_npc_kasi_hana__stringBase0,
    (void*)(((char*)&d_a_npc_kasi_hana__stringBase0) + 0xA),
    (void*)(((char*)&d_a_npc_kasi_hana__stringBase0) + 0x10),
};

/* 80A214C0-80A214D8 -00001 0018+00 0/3 0/0 0/0 .data            l_evtNames */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtNames[6] = {
    (void*)NULL,
    (void*)(((char*)&d_a_npc_kasi_hana__stringBase0) + 0x19),
    (void*)(((char*)&d_a_npc_kasi_hana__stringBase0) + 0x29),
    (void*)(((char*)&d_a_npc_kasi_hana__stringBase0) + 0x37),
    (void*)(((char*)&d_a_npc_kasi_hana__stringBase0) + 0x46),
    (void*)(((char*)&d_a_npc_kasi_hana__stringBase0) + 0x55),
};
#pragma pop

/* 80A214D8-80A214DC -00001 0004+00 0/2 0/0 0/0 .data            l_myName */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_myName = (void*)&d_a_npc_kasi_hana__stringBase0;
#pragma pop

/* 80A214DC-80A214E8 -00001 000C+00 0/1 0/0 0/0 .data            @4324 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4324[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)_Evt_Kasi_Appear__15daNpcKasiHana_cFi,
};
#pragma pop

/* 80A214E8-80A214F4 -00001 000C+00 0/1 0/0 0/0 .data            @4325 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4325[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)_Evt_Kasi_Talk__15daNpcKasiHana_cFi,
};
#pragma pop

/* 80A214F4-80A21500 -00001 000C+00 0/1 0/0 0/0 .data            @4326 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4326[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)_Evt_Kasi__15daNpcKasiHana_cFi,
};
#pragma pop

/* 80A21500-80A2150C -00001 000C+00 0/1 0/0 0/0 .data            @4327 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4327[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)_Evt_Kasi_Cheer__15daNpcKasiHana_cFi,
};
#pragma pop

/* 80A2150C-80A21518 -00001 000C+00 0/1 0/0 0/0 .data            @4328 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4328[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)_Evt_Kasi_Cheer2__15daNpcKasiHana_cFi,
};
#pragma pop

/* 80A21518-80A21560 000144 0048+00 0/2 0/0 0/0 .data            mEvtSeqList__15daNpcKasiHana_c */
#pragma push
#pragma force_active on
SECTION_DATA u8 daNpcKasiHana_c::mEvtSeqList[72] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80A21560-80A2156C -00001 000C+00 0/1 0/0 0/0 .data            @4941 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4941[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daNpcKasiHana_cFi,
};
#pragma pop

/* 80A2156C-80A21578 -00001 000C+00 0/1 0/0 0/0 .data            @4947 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4947[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo__15daNpcKasiHana_cFi,
};
#pragma pop

/* 80A21578-80A21584 -00001 000C+00 0/1 0/0 0/0 .data            @4950 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4950[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo__15daNpcKasiHana_cFi,
};
#pragma pop

/* 80A21584-80A21590 -00001 000C+00 0/1 0/0 0/0 .data            @4955 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4955[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cheer__15daNpcKasiHana_cFi,
};
#pragma pop

/* 80A21590-80A2159C -00001 000C+00 0/1 0/0 0/0 .data            @4962 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4962[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo__15daNpcKasiHana_cFi,
};
#pragma pop

/* 80A2159C-80A215A8 -00001 000C+00 0/1 0/0 0/0 .data            @4966 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4966[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)fear__15daNpcKasiHana_cFi,
};
#pragma pop

/* 80A215A8-80A215B4 -00001 000C+00 1/1 0/0 0/0 .data            @5084 */
SECTION_DATA static void* lit_5084[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daNpcKasiHana_cFi,
};

/* 80A215B4-80A215C0 -00001 000C+00 0/1 0/0 0/0 .data            @5363 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5363[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)chace_st__15daNpcKasiHana_cFi,
};
#pragma pop

/* 80A215C0-80A215CC -00001 000C+00 0/1 0/0 0/0 .data            @5369 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5369[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)chace_st__15daNpcKasiHana_cFi,
};
#pragma pop

/* 80A215CC-80A215D8 -00001 000C+00 0/1 0/0 0/0 .data            @5376 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5376[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)chace__15daNpcKasiHana_cFi,
};
#pragma pop

/* 80A215D8-80A215E4 -00001 000C+00 0/1 0/0 0/0 .data            @5379 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5379[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)turn__15daNpcKasiHana_cFi,
};
#pragma pop

/* 80A215E4-80A215F0 -00001 000C+00 0/1 0/0 0/0 .data            @5386 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5386[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cheer__15daNpcKasiHana_cFi,
};
#pragma pop

/* 80A215F0-80A215FC -00001 000C+00 0/1 0/0 0/0 .data            @5395 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5395[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__15daNpcKasiHana_cFi,
};
#pragma pop

/* 80A215FC-80A21608 -00001 000C+00 0/1 0/0 0/0 .data            @5400 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5400[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo__15daNpcKasiHana_cFi,
};
#pragma pop

/* 80A21608-80A21614 -00001 000C+00 0/1 0/0 0/0 .data            @5407 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5407[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)fear__15daNpcKasiHana_cFi,
};
#pragma pop

/* 80A21614-80A21620 -00001 000C+00 1/1 0/0 0/0 .data            @5485 */
SECTION_DATA static void* lit_5485[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)chace__15daNpcKasiHana_cFi,
};

/* 80A21620-80A2162C -00001 000C+00 1/1 0/0 0/0 .data            @5502 */
SECTION_DATA static void* lit_5502[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daNpcKasiHana_cFi,
};

/* 80A2162C-80A21638 -00001 000C+00 1/1 0/0 0/0 .data            @5505 */
SECTION_DATA static void* lit_5505[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)chace_st__15daNpcKasiHana_cFi,
};

/* 80A21638-80A21644 -00001 000C+00 1/1 0/0 0/0 .data            @5577 */
SECTION_DATA static void* lit_5577[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daNpcKasiHana_cFi,
};

/* 80A21644-80A21660 -00001 001C+00 1/1 0/0 0/0 .data            @5636 */
SECTION_DATA static void* lit_5636[7] = {
    (void*)(((char*)fear__15daNpcKasiHana_cFi) + 0x1F8),
    (void*)(((char*)fear__15daNpcKasiHana_cFi) + 0x48),
    (void*)(((char*)fear__15daNpcKasiHana_cFi) + 0xB4),
    (void*)(((char*)fear__15daNpcKasiHana_cFi) + 0x1F8),
    (void*)(((char*)fear__15daNpcKasiHana_cFi) + 0xF0),
    (void*)(((char*)fear__15daNpcKasiHana_cFi) + 0x17C),
    (void*)(((char*)fear__15daNpcKasiHana_cFi) + 0x1E0),
};

/* 80A21660-80A2166C -00001 000C+00 1/1 0/0 0/0 .data            @5717 */
SECTION_DATA static void* lit_5717[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daNpcKasiHana_cFi,
};

/* 80A2166C-80A21678 -00001 000C+00 1/1 0/0 0/0 .data            @5727 */
SECTION_DATA static void* lit_5727[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daNpcKasiHana_cFi,
};

/* 80A21678-80A21684 -00001 000C+00 0/1 0/0 0/0 .data            @5762 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5762[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daNpcKasiHana_cFi,
};
#pragma pop

/* 80A21684-80A21690 -00001 000C+00 0/1 0/0 0/0 .data            @5765 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5765[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)escape__15daNpcKasiHana_cFi,
};
#pragma pop

/* 80A21690-80A2169C -00001 000C+00 0/1 0/0 0/0 .data            @5768 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5768[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daNpcKasiHana_cFi,
};
#pragma pop

/* 80A2169C-80A216A8 -00001 000C+00 0/1 0/0 0/0 .data            @5775 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5775[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daNpcKasiHana_cFi,
};
#pragma pop

/* 80A216A8-80A216B4 -00001 000C+00 0/1 0/0 0/0 .data            @5780 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5780[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cheer__15daNpcKasiHana_cFi,
};
#pragma pop

/* 80A216B4-80A216C0 -00001 000C+00 0/1 0/0 0/0 .data            @5860 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5860[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daNpcKasiHana_cFi,
};
#pragma pop

/* 80A216C0-80A216E0 -00001 0020+00 1/0 0/0 0/0 .data            daNpcKasiHana_MethodTable */
static actor_method_class daNpcKasiHana_MethodTable = {
    (process_method_func)daNpcKasiHana_Create__FPv,
    (process_method_func)daNpcKasiHana_Delete__FPv,
    (process_method_func)daNpcKasiHana_Execute__FPv,
    (process_method_func)daNpcKasiHana_IsDelete__FPv,
    (process_method_func)daNpcKasiHana_Draw__FPv,
};

/* 80A216E0-80A21710 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_KASIHANA */
extern actor_process_profile_definition g_profile_NPC_KASIHANA = {
  fpcLy_CURRENT_e,            // mLayerID
  7,                          // mListID
  fpcPi_CURRENT_e,            // mListPrio
  PROC_NPC_KASIHANA,          // mProcName
  &g_fpcLf_Method.base,      // sub_method
  sizeof(daNpcKasiHana_c),    // mSize
  0,                          // mSizeOther
  0,                          // mParameters
  &g_fopAc_Method.base,       // sub_method
  420,                        // mPriority
  &daNpcKasiHana_MethodTable, // sub_method
  0x00040108,                 // mStatus
  fopAc_NPC_e,                // mActorType
  fopAc_CULLBOX_CUSTOM_e,     // cullType
};

/* 80A21710-80A21758 00033C 0048+00 2/2 0/0 0/0 .data            __vt__15daNpcKasiHana_c */
SECTION_DATA extern void* __vt__15daNpcKasiHana_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcKasiHana_cFv,
    (void*)setParam__15daNpcKasiHana_cFv,
    (void*)main__15daNpcKasiHana_cFv,
    (void*)ctrlBtk__8daNpcF_cFv,
    (void*)adjustShapeAngle__15daNpcKasiHana_cFv,
    (void*)setMtx__8daNpcF_cFv,
    (void*)setMtx2__8daNpcF_cFv,
    (void*)setAttnPos__15daNpcKasiHana_cFv,
    (void*)setCollisions__8daNpcF_cFv,
    (void*)setExpressionAnm__8daNpcF_cFib,
    (void*)setExpressionBtp__8daNpcF_cFi,
    (void*)setExpression__8daNpcF_cFif,
    (void*)setMotionAnm__15daNpcKasiHana_cFif,
    (void*)setMotion__15daNpcKasiHana_cFifi,
    (void*)drawDbgInfo__15daNpcKasiHana_cFv,
    (void*)drawOtherMdls__8daNpcF_cFv,
};

/* 80A21758-80A21764 000384 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80A21764-80A21788 000390 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A206CC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A206C4,
};

/* 80A21788-80A21794 0003B4 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80A21794-80A217A0 0003C0 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80A217A0-80A217AC 0003CC 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80A217AC-80A217B8 0003D8 000C+00 6/6 0/0 0/0 .data            __vt__18daNpcF_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcF_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcF_ActorMngr_cFv,
};

/* 80A217B8-80A217C4 0003E4 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80A217C4-80A217D0 0003F0 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80A217D0-80A217DC 0003FC 000C+00 4/4 0/0 0/0 .data            __vt__16daNpcF_SPCurve_c */
SECTION_DATA extern void* __vt__16daNpcF_SPCurve_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16daNpcF_SPCurve_cFv,
};

/* 80A217DC-80A217E8 000408 000C+00 3/3 0/0 0/0 .data            __vt__13daNpcF_Path_c */
SECTION_DATA extern void* __vt__13daNpcF_Path_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcF_Path_cFv,
};

/* 80A217E8-80A217F4 000414 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcF_Lookat_c */
SECTION_DATA extern void* __vt__15daNpcF_Lookat_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcF_Lookat_cFv,
};

/* 80A1BE44-80A1C0A4 000F84 0260+00 1/1 0/0 0/0 .text            __ct__15daNpcKasiHana_cFv */
daNpcKasiHana_c::daNpcKasiHana_c() {
    // NONMATCHING
}

/* 80A1C0A4-80A1C334 0011E4 0290+00 1/0 0/0 0/0 .text            __dt__15daNpcKasiHana_cFv */
daNpcKasiHana_c::~daNpcKasiHana_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A210C8-80A21144 000048 007C+00 5/12 0/0 0/0 .rodata          m__21daNpcKasiHana_Param_c */
SECTION_RODATA u8 const daNpcKasiHana_Param_c::m[124] = {
    0x42, 0x5C, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00,
    0x43, 0x58, 0x00, 0x00, 0x43, 0x0C, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x02, 0x00, 0x06, 0x00, 0x03, 0x00, 0x06,
    0x42, 0x70, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0xC3, 0x96, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x44, 0x48, 0x00, 0x00,
    0x43, 0xC8, 0x00, 0x00, 0x41, 0x60, 0x00, 0x00, 0x41, 0x80, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A210C8, &daNpcKasiHana_Param_c::m);

/* 80A21144-80A21148 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4768 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4768 = -60.0f;
COMPILER_STRIP_GATE(0x80A21144, &lit_4768);
#pragma pop

/* 80A21148-80A2114C 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4769 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4769 = -10.0f;
COMPILER_STRIP_GATE(0x80A21148, &lit_4769);
#pragma pop

/* 80A2114C-80A21150 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4770 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4770 = 60.0f;
COMPILER_STRIP_GATE(0x80A2114C, &lit_4770);
#pragma pop

/* 80A21150-80A21154 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4771 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4771 = 160.0f;
COMPILER_STRIP_GATE(0x80A21150, &lit_4771);
#pragma pop

/* 80A1C334-80A1C5B0 001474 027C+00 1/1 0/0 0/0 .text            Create__15daNpcKasiHana_cFv */
void daNpcKasiHana_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A21154-80A21158 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4818 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4818 = 0x3F5CF29A;
COMPILER_STRIP_GATE(0x80A21154, &lit_4818);
#pragma pop

/* 80A1C5B0-80A1C734 0016F0 0184+00 1/1 0/0 0/0 .text            CreateHeap__15daNpcKasiHana_cFv */
void daNpcKasiHana_c::CreateHeap() {
    // NONMATCHING
}

/* 80A1C734-80A1C768 001874 0034+00 1/1 0/0 0/0 .text            Delete__15daNpcKasiHana_cFv */
void daNpcKasiHana_c::Delete() {
    // NONMATCHING
}

/* 80A1C768-80A1C78C 0018A8 0024+00 2/2 0/0 0/0 .text            Execute__15daNpcKasiHana_cFv */
void daNpcKasiHana_c::Execute() {
    // NONMATCHING
}

/* 80A1C78C-80A1C7D8 0018CC 004C+00 1/1 0/0 0/0 .text            Draw__15daNpcKasiHana_cFv */
void daNpcKasiHana_c::Draw() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A21158-80A21164 0000D8 000C+00 1/1 0/0 0/0 .rodata          @4839 */
SECTION_RODATA static u8 const lit_4839[12] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
};
COMPILER_STRIP_GATE(0x80A21158, &lit_4839);

/* 80A1C7D8-80A1C964 001918 018C+00 1/1 0/0 0/0 .text
 * ctrlJoint__15daNpcKasiHana_cFP8J3DJointP8J3DModel            */
void daNpcKasiHana_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 80A1C964-80A1C984 001AA4 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__15daNpcKasiHana_cFP10fopAc_ac_c          */
void daNpcKasiHana_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80A1C984-80A1C9D0 001AC4 004C+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__15daNpcKasiHana_cFP8J3DJointi             */
void daNpcKasiHana_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80A1C9D0-80A1CA60 001B10 0090+00 1/0 0/0 0/0 .text            setParam__15daNpcKasiHana_cFv */
void daNpcKasiHana_c::setParam() {
    // NONMATCHING
}

/* 80A1CA60-80A1CD28 001BA0 02C8+00 1/0 0/0 0/0 .text            main__15daNpcKasiHana_cFv */
void daNpcKasiHana_c::main() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A21164-80A21168 0000E4 0004+00 0/1 0/0 0/0 .rodata          @5044 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5044 = 10.0f;
COMPILER_STRIP_GATE(0x80A21164, &lit_5044);
#pragma pop

/* 80A21168-80A2116C 0000E8 0004+00 1/2 0/0 0/0 .rodata          @5045 */
SECTION_RODATA static f32 const lit_5045 = 15.0f;
COMPILER_STRIP_GATE(0x80A21168, &lit_5045);

/* 80A1CD28-80A1CED0 001E68 01A8+00 1/0 0/0 0/0 .text            setAttnPos__15daNpcKasiHana_cFv */
void daNpcKasiHana_c::setAttnPos() {
    // NONMATCHING
}

/* 80A1CED0-80A1CFA0 002010 00D0+00 1/0 0/0 0/0 .text            setMotionAnm__15daNpcKasiHana_cFif
 */
bool daNpcKasiHana_c::setMotionAnm(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 80A1CFA0-80A1CFE8 0020E0 0048+00 1/0 0/0 0/0 .text            setMotion__15daNpcKasiHana_cFifi */
void daNpcKasiHana_c::setMotion(int param_0, f32 param_1, int param_2) {
    // NONMATCHING
}

/* 80A1CFE8-80A1CFF0 002128 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__15daNpcKasiHana_cFv */
bool daNpcKasiHana_c::drawDbgInfo() {
    return false;
}

/* 80A1CFF0-80A1D238 002130 0248+00 1/1 0/0 0/0 .text            reset__15daNpcKasiHana_cFv */
void daNpcKasiHana_c::reset() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A2116C-80A21178 0000EC 000C+00 0/1 0/0 0/0 .rodata          @5120 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5120[12] = {
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A2116C, &lit_5120);
#pragma pop

/* 80A21178-80A2117C 0000F8 0004+00 0/1 0/0 0/0 .rodata          @5121 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5121[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A21178, &lit_5121);
#pragma pop

/* 80A2117C-80A21188 0000FC 000C+00 0/1 0/0 0/0 .rodata          @5122 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5122[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A2117C, &lit_5122);
#pragma pop

/* 80A21188-80A2118C 000108 0004+00 0/1 0/0 0/0 .rodata          @5123 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5123[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A21188, &lit_5123);
#pragma pop

/* 80A2118C-80A21198 00010C 000C+00 0/1 0/0 0/0 .rodata          @5124 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5124[12] = {
    0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A2118C, &lit_5124);
#pragma pop

/* 80A21198-80A2119C 000118 0004+00 0/1 0/0 0/0 .rodata          @5125 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5125[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A21198, &lit_5125);
#pragma pop

/* 80A2119C-80A211A8 00011C 000C+00 0/1 0/0 0/0 .rodata          @5126 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5126[12] = {
    0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A2119C, &lit_5126);
#pragma pop

/* 80A211A8-80A211AC 000128 0004+00 0/1 0/0 0/0 .rodata          @5127 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5127[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A211A8, &lit_5127);
#pragma pop

/* 80A211AC-80A211B8 00012C 000C+00 0/1 0/0 0/0 .rodata          @5128 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5128[12] = {
    0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A211AC, &lit_5128);
#pragma pop

/* 80A211B8-80A211BC 000138 0004+00 0/1 0/0 0/0 .rodata          @5129 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5129[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A211B8, &lit_5129);
#pragma pop

/* 80A211BC-80A211C8 00013C 000C+00 0/1 0/0 0/0 .rodata          @5130 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5130[12] = {
    0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A211BC, &lit_5130);
#pragma pop

/* 80A211C8-80A211CC 000148 0004+00 0/1 0/0 0/0 .rodata          @5131 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5131[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A211C8, &lit_5131);
#pragma pop

/* 80A211CC-80A211D8 00014C 000C+00 0/1 0/0 0/0 .rodata          @5132 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5132[12] = {
    0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A211CC, &lit_5132);
#pragma pop

/* 80A211D8-80A211DC 000158 0004+00 0/1 0/0 0/0 .rodata          @5133 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5133[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A211D8, &lit_5133);
#pragma pop

/* 80A211DC-80A211E8 00015C 000C+00 0/1 0/0 0/0 .rodata          @5134 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5134[12] = {
    0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A211DC, &lit_5134);
#pragma pop

/* 80A211E8-80A211EC 000168 0004+00 0/1 0/0 0/0 .rodata          @5135 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5135[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A211E8, &lit_5135);
#pragma pop

/* 80A211EC-80A211F8 00016C 000C+00 0/1 0/0 0/0 .rodata          @5136 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5136[12] = {
    0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A211EC, &lit_5136);
#pragma pop

/* 80A211F8-80A211FC 000178 0004+00 0/1 0/0 0/0 .rodata          @5137 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5137[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A211F8, &lit_5137);
#pragma pop

/* 80A211FC-80A21208 00017C 000C+00 0/1 0/0 0/0 .rodata          @5138 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5138[12] = {
    0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A211FC, &lit_5138);
#pragma pop

/* 80A21208-80A2120C 000188 0004+00 0/1 0/0 0/0 .rodata          @5139 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5139[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A21208, &lit_5139);
#pragma pop

/* 80A2120C-80A21218 00018C 000C+00 0/1 0/0 0/0 .rodata          @5140 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5140[12] = {
    0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A2120C, &lit_5140);
#pragma pop

/* 80A21218-80A2121C 000198 0004+00 0/1 0/0 0/0 .rodata          @5141 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5141[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A21218, &lit_5141);
#pragma pop

/* 80A2121C-80A21228 00019C 000C+00 0/1 0/0 0/0 .rodata          @5142 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5142[12] = {
    0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A2121C, &lit_5142);
#pragma pop

/* 80A21228-80A21234 0001A8 000C+00 0/1 0/0 0/0 .rodata          @5143 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5143[12] = {
    0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A21228, &lit_5143);
#pragma pop

/* 80A21234-80A21240 0001B4 000C+00 0/1 0/0 0/0 .rodata          @5144 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5144[12] = {
    0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A21234, &lit_5144);
#pragma pop

/* 80A21240-80A2124C 0001C0 000C+00 0/1 0/0 0/0 .rodata          @5145 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5145[12] = {
    0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A21240, &lit_5145);
#pragma pop

/* 80A2124C-80A21258 0001CC 000C+00 0/1 0/0 0/0 .rodata          @5146 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5146[12] = {
    0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80A2124C, &lit_5146);
#pragma pop

/* 80A21258-80A21264 0001D8 000C+00 0/1 0/0 0/0 .rodata          @5147 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5147[12] = {
    0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A21258, &lit_5147);
#pragma pop

/* 80A1D238-80A1D604 002378 03CC+00 1/1 0/0 0/0 .text            playMotion__15daNpcKasiHana_cFv */
void daNpcKasiHana_c::playMotion() {
    // NONMATCHING
}

/* 80A1D604-80A1D77C 002744 0178+00 1/1 0/0 0/0 .text
 * playMotionAnmLoop__15daNpcKasiHana_cFPPPQ28daNpcF_c18daNpcF_anmPlayData */
void daNpcKasiHana_c::playMotionAnmLoop(daNpcF_c::daNpcF_anmPlayData*** param_0) {
    // NONMATCHING
}

/* 80A1D77C-80A1D824 0028BC 00A8+00 9/9 0/0 0/0 .text
 * setAction__15daNpcKasiHana_cFM15daNpcKasiHana_cFPCvPvi_i     */
void daNpcKasiHana_c::setAction(int (daNpcKasiHana_c::*param_0)(int)) {
    // NONMATCHING
}

/* 80A1D824-80A1D848 002964 0024+00 8/8 0/0 0/0 .text            setLookMode__15daNpcKasiHana_cFi */
void daNpcKasiHana_c::setLookMode(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A21264-80A2127C 0001E4 0018+00 0/0 0/0 0/0 .rodata          @5148 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5148[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A21264, &lit_5148);
#pragma pop

/* 80A2127C-80A212AC 0001FC 0030+00 0/0 0/0 0/0 .rodata          @5149 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5149[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A2127C, &lit_5149);
#pragma pop

/* 80A212AC-80A212B8 00022C 000C+00 0/1 0/0 0/0 .rodata          @5228 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5228[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A212AC, &lit_5228);
#pragma pop

/* 80A212B8-80A212BC 000238 0004+00 0/1 0/0 0/0 .rodata          @5276 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5276 = -80.0f;
COMPILER_STRIP_GATE(0x80A212B8, &lit_5276);
#pragma pop

/* 80A212BC-80A212C0 00023C 0004+00 0/1 0/0 0/0 .rodata          @5277 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5277 = 80.0f;
COMPILER_STRIP_GATE(0x80A212BC, &lit_5277);
#pragma pop

/* 80A212C0-80A212C4 000240 0004+00 0/1 0/0 0/0 .rodata          @5278 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5278 = 40.0f;
COMPILER_STRIP_GATE(0x80A212C0, &lit_5278);
#pragma pop

/* 80A1D848-80A1DA28 002988 01E0+00 1/1 0/0 0/0 .text            lookat__15daNpcKasiHana_cFv */
void daNpcKasiHana_c::lookat() {
    // NONMATCHING
}

/* 80A1DA28-80A1DB1C 002B68 00F4+00 1/1 0/0 0/0 .text            step__15daNpcKasiHana_cFsi */
void daNpcKasiHana_c::step(s16 param_0, int param_1) {
    // NONMATCHING
}

/* 80A1DB1C-80A1DC00 002C5C 00E4+00 1/1 0/0 0/0 .text            chkFindPlayer__15daNpcKasiHana_cFv
 */
void daNpcKasiHana_c::chkFindPlayer() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A212C4-80A212C8 000244 0004+00 0/1 0/0 0/0 .rodata          @5471 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5471 = 12.0f;
COMPILER_STRIP_GATE(0x80A212C4, &lit_5471);
#pragma pop

/* 80A212C8-80A212CC 000248 0004+00 0/1 0/0 0/0 .rodata          @5472 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5472 = 350.0f;
COMPILER_STRIP_GATE(0x80A212C8, &lit_5472);
#pragma pop

/* 80A212CC-80A212D0 00024C 0004+00 0/1 0/0 0/0 .rodata          @5473 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5473 = 50.0f;
COMPILER_STRIP_GATE(0x80A212CC, &lit_5473);
#pragma pop

/* 80A212D0-80A212D8 000250 0008+00 0/1 0/0 0/0 .rodata          @5474 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5474[8] = {
    0x40, 0x7F, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A212D0, &lit_5474);
#pragma pop

/* 80A212D8-80A212E0 000258 0008+00 0/1 0/0 0/0 .rodata          @5475 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5475[8] = {
    0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A212D8, &lit_5475);
#pragma pop

/* 80A1DC00-80A1E184 002D40 0584+00 10/0 0/0 0/0 .text            wait__15daNpcKasiHana_cFi */
void daNpcKasiHana_c::wait(int param_0) {
    // NONMATCHING
}

/* 80A1E184-80A1E228 0032C4 00A4+00 3/0 0/0 0/0 .text            chace_st__15daNpcKasiHana_cFi */
void daNpcKasiHana_c::chace_st(int param_0) {
    // NONMATCHING
}

/* 80A1E228-80A1E3AC 003368 0184+00 2/0 0/0 0/0 .text            chace__15daNpcKasiHana_cFi */
void daNpcKasiHana_c::chace(int param_0) {
    // NONMATCHING
}

/* 80A1E3AC-80A1E4AC 0034EC 0100+00 1/1 0/0 0/0 .text            getChacePos__15daNpcKasiHana_cFv */
void daNpcKasiHana_c::getChacePos() {
    // NONMATCHING
}

/* 80A1E4AC-80A1E578 0035EC 00CC+00 1/0 0/0 0/0 .text            turn__15daNpcKasiHana_cFi */
void daNpcKasiHana_c::turn(int param_0) {
    // NONMATCHING
}

/* 80A1E578-80A1E78C 0036B8 0214+00 3/0 0/0 0/0 .text            fear__15daNpcKasiHana_cFi */
void daNpcKasiHana_c::fear(int param_0) {
    // NONMATCHING
}

/* 80A21848-80A21854 000048 000C+00 1/1 0/0 0/0 .bss             @4323 */
static u8 lit_4323[12];

/* 80A21854-80A21858 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80A21858-80A2185C 000058 0004+00 1/2 0/0 0/0 .bss             mTargetTag__15daNpcKasiHana_c */
u8 daNpcKasiHana_c::mTargetTag[4];

/* 80A2185C-80A21860 00005C 0004+00 0/1 0/0 0/0 .bss             mTargetTagDist__15daNpcKasiHana_c
 */
#pragma push
#pragma force_active on
u8 daNpcKasiHana_c::mTargetTagDist[4];
#pragma pop

/* 80A21860-80A21864 000060 0002+02 1/2 0/0 0/0 .bss             mWolfAngle__15daNpcKasiHana_c */
u8 daNpcKasiHana_c::mWolfAngle[2 + 2 /* padding */];

/* 80A1E78C-80A1E7F4 0038CC 0068+00 1/1 0/0 0/0 .text            srchWolfTag__15daNpcKasiHana_cFv */
void daNpcKasiHana_c::srchWolfTag() {
    // NONMATCHING
}

/* 80A1E7F4-80A1E8C4 003934 00D0+00 1/1 0/0 0/0 .text _srch_escape_tag__15daNpcKasiHana_cFPvPv */
void daNpcKasiHana_c::_srch_escape_tag(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80A1E8C4-80A1E9F8 003A04 0134+00 1/1 0/0 0/0 .text getWolfPathNearIdx__15daNpcKasiHana_cFv */
void daNpcKasiHana_c::getWolfPathNearIdx() {
    // NONMATCHING
}

/* 80A1E9F8-80A1EB5C 003B38 0164+00 1/0 0/0 0/0 .text            talk__15daNpcKasiHana_cFi */
void daNpcKasiHana_c::talk(int param_0) {
    // NONMATCHING
}

/* 80A1EB5C-80A1EE38 003C9C 02DC+00 4/0 0/0 0/0 .text            demo__15daNpcKasiHana_cFi */
void daNpcKasiHana_c::demo(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A212E0-80A212E4 000260 0004+00 0/0 0/0 0/0 .rodata          @5635 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5635 = 1.5f;
COMPILER_STRIP_GATE(0x80A212E0, &lit_5635);
#pragma pop

/* 80A212E4-80A212E8 000264 0004+00 0/1 0/0 0/0 .rodata          @5847 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5847 = 1.75f;
COMPILER_STRIP_GATE(0x80A212E4, &lit_5847);
#pragma pop

/* 80A1EE38-80A1EF90 003F78 0158+00 1/0 0/0 0/0 .text            escape__15daNpcKasiHana_cFi */
void daNpcKasiHana_c::escape(int param_0) {
    // NONMATCHING
}

/* 80A1EF90-80A1F198 0040D0 0208+00 3/0 0/0 0/0 .text            cheer__15daNpcKasiHana_cFi */
void daNpcKasiHana_c::cheer(int param_0) {
    // NONMATCHING
}

/* 80A1F198-80A1F1E4 0042D8 004C+00 5/5 0/0 0/0 .text            _turn_to_link__15daNpcKasiHana_cFs
 */
void daNpcKasiHana_c::_turn_to_link(s16 param_0) {
    // NONMATCHING
}

/* 80A1F1E4-80A1F240 004324 005C+00 5/5 0/0 0/0 .text _turn_pos__15daNpcKasiHana_cFRC4cXyzs */
void daNpcKasiHana_c::_turn_pos(cXyz const& param_0, s16 param_1) {
    // NONMATCHING
}

/* 80A1F240-80A1F318 004380 00D8+00 3/3 0/0 0/0 .text
 * actor_front_check__15daNpcKasiHana_cFP10fopAc_ac_c           */
void daNpcKasiHana_c::actor_front_check(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80A1F318-80A1F384 004458 006C+00 1/1 0/0 0/0 .text _getOffset__15daNpcKasiHana_cFRC4cXyzR4cXyz
 */
void daNpcKasiHana_c::_getOffset(cXyz const& param_0, cXyz& param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A21358-80A21358 0002D8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A213BD = "cutId";
#pragma pop

/* 80A1F384-80A1F42C 0044C4 00A8+00 1/0 0/0 0/0 .text _Evt_Kasi_Appear__15daNpcKasiHana_cFi */
void daNpcKasiHana_c::_Evt_Kasi_Appear(int param_0) {
    // NONMATCHING
}

/* 80A1F42C-80A1F50C 00456C 00E0+00 1/1 0/0 0/0 .text
 * _Evt_Kasi_Appear_CutInit__15daNpcKasiHana_cFRCi              */
void daNpcKasiHana_c::_Evt_Kasi_Appear_CutInit(int const& param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A212E8-80A212EC 000268 0004+00 0/3 0/0 0/0 .rodata          @5999 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5999 = 19.0f;
COMPILER_STRIP_GATE(0x80A212E8, &lit_5999);
#pragma pop

/* 80A1F50C-80A1F638 00464C 012C+00 1/1 0/0 0/0 .text
 * _Evt_Kasi_Appear_CutMain__15daNpcKasiHana_cFRCi              */
void daNpcKasiHana_c::_Evt_Kasi_Appear_CutMain(int const& param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A21358-80A21358 0002D8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A213C3 = "mesNo2";
SECTION_DEAD static char const* const stringBase_80A213CA = "mesNo1";
#pragma pop

/* 80A1F638-80A1F740 004778 0108+00 1/0 0/0 0/0 .text            _Evt_Kasi_Talk__15daNpcKasiHana_cFi
 */
void daNpcKasiHana_c::_Evt_Kasi_Talk(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A212EC-80A212F8 00026C 000C+00 1/1 0/0 0/0 .rodata          @6026 */
SECTION_RODATA static u8 const lit_6026[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A212EC, &lit_6026);

/* 80A1F740-80A1F860 004880 0120+00 1/1 0/0 0/0 .text
 * _Evt_Kasi_Talk_CutInit__15daNpcKasiHana_cFRCi                */
void daNpcKasiHana_c::_Evt_Kasi_Talk_CutInit(int const& param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A212F8-80A21304 000278 000C+00 0/1 0/0 0/0 .rodata          @6044 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6044[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A212F8, &lit_6044);
#pragma pop

/* 80A21304-80A2130C 000284 0008+00 0/1 0/0 0/0 .rodata          @6045 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6045[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80A21304, &lit_6045);
#pragma pop

/* 80A1F860-80A1F9F4 0049A0 0194+00 1/1 0/0 0/0 .text
 * _Evt_Kasi_Talk_CutMain__15daNpcKasiHana_cFRCii               */
void daNpcKasiHana_c::_Evt_Kasi_Talk_CutMain(int const& param_0, int param_1) {
    // NONMATCHING
}

/* 80A1F9F4-80A1FA9C 004B34 00A8+00 1/0 0/0 0/0 .text            _Evt_Kasi__15daNpcKasiHana_cFi */
void daNpcKasiHana_c::_Evt_Kasi(int param_0) {
    // NONMATCHING
}

/* 80A1FA9C-80A1FBC4 004BDC 0128+00 1/1 0/0 0/0 .text _Evt_Kasi_CutInit__15daNpcKasiHana_cFRCi */
void daNpcKasiHana_c::_Evt_Kasi_CutInit(int const& param_0) {
    // NONMATCHING
}

/* 80A1FBC4-80A1FD64 004D04 01A0+00 1/1 0/0 0/0 .text _Evt_Kasi_CutMain__15daNpcKasiHana_cFRCi */
void daNpcKasiHana_c::_Evt_Kasi_CutMain(int const& param_0) {
    // NONMATCHING
}

/* 80A1FD64-80A1FE6C 004EA4 0108+00 1/0 0/0 0/0 .text _Evt_Kasi_Cheer__15daNpcKasiHana_cFi */
void daNpcKasiHana_c::_Evt_Kasi_Cheer(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A2130C-80A21318 00028C 000C+00 1/1 0/0 0/0 .rodata          @6169 */
SECTION_RODATA static u8 const lit_6169[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A2130C, &lit_6169);

/* 80A1FE6C-80A1FF78 004FAC 010C+00 1/1 0/0 0/0 .text
 * _Evt_Kasi_Cheer_CutInit__15daNpcKasiHana_cFRCi               */
void daNpcKasiHana_c::_Evt_Kasi_Cheer_CutInit(int const& param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A21318-80A21324 000298 000C+00 0/1 0/0 0/0 .rodata          @6185 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6185[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A21318, &lit_6185);
#pragma pop

/* 80A21324-80A2132C 0002A4 0008+00 0/1 0/0 0/0 .rodata          @6186 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6186[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80A21324, &lit_6186);
#pragma pop

/* 80A1FF78-80A2016C 0050B8 01F4+00 1/1 0/0 0/0 .text
 * _Evt_Kasi_Cheer_CutMain__15daNpcKasiHana_cFRCii              */
void daNpcKasiHana_c::_Evt_Kasi_Cheer_CutMain(int const& param_0, int param_1) {
    // NONMATCHING
}

/* 80A2016C-80A20244 0052AC 00D8+00 1/0 0/0 0/0 .text _Evt_Kasi_Cheer2__15daNpcKasiHana_cFi */
void daNpcKasiHana_c::_Evt_Kasi_Cheer2(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A2132C-80A21338 0002AC 000C+00 1/1 0/0 0/0 .rodata          @6235 */
SECTION_RODATA static u8 const lit_6235[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A2132C, &lit_6235);

/* 80A20244-80A20350 005384 010C+00 1/1 0/0 0/0 .text
 * _Evt_Kasi_Cheer2_CutInit__15daNpcKasiHana_cFRCi              */
void daNpcKasiHana_c::_Evt_Kasi_Cheer2_CutInit(int const& param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A21338-80A21344 0002B8 000C+00 0/1 0/0 0/0 .rodata          @6251 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6251[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A21338, &lit_6251);
#pragma pop

/* 80A21344-80A21350 0002C4 0008+04 0/1 0/0 0/0 .rodata          @6252 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6252[8 + 4 /* padding */] = {
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    /* padding */
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A21344, &lit_6252);
#pragma pop

/* 80A20350-80A20544 005490 01F4+00 1/1 0/0 0/0 .text
 * _Evt_Kasi_Cheer2_CutMain__15daNpcKasiHana_cFRCii             */
void daNpcKasiHana_c::_Evt_Kasi_Cheer2_CutMain(int const& param_0, int param_1) {
    // NONMATCHING
}

/* 80A20544-80A20564 005684 0020+00 1/0 0/0 0/0 .text            daNpcKasiHana_Create__FPv */
static void daNpcKasiHana_Create(void* param_0) {
    // NONMATCHING
}

/* 80A20564-80A20584 0056A4 0020+00 1/0 0/0 0/0 .text            daNpcKasiHana_Delete__FPv */
static void daNpcKasiHana_Delete(void* param_0) {
    // NONMATCHING
}

/* 80A20584-80A205A4 0056C4 0020+00 1/0 0/0 0/0 .text            daNpcKasiHana_Execute__FPv */
static void daNpcKasiHana_Execute(void* param_0) {
    // NONMATCHING
}

/* 80A205A4-80A205C4 0056E4 0020+00 1/0 0/0 0/0 .text            daNpcKasiHana_Draw__FPv */
static void daNpcKasiHana_Draw(void* param_0) {
    // NONMATCHING
}

/* 80A205C4-80A205CC 005704 0008+00 1/0 0/0 0/0 .text            daNpcKasiHana_IsDelete__FPv */
static bool daNpcKasiHana_IsDelete(void* param_0) {
    return true;
}

/* 80A205CC-80A20614 00570C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80A20614-80A2065C 005754 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80A2065C-80A20678 00579C 001C+00 1/1 0/0 0/0 .text            getCenterPos__15daNpcKasi_Mng_cFv
 */
void daNpcKasi_Mng_c::getCenterPos() {
    // NONMATCHING
}

/* 80A20678-80A2067C 0057B8 0004+00 1/0 0/0 0/0 .text adjustShapeAngle__15daNpcKasiHana_cFv */
void daNpcKasiHana_c::adjustShapeAngle() {
    /* empty function */
}

/* ############################################################################################## */
/* 80A217F4-80A21800 000420 000C+00 2/2 0/0 0/0 .data            __vt__21daNpcKasiHana_Param_c */
SECTION_DATA extern void* __vt__21daNpcKasiHana_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__21daNpcKasiHana_Param_cFv,
};

/* 80A2067C-80A206C4 0057BC 0048+00 2/1 0/0 0/0 .text            __dt__21daNpcKasiHana_Param_cFv */
daNpcKasiHana_Param_c::~daNpcKasiHana_Param_c() {
    // NONMATCHING
}

/* 80A206C4-80A206CC 005804 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80A206C4() {
    // NONMATCHING
}

/* 80A206CC-80A206D4 00580C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80A206CC() {
    // NONMATCHING
}

/* 80A206D4-80A20734 005814 0060+00 1/0 0/0 0/0 .text            __dt__13daNpcF_Path_cFv */
// daNpcF_Path_c::~daNpcF_Path_c() {
extern "C" void __dt__13daNpcF_Path_cFv() {
    // NONMATCHING
}

/* 80A20734-80A2077C 005874 0048+00 1/0 0/0 0/0 .text            __dt__16daNpcF_SPCurve_cFv */
// daNpcF_SPCurve_c::~daNpcF_SPCurve_c() {
extern "C" void __dt__16daNpcF_SPCurve_cFv() {
    // NONMATCHING
}

/* 80A2077C-80A207C4 0058BC 0048+00 5/4 0/0 0/0 .text            __dt__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::~daNpcF_ActorMngr_c() {
extern "C" void __dt__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80A207C4-80A20800 005904 003C+00 2/2 0/0 0/0 .text            __ct__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::daNpcF_ActorMngr_c() {
extern "C" void __ct__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80A20800-80A208D0 005940 00D0+00 1/0 0/0 0/0 .text            __dt__15daNpcF_Lookat_cFv */
// daNpcF_Lookat_c::~daNpcF_Lookat_c() {
extern "C" void __dt__15daNpcF_Lookat_cFv() {
    // NONMATCHING
}

/* 80A208D0-80A208D4 005A10 0004+00 2/2 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80A208D4-80A208D8 005A14 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80A208D8-80A20B24 005A18 024C+00 1/1 0/0 0/0 .text            __dt__8daNpcF_cFv */
// daNpcF_c::~daNpcF_c() {
extern "C" void __dt__8daNpcF_cFv() {
    // NONMATCHING
}

/* 80A20B24-80A20D14 005C64 01F0+00 1/1 0/0 0/0 .text            __ct__8daNpcF_cFv */
// daNpcF_c::daNpcF_c() {
extern "C" void __ct__8daNpcF_cFv() {
    // NONMATCHING
}

/* 80A20D14-80A20D84 005E54 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80A20D84-80A20DE0 005EC4 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80A20DE0-80A20E50 005F20 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80A20E50-80A20E98 005F90 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80A20E98-80A20EA0 005FD8 0008+00 1/0 0/0 0/0 .text            ctrlBtk__8daNpcF_cFv */
// bool daNpcF_c::ctrlBtk() {
extern "C" bool ctrlBtk__8daNpcF_cFv() {
    return false;
}

/* 80A20EA0-80A20EA4 005FE0 0004+00 1/0 0/0 0/0 .text            setCollisions__8daNpcF_cFv */
// void daNpcF_c::setCollisions() {
extern "C" void setCollisions__8daNpcF_cFv() {
    /* empty function */
}

/* 80A20EA4-80A20EAC 005FE4 0008+00 1/0 0/0 0/0 .text            setExpressionAnm__8daNpcF_cFib */
// bool daNpcF_c::setExpressionAnm(int param_0, bool param_1) {
extern "C" bool setExpressionAnm__8daNpcF_cFib() {
    return true;
}

/* 80A20EAC-80A20EB4 005FEC 0008+00 1/0 0/0 0/0 .text            setExpressionBtp__8daNpcF_cFi */
// bool daNpcF_c::setExpressionBtp(int param_0) {
extern "C" bool setExpressionBtp__8daNpcF_cFi() {
    return true;
}

/* 80A20EB4-80A20EB8 005FF4 0004+00 1/0 0/0 0/0 .text            setExpression__8daNpcF_cFif */
// void daNpcF_c::setExpression(int param_0, f32 param_1) {
extern "C" void setExpression__8daNpcF_cFif() {
    /* empty function */
}

/* 80A20EB8-80A20EBC 005FF8 0004+00 1/0 0/0 0/0 .text            drawOtherMdls__8daNpcF_cFv */
// void daNpcF_c::drawOtherMdls() {
extern "C" void drawOtherMdls__8daNpcF_cFv() {
    /* empty function */
}

/* 80A20EBC-80A20F04 005FFC 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A21350-80A21358 0002D0 0008+00 1/1 0/0 0/0 .rodata          @6323 */
SECTION_RODATA static u8 const lit_6323[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A21350, &lit_6323);

/* 80A20F04-80A20F80 006044 007C+00 1/1 0/0 0/0 .text            cLib_getRndValue<i>__Fii */
extern "C" void func_80A20F04(void* _this, int param_0, int param_1) {
    // NONMATCHING
}

/* 80A20F80-80A2106C 0060C0 00EC+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_kasi_hana_cpp */
void __sinit_d_a_npc_kasi_hana_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80A20F80, __sinit_d_a_npc_kasi_hana_cpp);
#pragma pop

/* ############################################################################################## */
/* 80A21864-80A21868 000064 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80A21864[4];
#pragma pop

/* 80A21868-80A2186C 000068 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80A21868[4];
#pragma pop

/* 80A2186C-80A21870 00006C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80A2186C[4];
#pragma pop

/* 80A21870-80A21874 000070 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80A21870[4];
#pragma pop

/* 80A21874-80A21878 000074 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A21874[4];
#pragma pop

/* 80A21878-80A2187C 000078 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A21878[4];
#pragma pop

/* 80A2187C-80A21880 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80A2187C[4];
#pragma pop

/* 80A21880-80A21884 000080 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80A21880[4];
#pragma pop

/* 80A21884-80A21888 000084 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80A21884[4];
#pragma pop

/* 80A21888-80A2188C 000088 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80A21888[4];
#pragma pop

/* 80A2188C-80A21890 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80A2188C[4];
#pragma pop

/* 80A21890-80A21894 000090 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80A21890[4];
#pragma pop

/* 80A21894-80A21898 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80A21894[4];
#pragma pop

/* 80A21898-80A2189C 000098 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A21898[4];
#pragma pop

/* 80A2189C-80A218A0 00009C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80A2189C[4];
#pragma pop

/* 80A218A0-80A218A4 0000A0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80A218A0[4];
#pragma pop

/* 80A218A4-80A218A8 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80A218A4[4];
#pragma pop

/* 80A218A8-80A218AC 0000A8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80A218A8[4];
#pragma pop

/* 80A218AC-80A218B0 0000AC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80A218AC[4];
#pragma pop

/* 80A218B0-80A218B4 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80A218B0[4];
#pragma pop

/* 80A218B4-80A218B8 0000B4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80A218B4[4];
#pragma pop

/* 80A218B8-80A218BC 0000B8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A218B8[4];
#pragma pop

/* 80A218BC-80A218C0 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A218BC[4];
#pragma pop

/* 80A218C0-80A218C4 0000C0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A218C0[4];
#pragma pop

/* 80A218C4-80A218C8 0000C4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80A218C4[4];
#pragma pop

/* 80A21358-80A21358 0002D8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
