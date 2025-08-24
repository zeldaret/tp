/**
 * @file d_a_npc_kakashi.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_kakashi.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__15daNpc_Kakashi_cFv();
extern "C" void create__15daNpc_Kakashi_cFv();
extern "C" void CreateHeap__15daNpc_Kakashi_cFv();
extern "C" void Delete__15daNpc_Kakashi_cFv();
extern "C" void Execute__15daNpc_Kakashi_cFv();
extern "C" void Draw__15daNpc_Kakashi_cFv();
extern "C" void ctrlJoint__15daNpc_Kakashi_cFP8J3DJointP8J3DModel();
extern "C" void createHeapCallBack__15daNpc_Kakashi_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__15daNpc_Kakashi_cFP8J3DJointi();
extern "C" void getType__15daNpc_Kakashi_cFv();
extern "C" void isDelete__15daNpc_Kakashi_cFv();
extern "C" void reset__15daNpc_Kakashi_cFv();
extern "C" void setParam__15daNpc_Kakashi_cFv();
extern "C" void srchActors__15daNpc_Kakashi_cFv();
extern "C" void checkChangeEvt__15daNpc_Kakashi_cFv();
extern "C" void evtTalk__15daNpc_Kakashi_cFv();
extern "C" void evtEndProc__15daNpc_Kakashi_cFv();
extern "C" void evtCutProc__15daNpc_Kakashi_cFv();
extern "C" void action__15daNpc_Kakashi_cFv();
extern "C" void beforeMove__15daNpc_Kakashi_cFv();
extern "C" void setAttnPos__15daNpc_Kakashi_cFv();
extern "C" void setCollision__15daNpc_Kakashi_cFv();
extern "C" bool drawDbgInfo__15daNpc_Kakashi_cFv();
extern "C" void selectAction__15daNpc_Kakashi_cFv();
extern "C" void chkAction__15daNpc_Kakashi_cFM15daNpc_Kakashi_cFPCvPvPv_i();
extern "C" void setAction__15daNpc_Kakashi_cFM15daNpc_Kakashi_cFPCvPvPv_i();
extern "C" void hitChk__15daNpc_Kakashi_cFv();
extern "C" void setStaggerParam__15daNpc_Kakashi_cFP10fopAc_ac_c();
extern "C" void setPrtcls__15daNpc_Kakashi_cFi();
extern "C" void judgeSwdTutorial__15daNpc_Kakashi_cFv();
extern "C" void cutSwdTutorial__15daNpc_Kakashi_cFi();
extern "C" void cutGetWoodSwd__15daNpc_Kakashi_cFi();
extern "C" void cutMarosWhisper__15daNpc_Kakashi_cFi();
extern "C" void wait__15daNpc_Kakashi_cFPv();
extern "C" void swdTutorial__15daNpc_Kakashi_cFPv();
extern "C" void talk__15daNpc_Kakashi_cFPv();
extern "C" static void daNpc_Kakashi_Create__FPv();
extern "C" static void daNpc_Kakashi_Delete__FPv();
extern "C" static void daNpc_Kakashi_Execute__FPv();
extern "C" static void daNpc_Kakashi_Draw__FPv();
extern "C" static bool daNpc_Kakashi_IsDelete__FPv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__8daNpcT_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __dt__5csXyzFv();
extern "C" void
__ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" void __dt__15daNpcT_JntAnm_cFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__18daNpcT_ActorMngr_cFv();
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi();
extern "C" bool checkChangeJoint__8daNpcT_cFi();
extern "C" bool checkRemoveJoint__8daNpcT_cFi();
extern "C" s32 getBackboneJointNo__8daNpcT_cFv();
extern "C" s32 getNeckJointNo__8daNpcT_cFv();
extern "C" s32 getHeadJointNo__8daNpcT_cFv();
extern "C" s32 getFootLJointNo__8daNpcT_cFv();
extern "C" s32 getFootRJointNo__8daNpcT_cFv();
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv();
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv();
extern "C" u16 getEyeballMaterialNo__8daNpcT_cFv();
extern "C" void afterJntAnm__8daNpcT_cFi();
extern "C" void setAfterTalkMotion__8daNpcT_cFv();
extern "C" void afterMoved__8daNpcT_cFv();
extern "C" bool chkXYItems__8daNpcT_cFv();
extern "C" void decTmr__8daNpcT_cFv();
extern "C" void drawOtherMdl__8daNpcT_cFv();
extern "C" void drawGhost__8daNpcT_cFv();
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi();
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi();
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c();
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c();
extern "C" void changeAnm__8daNpcT_cFPiPi();
extern "C" void changeBck__8daNpcT_cFPiPi();
extern "C" void changeBtp__8daNpcT_cFPiPi();
extern "C" void changeBtk__8daNpcT_cFPiPi();
extern "C" void func_8054E734(void* _this, s16*);
extern "C" void __sinit_d_a_npc_kakashi_cpp();
extern "C" void
__ct__15daNpc_Kakashi_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" void __ct__5csXyzFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__21daNpc_Kakashi_Param_cFv();
extern "C" static void func_8054EAA0();
extern "C" static void func_8054EAA8();
extern "C" u8 const m__21daNpc_Kakashi_Param_c[152];
extern "C" extern char const* const d_a_npc_kakashi__stringBase0;
extern "C" void* mCutNameList__15daNpc_Kakashi_c[4];
extern "C" u8 mCutList__15daNpc_Kakashi_c[48];

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void daNpcKakashi_chkSwdTutorialStage__Fv();
extern "C" void daNpcKakashi_setSwdTutorialStep__FUc();
extern "C" void daNpcKakashi_getSwdTutorialStep__Fv();
extern "C" void daNpcKakashi_setSwdTutorialResult__Fb();
extern "C" void daNpcKakashi_getSuccessCount__Fv();
extern "C" void daNpcKakashi_incSuccessCount__Fv();
extern "C" void daNpcKakashi_clrSuccessCount__Fv();
extern "C" void setEventReg__11dSv_event_cFUsUc();
extern "C" void getEventReg__11dSv_event_cCFUs();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void GetLockonList__12dAttention_cFl();
extern "C" void LockonTruth__12dAttention_cFv();
extern "C" void getActor__10dAttList_cFv();
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
extern "C" void GetAc__22dCcD_GAtTgCoCommonBaseFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void getHitSeID__12dCcD_GObjInfFUci();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void initialize__18daNpcT_ActorMngr_cFv();
extern "C" void initialize__15daNpcT_MatAnm_cFv();
extern "C" void initialize__22daNpcT_MotionSeqMngr_cFv();
extern "C" void initialize__15daNpcT_JntAnm_cFv();
extern "C" void tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" void loadRes__8daNpcT_cFPCScPPCc();
extern "C" void deleteRes__8daNpcT_cFPCScPPCc();
extern "C" void execute__8daNpcT_cFv();
extern "C" void draw__8daNpcT_cFiifP11_GXColorS10fiii();
extern "C" void setEnvTevColor__8daNpcT_cFv();
extern "C" void setRoomNo__8daNpcT_cFv();
extern "C" void ctrlBtk__8daNpcT_cFv();
extern "C" void setMtx__8daNpcT_cFv();
extern "C" void evtProc__8daNpcT_cFv();
extern "C" void setFootPos__8daNpcT_cFv();
extern "C" void setFootPrtcl__8daNpcT_cFP4cXyzff();
extern "C" bool checkCullDraw__8daNpcT_cFv();
extern "C" void twilight__8daNpcT_cFv();
extern "C" void evtOrder__8daNpcT_cFv();
extern "C" void evtChange__8daNpcT_cFv();
extern "C" void clrParam__8daNpcT_cFv();
extern "C" void setMotionAnm__8daNpcT_cFifi();
extern "C" void setAngle__8daNpcT_cF5csXyz();
extern "C" void setDamage__8daNpcT_cFiii();
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void daNpcT_chkActorInScreen__FP10fopAc_ac_cfffffffi();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void daNpcT_offTmpBit__FUl();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void cM_rndF__Ff();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void __dt__14Z2SoundObjBaseFv();
extern "C" void deleteObject__14Z2SoundObjBaseFv();
extern "C" void startCollisionSE__14Z2SoundObjBaseFUlUlP14Z2SoundObjBase();
extern "C" void __ct__16Z2SoundObjSimpleFv();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void __dt__10Z2CreatureFv();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_test();
extern "C" void __ptmf_cmpr();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_22();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern u8 const __ptmf_null[12 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" u8 mCcDCyl__8daNpcT_c[68];
extern "C" u8 mCcDSph__8daNpcT_c[64];
extern "C" extern void* __vt__8daNpcT_c[49];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" extern void* __vt__16Z2SoundObjSimple[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern u8 pauseTimer__9dScnPly_c[4];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 8054EBD0-8054EBD0 00010C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8054EBD0 = "";
SECTION_DEAD static char const* const stringBase_8054EBD1 = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_8054EBDD = "MAROS_WHISPER";
SECTION_DEAD static char const* const stringBase_8054EBEB = "SWDTUTORIAL_DESCRIPTION";
SECTION_DEAD static char const* const stringBase_8054EC03 = "SWDTUTORIAL_YOKOGIRI_FAILURE";
SECTION_DEAD static char const* const stringBase_8054EC20 = "SWDTUTORIAL_YOKOGIRI_CLEAR";
SECTION_DEAD static char const* const stringBase_8054EC3B = "SWDTUTORIAL_TATEGIRI_SUCCESS";
SECTION_DEAD static char const* const stringBase_8054EC58 = "SWDTUTORIAL_TATEGIRI_FAILURE";
SECTION_DEAD static char const* const stringBase_8054EC75 = "SWDTUTORIAL_TATEGIRI_FAILURE2";
SECTION_DEAD static char const* const stringBase_8054EC93 = "SWDTUTORIAL_TATEGIRI_CLEAR";
SECTION_DEAD static char const* const stringBase_8054ECAE = "SWDTUTORIAL_TUKI_FAILURE";
SECTION_DEAD static char const* const stringBase_8054ECC7 = "SWDTUTORIAL_TUKI_CLEAR";
SECTION_DEAD static char const* const stringBase_8054ECDE = "SWDTUTORIAL_KAITENGIRI_FAILURE";
SECTION_DEAD static char const* const stringBase_8054ECFD = "SWDTUTORIAL_KAITENGIRI_CLEAR";
SECTION_DEAD static char const* const stringBase_8054ED1A = "SWDTUTORIAL_JUMPGIRI_FAILURE";
SECTION_DEAD static char const* const stringBase_8054ED37 = "SWDTUTORIAL_JUMPGIRI_CLEAR";
SECTION_DEAD static char const* const stringBase_8054ED52 = "SWDTUTORIAL_JUMPGIRI_CLEAR2";
SECTION_DEAD static char const* const stringBase_8054ED6E = "Kakashi";
SECTION_DEAD static char const* const stringBase_8054ED76 = "SWDTUTORIAL";
SECTION_DEAD static char const* const stringBase_8054ED82 = "GET_WOODSWD";
#pragma pop

/* 8054EDBC-8054EDD4 000020 0018+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[24] = {
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x08,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x01,
};

/* 8054EDD4-8054EE7C -00001 00A8+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[42] = {
    (void*)&d_a_npc_kakashi__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_kakashi__stringBase0) + 0x1),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_kakashi__stringBase0) + 0xD),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_kakashi__stringBase0) + 0x1B),
    (void*)0x00000001,
    (void*)&d_a_npc_kakashi__stringBase0,
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_kakashi__stringBase0) + 0x33),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_kakashi__stringBase0) + 0x50),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_kakashi__stringBase0) + 0x6B),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_kakashi__stringBase0) + 0x88),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_kakashi__stringBase0) + 0xA5),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_kakashi__stringBase0) + 0xC3),
    (void*)0x00000001,
    (void*)&d_a_npc_kakashi__stringBase0,
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_kakashi__stringBase0) + 0xDE),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_kakashi__stringBase0) + 0xF7),
    (void*)0x00000001,
    (void*)&d_a_npc_kakashi__stringBase0,
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_kakashi__stringBase0) + 0x10E),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_kakashi__stringBase0) + 0x12D),
    (void*)0x00000001,
    (void*)&d_a_npc_kakashi__stringBase0,
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_kakashi__stringBase0) + 0x14A),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_kakashi__stringBase0) + 0x167),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_kakashi__stringBase0) + 0x182),
    (void*)0x00000001,
};
#pragma pop

/* 8054EE7C-8054EE84 -00001 0008+00 2/3 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[2] = {
    (void*)&d_a_npc_kakashi__stringBase0,
    (void*)(((char*)&d_a_npc_kakashi__stringBase0) + 0x19E),
};

/* 8054EE84-8054EE88 0000E8 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u16 l_loadResPtrn0[1 + 1 /* padding */] = {
    0x01FF,
    /* padding */
    0x0000,
};

/* 8054EE88-8054EEA0 -00001 0018+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[6] = {
    (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0, (void*)NULL,
};

/* 8054EEA0-8054EEBC 000104 001C+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[28] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF,
    0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 8054EEBC-8054EED8 000120 001C+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[28] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF,
    0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 8054EED8-8054EEE8 00013C 0010+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[16] = {
    0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 8054EEE8-8054EEF8 00014C 0010+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[16] = {
    0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 8054EEF8-8054EF08 -00001 0010+00 1/1 0/0 0/0 .data            mCutNameList__15daNpc_Kakashi_c */
SECTION_DATA void* daNpc_Kakashi_c::mCutNameList[4] = {
    (void*)&d_a_npc_kakashi__stringBase0,
    (void*)(((char*)&d_a_npc_kakashi__stringBase0) + 0x1A6),
    (void*)(((char*)&d_a_npc_kakashi__stringBase0) + 0x1B2),
    (void*)(((char*)&d_a_npc_kakashi__stringBase0) + 0xD),
};

/* 8054EF08-8054EF14 -00001 000C+00 0/1 0/0 0/0 .data            @3832 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3832[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutSwdTutorial__15daNpc_Kakashi_cFi,
};
#pragma pop

/* 8054EF14-8054EF20 -00001 000C+00 0/1 0/0 0/0 .data            @3833 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3833[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutGetWoodSwd__15daNpc_Kakashi_cFi,
};
#pragma pop

/* 8054EF20-8054EF2C -00001 000C+00 0/1 0/0 0/0 .data            @3834 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3834[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutMarosWhisper__15daNpc_Kakashi_cFi,
};
#pragma pop

/* 8054EF2C-8054EF5C 000190 0030+00 1/2 0/0 0/0 .data            mCutList__15daNpc_Kakashi_c */
SECTION_DATA u8 daNpc_Kakashi_c::mCutList[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8054EF5C-8054EF7C -00001 0020+00 1/1 0/0 0/0 .data            @4460 */
SECTION_DATA static void* lit_4460[8] = {
    (void*)(((char*)ctrlJoint__15daNpc_Kakashi_cFP8J3DJointP8J3DModel) + 0x5C),
    (void*)(((char*)ctrlJoint__15daNpc_Kakashi_cFP8J3DJointP8J3DModel) + 0x80),
    (void*)(((char*)ctrlJoint__15daNpc_Kakashi_cFP8J3DJointP8J3DModel) + 0x114),
    (void*)(((char*)ctrlJoint__15daNpc_Kakashi_cFP8J3DJointP8J3DModel) + 0xA4),
    (void*)(((char*)ctrlJoint__15daNpc_Kakashi_cFP8J3DJointP8J3DModel) + 0xD0),
    (void*)(((char*)ctrlJoint__15daNpc_Kakashi_cFP8J3DJointP8J3DModel) + 0xD0),
    (void*)(((char*)ctrlJoint__15daNpc_Kakashi_cFP8J3DJointP8J3DModel) + 0x114),
    (void*)(((char*)ctrlJoint__15daNpc_Kakashi_cFP8J3DJointP8J3DModel) + 0xF4),
};

/* 8054EF7C-8054EF88 -00001 000C+00 1/1 0/0 0/0 .data            @4583 */
SECTION_DATA static void* lit_4583[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__15daNpc_Kakashi_cFPv,
};

/* 8054EF88-8054EF94 -00001 000C+00 1/1 0/0 0/0 .data            @4607 */
SECTION_DATA static void* lit_4607[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__15daNpc_Kakashi_cFPv,
};

/* 8054EF94-8054EFA0 -00001 000C+00 1/1 0/0 0/0 .data            @4612 */
SECTION_DATA static void* lit_4612[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__15daNpc_Kakashi_cFPv,
};

/* 8054EFA0-8054EFAC -00001 000C+00 0/1 0/0 0/0 .data            @4847 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4847[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)swdTutorial__15daNpc_Kakashi_cFPv,
};
#pragma pop

/* 8054EFAC-8054EFB8 -00001 000C+00 0/1 0/0 0/0 .data            @4849 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4849[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daNpc_Kakashi_cFPv,
};
#pragma pop

/* 8054EFB8-8054EFC4 -00001 000C+00 0/1 0/0 0/0 .data            @4854 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4854[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daNpc_Kakashi_cFPv,
};
#pragma pop

/* 8054EFC4-8054EFD0 -00001 000C+00 0/1 0/0 0/0 .data            @4856 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4856[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daNpc_Kakashi_cFPv,
};
#pragma pop

/* 8054EFD0-8054EFDC -00001 000C+00 1/1 0/0 0/0 .data            @5060 */
SECTION_DATA static void* lit_5060[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)swdTutorial__15daNpc_Kakashi_cFPv,
};

/* 8054EFDC-8054EFFC -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Kakashi_MethodTable */
static actor_method_class daNpc_Kakashi_MethodTable = {
    (process_method_func)daNpc_Kakashi_Create__FPv,
    (process_method_func)daNpc_Kakashi_Delete__FPv,
    (process_method_func)daNpc_Kakashi_Execute__FPv,
    (process_method_func)daNpc_Kakashi_IsDelete__FPv,
    (process_method_func)daNpc_Kakashi_Draw__FPv,
};

/* 8054EFFC-8054F02C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_KAKASHI */
extern actor_process_profile_definition g_profile_NPC_KAKASHI = {
  fpcLy_CURRENT_e,            // mLayerID
  7,                          // mListID
  fpcPi_CURRENT_e,            // mListPrio
  PROC_NPC_KAKASHI,           // mProcName
  &g_fpcLf_Method.base,      // sub_method
  sizeof(daNpc_Kakashi_c),    // mSize
  0,                          // mSizeOther
  0,                          // mParameters
  &g_fopAc_Method.base,       // sub_method
  319,                        // mPriority
  &daNpc_Kakashi_MethodTable, // sub_method
  0x00044000,                 // mStatus
  fopAc_NPC_e,                // mActorType
  fopAc_CULLBOX_CUSTOM_e,     // cullType
};

/* 8054F02C-8054F038 000290 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 8054F038-8054F044 00029C 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 8054F044-8054F068 0002A8 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8054EAA8,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8054EAA0,
};

/* 8054F068-8054F074 0002CC 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 8054F074-8054F080 0002D8 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 8054F080-8054F08C 0002E4 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 8054F08C-8054F098 0002F0 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 8054F098-8054F0A4 0002FC 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 8054F0A4-8054F0B0 000308 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 8054F0B0-8054F0BC 000314 000C+00 5/5 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 8054F0BC-8054F0C8 000320 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 8054F0C8-8054F18C 00032C 00C4+00 2/2 0/0 0/0 .data            __vt__15daNpc_Kakashi_c */
SECTION_DATA extern void* __vt__15daNpc_Kakashi_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpc_Kakashi_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__8daNpcT_cFi,
    (void*)checkRemoveJoint__8daNpcT_cFi,
    (void*)getBackboneJointNo__8daNpcT_cFv,
    (void*)getNeckJointNo__8daNpcT_cFv,
    (void*)getHeadJointNo__8daNpcT_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__8daNpcT_cFv,
    (void*)ctrlJoint__15daNpc_Kakashi_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__8daNpcT_cFi,
    (void*)setParam__15daNpc_Kakashi_cFv,
    (void*)checkChangeEvt__15daNpc_Kakashi_cFv,
    (void*)evtTalk__15daNpc_Kakashi_cFv,
    (void*)evtEndProc__15daNpc_Kakashi_cFv,
    (void*)evtCutProc__15daNpc_Kakashi_cFv,
    (void*)setAfterTalkMotion__8daNpcT_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__15daNpc_Kakashi_cFv,
    (void*)beforeMove__15daNpc_Kakashi_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__15daNpc_Kakashi_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__15daNpc_Kakashi_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__15daNpc_Kakashi_cFv,
    (void*)drawOtherMdl__8daNpcT_cFv,
    (void*)drawGhost__8daNpcT_cFv,
    (void*)afterSetFaceMotionAnm__8daNpcT_cFiifi,
    (void*)afterSetMotionAnm__8daNpcT_cFiifi,
    (void*)getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c,
    (void*)getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c,
    (void*)changeAnm__8daNpcT_cFPiPi,
    (void*)changeBck__8daNpcT_cFPiPi,
    (void*)changeBtp__8daNpcT_cFPiPi,
    (void*)changeBtk__8daNpcT_cFPiPi,
    (void*)setMotionAnm__8daNpcT_cFifi,
};

/* 8054B36C-8054B4E8 0000EC 017C+00 1/0 0/0 0/0 .text            __dt__15daNpc_Kakashi_cFv */
daNpc_Kakashi_c::~daNpc_Kakashi_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8054EAC4-8054EB5C 000000 0098+00 7/7 0/0 0/0 .rodata          m__21daNpc_Kakashi_Param_c */
SECTION_RODATA u8 const daNpc_Kakashi_Param_c::m[152] = {
    0x43, 0x3E, 0x00, 0x00, 0xC0, 0xC0, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x44, 0x2F, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0x41, 0xD8, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8054EAC4, &daNpc_Kakashi_Param_c::m);

/* 8054EB5C-8054EB60 000098 0004+00 0/1 0/0 0/0 .rodata          @4078 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4078 = -300.0f;
COMPILER_STRIP_GATE(0x8054EB5C, &lit_4078);
#pragma pop

/* 8054EB60-8054EB64 00009C 0004+00 0/1 0/0 0/0 .rodata          @4079 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4079 = -50.0f;
COMPILER_STRIP_GATE(0x8054EB60, &lit_4079);
#pragma pop

/* 8054EB64-8054EB68 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4080 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4080 = 300.0f;
COMPILER_STRIP_GATE(0x8054EB64, &lit_4080);
#pragma pop

/* 8054EB68-8054EB6C 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4081 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4081 = 450.0f;
COMPILER_STRIP_GATE(0x8054EB68, &lit_4081);
#pragma pop

/* 8054EB6C-8054EB70 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4082 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4082 = -1000000000.0f;
COMPILER_STRIP_GATE(0x8054EB6C, &lit_4082);
#pragma pop

/* 8054B4E8-8054B7D8 000268 02F0+00 1/1 0/0 0/0 .text            create__15daNpc_Kakashi_cFv */
void daNpc_Kakashi_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8054EB70-8054EB74 0000AC 0004+00 1/5 0/0 0/0 .rodata          @4269 */
SECTION_RODATA static u8 const lit_4269[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8054EB70, &lit_4269);

/* 8054EB74-8054EB78 0000B0 0004+00 0/2 0/0 0/0 .rodata          @4270 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4270 = 65536.0f;
COMPILER_STRIP_GATE(0x8054EB74, &lit_4270);
#pragma pop

/* 8054EB78-8054EB7C 0000B4 0004+00 0/2 0/0 0/0 .rodata          @4271 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4271 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x8054EB78, &lit_4271);
#pragma pop

/* 8054EB7C-8054EB80 0000B8 0004+00 2/3 0/0 0/0 .rodata          @4400 */
SECTION_RODATA static f32 const lit_4400 = 1.0f;
COMPILER_STRIP_GATE(0x8054EB7C, &lit_4400);

/* 8054B7D8-8054B908 000558 0130+00 1/1 0/0 0/0 .text            CreateHeap__15daNpc_Kakashi_cFv */
void daNpc_Kakashi_c::CreateHeap() {
    // NONMATCHING
}

/* 8054B908-8054B93C 000688 0034+00 1/1 0/0 0/0 .text            Delete__15daNpc_Kakashi_cFv */
void daNpc_Kakashi_c::Delete() {
    // NONMATCHING
}

/* 8054B93C-8054B994 0006BC 0058+00 2/2 0/0 0/0 .text            Execute__15daNpc_Kakashi_cFv */
void daNpc_Kakashi_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8054EB80-8054EB84 0000BC 0004+00 1/2 0/0 0/0 .rodata          @4416 */
SECTION_RODATA static f32 const lit_4416 = 100.0f;
COMPILER_STRIP_GATE(0x8054EB80, &lit_4416);

/* 8054B994-8054B9D8 000714 0044+00 1/1 0/0 0/0 .text            Draw__15daNpc_Kakashi_cFv */
void daNpc_Kakashi_c::Draw() {
    // NONMATCHING
}

/* 8054B9D8-8054BB34 000758 015C+00 2/0 0/0 0/0 .text
 * ctrlJoint__15daNpc_Kakashi_cFP8J3DJointP8J3DModel            */
void daNpc_Kakashi_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 8054BB34-8054BB54 0008B4 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__15daNpc_Kakashi_cFP10fopAc_ac_c          */
void daNpc_Kakashi_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 8054BB54-8054BBAC 0008D4 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__15daNpc_Kakashi_cFP8J3DJointi             */
void daNpc_Kakashi_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 8054BBAC-8054BC10 00092C 0064+00 1/1 0/0 0/0 .text            getType__15daNpc_Kakashi_cFv */
void daNpc_Kakashi_c::getType() {
    // NONMATCHING
}

/* 8054BC10-8054BC98 000990 0088+00 1/1 0/0 0/0 .text            isDelete__15daNpc_Kakashi_cFv */
void daNpc_Kakashi_c::isDelete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8054EBD0-8054EBD0 00010C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8054ED8E = "F_SP108";
#pragma pop

/* 8054BC98-8054BEA8 000A18 0210+00 1/1 0/0 0/0 .text            reset__15daNpc_Kakashi_cFv */
void daNpc_Kakashi_c::reset() {
    // NONMATCHING
}

/* 8054BEA8-8054BF88 000C28 00E0+00 1/0 0/0 0/0 .text            setParam__15daNpc_Kakashi_cFv */
void daNpc_Kakashi_c::setParam() {
    // NONMATCHING
}

/* 8054BF88-8054BF8C 000D08 0004+00 1/1 0/0 0/0 .text            srchActors__15daNpc_Kakashi_cFv */
void daNpc_Kakashi_c::srchActors() {
    /* empty function */
}

/* 8054BF8C-8054C034 000D0C 00A8+00 1/0 0/0 0/0 .text            checkChangeEvt__15daNpc_Kakashi_cFv
 */
void daNpc_Kakashi_c::checkChangeEvt() {
    // NONMATCHING
}

/* 8054C034-8054C0D4 000DB4 00A0+00 1/0 0/0 0/0 .text            evtTalk__15daNpc_Kakashi_cFv */
void daNpc_Kakashi_c::evtTalk() {
    // NONMATCHING
}

/* 8054C0D4-8054C0E8 000E54 0014+00 1/0 0/0 0/0 .text            evtEndProc__15daNpc_Kakashi_cFv */
void daNpc_Kakashi_c::evtEndProc() {
    // NONMATCHING
}

/* 8054C0E8-8054C1B0 000E68 00C8+00 1/0 0/0 0/0 .text            evtCutProc__15daNpc_Kakashi_cFv */
void daNpc_Kakashi_c::evtCutProc() {
    // NONMATCHING
}

/* 8054C1B0-8054C268 000F30 00B8+00 1/0 0/0 0/0 .text            action__15daNpc_Kakashi_cFv */
void daNpc_Kakashi_c::action() {
    // NONMATCHING
}

/* 8054C268-8054C2E0 000FE8 0078+00 1/0 0/0 0/0 .text            beforeMove__15daNpc_Kakashi_cFv */
void daNpc_Kakashi_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8054EB84-8054EB88 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4725 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4725 = 3.0f / 40.0f;
COMPILER_STRIP_GATE(0x8054EB84, &lit_4725);
#pragma pop

/* 8054EB88-8054EB8C 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4726 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4726 = 50.0f;
COMPILER_STRIP_GATE(0x8054EB88, &lit_4726);
#pragma pop

/* 8054EB8C-8054EB90 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4727 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4727 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x8054EB8C, &lit_4727);
#pragma pop

/* 8054EB90-8054EB94 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4728 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4728 = 125.0f;
COMPILER_STRIP_GATE(0x8054EB90, &lit_4728);
#pragma pop

/* 8054EB94-8054EB98 0000D0 0004+00 0/2 0/0 0/0 .rodata          @4729 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4729 = 40.0f;
COMPILER_STRIP_GATE(0x8054EB94, &lit_4729);
#pragma pop

/* 8054C2E0-8054C584 001060 02A4+00 1/0 0/0 0/0 .text            setAttnPos__15daNpc_Kakashi_cFv */
void daNpc_Kakashi_c::setAttnPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8054EB98-8054EB9C 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4831 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4831 = 80.0f;
COMPILER_STRIP_GATE(0x8054EB98, &lit_4831);
#pragma pop

/* 8054EB9C-8054EBA0 0000D8 0004+00 0/1 0/0 0/0 .rodata          @4832 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4832 = -80.0f;
COMPILER_STRIP_GATE(0x8054EB9C, &lit_4832);
#pragma pop

/* 8054EBA0-8054EBA4 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4833 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4833 = 20.0f;
COMPILER_STRIP_GATE(0x8054EBA0, &lit_4833);
#pragma pop

/* 8054EBA4-8054EBA8 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4834 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4834 = 30.0f;
COMPILER_STRIP_GATE(0x8054EBA4, &lit_4834);
#pragma pop

/* 8054EBA8-8054EBAC 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4835 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4835 = -20.0f;
COMPILER_STRIP_GATE(0x8054EBA8, &lit_4835);
#pragma pop

/* 8054F1E0-8054F1EC 000048 000C+00 1/1 0/0 0/0 .bss             @3835 */
static u8 lit_3835[12];

/* 8054F1EC-8054F1F0 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 8054F1F0-8054F200 000058 000C+04 0/1 0/0 0/0 .bss             @4738 */
#pragma push
#pragma force_active on
static u8 lit_4738[12 + 4 /* padding */];
#pragma pop

/* 8054F200-8054F20C 000068 000C+00 0/1 0/0 0/0 .bss             armROfst$4737 */
#pragma push
#pragma force_active on
static u8 armROfst[12];
#pragma pop

/* 8054F20C-8054F21C 000074 000C+04 0/1 0/0 0/0 .bss             @4742 */
#pragma push
#pragma force_active on
static u8 lit_4742[12 + 4 /* padding */];
#pragma pop

/* 8054F21C-8054F228 000084 000C+00 0/1 0/0 0/0 .bss             armLOfst$4741 */
#pragma push
#pragma force_active on
static u8 armLOfst[12];
#pragma pop

/* 8054F228-8054F238 000090 000C+04 0/1 0/0 0/0 .bss             @4746 */
#pragma push
#pragma force_active on
static u8 lit_4746[12 + 4 /* padding */];
#pragma pop

/* 8054F238-8054F244 0000A0 000C+00 0/1 0/0 0/0 .bss             headOfst$4745 */
#pragma push
#pragma force_active on
static u8 headOfst[12];
#pragma pop

/* 8054C584-8054C924 001304 03A0+00 1/0 0/0 0/0 .text            setCollision__15daNpc_Kakashi_cFv
 */
void daNpc_Kakashi_c::setCollision() {
    // NONMATCHING
}

/* 8054C924-8054C92C 0016A4 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__15daNpc_Kakashi_cFv */
bool daNpc_Kakashi_c::drawDbgInfo() {
    return false;
}

/* 8054C92C-8054CA1C 0016AC 00F0+00 1/1 0/0 0/0 .text            selectAction__15daNpc_Kakashi_cFv
 */
void daNpc_Kakashi_c::selectAction() {
    // NONMATCHING
}

/* 8054CA1C-8054CA48 00179C 002C+00 2/2 0/0 0/0 .text
 * chkAction__15daNpc_Kakashi_cFM15daNpc_Kakashi_cFPCvPvPv_i    */
void daNpc_Kakashi_c::chkAction(int (daNpc_Kakashi_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 8054CA48-8054CAF0 0017C8 00A8+00 2/2 0/0 0/0 .text
 * setAction__15daNpc_Kakashi_cFM15daNpc_Kakashi_cFPCvPvPv_i    */
void daNpc_Kakashi_c::setAction(int (daNpc_Kakashi_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 8054CAF0-8054CEA0 001870 03B0+00 1/1 0/0 0/0 .text            hitChk__15daNpc_Kakashi_cFv */
void daNpc_Kakashi_c::hitChk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8054EBAC-8054EBB8 0000E8 000C+00 0/1 0/0 0/0 .rodata          @5025 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5025[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8054EBAC, &lit_5025);
#pragma pop

/* 8054EBB8-8054EBBC 0000F4 0004+00 0/1 0/0 0/0 .rodata          @5166 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5166 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x8054EBB8, &lit_5166);
#pragma pop

/* 8054EBBC-8054EBC4 0000F8 0004+04 0/1 0/0 0/0 .rodata          @5167 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5167[1 + 1 /* padding */] = {
    0x43360B61,
    /* padding */
    0x00000000,
};
COMPILER_STRIP_GATE(0x8054EBBC, &lit_5167);
#pragma pop

/* 8054EBC4-8054EBCC 000100 0008+00 0/1 0/0 0/0 .rodata          @5170 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5170[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8054EBC4, &lit_5170);
#pragma pop

/* 8054CEA0-8054D26C 001C20 03CC+00 1/1 0/0 0/0 .text
 * setStaggerParam__15daNpc_Kakashi_cFP10fopAc_ac_c             */
void daNpc_Kakashi_c::setStaggerParam(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8054EBCC-8054EBD0 000108 0004+00 1/1 0/0 0/0 .rodata          id$5174 */
SECTION_RODATA static u8 const id[4] = {
    0x82,
    0x3F,
    0x82,
    0x3E,
};
COMPILER_STRIP_GATE(0x8054EBCC, &id);

/* 8054D26C-8054D374 001FEC 0108+00 1/1 0/0 0/0 .text            setPrtcls__15daNpc_Kakashi_cFi */
void daNpc_Kakashi_c::setPrtcls(int param_0) {
    // NONMATCHING
}

/* 8054D374-8054D490 0020F4 011C+00 1/1 0/0 0/0 .text judgeSwdTutorial__15daNpc_Kakashi_cFv */
void daNpc_Kakashi_c::judgeSwdTutorial() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8054EBD0-8054EBD0 00010C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8054ED96 = "prm";
#pragma pop

/* 8054D490-8054D57C 002210 00EC+00 1/0 0/0 0/0 .text            cutSwdTutorial__15daNpc_Kakashi_cFi
 */
void daNpc_Kakashi_c::cutSwdTutorial(int param_0) {
    // NONMATCHING
}

/* 8054D57C-8054D604 0022FC 0088+00 1/0 0/0 0/0 .text            cutGetWoodSwd__15daNpc_Kakashi_cFi
 */
void daNpc_Kakashi_c::cutGetWoodSwd(int param_0) {
    // NONMATCHING
}

/* 8054D604-8054D668 002384 0064+00 1/0 0/0 0/0 .text cutMarosWhisper__15daNpc_Kakashi_cFi */
void daNpc_Kakashi_c::cutMarosWhisper(int param_0) {
    // NONMATCHING
}

/* 8054D668-8054D694 0023E8 002C+00 3/0 0/0 0/0 .text            wait__15daNpc_Kakashi_cFPv */
void daNpc_Kakashi_c::wait(void* param_0) {
    // NONMATCHING
}

/* 8054D694-8054D8BC 002414 0228+00 2/0 0/0 0/0 .text            swdTutorial__15daNpc_Kakashi_cFPv
 */
void daNpc_Kakashi_c::swdTutorial(void* param_0) {
    // NONMATCHING
}

/* 8054D8BC-8054D978 00263C 00BC+00 3/0 0/0 0/0 .text            talk__15daNpc_Kakashi_cFPv */
void daNpc_Kakashi_c::talk(void* param_0) {
    // NONMATCHING
}

/* 8054D978-8054D998 0026F8 0020+00 1/0 0/0 0/0 .text            daNpc_Kakashi_Create__FPv */
static void daNpc_Kakashi_Create(void* param_0) {
    // NONMATCHING
}

/* 8054D998-8054D9B8 002718 0020+00 1/0 0/0 0/0 .text            daNpc_Kakashi_Delete__FPv */
static void daNpc_Kakashi_Delete(void* param_0) {
    // NONMATCHING
}

/* 8054D9B8-8054D9D8 002738 0020+00 1/0 0/0 0/0 .text            daNpc_Kakashi_Execute__FPv */
static void daNpc_Kakashi_Execute(void* param_0) {
    // NONMATCHING
}

/* 8054D9D8-8054D9F8 002758 0020+00 1/0 0/0 0/0 .text            daNpc_Kakashi_Draw__FPv */
static void daNpc_Kakashi_Draw(void* param_0) {
    // NONMATCHING
}

/* 8054D9F8-8054DA00 002778 0008+00 1/0 0/0 0/0 .text            daNpc_Kakashi_IsDelete__FPv */
static bool daNpc_Kakashi_IsDelete(void* param_0) {
    return true;
}

/* 8054DA00-8054DA48 002780 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 8054DA48-8054DDD0 0027C8 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 8054DDD0-8054DE0C 002B50 003C+00 4/4 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 8054DE0C-8054DED8 002B8C 00CC+00 2/2 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 8054DED8-8054DF14 002C58 003C+00 4/4 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 8054DF14-8054E318 002C94 0404+00 1/1 0/0 0/0 .text
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

/* 8054E318-8054E414 003098 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 8054E414-8054E418 003194 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 8054E418-8054E460 003198 0048+00 1/0 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 8054E460-8054E4A8 0031E0 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 8054E4A8-8054E518 003228 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 8054E518-8054E574 003298 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 8054E574-8054E5E4 0032F4 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 8054E5E4-8054E62C 003364 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 8054E62C-8054E630 0033AC 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 8054E668-8054E670 0033E8 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 8054E670-8054E678 0033F0 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 8054E68C-8054E694 00340C 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 8054E694-8054E6AC 003414 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 8054E6AC-8054E6B0 00342C 0004+00 1/0 0/0 0/0 .text            drawOtherMdl__8daNpcT_cFv */
// void daNpcT_c::drawOtherMdl() {
extern "C" void drawOtherMdl__8daNpcT_cFv() {
    /* empty function */
}

/* 8054E6B0-8054E6B4 003430 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 8054E6B4-8054E6BC 003434 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 8054E6BC-8054E6C4 00343C 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 8054E6C4-8054E6F4 003444 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 8054E6F4-8054E724 003474 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 8054E724-8054E728 0034A4 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 8054E728-8054E72C 0034A8 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 8054E72C-8054E730 0034AC 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 8054E730-8054E734 0034B0 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 8054E734-8054E750 0034B4 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<s>__FPs */
extern "C" void func_8054E734(void* _this, s16* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8054F18C-8054F198 0003F0 000C+00 2/2 0/0 0/0 .data            __vt__21daNpc_Kakashi_Param_c */
SECTION_DATA extern void* __vt__21daNpc_Kakashi_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__21daNpc_Kakashi_Param_cFv,
};

/* 8054E750-8054E804 0034D0 00B4+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_kakashi_cpp */
void __sinit_d_a_npc_kakashi_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x8054E750, __sinit_d_a_npc_kakashi_cpp);
#pragma pop

/* 8054E804-8054E8F8 003584 00F4+00 1/1 0/0 0/0 .text
 * __ct__15daNpc_Kakashi_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_Kakashi_c::daNpc_Kakashi_c(daNpcT_faceMotionAnmData_c const* param_0,
                                     daNpcT_motionAnmData_c const* param_1,
                                     daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
                                     int param_3,
                                     daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
                                     int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 8054E8F8-8054E8FC 003678 0004+00 2/2 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 8054E8FC-8054E980 00367C 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 8054E980-8054E9C8 003700 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 8054E9C8-8054EA10 003748 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 8054EA10-8054EA58 003790 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 8054EA58-8054EAA0 0037D8 0048+00 2/1 0/0 0/0 .text            __dt__21daNpc_Kakashi_Param_cFv */
daNpc_Kakashi_Param_c::~daNpc_Kakashi_Param_c() {
    // NONMATCHING
}

/* 8054EAA0-8054EAA8 003820 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_8054EAA0() {
    // NONMATCHING
}

/* 8054EAA8-8054EAB0 003828 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_8054EAA8() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8054F244-8054F248 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_8054F244[4];
#pragma pop

/* 8054F248-8054F24C 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_8054F248[4];
#pragma pop

/* 8054F24C-8054F250 0000B4 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_8054F24C[4];
#pragma pop

/* 8054F250-8054F254 0000B8 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8054F250[4];
#pragma pop

/* 8054F254-8054F258 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8054F254[4];
#pragma pop

/* 8054F258-8054F25C 0000C0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8054F258[4];
#pragma pop

/* 8054F25C-8054F260 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_8054F25C[4];
#pragma pop

/* 8054F260-8054F264 0000C8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_8054F260[4];
#pragma pop

/* 8054F264-8054F268 0000CC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_8054F264[4];
#pragma pop

/* 8054F268-8054F26C 0000D0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_8054F268[4];
#pragma pop

/* 8054F26C-8054F270 0000D4 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_8054F26C[4];
#pragma pop

/* 8054F270-8054F274 0000D8 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8054F270[4];
#pragma pop

/* 8054F274-8054F278 0000DC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_8054F274[4];
#pragma pop

/* 8054F278-8054F27C 0000E0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8054F278[4];
#pragma pop

/* 8054F27C-8054F280 0000E4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8054F27C[4];
#pragma pop

/* 8054F280-8054F284 0000E8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_8054F280[4];
#pragma pop

/* 8054F284-8054F288 0000EC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_8054F284[4];
#pragma pop

/* 8054F288-8054F28C 0000F0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8054F288[4];
#pragma pop

/* 8054F28C-8054F290 0000F4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_8054F28C[4];
#pragma pop

/* 8054F290-8054F294 0000F8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_8054F290[4];
#pragma pop

/* 8054F294-8054F298 0000FC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_8054F294[4];
#pragma pop

/* 8054F298-8054F29C 000100 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8054F298[4];
#pragma pop

/* 8054F29C-8054F2A0 000104 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8054F29C[4];
#pragma pop

/* 8054F2A0-8054F2A4 000108 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8054F2A0[4];
#pragma pop

/* 8054F2A4-8054F2A8 00010C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_8054F2A4[4];
#pragma pop

/* 8054EBD0-8054EBD0 00010C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
