/**
 * @file d_a_npc_chat.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_chat.h"
#include "Z2AudioLib/Z2Instances.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void __ct__11daNpcChat_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__11daNpcChat_cFv();
extern "C" void NpcCreate__11daNpcChat_cFi();
extern "C" void getObjNum__11daNpcChat_cFv();
extern "C" void ObjCreate__11daNpcChat_cFi();
extern "C" void ChairCreate__11daNpcChat_cFf();
extern "C" void isM___11daNpcChat_cFv();
extern "C" void loadResrc__11daNpcChat_cFii();
extern "C" void getNpcMdlDataP__11daNpcChat_cFi();
extern "C" void getObjMdlDataP__11daNpcChat_cFi();
extern "C" void getTexAnmP__11daNpcChat_cFi();
extern "C" void removeResrc__11daNpcChat_cFii();
extern "C" void setAttention__11daNpcChat_cFi();
extern "C" void Create__11daNpcChat_cFv();
extern "C" void CreateHeap__11daNpcChat_cFv();
extern "C" void Delete__11daNpcChat_cFv();
extern "C" void Execute__11daNpcChat_cFv();
extern "C" void Draw__11daNpcChat_cFv();
extern "C" void draw__11daNpcChat_cFiifP11_GXColorS10i();
extern "C" void ctrlJoint__11daNpcChat_cFP8J3DJointP8J3DModel();
extern "C" void createHeapCallBack__11daNpcChat_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__11daNpcChat_cFP8J3DJointi();
extern "C" static void s_sub__FPvPv();
extern "C" void searchGroup__11daNpcChat_cFv();
extern "C" void appearTimeCheck__11daNpcChat_cFv();
extern "C" void appearCheck__11daNpcChat_cFv();
extern "C" void setParam__11daNpcChat_cFv();
extern "C" void main__11daNpcChat_cFv();
extern "C" void setAttnPos__11daNpcChat_cFv();
extern "C" void setExpressionBtp__11daNpcChat_cFi();
extern "C" void setMotionAnm__11daNpcChat_cFif();
extern "C" void setMotion__11daNpcChat_cFifi();
extern "C" bool drawDbgInfo__11daNpcChat_cFv();
extern "C" void drawOtherMdls__11daNpcChat_cFv();
extern "C" void getTalkMotionNo__11daNpcChat_cFv();
extern "C" void getLookPlayerCheck__11daNpcChat_cFv();
extern "C" void reset__11daNpcChat_cFv();
extern "C" void playMotion__11daNpcChat_cFv();
extern "C" void playMotionAnmLoop__11daNpcChat_cFPPPQ28daNpcF_c18daNpcF_anmPlayData();
extern "C" void setAction__11daNpcChat_cFM11daNpcChat_cFPCvPvPv_b();
extern "C" void step__11daNpcChat_cFsi();
extern "C" void setTalkMember__11daNpcChat_cFP11daNpcChat_c();
extern "C" void wait__11daNpcChat_cFPv();
extern "C" void fear__11daNpcChat_cFPv();
extern "C" void talk__11daNpcChat_cFPv();
extern "C" void demo__11daNpcChat_cFPv();
extern "C" static void daNpcChat_Create__FPv();
extern "C" static void daNpcChat_Delete__FPv();
extern "C" static void daNpcChat_Execute__FPv();
extern "C" static void daNpcChat_Draw__FPv();
extern "C" static bool daNpcChat_IsDelete__FPv();
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
extern "C" void setExpression__8daNpcF_cFif();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __sinit_d_a_npc_chat_cpp();
extern "C" void adjustShapeAngle__11daNpcChat_cFv();
extern "C" void __dt__17daNpcChat_Param_cFv();
extern "C" static void func_80986978();
extern "C" static void func_80986980();
extern "C" u8 const m__17daNpcChat_Param_c[108];
extern "C" extern char const* const d_a_npc_chat__stringBase0;
extern "C" u8 mEvtSeqList__11daNpcChat_c[12];

//
// External References:
//

extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void entry__13mDoExt_btpAnmFP16J3DMaterialTables();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void setMorf__13mDoExt_morf_cFf();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void onSwitch__12dSv_danBit_cFi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void convPId__14dEvt_control_cFUi();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
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
extern "C" void initialize__15daNpcF_Lookat_cFv();
extern "C" void execute__8daNpcF_cFv();
extern "C" void setMtx__8daNpcF_cFv();
extern "C" void setMtx2__8daNpcF_cFv();
extern "C" void initialize__8daNpcF_cFv();
extern "C" void getTrnsfrmKeyAnmP__8daNpcF_cFPci();
extern "C" void setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii();
extern "C" void setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi();
extern "C" void setEnvTevColor__8daNpcF_cFv();
extern "C" void setRoomNo__8daNpcF_cFv();
extern "C" void playMotionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData();
extern "C" void ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci();
extern "C" void orderEvent__8daNpcF_cFiPcUsUsUcUs();
extern "C" void initTalk__8daNpcF_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcF_cFPiiPP10fopAc_ac_c();
extern "C" void turn__8daNpcF_cFsfi();
extern "C" void setAngle__8daNpcF_cFs();
extern "C" void dKy_getdaytime_hour__Fv();
extern "C" void dKy_getDarktime_hour__Fv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __dv__4cXyzCFf();
extern "C" void __ct__5csXyzFsss();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
extern "C" void __ct__17Z2CreatureCitizenFv();
extern "C" void __dt__17Z2CreatureCitizenFv();
extern "C" void init__17Z2CreatureCitizenFP3VecP3VecUcUc();
extern "C" void setMdlType__17Z2CreatureCitizenFScbb();
extern "C" void playVoice__17Z2CreatureCitizenFi();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void removeTexNoAnimator__16J3DMaterialTableFP16J3DAnmTexPattern();
extern "C" void removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey();
extern "C" void removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_test();
extern "C" void __ptmf_cmpr();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_14();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_14();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern u8 const __ptmf_null[12 + 4 /* padding */];
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" u8 mCcDCyl__8daNpcF_c[68];
extern "C" extern void* __vt__8daNpcF_c[18];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" void __register_global_object();

enum Joint_NUM {
    JntM_NUM_e = 0x13,
    JntW_NUM_e = 0x15,
};

/* 8098699C-809869B4 -00001 0018+00 8/7 0/0 0/0 .rodata          l_resMANa */
static char* const l_resMANa[6] = {
    "MAN_a",
    "MAN_a_TW",
    "Mgeneral",
    "Mspecial",
    "object",
    "objectTW",
};

/* 809869B4-809869CC -00001 0018+00 1/1 0/0 0/0 .rodata          l_resMADa */
static char* const l_resMADa[6] = {
    "MAD_a",
    "MAD_a_TW",
    "Mgeneral",
    "Mspecial",
    "object",
    "objectTW",
};

/* 809869CC-809869E4 -00001 0018+00 1/1 0/0 0/0 .rodata          l_resMCNa */
static char* const l_resMCNa[6] = {
    "MCN_a",
    "MCN_a_TW",
    "Mgeneral",
    "Mspecial",
    "object",
    "objectTW",
};

/* 809869E4-809869FC -00001 0018+00 1/1 0/0 0/0 .rodata          l_resMONa */
static char* const l_resMONa[6] = {
    "MON_a",
    "MON_a_TW",
    "Mgeneral",
    "Mspecial",
    "object",
    "objectTW",
};

/* 809869FC-80986A14 -00001 0018+00 1/1 0/0 0/0 .rodata          l_resMANb */
static char* const l_resMANb[6] = {
    "MAN_b",
    "MAN_b_TW",
    "Mgeneral",
    "Mspecial",
    "object",
    "objectTW",
};

/* 80986A14-80986A2C -00001 0018+00 1/1 0/0 0/0 .rodata          l_resMANc */
static char* const l_resMANc[6] = {
    "MAN_c",
    "MAN_c_TW",
    "Mgeneral",
    "Mspecial",
    "object",
    "objectTW",
};

/* 80986A2C-80986A44 -00001 0018+00 1/1 0/0 0/0 .rodata          l_resMASa */
static char* const l_resMASa[6] = {
    "MAS_a",
    "MAS_a_TW",
    "Mgeneral",
    "Mspecial",
    "object",
    "objectTW",
};

/* 80986A44-80986A5C -00001 0018+00 1/1 0/0 0/0 .rodata          l_resMBNa */
static char* const l_resMBNa[6] = {
    "MBN_a",
    "MBN_a_TW",
    "Mgeneral",
    "Mspecial",
    "object",
    "objectTW",
};

/* 80986A5C-80986A74 -00001 0018+00 1/1 0/0 0/0 .rodata          l_resMANa2 */
static char* const l_resMANa2[6] = {
    "MAN_a2",
    "MAN_a2_TW",
    "Mgeneral",
    "Mspecial",
    "object",
    "objectTW",
};

/* 80986A74-80986A8C -00001 0018+00 1/1 0/0 0/0 .rodata          l_resMADa2 */
static char* const l_resMADa2[6] = {
    "MAD_a2",
    "MAD_a2_TW",
    "Mgeneral",
    "Mspecial",
    "object",
    "objectTW",
};

/* 80986A8C-80986AA4 -00001 0018+00 1/1 0/0 0/0 .rodata          l_resMCNa2 */
static char* const l_resMCNa2[6] = {
    "MCN_a2",
    "MCN_a2_TW",
    "Mgeneral",
    "Mspecial",
    "object",
    "objectTW",
};

/* 80986AA4-80986ABC -00001 0018+00 1/1 0/0 0/0 .rodata          l_resMONa2 */
static char* const l_resMONa2[6] = {
    "MON_a2",
    "MON_a2_TW",
    "Mgeneral",
    "Mspecial",
    "object",
    "objectTW",
};

/* 80986ABC-80986AD4 -00001 0018+00 1/1 0/0 0/0 .rodata          l_resMANb2 */
static char* const l_resMANb2[6] = {
    "MAN_b2",
    "MAN_b2_TW",
    "Mgeneral",
    "Mspecial",
    "object",
    "objectTW",
};

/* 80986AD4-80986AEC -00001 0018+00 1/1 0/0 0/0 .rodata          l_resMANc2 */
static char* const l_resMANc2[6] = {
    "MAN_c2",
    "MAN_c2_TW",
    "Mgeneral",
    "Mspecial",
    "object",
    "objectTW",
};

/* 80986AEC-80986B04 -00001 0018+00 1/1 0/0 0/0 .rodata          l_resMASa2 */
static char* const l_resMASa2[6] = {
    "MAS_a2",
    "MAS_a2_TW",
    "Mgeneral",
    "Mspecial",
    "object",
    "objectTW",
};

/* 80986B04-80986B1C -00001 0018+00 1/1 0/0 0/0 .rodata          l_resMBNa2 */
static char* const l_resMBNa2[6] = {
    "MBN_a2",
    "MBN_a2_TW",
    "Mgeneral",
    "Mspecial",
    "object",
    "objectTW",
};

/* 80986B1C-80986B34 -00001 0018+00 1/1 0/0 0/0 .rodata          l_resWANa */
static char* const l_resWANa[6] = {
    "WAN_a",
    "WAN_a_TW",
    "Wgeneral",
    "Wspecial",
    "object",
    "objectTW",
};

/* 80986B34-80986B4C -00001 0018+00 1/1 0/0 0/0 .rodata          l_resWADa */
static char* const l_resWADa[6] = {
    "WAD_a",
    "WAD_a_TW",
    "Wgeneral",
    "Wspecial",
    "object",
    "objectTW",
};

/* 80986B4C-80986B64 -00001 0018+00 1/1 0/0 0/0 .rodata          l_resMATa */
static char* const l_resMATa[6] = {
    "MAT_a",
    "MAT_a_TW",
    "Wgeneral",
    "Wspecial",
    "object",
    "objectTW",
};

/* 80986B64-80986B7C -00001 0018+00 1/1 0/0 0/0 .rodata          l_resWCNa */
static char* const l_resWCNa[6] = {
    "WCN_a",
    "WCN_a_TW",
    "Wgeneral",
    "Wspecial",
    "object",
    "objectTW",
};

/* 80986B7C-80986B94 -00001 0018+00 1/1 0/0 0/0 .rodata          l_resWONa */
static char* const l_resWONa[6] = {
    "WON_a",
    "WON_a_TW",
    "Wgeneral",
    "Wspecial",
    "object",
    "objectTW",
};

/* 80986B94-80986BAC -00001 0018+00 1/1 0/0 0/0 .rodata          l_resWGNa */
static char* const l_resWGNa[6] = {
    "WGN_a",
    "WGN_a_TW",
    "Wgeneral",
    "Wspecial",
    "object",
    "objectTW",
};

/* 80986BAC-80986BC4 -00001 0018+00 1/1 0/0 0/0 .rodata          l_resWANb */
static char* const l_resWANb[6] = {
    "WAN_b",
    "WAN_b_TW",
    "Wgeneral",
    "Wspecial",
    "object",
    "objectTW",
};

/* 80986BC4-80986BDC -00001 0018+00 1/1 0/0 0/0 .rodata          l_resWANa2 */
static char* const l_resWANa2[6] = {
    "WAN_a2",
    "WAN_a2_TW",
    "Wgeneral",
    "Wspecial",
    "object",
    "objectTW",
};

/* 80986BDC-80986BF4 -00001 0018+00 1/1 0/0 0/0 .rodata          l_resWADa2 */
static char* const l_resWADa2[6] = {
    "WAD_a2",
    "WAD_a2_TW",
    "Wgeneral",
    "Wspecial",
    "object",
    "objectTW",
};

/* 80986BF4-80986C0C -00001 0018+00 1/1 0/0 0/0 .rodata          l_resMATa2 */
static char* const l_resMATa2[6] = {
    "MAT_a2",
    "MAT_a2_TW",
    "Wgeneral",
    "Wspecial",
    "object",
    "objectTW",
};

/* 80986C0C-80986C24 -00001 0018+00 1/1 0/0 0/0 .rodata          l_resWCNa2 */
static char* const l_resWCNa2[6] = {
    "WCN_a2",
    "WCN_a2_TW",
    "Wgeneral",
    "Wspecial",
    "object",
    "objectTW",
};

/* 80986C24-80986C3C -00001 0018+00 1/1 0/0 0/0 .rodata          l_resWONa2 */
static char* const l_resWONa2[6] = {
    "WON_a2",
    "WON_a2_TW",
    "Wgeneral",
    "Wspecial",
    "object",
    "objectTW",
};

/* 80986C3C-80986C54 -00001 0018+00 1/1 0/0 0/0 .rodata          l_resWGNa2 */
static char* const l_resWGNa2[6] = {
    "WGN_a2",
    "WGN_a2_TW",
    "Wgeneral",
    "Wspecial",
    "object",
    "objectTW",
};

/* 80986C54-80986C6C -00001 0018+00 1/1 0/0 0/0 .rodata          l_resWANb2 */
static char* const l_resWANb2[6] = {
    "WAN_b2",
    "WAN_b2_TW",
    "Wgeneral",
    "Wspecial",
    "object",
    "objectTW",
};

/* 8098797C-809879F4 -00001 0078+00 2/2 0/0 0/0 .data            l_resNameTbl */
static char* const* l_resNameTbl[30] = {
    l_resMANa,  l_resMADa,  l_resMCNa,  l_resMONa,
    l_resMANb,  l_resMANc,  l_resMASa,  l_resMBNa,
    l_resMANa2, l_resMADa2, l_resMCNa2, l_resMONa2,
    l_resMANb2, l_resMANc2, l_resMASa2, l_resMBNa2,
    l_resWANa,  l_resWADa,  l_resMATa,  l_resWCNa,
    l_resWONa,  l_resWGNa,  l_resWANb,  l_resWANa2,
    l_resWADa2, l_resMATa2, l_resWCNa2, l_resWONa2,
    l_resWGNa2, l_resWANb2,
};

struct anmTblPrm {
    char* arc_name;
    int resource_index;
};

/* 809879F4-80987AE4 000098 00F0+00 1/2 0/0 0/0 .data            l_bmdTbl */
 static anmTblPrm l_bmdTbl[30] = {
    l_resMANa[0],  3, l_resMADa[0],  3, l_resMCNa[0],  4, l_resMONa[0],  4, l_resMANb[0],  3,
    l_resMANc[0],  4, l_resMASa[0],  4, l_resMBNa[0],  4, l_resMANa2[0], 4, l_resMADa2[0], 4,
    l_resMCNa2[0], 4, l_resMONa2[0], 4, l_resMANb2[0], 3, l_resMANc2[0], 4, l_resMASa2[0], 4,
    l_resMBNa2[0], 4, l_resWANa[0],  4, l_resWADa[0],  4, l_resMATa[0],  3, l_resWCNa[0],  4,
    l_resWONa[0],  4, l_resWGNa[0],  4, l_resWANb[0],  4, l_resWANa2[0], 4, l_resWADa2[0], 4,
    l_resMATa2[0], 3, l_resWCNa2[0], 4, l_resWONa2[0], 4, l_resWGNa2[0], 4, l_resWANb2[0], 4,
};

/* 80987AE4-80987BD4 000188 00F0+00 1/2 0/0 0/0 .data            l_bmdTWTbl */
static anmTblPrm l_bmdTWTbl[30] = {
    l_resMANa[1],  3, l_resMADa[1],  3, l_resMCNa[1],  4, l_resMONa[1],  4, l_resMANb[1],  3,
    l_resMANc[1],  4, l_resMASa[1],  4, l_resMBNa[1],  4, l_resMANa2[1], 4, l_resMADa2[1], 3,
    l_resMCNa2[1], 4, l_resMONa2[1], 4, l_resMANb2[1], 3, l_resMANc2[1], 4, l_resMASa2[1], 4,
    l_resMBNa2[1], 4, l_resWANa[1],  4, l_resWADa[1],  4, l_resMATa[1],  3, l_resWCNa[1],  4,
    l_resWONa[1],  4, l_resWGNa[1],  4, l_resWANb[1],  4, l_resWANa2[1], 4, l_resWADa2[1], 4,
    l_resMATa2[1], 3, l_resWCNa2[1], 4, l_resWONa2[1], 4, l_resWGNa2[1], 4, l_resWANb2[1], 4,
};

/* 80987BD4-80987CC4 000278 00F0+00 1/2 0/0 0/0 .data            l_btpTbl */
static anmTblPrm l_btpTbl[30] = {
    l_resMANa[0],  -1, l_resMADa[0],  -1, l_resMCNa[0],  7, l_resMONa[0],  7, l_resMANb[0],  -1,
    l_resMANc[0],  7, l_resMASa[0],  7, l_resMBNa[0],  7, l_resMANa2[0], 7, l_resMADa2[0], 7,
    l_resMCNa2[0], 7, l_resMONa2[0], 7, l_resMANb2[0], -1, l_resMANc2[0], 7, l_resMASa2[0], 7,
    l_resMBNa2[0], 7, l_resWANa[0],  7, l_resWADa[0],  7, l_resMATa[0],  -1, l_resWCNa[0],  7,
    l_resWONa[0],  7, l_resWGNa[0],  7, l_resWANb[0],  7, l_resWANa2[0], 7, l_resWADa2[0], 7,
    l_resMATa2[0], -1, l_resWCNa2[0], 7, l_resWONa2[0], 7, l_resWGNa2[0], 7, l_resWANb2[0], 7,
};

/* 80987CC4-80987DB4 000368 00F0+00 1/2 0/0 0/0 .data            l_btpTWTbl */
static anmTblPrm l_btpTWTbl[30] = {
    l_resMANa[1],  -1, l_resMADa[1],  -1, l_resMCNa[1],  7, l_resMONa[1],  7, l_resMANb[1],  -1,
    l_resMANc[1],  7, l_resMASa[1],  7, l_resMBNa[1],  7, l_resMANa2[1], 7, l_resMADa2[1], -1,
    l_resMCNa2[1], 7, l_resMONa2[1], 7, l_resMANb2[1], -1, l_resMANc2[1], 7, l_resMASa2[1], 7,
    l_resMBNa2[1], 7, l_resWANa[1],  7, l_resWADa[1],  7, l_resMATa[1],  -1, l_resWCNa[1],  7,
    l_resWONa[1],  7, l_resWGNa[1],  7, l_resWANb[1],  7, l_resWANa2[1], 7, l_resWADa2[1], 7,
    l_resMATa2[1], -1, l_resWCNa2[1], 7, l_resWONa2[1], 7, l_resWGNa2[1], 7, l_resWANb2[1], 7,
};

/* 80987DB4-80987F64 -00001 01B0+00 1/1 0/0 0/0 .data            l_bckTbl_M */
static anmTblPrm l_bckTbl_M[54] = {
    {"Mgeneral",  0x1A},
    {"Mgeneral",  0x1B},
    {"Mgeneral",  0x1D},
    {"Mgeneral",  0x1E},
    {"Mgeneral",  8},
    {"Mgeneral",  9},
    {"Mgeneral",  0x14},
    {"Mgeneral",  0x15},
    {"Mgeneral",  0x17},
    {"Mgeneral",  5},
    {"Mgeneral",  6},
    {"Mgeneral",  0x1C},
    {"Mgeneral",  0x18},
    {"Mgeneral",  0x16},
    {"Mgeneral",  0x11},
    {"Mgeneral",  0xD},
    {"Mgeneral",  0xE},
    {"Mgeneral",  0x12},
    {"Mgeneral",  0xF},
    {"Mgeneral",  0x10},
    {"Mgeneral",  3},
    {"Mgeneral",  4},
    {"Mspecial", 0x12},
    {"Mspecial", 0xF},
    {"Mspecial", 0xC},
    {"Mspecial", 0x15},
    {"Mspecial", 0x13},
    {"Mspecial", 0x10},
    {"Mspecial", 0xD},
    {"Mspecial", 0x16},
    {"Mspecial", 0x14},
    {"Mspecial", 0x11},
    {"Mspecial", 0xE},
    {"Mspecial", 0x17},
    {"Mspecial", 7},
    {"Mspecial", 8},
    {"Mspecial", 0xA},
    {"Mspecial", 0xB},
    {"Mgeneral",  0x19},
    {"Mgeneral",  0xB},
    {"Mgeneral",  0xC},
    {"Mgeneral",  0x13},
    {"Mspecial", 3},
    {"Mspecial", 6},
    {"Mspecial", 5},
    {"Mspecial", 9},
    {"Mspecial", 4},
    {"Mgeneral",  7},
    {"Mgeneral",  -1},
    {"Mgeneral",  -1},
    {"Mgeneral",  -1},
    {"Mgeneral",  -1},
    {"Mgeneral",  -1},
    {"Mgeneral",  0xA},
};

/* 80987F64-80988114 -00001 01B0+00 1/1 0/0 0/0 .data            l_bckTbl_W */
static anmTblPrm l_bckTbl_W[54] = {
    {"Wgeneral", 0x1F},
    {"Wgeneral", 0x20},
    {"Wgeneral", 0x22},
    {"Wgeneral", 0x23},
    {"Wgeneral", 0xD},
    {"Wgeneral", 0xE},
    {"Wgeneral", 0x19},
    {"Wgeneral", 0x1A},
    {"Wgeneral", 0x1C},
    {"Wgeneral", 0xA},
    {"Wgeneral", 0xB},
    {"Wgeneral", 0x21},
    {"Wgeneral", 0x1D},
    {"Wgeneral", 0x1B},
    {"Wgeneral", 0x16},
    {"Wgeneral", 0x12},
    {"Wgeneral", 0x13},
    {"Wgeneral", 0x17},
    {"Wgeneral", 0x14},
    {"Wgeneral", 0x15},
    {"Wgeneral", 7},
    {"Wgeneral", 8},
    {"Wspecial", 0xD},
    {"Wspecial", 0xA},
    {"Wspecial", 7},
    {"Wspecial", 0x10},
    {"Wspecial", 0xE},
    {"Wspecial", 0xB},
    {"Wspecial", 8},
    {"Wspecial", 0x11},
    {"Wspecial", 0xF},
    {"Wspecial", 0xC},
    {"Wspecial", 9},
    {"Wspecial", 0x12},
    {"Wspecial", 3},
    {"Wspecial", 4},
    {"Wspecial", 5},
    {"Wspecial", 6},
    {"Wgeneral", 0x1E},
    {"Wgeneral", 0x10},
    {"Wgeneral", 0x11},
    {"Wgeneral", 0x18},
    {"Wspecial", -1},
    {"Wspecial", -1},
    {"Wspecial", -1},
    {"Wspecial", -1},
    {"Wspecial", -1},
    {"Wgeneral", 0xC},
    {"Wgeneral", 3},
    {"Wgeneral", 4},
    {"Wgeneral", 5},
    {"Wgeneral", 6},
    {"Wgeneral", 9},
    {"Wgeneral", 0xF},
};

struct jnt {
    /* 0x00 */ f32 jntT[3];
    /* 0X0C */ s16 jntR[3];
    /* 0x12 */ u8 field_0x12;
    /* 0x13 */ u8 field_0x13;
};

struct jntTblMPrm {
    /* 0x0 */ jnt jntPrm[19];
};

struct jntTblWPrm {
    /* 0x0 */ jnt jntPrm[21];
};

/* 80988114-809898D4 0007B8 17C0+00 1/1 0/0 0/0 .data            a_jntTbl_M */
static jntTblMPrm a_jntTbl_M[16] = {
    {
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    },

    {
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0x14, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0x14, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0xB, 0, 0xFFEE, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    },

    {
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    },
    
    {
    0.0f, -0.3f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0xFFEC, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0xFFCE, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0xFFBF, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0xFFF6, 5, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0x14, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0x46, 0xA, 0x1E, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0x32, 0xFFFB, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0xA, 5, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0x14, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0xFFBA, 0xA, 0xFFE2, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0x32, 5, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0xF, 0, 0,
    0.0f, 0.0f, 0.0f, 0xA, 0, 0xFFE2, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0xA, 0xB, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 1, 0, 0,
    0.0f, 0.0f, 0.0f, 0xA, 0, 0xFFE2, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0xFFF6, 0xB, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 1, 0, 0,
    },
    
    {
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    },
    
    {
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    },
    
    {
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0xA, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0xA, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    },
    
    {
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    },
    
    {
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    },
    
    {
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0x14, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0x14, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0xB, 0, 0xFFEE, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    },
    
    {
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    },
    
    {
    0.0f, -0.3f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0xFFEC, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0xFFCE, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0xFFBF, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0xFFF6, 5, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0x14, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0x46, 0xA, 0x1E, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0x32, 0xFFFB, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0xA, 5, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0x14, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0xFFBA, 0xA, 0xFFE2, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0x32, 5, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0xF, 0, 0,
    0.0f, 0.0f, 0.0f, 0xA, 0, 0xFFE2, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0xA, 0xB, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 1, 0, 0,
    0.0f, 0.0f, 0.0f, 0xA, 0, 0xFFE2, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0xFFF6, 0xB, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 1, 0, 0,
    },
    
    {
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    },
    
    {
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    },
    
    {
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0xA, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0xA, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    },
    
    {
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    },
};

/* 809898D4-80989CD4 001F78 0400+00 3/4 0/0 0/0 .data            a_prmTbl_M */
struct prmTbl {
    /* 0x00 */ f32 field_0x0;
    /* 0x04 */ u8 field_0x4[0x18 - 0x4];
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ s16 field_0x1c;
    /* 0x1E */ u8 field_0x1e[0x20 - 0x1e];
    /* 0x20 */ f32 field_0x20;
    /* 0x24 */ f32 field_0x24;
    /* 0x28 */ f32 field_0x28;
    /* 0x2C */ f32 field_0x2c;
    /* 0x30 */ f32 field_0x30;
    /* 0x34 */ f32 field_0x34;
    /* 0x38 */ f32 field_0x38;
    /* 0x3C */ f32 field_0x3c;
};

static prmTbl a_prmTbl_M[16] = {
    -852593.0f, 0xB9, 0xB0, 0xD8, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0F, 0xA0, 0x3A, 0x98, 0xE0, 0xC0, 0xC5, 0x68, 1.0f, 0xC8, 0x00, 0x00,
    1.5f, 1.8f, 16.0f, 6.0f, 180.0f, 30.0f, 50.1f, 35.0f,

    -852593.0f, 0xB9, 0xB0, 0xD8, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0F, 0xA0, 0x3A, 0x98, 0xE0, 0xC0, 0xC5, 0x68, 1.4f, 0xF0, 0x00, 0x00,
    1.4f, 1.8f, 14.0f, 6.0f, 180.0f, 30.0f, 50.1f, 35.0f,

    -852593.0f, 0xB9, 0xB0, 0xD8, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0F, 0xA0, 0x3A, 0x98, 0xE0, 0xC0, 0xC5, 0x68, 0.7f, 0x8C, 0x00, 0x00,
    1.7f, 2.0f, 12.0f, 4.5f, 180.0f, 30.0f, 50.1f, 35.0f,

    -852593.0f, 0xB9, 0xB0, 0xD8, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0F, 0xA0, 0x3A, 0x98, 0xE0, 0xC0, 0xC5, 0x68, 0.9f, 0xC8, 0x00, 0x00,
    1.3f, 1.2f, 12.0f, 3.7f, 180.0f, 30.0f, 50.1f, 35.0f,

    -852593.0f, 0xB9, 0xB0, 0xD8, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0F, 0xA0, 0x3A, 0x98, 0xE0, 0xC0, 0xC5, 0x68, 1.0f, 0xC8, 0x00, 0x00,
    1.5f, 1.5f, 16.0f, 5.5f, 180.0f, 30.0f, 50.1f, 35.0f,

    -852593.0f, 0xB9, 0xB0, 0xD8, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0F, 0xA0, 0x3A, 0x98, 0xE0, 0xC0, 0xC5, 0x68, 1.0f, 0xC8, 0x00, 0x00,
    1.5f, 1.5f, 16.0f, 5.5f, 180.0f, 30.0f, 50.1f, 35.0f,

    -852593.0f, 0xB9, 0xB0, 0xD8, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0F, 0xA0, 0x3A, 0x98, 0xE0, 0xC0, 0xC5, 0x68, 1.0f, 0xC8, 0x00, 0x00,
    1.5f, 1.8f, 15.0f, 5.0f, 180.0f, 30.0f, 50.1f, 35.0f,

    -852593.0f, 0xB9, 0xB0, 0xD8, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0F, 0xA0, 0x3A, 0x98, 0xE0, 0xC0, 0xC5, 0x68, 1.0f, 0xC8, 0x00, 0x00,
    1.5f, 1.8f, 16.0f, 6.0f, 180.0f, 30.0f, 50.1f, 35.0f,

    -852593.0f, 0xB9, 0xB0, 0xD8, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0F, 0xA0, 0x3A, 0x98, 0xE0, 0xC0, 0xC5, 0x68, 1.0f, 0xC8, 0x00, 0x00,
    1.5f, 1.8f, 16.0f, 6.0f, 180.0f, 30.0f, 50.1f, 35.0f,

    -852593.0f, 0xB9, 0xB0, 0xD8, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0F, 0xA0, 0x3A, 0x98, 0xE0, 0xC0, 0xC5, 0x68, 1.4f, 0xF0, 0x00, 0x00,
    1.4f, 1.8f, 14.0f, 6.0f, 180.0f, 30.0f, 50.1f, 35.0f,

    -852593.0f, 0xB9, 0xB0, 0xD8, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0F, 0xA0, 0x3A, 0x98, 0xE0, 0xC0, 0xC5, 0x68, 0.7f, 0x8C, 0x00, 0x00,
    1.7f, 2.0f, 12.0f, 4.5f, 180.0f, 30.0f, 50.1f, 35.0f,

    -852593.0f, 0xB9, 0xB0, 0xD8, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0F, 0xA0, 0x3A, 0x98, 0xE0, 0xC0, 0xC5, 0x68, 0.9f, 0xC8, 0x00, 0x00,
    1.3f, 1.2f, 12.0f, 3.7f, 180.0f, 30.0f, 50.1f, 35.0f,

    -852593.0f, 0xB9, 0xB0, 0xD8, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0F, 0xA0, 0x3A, 0x98, 0xE0, 0xC0, 0xC5, 0x68, 1.0f, 0xC8, 0x00, 0x00,
    1.5f, 1.5f, 16.0f, 5.5f, 180.0f, 30.0f, 50.1f, 35.0f,

    -852593.0f, 0xB9, 0xB0, 0xD8, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0F, 0xA0, 0x3A, 0x98, 0xE0, 0xC0, 0xC5, 0x68, 1.0f, 0xC8, 0x00, 0x00,
    1.5f, 1.5f, 16.0f, 5.5f, 180.0f, 30.0f, 50.1f, 35.0f,

    -852593.0f, 0xB9, 0xB0, 0xD8, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0F, 0xA0, 0x3A, 0x98, 0xE0, 0xC0, 0xC5, 0x68, 1.0f, 0xC8, 0x00, 0x00,
    1.5f, 1.8f, 15.0f, 5.0f, 180.0f, 30.0f, 50.1f, 35.0f,

    -852593.0f, 0xB9, 0xB0, 0xD8, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0F, 0xA0, 0x3A, 0x98, 0xE0, 0xC0, 0xC5, 0x68, 1.0f, 0xC8, 0x00, 0x00,
    1.5f, 1.8f, 16.0f, 6.0f, 180.0f, 30.0f, 50.1f, 35.0f,
};

/* 80989CD4-8098B3CC 002378 16F8+00 1/1 0/0 0/0 .data            a_jntTbl_W */
static jntTblWPrm a_jntTbl_W[14] = {
    {
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    },

    {
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0x14, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0x14, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0xB, 8, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    },
    
    {
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    },
    
    {
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0xA, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0xA, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    },
    
    {
    0.0f, -0.3f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0xFFEC, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0xFFCE, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0xFFBF, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0xFFF6, 5, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0xA, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 8, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0xA, 5, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 8, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0xF, 0, 0,
    0.0f, 0.0f, 0.0f, 0xA, 0, 0xFFE2, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0xA, 0xB, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 1, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0xA, 0, 0xFFE2, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0xFFF6, 0xB, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 1, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    },
    
    {
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    },
    
    {
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    },
    
    {
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    },
    
    {
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0x14, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0x14, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0xB, 8, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    },
    
    {
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    },
    
    {
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0xA, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0xA, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    },
    
    {
    0.0f, -0.3f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0xFFEC, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0xFFCE, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0xFFBF, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0xFFF6, 5, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0xA, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 8, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0xA, 5, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 8, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0xF, 0, 0,
    0.0f, 0.0f, 0.0f, 0xA, 0, 0xFFE2, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0xA, 0xB, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 1, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0xA, 0, 0xFFE2, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0xFFF6, 0xB, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 1, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    },
    
    {
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    },
    
    {
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    0.0f, 0.0f, 0.0f, 0, 0, 0, 0, 0,
    },
};

/* 8098B3CC-8098B74C 003A70 0380+00 3/4 0/0 0/0 .data            a_prmTbl_W */
static prmTbl a_prmTbl_W[14] = {
    -852593.0f, 0xB9, 0xB0, 0xD8, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0F, 0xA0, 0x3A, 0x98, 0xE0, 0xC0, 0xC5, 0x68, 1.0f, 0xC8, 0x00, 0x00,
    1.4f, 1.5f, 10.0f, 4.0f, 180.0f, 30.0f, 50.1f, 35.0f,

    -852593.0f, 0xB9, 0xB0, 0xD8, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0F, 0xA0, 0x3A, 0x98, 0xE0, 0xC0, 0xC5, 0x68, 1.0f, 0xC8, 0x00, 0x00,
    1.5f, 1.5f, 10.0f, 3.5f, 180.0f, 30.0f, 50.1f, 35.0f,

    -852593.0f, 0xB9, 0xB0, 0xD8, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0F, 0xA0, 0x3A, 0x98, 0xE0, 0xC0, 0xC5, 0x68, 1.0f, 0xC8, 0x00, 0x00,
    1.3f, 1.2f, 10.0f, 3.5f, 180.0f, 30.0f, 50.1f, 35.0f,

    -852593.0f, 0xB9, 0xB0, 0xD8, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0F, 0xA0, 0x3A, 0x98, 0xE0, 0xC0, 0xC5, 0x68, 0.6f, 0xC8, 0x00, 0x00,
    1.8f, 1.5f, 9.0f, 3.2f, 180.0f, 30.0f, 50.1f, 35.0f,

    -852593.0f, 0xB9, 0xB0, 0xD8, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0F, 0xA0, 0x3A, 0x98, 0xE0, 0xC0, 0xC5, 0x68, 0.8f, 0xC8, 0x00, 0x00,
    1.3f, 1.2f, 8.0f, 2.8f, 180.0f, 30.0f, 50.1f, 35.0f,

    -852593.0f, 0xB9, 0xB0, 0xD8, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0F, 0xA0, 0x3A, 0x98, 0xE0, 0xC0, 0xC5, 0x68, 1.0f, 0xC8, 0x00, 0x00,
    1.4f, 1.3f, 10.0f, 2.6f, 180.0f, 30.0f, 50.1f, 35.0f,

    -852593.0f, 0xB9, 0xB0, 0xD8, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0F, 0xA0, 0x3A, 0x98, 0xE0, 0xC0, 0xC5, 0x68, 1.0f, 0xC8, 0x00, 0x00,
    1.5f, 1.6f, 10.0f, 4.4f, 180.0f, 30.0f, 50.1f, 35.0f,

    -852593.0f, 0xB9, 0xB0, 0xD8, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0F, 0xA0, 0x3A, 0x98, 0xE0, 0xC0, 0xC5, 0x68, 1.0f, 0xC8, 0x00, 0x00,
    1.4f, 1.5f, 10.0f, 4.0f, 180.0f, 30.0f, 50.1f, 35.0f,

    -852593.0f, 0xB9, 0xB0, 0xD8, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0F, 0xA0, 0x3A, 0x98, 0xE0, 0xC0, 0xC5, 0x68, 1.0f, 0xC8, 0x00, 0x00,
    1.5f, 1.5f, 10.0f, 3.5f, 180.0f, 30.0f, 50.1f, 35.0f,

    -852593.0f, 0xB9, 0xB0, 0xD8, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0F, 0xA0, 0x3A, 0x98, 0xE0, 0xC0, 0xC5, 0x68, 1.0f, 0xC8, 0x00, 0x00,
    1.3f, 1.2f, 10.0f, 3.5f, 180.0f, 30.0f, 50.1f, 35.0f,

    -852593.0f, 0xB9, 0xB0, 0xD8, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0F, 0xA0, 0x3A, 0x98, 0xE0, 0xC0, 0xC5, 0x68, 0.6f, 0xC8, 0x00, 0x00,
    1.8f, 1.5f, 9.0f, 3.2f, 180.0f, 30.0f, 50.1f, 35.0f,

    -852593.0f, 0xB9, 0xB0, 0xD8, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0F, 0xA0, 0x3A, 0x98, 0xE0, 0xC0, 0xC5, 0x68, 0.8f, 0xC8, 0x00, 0x00,
    1.3f, 1.2f, 8.0f, 2.8f, 180.0f, 30.0f, 50.1f, 35.0f,

    -852593.0f, 0xB9, 0xB0, 0xD8, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0F, 0xA0, 0x3A, 0x98, 0xE0, 0xC0, 0xC5, 0x68, 1.0f, 0xC8, 0x00, 0x00,
    1.4f, 1.3f, 10.0f, 2.6f, 180.0f, 30.0f, 50.1f, 35.0f,

    -852593.0f, 0xB9, 0xB0, 0xD8, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0F, 0xA0, 0x3A, 0x98, 0xE0, 0xC0, 0xC5, 0x68, 1.0f, 0xC8, 0x00, 0x00,
    1.5f, 1.6f, 10.0f, 4.4f, 180.0f, 30.0f, 50.1f, 35.0f,
};

/* 8098B74C-8098B750 003DF0 0004+00 0/1 0/0 0/0 .data            l_evtNames */
static char* l_evtNames[1] = {
    NULL,
};

/* 8098B750-8098B754 -00001 0004+00 0/2 0/0 0/0 .data            l_myName */
static char* l_myName = "Chat";

/* 8098B754-8098B760 003DF8 000C+00 0/2 0/0 0/0 .data            mEvtSeqList__11daNpcChat_c */
daNpcChat_c::eventFunc daNpcChat_c::mEvtSeqList[1] = {
    NULL,
};

/* 8098084C-809809D0 0000EC 0184+00 1/1 0/0 0/0 .text            __ct__11daNpcChat_cFv */
daNpcChat_c::daNpcChat_c() {}

/* 80980A60-80980C1C 000300 01BC+00 1/0 0/0 0/0 .text            __dt__11daNpcChat_cFv */
daNpcChat_c::~daNpcChat_c() {
    removeResrc(mType, mObjNum);

    if (heap != NULL) {
        mpMorf->stopZelAnime();
    }
}

/* 80986C6C-80986CD4 -00001 0068+00 1/1 0/0 0/0 .rodata          l_objTbl */
static anmTblPrm const l_objTbl[13] = {
    {"object", 9},
    {"object", 9},
    {"object", 8},
    {"object", 3},
    {"object", 0xD},
    {"object", 0xE},
    {"object", 0xC},
    {"object", 6},
    {"object", 7},
    {"object", 0xA},
    {"object", 0xB},
    {"object", 0xF},
    {"object", 0x10},
};

/* 80986CD4-80986D3C -00001 0068+00 1/1 0/0 0/0 .rodata          l_objTWTbl */
static anmTblPrm const l_objTWTbl[13] = {
    {"objectTW", 9},
    {"objectTW", 9},
    {"objectTW", 8},
    {"objectTW", 3},
    {"objectTW", 0xD},
    {"objectTW", 0xE},
    {"objectTW", 0xC},
    {"objectTW", 6},
    {"objectTW", 7},
    {"objectTW", 0xA},
    {"objectTW", 0xB},
    {"objectTW", -1},
    {"objectTW", -1},
};

/* 80986D3C-80986DA8 0003A0 006C+00 1/3 0/0 0/0 .rodata          m__17daNpcChat_Param_c */
daNpcChat_HIOParam const daNpcChat_Param_c::m = {
    55.0f,
    -3.0f,
    1.0f,
    500.0f,
    255.0f,
    140.0f,
    35.0f,
    30.0f,
    0.0f,
    0.0f,
    10.0f,
    -10.0f,
    30.0f,
    -10.0f,
    45.0f,
    -45.0f,
    0.6f,
    12.0f,
    2,
    6,
    3,
    6,
    60.0f,
    500.0f,
    300.0f,
    -300.0f,
    60,
    0,
    0,
    0,
    0,
    false,
    false,
};

/* 80980C1C-80980E20 0004BC 0204+00 1/1 0/0 0/0 .text            NpcCreate__11daNpcChat_cFi */
BOOL daNpcChat_c::NpcCreate(int param_1) {
    J3DModelData* a_mdlData_p = getNpcMdlDataP(param_1);

    JUT_ASSERT(185, 0 != a_mdlData_p);

    u32 uVar1 = getTexAnmP(param_1) != NULL ? 0x11020084 : 0x11000084;

    mpMorf = new mDoExt_McaMorfSO(a_mdlData_p, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound, 0x80000, uVar1);
    if (mpMorf != NULL && mpMorf->getModel() == NULL) {
        mpMorf->stopZelAnime();
        mpMorf = NULL;
    }

    if (mpMorf == NULL) {
        return FALSE;
    }

    static Vec const a_transScaleTbl[30] = {
        1.0f, 1.0f, 1.0f,
        1.0f, 1.2f, 2.17f,
        1.0f, 0.56f, 1.0f,
        1.0f, 0.95f, 1.0f,
        1.0f, 1.16f, 1.0f,
        1.0f, 1.1f, 1.0f,
        1.0f, 0.79f, 1.0f,
        1.0f, 0.92f, 1.0f,
        1.0f, 1.0f, 1.0f,
        1.0f, 1.2f, 2.2f,
        1.0f, 0.56f, 1.0f,
        1.0f, 0.95f, 1.0f,
        1.0f, 1.16f, 1.0f,
        1.0f, 1.1f, 1.0f,
        1.0f, 0.79f, 1.0f,
        1.0f, 0.92f, 1.0f,
        1.0f, 1.0f, 1.0f,
        1.0f, 0.95f, 1.0f,
        1.0f, 1.1f, 1.0f,
        1.0f, 0.57f, 1.0f,
        1.0f, 0.9f, 1.0f,
        1.0f, 0.86f, 1.0f,
        1.0f, 1.1f, 1.0f,
        1.0f, 1.0f, 1.0f,
        1.0f, 0.95f, 1.0f,
        1.0f, 1.1f, 1.0f,
        1.0f, 0.57f, 1.0f,
        1.0f, 0.9f, 1.0f,
        1.0f, 0.86f, 1.0f,
        1.0f, 1.05f, 1.0f,
    };

    cXyz i_scale(a_transScaleTbl[param_1]);
    mpMorf->offTranslate();
    mpMorf->setTranslateScale(i_scale);
    J3DJointCallBack jointCallBack = a_mdlData_p->getJointNodePointer(0)->getCallBack();
    uintptr_t userArea = mpMorf->getModel()->getUserArea();
    for (u16 i = 0; i < a_mdlData_p->getJointNum(); i++) {
        a_mdlData_p->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }
    mpMorf->getModel()->setUserArea((uintptr_t)this);

    if (!setExpressionBtp(param_1)) {
        return FALSE;
    }

    setMotionAnm(0, 0.0f);

    for (u16 i = 0; i < a_mdlData_p->getJointNum(); i++) {
        a_mdlData_p->getJointNodePointer(i)->setCallBack(jointCallBack);
    }
    mpMorf->getModel()->setUserArea(userArea);

    return TRUE;
}

/* 80980E20-80980F88 0006C0 0168+00 3/1 0/0 0/0 .text            getObjNum__11daNpcChat_cFv */
int daNpcChat_c::getObjNum() {
    int objNum;
    u8 param = (fopAcM_GetParam(this) >> 8) & 0xF;

    if (isM_()) {
        switch (param) {
            case 0:
                objNum = 0;
                break;

            case 1:
                objNum = 1;
                break;

            case 2:
                objNum = 2;
                break;

            case 3:
                objNum = 4;
                break;

            case 4:
                objNum = 6;
                break;

            case 5:
                objNum = 0;
                break;

            case 6:
                objNum = 0;
                break;

            case 7:
                objNum = 9;
                break;

            default:
                objNum = 0;
                break;
        }

        // dSv_event_flag_c::F_0281 - Shop - Malo Mart opens in Castle Town
        if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[281]) &&
            objNum == 9) {
            objNum = 0xB;
        }
    } else {
        switch (param) {
            case 0:
                objNum = 0;
                break;

            case 1:
                objNum = 8;
                break;

            case 2:
                objNum = 3;
                break;

            case 3:
                objNum = 5;
                break;

            case 4:
                objNum = 7;
                break;

            case 5:
                objNum = 0;
                break;

            case 6:
                objNum = 0;
                break;

            case 7:
                objNum = 10;
                break;

            default:
                objNum = 0;
                break;
        }

        // dSv_event_flag_c::F_0281 - Shop - Malo Mart opens in Castle Town
        if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[281]) &&
            objNum == 10) {
            objNum = 0xC;
        }
    }

    return objNum;
}

/* 80980F88-80980FC8 000828 0040+00 1/1 0/0 0/0 .text            ObjCreate__11daNpcChat_cFi */
J3DModel* daNpcChat_c::ObjCreate(int param_1) {
    J3DModelData* a_mdlData_p = getObjMdlDataP(param_1);
    if (a_mdlData_p != NULL) {
        return mDoExt_J3DModel__create(a_mdlData_p, 0x80000, 0x11000084);
    }

    return NULL;
}

/* 80980FC8-80981108 000868 0140+00 1/1 0/0 0/0 .text            ChairCreate__11daNpcChat_cFf */
J3DModel* daNpcChat_c::ChairCreate(f32 i_scale) {
    const char* i_arcName = mTwilight ? "objectTW" : "object";
    int i_index = isM_() ? ((mTwilight != 0) ? 4 : 4) : ((mTwilight != 0) ? 5 : 5);
    
    J3DModelData* a_mdlData_p = (J3DModelData*)dComIfG_getObjectRes(i_arcName, i_index);
    if (a_mdlData_p != NULL) {
        J3DModel* model = mDoExt_J3DModel__create(a_mdlData_p, 0x80000, 0x11000084);
        if (model == NULL) {
            return NULL;
        }

        Vec scale = {i_scale, i_scale, i_scale};
        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::ZXYrotM(shape_angle);
        model->setBaseScale(scale);
        model->setBaseTRMtx(mDoMtx_stack_c::get());

        return model;
    }
    
    return NULL;
}

/* 80981108-80981140 0009A8 0038+00 5/5 0/0 0/0 .text            isM___11daNpcChat_cFv */
bool daNpcChat_c::isM_() {
    if (mpMorf == NULL) {
        return mType < 16;
    }

    u16 a_jntNum = mpMorf->getModel()->getModelData()->getJointNum();
    JUT_ASSERT(738, (a_jntNum == JntM_NUM_e) || (a_jntNum == JntW_NUM_e));
    return a_jntNum == JntM_NUM_e;
}

/* 80981140-80981280 0009E0 0140+00 1/1 0/0 0/0 .text            loadResrc__11daNpcChat_cFii */
cPhs__Step daNpcChat_c::loadResrc(int idx, int param_2) {
    cPhs__Step rv = cPhs_COMPLEATE_e;
    if (mTwilight) {
        rv = (cPhs__Step)dComIfG_resLoad(&mPhase1, l_resNameTbl[idx][1]);
        if (rv != cPhs_COMPLEATE_e) {
            return rv;
        }
    } else {
        rv = (cPhs__Step)dComIfG_resLoad(&mPhase1, l_resNameTbl[idx][0]);
        if (rv != cPhs_COMPLEATE_e) {
            return rv;
        }
    }

    rv = (cPhs__Step)dComIfG_resLoad(&mPhase2, l_resNameTbl[idx][2]);
    if (rv != cPhs_COMPLEATE_e) {
        return rv;
    }
    
    if (param_2 != 0 || field_0xe51 == 1) {
        rv = (cPhs__Step)dComIfG_resLoad(&mPhase3, l_resNameTbl[idx][3]);
        if (rv != cPhs_COMPLEATE_e) {
            return rv;
        }

        if (mTwilight) {
            rv = (cPhs__Step)dComIfG_resLoad(&mPhase4, l_resNameTbl[idx][5]);
            if (rv != cPhs_COMPLEATE_e) {
                return rv;
            }
        } else {
            rv = (cPhs__Step)dComIfG_resLoad(&mPhase4, l_resNameTbl[idx][4]);
            if (rv != cPhs_COMPLEATE_e) {
                return rv;
            }
        }
    }

    return rv;
}

/* 80981280-809812FC 000B20 007C+00 1/1 0/0 0/0 .text            getNpcMdlDataP__11daNpcChat_cFi */
J3DModelData* daNpcChat_c::getNpcMdlDataP(int i_index) {
    if (i_index < 0 || i_index >= 30) {
        return NULL;
    }

    const anmTblPrm* def;
    if (mTwilight) {
        def = &l_bmdTWTbl[i_index];
    } else {
        def = &l_bmdTbl[i_index];
    }

    return (J3DModelData*)dComIfG_getObjectRes(def->arc_name, def->resource_index);
}

/* 809812FC-80981374 000B9C 0078+00 1/1 0/0 0/0 .text            getObjMdlDataP__11daNpcChat_cFi */
J3DModelData* daNpcChat_c::getObjMdlDataP(int i_index) {
    J3DModelData* model_data = NULL;
    const anmTblPrm* def;
    if (mTwilight) {
        def = &l_objTWTbl[i_index];
    } else {
        def = &l_objTbl[i_index];
    }

    if (def->resource_index > 0) {
        model_data = (J3DModelData*)dComIfG_getObjectRes(def->arc_name, def->resource_index);
    }

    return model_data;
}

/* 80981374-809813E8 000C14 0074+00 2/2 0/0 0/0 .text            getTexAnmP__11daNpcChat_cFi */
J3DAnmTexPattern* daNpcChat_c::getTexAnmP(int i_index) {
    const anmTblPrm* def;
    if (mTwilight) {
        def = &l_btpTWTbl[i_index];
    } else {
        def = &l_btpTbl[i_index];
    }
    if (def->resource_index != -1) {
        return (J3DAnmTexPattern*)dComIfG_getObjectRes(def->arc_name, def->resource_index);
    }
     return NULL;
}

/* 809813E8-809814DC 000C88 00F4+00 1/1 0/0 0/0 .text            removeResrc__11daNpcChat_cFii */
BOOL daNpcChat_c::removeResrc(int idx, int param_2) {
    if (mTwilight) {
        dComIfG_resDelete(&mPhase1, l_resNameTbl[idx][1]);
    } else {
        dComIfG_resDelete(&mPhase1, l_resNameTbl[idx][0]);
    }

    dComIfG_resDelete(&mPhase2, l_resNameTbl[idx][2]);

    if (param_2 != 0 || field_0xe51 == 1) {
        dComIfG_resDelete(&mPhase3, l_resNameTbl[idx][3]);

        if (mTwilight) {
            dComIfG_resDelete(&mPhase4, l_resNameTbl[idx][5]);
        } else {
            dComIfG_resDelete(&mPhase4, l_resNameTbl[idx][4]);
        }
    }

    return TRUE;
}

/* 8098BACC-8098BAD0 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daNpcChat_Param_c l_HIO;

inline f32 AtnOfs(int param_1) { return param_1 < 16 ? a_prmTbl_M[param_1].field_0x1c : a_prmTbl_W[param_1 - 16].field_0x1c; }

/* 809814DC-80981E90 000D7C 09B4+00 1/1 0/0 0/0 .text            setAttention__11daNpcChat_cFi */
BOOL daNpcChat_c::setAttention(int param_1) {
    // NONMATCHING
    static cXyz a_eyeOfsTbl[30] = {
        cXyz(0.0f, 10.0f, 0.0f),
        cXyz(0.0f, 10.0f, 0.0f),
        cXyz(0.0f, 10.0f, 0.0f),
        cXyz(0.0f, 10.0f, 0.0f),
        cXyz(0.0f, 10.0f, 0.0f),
        cXyz(0.0f, 10.0f, 0.0f),
        cXyz(0.0f, 10.0f, 0.0f),
        cXyz(0.0f, 10.0f, 0.0f),
        cXyz(0.0f, 10.0f, 0.0f),
        cXyz(0.0f, 10.0f, 0.0f),
        cXyz(0.0f, 10.0f, 0.0f),
        cXyz(0.0f, 10.0f, 0.0f),
        cXyz(0.0f, 10.0f, 0.0f),
        cXyz(0.0f, 10.0f, 0.0f),
        cXyz(0.0f, 10.0f, 0.0f),
        cXyz(0.0f, 10.0f, 0.0f),
        cXyz(0.0f, 10.0f, 0.0f),
        cXyz(0.0f, 10.0f, 0.0f),
        cXyz(0.0f, 10.0f, 0.0f),
        cXyz(0.0f, 10.0f, 0.0f),
        cXyz(0.0f, 10.0f, 0.0f),
        cXyz(0.0f, 10.0f, 0.0f),
        cXyz(0.0f, 10.0f, 0.0f),
        cXyz(0.0f, 10.0f, 0.0f),
        cXyz(0.0f, 10.0f, 0.0f),
        cXyz(0.0f, 10.0f, 0.0f),
        cXyz(0.0f, 10.0f, 0.0f),
        cXyz(0.0f, 10.0f, 0.0f),
        cXyz(0.0f, 10.0f, 0.0f),
        cXyz(0.0f, 10.0f, 0.0f),
    };

    int jointNo = isM_() ? 3 : 3;
    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo));
    mDoMtx_stack_c::multVec(&a_eyeOfsTbl[param_1], &eyePos);
    mBaseAttnPos.set(current.pos.x, current.pos.y + AtnOfs(param_1), current.pos.z);

    if (field_0xe38 == 2) {
        if (mTalkNo == 0) {
            attention_info.position = mBaseAttnPos;
            if (mTalkMemberNum > 1) {
                for (int i = 1; i < mTalkMemberNum; i++) {
                    if (mTalkMembers[i] != NULL) {
                        attention_info.position += mTalkMembers[i]->getBaseAttnPos();
                    }
                }

                attention_info.position = attention_info.position / mTalkMemberNum;

                for (int i = 1; i < mTalkMemberNum; i++) {
                    if (mTalkMembers[i] != NULL) {
                        mTalkMembers[i]->attention_info.position = attention_info.position;
                    }
                }
            }
        }
    } else {
        attention_info.position = mBaseAttnPos;
    }

    return TRUE;
}

inline f32 ChkWallR(int type) {
    return (f32)(type < 16 ? a_prmTbl_M[type].field_0x3c : a_prmTbl_W[type - 16].field_0x3c);
}

inline f32 ChkWallH(int type) {
    return (f32)(type < 16 ? a_prmTbl_M[type].field_0x38 : a_prmTbl_W[type - 16].field_0x38);
}

inline f32 CylR(int type) {
    return (f32)(type < 16 ? a_prmTbl_M[type].field_0x34 : a_prmTbl_W[type - 16].field_0x34);
}

inline f32 CylH(int type) {
    return (f32)(type < 16 ? a_prmTbl_M[type].field_0x30 : a_prmTbl_W[type - 16].field_0x30);
}

/* 80981E90-809822A0 001730 0410+00 1/1 0/0 0/0 .text            Create__11daNpcChat_cFv */
cPhs__Step daNpcChat_c::Create() {
    if (!fopAcM_CheckCondition(this, fopAcCnd_INIT_e)) {
        new (this) daNpcChat_c();
        fopAcM_OnCondition(this, fopAcCnd_INIT_e);
    }

    mTwilight = dKy_darkworld_check();
    mType = getType();
    mObjNum = getObjNum();
    mTalkGroupNo = getTalkGroupNoParam();
    mTalkMemberNum = getTalkMenberNumParam();
    mTalkNo = getTalkNoParam();
    mTalkIconType = getTalkIconTypeParam();
    mTalkMotionNo = getTalkMotionNo();
    mLookPlayerCheck = getLookPlayerCheck();

    if (mTalkMotionNo == 24 || mTalkMotionNo == 25 || mTalkMotionNo == 29 || mTalkMotionNo == 30 || mTalkMotionNo == 31) {
        field_0xe51 = 1;
    } else if (mTalkMotionNo == 26 || mTalkMotionNo == 27 || mTalkMotionNo == 32 || mTalkMotionNo == 33 || mTalkMotionNo == 34) {
        field_0xe51 = 2;
    } else {
        field_0xe51 = 0;
    }

    JUT_ASSERT(645, mTalkMemberNum<=5);
    JUT_ASSERT(646, mTalkNo<5);

    mMsgNo = getMessageNo();

    cPhs__Step phase = loadResrc(mType, mObjNum);
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x800022E0)) {
            return cPhs_ERROR_e;
        }

        J3DModelData* mdlData_p = mpMorf->getModel()->getModelData();
        fopAcM_SetMtx(this, mpMorf->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -40.0f, -10.0f, -30.0f, 30.0f, 190.0f, 40.0f);
        mSound.init(&current.pos, &eyePos, 3, 1);
        mSound.setMdlType(mType, false, mTwilight & 0xFF);

        #ifdef DEBUG
        // mHIO = l_HIO;
        mHIO->entryHIO("多人数会話NPC");
        #endif

        mAcchCir.SetWall(ChkWallH(mType), ChkWallR(mType));
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                  fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mAcch.CrrPos(dComIfG_Bgsp());
        mCcStts.Init(daNpcChat_Param_c::m.common.weight, 0, this);
        mCyl.Set(mCcDCyl);
        mCyl.SetStts(&mCcStts);
        mCyl.SetTgType(0);
        mCyl.SetTgSPrm(0);
        mCyl.SetR(CylR(mType));
        mCyl.SetH(CylH(mType));
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();

        setEnvTevColor();
        setRoomNo();
        attention_info.distances[fopAc_attn_SPEAK_e] = fopAc_AttnFlag_ETC_e | fopAc_AttnFlag_JUEL_e | fopAc_AttnFlag_CARRY_e | fopAc_AttnFlag_SPEAK_e | fopAc_AttnFlag_LOCK_e;
        attention_info.distances[fopAc_attn_TALK_e] = fopAc_AttnFlag_ETC_e | fopAc_AttnFlag_JUEL_e | fopAc_AttnFlag_CARRY_e | fopAc_AttnFlag_SPEAK_e | fopAc_AttnFlag_LOCK_e;

        reset();
        Execute();
    }

    return phase;
}

inline f32 ObjScale(int type) {
    return (f32)(type < 16 ? a_prmTbl_M[type].field_0x18 : a_prmTbl_W[type - 16].field_0x18);
}

/* 809822A0-809823B4 001B40 0114+00 1/1 0/0 0/0 .text            CreateHeap__11daNpcChat_cFv */
BOOL daNpcChat_c::CreateHeap() {
    J3DModel* model;
    BOOL rv = NpcCreate(mType);
    if (rv) {
        if (mObjNum != 0) {
            model = ObjCreate(mObjNum);
            mObjModel = model;
            rv = model != NULL;
            if (!rv) {
                mpMorf->stopZelAnime();
            }
        } else {
            if (field_0xe51 == 1) {
                model = ChairCreate(ObjScale(mType));
                mObjModel = model;
                rv = model != NULL;
                if (!rv) {
                    mpMorf->stopZelAnime();
                }
            } else {
                mObjModel = NULL;
                rv = TRUE;
            }
        }
    }

    setMotion(1, -1.0f, 0);
    return rv;
}

/* 809823B4-809823E8 001C54 0034+00 1/1 0/0 0/0 .text            Delete__11daNpcChat_cFv */
int daNpcChat_c::Delete() {
    fopAcM_GetID(this);
    this->~daNpcChat_c();
    return 1;
}

/* 809823E8-809824CC 001C88 00E4+00 2/2 0/0 0/0 .text            Execute__11daNpcChat_cFv */
int daNpcChat_c::Execute() {
    if (!appearCheck()) {
        return 1;
    }

    J3DModelData* a_mdlData_p = mpMorf->getModel()->getModelData();
    J3DJointCallBack callBack = a_mdlData_p->getJointNodePointer(0)->getCallBack();
    u32 userArea = mpMorf->getModel()->getUserArea();
    for (u16 i = 0; i < a_mdlData_p->getJointNum(); i++) {
        a_mdlData_p->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }
    mpMorf->getModel()->setUserArea((uintptr_t)this);
    execute();

    for (u16 i = 0; i < a_mdlData_p->getJointNum(); i++) {
        a_mdlData_p->getJointNodePointer(i)->setCallBack(callBack);
    }
    mpMorf->getModel()->setUserArea(userArea);

    return 1;
}

/* 809824CC-8098250C 001D6C 0040+00 1/1 0/0 0/0 .text            Draw__11daNpcChat_cFv */
int daNpcChat_c::Draw() {
    draw(0, 0, daNpcChat_Param_c::m.common.real_shadow_size, NULL, 0);
    return 1;
}

/* 8098250C-80982780 001DAC 0274+00 1/1 0/0 0/0 .text            draw__11daNpcChat_cFiifP11_GXColorS10i */
int daNpcChat_c::draw(int param_1, int param_2, f32 param_3, _GXColorS10* i_color, int param_5) {
    J3DModel* model = mpMorf->getModel();
    J3DModelData* a_mdlData_p = model->getModelData();

    if (i_color != NULL) {
        tevStr.TevColor.r = i_color->r;
        tevStr.TevColor.g = i_color->g;
        tevStr.TevColor.b = i_color->b;
        tevStr.TevColor.a = i_color->a;
    } else {
        tevStr.TevColor.g = 0;
        tevStr.TevColor.r = 0;
    }

    if (mTwilight) {
        g_env_light.settingTevStruct(4, &current.pos, &tevStr);
    } else {
        g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    }

    g_env_light.setLightTevColorType_MAJI(model, &tevStr);

    if (!checkHide() && !drawDbgInfo()) {
        if ((mAnmFlags & ANM_PLAY_BTP) != 0) {
            mBtpAnm.entry(a_mdlData_p);
        }

        if ((mAnmFlags & ANM_PLAY_BTK) != 0) {
            mBtkAnm.entry(a_mdlData_p);
        }

        if ((mAnmFlags & ANM_PLAY_BRK) != 0) {
            mBrkAnm.entry(a_mdlData_p);
        }

        if (param_2 != 0) {
            fopAcM_setEffectMtx(this, a_mdlData_p);
        }

        if (mTwilight) {
            dComIfGd_setListDark();
            mpMorf->entryDL();
            dComIfGd_setList();
        } else {
            mpMorf->entryDL();
        }

        if ((mAnmFlags & ANM_PLAY_BTP) != 0) {
            mBtpAnm.remove(a_mdlData_p);
        }

        if ((mAnmFlags & ANM_PLAY_BTK) != 0) {
            mBtkAnm.remove(a_mdlData_p);
        }

        if ((mAnmFlags & ANM_PLAY_BRK) != 0) {
            mBrkAnm.remove(a_mdlData_p);
        }

        dComIfGd_setSimpleShadow(&current.pos, mAcch.GetGroundH(), 60.0f, mAcch.m_gnd, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
    }

    drawOtherMdls();
    return 1;
}

inline f32 JntTX(int type, int jnt_no) {
    return (type < 16 ? a_jntTbl_M[type].jntPrm[jnt_no].jntT[0] : a_jntTbl_W[type - 16].jntPrm[jnt_no].jntT[0]) * 10.0f;
}

inline f32 JntTY(int type, int jnt_no) {
    return (type < 16 ? a_jntTbl_M[type].jntPrm[jnt_no].jntT[1] : a_jntTbl_W[type - 16].jntPrm[jnt_no].jntT[1]) * 10.0f;
}

inline f32 JntTZ(int type, int jnt_no) {
    return (type < 16 ? a_jntTbl_M[type].jntPrm[jnt_no].jntT[2] : a_jntTbl_W[type - 16].jntPrm[jnt_no].jntT[2]) * 10.0f;
}

inline s16 JntRX(int type, int jnt_no) {
    return (type < 16 ? a_jntTbl_M[type].jntPrm[jnt_no].jntR[0] : a_jntTbl_W[type - 16].jntPrm[jnt_no].jntR[0]) * 182.04445f;
}

inline s16 JntRY(int type, int jnt_no) {
    return (type < 16 ? a_jntTbl_M[type].jntPrm[jnt_no].jntR[1] : a_jntTbl_W[type - 16].jntPrm[jnt_no].jntR[1]) * 182.04445f;
}

inline s16 JntRZ(int type, int jnt_no) {
    return (type < 16 ? a_jntTbl_M[type].jntPrm[jnt_no].jntR[2] : a_jntTbl_W[type - 16].jntPrm[jnt_no].jntR[2]) * 182.04445f;
}

/* 80982780-80982A98 002020 0318+00 1/1 0/0 0/0 .text            ctrlJoint__11daNpcChat_cFP8J3DJointP8J3DModel */
int daNpcChat_c::ctrlJoint(J3DJoint* i_joint, J3DModel* i_model) {
    int jntNo = i_joint->getJntNo();
    cXyz jntT(JntTX(mType, jntNo), JntTY(mType, jntNo), JntTZ(mType, jntNo));
    csXyz jntR(JntRX(mType, jntNo), JntRY(mType, jntNo), JntRZ(mType, jntNo));
    mDoMtx_stack_c::copy(i_model->getAnmMtx(jntNo));
    mDoMtx_stack_c::ZXYrotM(jntR);
    mDoMtx_stack_c::transM(jntT);
    i_model->setAnmMtx(jntNo, mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
    return 1;
}

/* 80982A98-80982AB8 002338 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__11daNpcChat_cFP10fopAc_ac_c */
int daNpcChat_c::createHeapCallBack(fopAc_ac_c* a_this) {
    return static_cast<daNpcChat_c*>(a_this)->CreateHeap();
}

/* 80982AB8-80982B04 002358 004C+00 2/2 0/0 0/0 .text            ctrlJointCallBack__11daNpcChat_cFP8J3DJointi */
int daNpcChat_c::ctrlJointCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpcChat_c* i_this = (daNpcChat_c*)model->getUserArea();
        if (i_this != NULL) {
            i_this->ctrlJoint(i_joint, model);
        }
    }

    return 1;
}

/* 80982B04-80982B60 0023A4 005C+00 1/1 0/0 0/0 .text            s_sub__FPvPv */
static void* s_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_NPC_CHAT) {
        ((daNpcChat_c*)i_data)->setTalkMember((daNpcChat_c*)i_actor);
    }

    return NULL;
}

/* 80982B60-80982C10 002400 00B0+00 1/1 0/0 0/0 .text            searchGroup__11daNpcChat_cFv */
BOOL daNpcChat_c::searchGroup() {
    switch (field_0xe38) {
        case 0:
            field_0xe38 = 1;
            return FALSE;
        
        case 1:
            fpcM_Search(s_sub, this);
            int iVar1 = 0;
            for (int i = 0; i < 5; i++) {
                if (mTalkMembers[i] != NULL) {
                    iVar1++;
                } else {
                    break;
                }
            }

            if (iVar1 >= mTalkMemberNum) {
                field_0xe38 = 2;
            }
            return FALSE;
    }

    return TRUE;
}

/* 80982C10-80982D20 0024B0 0110+00 3/2 0/0 0/0 .text            appearTimeCheck__11daNpcChat_cFv */
BOOL daNpcChat_c::appearTimeCheck() {
    int time = dKy_darkworld_check() ? dKy_getDarktime_hour() : dKy_getdaytime_hour();
    BOOL rv = FALSE;

    switch (mTalkGroupNo) {
        case 0:
            if (time >= 8 && time < 17) {
                rv = TRUE;
            }
            break;

        case 1:
            if (time >= 8 && time < 22) {
                rv = TRUE;
            }
            break;

        case 2:
            if (time >= 10 && time < 20) {
                rv = TRUE;
            }
            break;

        case 3:
        case 6:
            if (time >= 7 && time < 22) {
                rv = TRUE;
            }
            break;

        case 4:
            if (time >= 12 && time < 22) {
                rv = TRUE;
            }
            break;

        case 5:
            if (time >= 10) {
                rv = TRUE;
            }
            break;

        case 14:
        case 15:
            if (time >= 21 || time < 5) {
                rv = TRUE;
            }
            break;

        default:
            rv = TRUE;
            break;
    }

    return rv;
}

/* 80982D20-80982EB4 0025C0 0194+00 1/1 0/0 0/0 .text            appearCheck__11daNpcChat_cFv */
BOOL daNpcChat_c::appearCheck() {
    if (searchGroup()) {
        if (mTalkNo == 0) {
            if (mHide) {
                if (appearTimeCheck()) {
                    int iVar1 = 0;
                    for (int i = 0; i < mTalkMemberNum; i++) {
                        if (fopAcM_CheckCondition(mTalkMembers[i], fopAcCnd_NODRAW_e)) {
                            iVar1++;
                        } else {
                            break;
                        }
                    }

                    if (iVar1 == mTalkMemberNum) {
                        for (int i = 0; i < mTalkMemberNum; i++) {
                            mTalkMembers[i]->offHide();
                            fopAcM_OffStatus(mTalkMembers[i], fopAcM_STATUS_UNK_0x8000000);
                        }
                    }
                }
            } else if (!appearTimeCheck()) {
                int iVar2 = 0;
                for (int i = 0; i < mTalkMemberNum; i++) {
                    if (fopAcM_CheckCondition(mTalkMembers[i], fopAcCnd_NODRAW_e)) {
                        iVar2++;
                    } else {
                        break;
                    }
                }

                if (iVar2 == mTalkMemberNum) {
                    for (int i = 0; i < mTalkMemberNum; i++) {
                        mTalkMembers[i]->onHide();
                        fopAcM_OnStatus(mTalkMembers[i], fopAcM_STATUS_UNK_0x8000000);
                    }
                }
            }
        }

        if (mHide == true || fopAcM_CheckCondition(this, fopAcCnd_NODRAW_e)) {
            return FALSE;
        }
    }

    return TRUE;
}

/* 80982EB4-80982F4C 002754 0098+00 1/0 0/0 0/0 .text            setParam__11daNpcChat_cFv */
void daNpcChat_c::setParam() {
    if (checkHide()) {
        attention_info.flags = 0;
    } else {
        if (mTalkIconType == 0) {
            attention_info.flags = 0xC0000A;
        } else {
            attention_info.flags = fopAc_AttnFlag_UNK_0x400000 | fopAc_AttnFlag_SPEAK_e | fopAc_AttnFlag_TALK_e;
        }
    }

    #ifdef DEBUG
    scale.set(daNpcChat_Param_c::m.common.scale, daNpcChat_Param_c::m.common.scale, daNpcChat_Param_c::m.common.scale);
    mAcchCir.SetWallR(daNpcChat_Param_c::m.common.width);
    mAcchCir.SetWallH(daNpcChat_Param_c::m.common.knee_length);
    gravity = daNpcChat_Param_c::m.common.gravity;
    #endif
}

/* 80982F4C-80982FA4 0027EC 0058+00 1/0 0/0 0/0 .text            main__11daNpcChat_cFv */
BOOL daNpcChat_c::main() {
    if (mAction) {
        (this->*mAction)(NULL);
    }

    playMotion();
    return TRUE;
}

/* 80982FA4-809830EC 002844 0148+00 1/0 0/0 0/0 .text            setAttnPos__11daNpcChat_cFv */
void daNpcChat_c::setAttnPos() {
    if (field_0xe1c == 1) {
        for (int i = 0; i < 3; i++) {
            mLookatAngle[i].setall(0);
        }
    }

    daNpcF_c::setMtx();
    cXyz sp28(10.0f, 15.0f, 0.0f);
    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(3));
    mDoMtx_stack_c::multVecZero(&mHeadPos);
    mDoMtx_stack_c::multVec(&sp28, &eyePos);
    sp28.x = 0.0f;
    mDoMtx_stack_c::multVec(&sp28, &sp28);
    mHeadAngle.x = cLib_targetAngleX(&mHeadPos, &sp28);
    mHeadAngle.y = cLib_targetAngleY(&mHeadPos, &sp28);
    setAttention(mType);
    mCyl.SetC(current.pos);
    dComIfG_Ccsp()->Set(&mCyl);
}

/* 809830EC-80983168 00298C 007C+00 1/0 0/0 0/0 .text            setExpressionBtp__11daNpcChat_cFi */
bool daNpcChat_c::setExpressionBtp(int i_index) {
    J3DAnmTexPattern* i_btp = getTexAnmP(i_index);
    if (i_btp == NULL) {
        return true;
    }

    J3DModelData* a_mdlData_p = mpMorf->getModel()->getModelData();
    if (setBtpAnm(i_btp, a_mdlData_p, 1.0f, J3DFrameCtrl::EMode_LOOP)) {
        mAnmFlags |= ANM_FLAG_800 | ANM_PLAY_BTP | ANM_PAUSE_BTP;
        return true;
    }

    // OS_REPORT("%s: 表情Btpアニメーションの登録に失敗しました！\n", __FILE_NAME__);
    return false;
}

enum Type { // fix numbers
    /* 0x0 */ MdlMANa_e,
    /* 0x1 */ MdlMADa_e,
};

/* 80983168-80983584 002A08 041C+00 3/0 0/0 0/0 .text            setMotionAnm__11daNpcChat_cFif */
void daNpcChat_c::setMotionAnm(int i_index, f32 i_morf) {
    // NONMATCHING
    int i_attr = J3DFrameCtrl::EMode_LOOP;
    int objNum = mObjNum;
    field_0xe4c = i_index;

    switch (i_index) {
        case 0:
        case 0x16:
        case 0x1A:
        case 0x1E:
        case 0x22:
            switch (objNum) {
                case 1:
                case 8:
                    i_index = 0x1E;
                    break;

                case 2:
                case 3:
                case 9:
                case 10:
                case 11:
                case 12:
                    i_index = 0x1A;
                    break;

                case 4:
                case 5:
                    i_index = 0x16;
                    break;

                case 6:
                case 7:
                    i_index = 0x22;
                    break;
            }
            break;

        case 1:
            switch (objNum) {
                case 1:
                case 8:
                    i_index = 0x1E;
                    break;

                case 2:
                case 3:
                case 9:
                case 10:
                case 11:
                case 12:
                    i_index = 0x1A;
                    break;

                case 4:
                case 5:
                    i_index = 0x16;
                    break;

                case 6:
                case 7:
                    i_index = 0x22;
                    break;
            }
            break;

        case 2:
        case 0x19:
        case 0x1D:
        case 0x21:
            switch (objNum) {
                case 1:
                case 8:
                    i_index = 0x21;
                    break;

                case 2:
                case 3:
                case 9:
                case 10:
                case 11:
                case 12:
                    i_index = 0x1D;
                    break;

                case 4:
                case 5:
                    i_index = 0x19;
                    break;

                case 6:
                case 7:
                    i_index = 0x22;
                    break;
            }
            break;

        case 3:
            switch (objNum) {
                case 1:
                case 8:
                    i_index = 0x21;
                    break;

                case 2:
                case 3:
                case 9:
                case 10:
                case 11:
                case 12:
                    i_index = 0x1D;
                    break;

                case 4:
                case 5:
                    i_index = 0x19;
                    break;

                case 6:
                case 7:
                    i_index = 0x22;
                    break;
            }
            break;

        case 6:
        case 0x17:
        case 0x1B:
        case 0x1F:
            switch (objNum) {
                case 1:
                case 8:
                    i_index = 0x1F;
                    break;

                case 2:
                case 3:
                case 9:
                case 0xA:
                case 0xB:
                case 0xC:
                    i_index = 0x1B;
                    break;

                case 4:
                case 5:
                    i_index = 0x17;
                    break;

                case 6:
                case 7:
                    i_index = 0x22;
                    break;
            }
            break;

        case 7:
        case 0x18:
        case 0x1C:
        case 0x20:
            switch (objNum) {
                case 1:
                case 8:
                    i_index = 0x20;
                    break;

                case 2:
                case 3:
                case 9:
                case 10:
                case 11:
                case 12:
                    i_index = 0x1C;
                    break;

                case 4:
                case 5:
                    i_index = 0x18;
                    break;

                case 6:
                case 7:
                    i_index = 0x22;
                    break;
            }
            break;

        case 4:
        case 5:
            switch (objNum) {
                case 1:
                case 8:
                    i_index = 0x25;
                    break;

                case 2:
                    i_index = 0x2D;
                    break;

                case 9:
                case 0xA:
                case 0xB:
                case 0xC:
                    i_index = 0x24;
                    break;

                case 4:
                case 5:
                    i_index = 0x23;
                    break;

                case 6:
                case 7:
                    i_index = 0x22;
                    break;
            }
            break;

        case 8:
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
        case 0xD:
        case 0xE:
        case 0xF:
        case 0x10:
        case 0x11:
        case 0x12:
        case 0x13:
        case 0x14:
        case 0x15:
            switch (objNum) {
                case 1:
                case 8:
                    break;

                case 2:
                case 3:
                case 9:
                case 0xA:
                case 0xB:
                case 0xC:
                    break;

                case 4:
                case 5:
                    break;
                
                case 6:
                case 7:
                    i_index = 0x22;
                    break;
            }
            break;

        case 0x26:
        case 0x27:
        case 0x28:
        case 0x29:
        case 0x2F:
        case 0x30:
        case 0x31:
        case 0x32:
        case 0x33:
        case 0x34:
        case 0x35:
            break;

        case 0x2A:
        case 0x2B:
        case 0x2C:
        case 0x2E:
            JUT_ASSERT(1557, mType == MdlMANa_e || mType == MdlMADa_e);
            break;

        case 0x23:
        case 0x24:
        case 0x25:
        case 0x2D:
        default:
            return;
    }

    switch (i_index) {
        case 8:
            mSound.playVoice(3);
            break;

        case 0x31:
            mSound.playVoice(4);
            break;
        
        case 0x29:
            mSound.playVoice(1);
            break;

        case 0x14:
        case 0x15:
            mSound.playVoice(5);
            break;
    }

    switch (i_index) {
        case 0x29:
            i_attr = J3DFrameCtrl::EMode_NONE;
            break;
    }

    int resIdx;
    char* arcName;
    if (isM_()) {
        arcName = l_bckTbl_M[i_index].arc_name;
        resIdx = l_bckTbl_M[i_index].resource_index;
    } else {
        arcName = l_bckTbl_W[i_index].arc_name;
        resIdx = l_bckTbl_W[i_index].resource_index;
    }

    if (resIdx >= 0) {
        J3DAnmTransformKey* anm = getTrnsfrmKeyAnmP(arcName, resIdx);
        mAnmFlags &= ~(ANM_PLAY_MORF | ANM_PAUSE_MORF);

        if (anm == NULL) {
            OS_REPORT("n\n\n\n\n\nAnime None!!!!!!!!!!!!!!!!!!!! %d\n\n\n\n\n\n", mType);
        } else if (setMcaMorfAnm(anm, 1.0f, i_morf, i_attr, 0, -1)) {
            mAnmFlags |= ANM_PLAY_MORF | ANM_PAUSE_MORF;
            mMotionLoops = 0;
        }
    }
}

/* 80983584-809835C8 002E24 0044+00 1/0 0/0 0/0 .text            setMotion__11daNpcChat_cFifi */
void daNpcChat_c::setMotion(int i_motion, f32 i_morf, int param_3) {
    s16 motion = i_motion;

    if ((param_3 != 0 || mMotion != motion) && i_motion >= 0 && i_motion < 0x28) {
        mMotion = motion;
        mMotionMorfOverride = i_morf;
        mMotionPrevPhase = -1;
        mMotionPhase = 0;
    }
}

/* 809835C8-809835D0 002E68 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpcChat_cFv */
int daNpcChat_c::drawDbgInfo() {
    return 0;
}

/* 809835D0-809837A4 002E70 01D4+00 1/0 0/0 0/0 .text            drawOtherMdls__11daNpcChat_cFv */
void daNpcChat_c::drawOtherMdls() {
    static int const a_jntNumTbl[13][2] = {
        -1, -1, 7, -1,
        0xB, -1, -1, 0xB,
        7, -1, -1, 0xB,
        1, -1, -1, 0xB,
        -1, 7, 0xA, -1,
        -1, 0xB, 0xA, -1,
        -1, 0xB,
    };

    int x = isM_() ? 0 : 1;
    int jntNo = a_jntNumTbl[mObjNum][x];
    f32 objScale = ObjScale(mType);

    if (field_0xe4f != 0) {
        if (mObjNum != 0) {
            if (!checkHide()) {
                if (mObjModel != NULL && jntNo >= 0) {
                  if (!chkAction(&daNpcChat_c::fear)) {
                        g_env_light.setLightTevColorType_MAJI(mObjModel, &tevStr);
                        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jntNo));
                        mDoMtx_stack_c::scaleM(objScale, objScale, objScale);
                        mObjModel->setBaseTRMtx(mDoMtx_stack_c::get());
                        mDoExt_modelUpdateDL(mObjModel);
                    }
                }
            }
        } else if (field_0xe51 == 1 && !mHide && mObjModel != NULL) {
            g_env_light.setLightTevColorType_MAJI(mObjModel, &tevStr);
            mDoExt_modelUpdateDL(mObjModel);
        }
    }
}

/* 809837A4-809837C0 003044 001C+00 1/1 0/0 0/0 .text            getTalkMotionNo__11daNpcChat_cFv */
u8 daNpcChat_c::getTalkMotionNo() {
    u8 talkNo = home.angle.z & 0xFF;
    if (talkNo >= 35) {
        talkNo = 1;
    }

    return talkNo;
}

/* 809837C0-809837EC 003060 002C+00 1/1 0/0 0/0 .text            getLookPlayerCheck__11daNpcChat_cFv */
u8 daNpcChat_c::getLookPlayerCheck() {
    if ((((u32)home.angle.z >> 8) & 0xFF) == 1 && !mTwilight) {
        return 1;
    }

    return 0;
}

/* 809837EC-809839E0 00308C 01F4+00 1/1 0/0 0/0 .text            reset__11daNpcChat_cFv */
void daNpcChat_c::reset() {
    initialize();
    mLookat.initialize();

    for (int i = 0; i < 1; i++) {
        mActorMngr[i].initialize();
    }

    field_0xe08 = 0;
    field_0xe0c = 0;
    mAction = NULL;
    field_0xe1c = -1;
    mMode = 0;
    current.pos.set(home.pos);
    old.pos.set(current.pos);
    current.angle.set(0, home.angle.y, 0);
    old.angle = current.angle;
    shape_angle = current.angle;
    mCurAngle = current.angle;
    mOldAngle = mCurAngle;
    speedF = 0.0f;
    speed.setall(0.0f);
    field_0xe04 = fpcM_ERROR_PROCESS_ID_e;
    mOrderEvtNo = 0;
    field_0xe38 = 0;

    for (int i = 0; i < 5; i++) {
        mTalkMembers[i] = NULL;
    }
    mTalkMembers[mTalkNo] = this;

    mFear = false;
    mTalkFlag = false;

    if (mObjModel != NULL) {
        field_0xe4f = true;
    } else {
        field_0xe4f = false;
    }

    if (appearTimeCheck()) {
        mHide = false;
    } else {
        mHide = true;
        fopAcM_OnStatus(this, fopAcM_STATUS_UNK_0x8000000);
    }

    setAction(&daNpcChat_c::wait);
    mMotionMorfOverride = 0.0f;
}

/* 809839E0-80984DD0 003280 13F0+00 1/1 0/0 0/0 .text            playMotion__11daNpcChat_cFv */
void daNpcChat_c::playMotion() {
    daNpcF_anmPlayData dat0 = {0x6, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat0[1] = {&dat0};
    daNpcF_anmPlayData dat1 = {0x0, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat1[1] = {&dat1};
    daNpcF_anmPlayData dat2 = {0x1, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat2[1] = {&dat2};
    daNpcF_anmPlayData dat3 = {0x6, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat3[1] = {&dat3};
    daNpcF_anmPlayData dat4 = {0x7, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat4[1] = {&dat4};
    daNpcF_anmPlayData dat5a = {0x6, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat5b = {0x0, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat5c = {0x7, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat5d = {0x0, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat5e = {0x6, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat5f = {0x7, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat5[6] = {&dat5a, &dat5b, &dat5c, &dat5d, &dat5e, &dat5f};
    daNpcF_anmPlayData dat6 = {0x8, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat6[1] = {&dat6};
    daNpcF_anmPlayData dat7a = {0x7, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat7b = {0x6, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat7c = {0x8, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat7d = {0x0, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat7[4] = {&dat7a, &dat7b, &dat7c, &dat7d};
    daNpcF_anmPlayData dat8a = {0x6, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat8b = {0x0, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat8c = {0x7, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat8d = {0x1, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat8e = {0x8, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat8[5] = {&dat8a, &dat8b, &dat8c, &dat8d, &dat8e};
    daNpcF_anmPlayData dat9a = {0x14, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat9b = {0x15, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat9[2] = {&dat9a, &dat9b};
    daNpcF_anmPlayData dat10a = {0x14, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat10b = {0x15, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat10c = {0x6, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat10d = {0x7, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat10e = {0x0, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat10[5] = {&dat10a, &dat10b, &dat10c, &dat10d, &dat10e};
    daNpcF_anmPlayData dat11a = {0x14, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat11b = {0x15, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat11c = {0x6, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat11d = {0x7, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat11e = {0x8, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat11f = {0x0, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat11[6] = {&dat11a, &dat11b, &dat11c, &dat11d, &dat11e, &dat11f};
    daNpcF_anmPlayData dat12a = {0x30, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat12b = {0x32, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat12[2] = {&dat12a, &dat12b};
    daNpcF_anmPlayData dat13a = {0x31, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat13b = {0x33, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat13[2] = {&dat13a, &dat13b};
    daNpcF_anmPlayData dat14a = {0x6, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat14b = {0x30, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat14c = {0x0, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat14d = {0x7, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat14e = {0x0, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat14[5] = {&dat14a, &dat14b, &dat14c, &dat14d, &dat14e};
    daNpcF_anmPlayData dat15a = {0x0, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat15b = {0x31, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat15c = {0x6, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat15d = {0x0, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat15e = {0x7, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat15[5] = {&dat15a, &dat15b, &dat15c, &dat15d, &dat15e};
    daNpcF_anmPlayData dat16a = {0x6, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat16b = {0x30, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat16c = {0x0, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat16d = {0x7, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat16e = {0x0, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat16f = {0x32, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat16[6] = {&dat16a, &dat16b, &dat16c, &dat16d, &dat16e, &dat16f};
    daNpcF_anmPlayData dat17a = {0x0, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat17b = {0x31, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat17c = {0x6, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat17d = {0x0, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat17e = {0x7, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat17f = {0x33, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat17[6] = {&dat17a, &dat17b, &dat17c, &dat17d, &dat17e, &dat17f};
    daNpcF_anmPlayData dat18a = {0x6, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat18b = {0x30, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat18c = {0x31, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat18d = {0x0, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat18e = {0x7, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat18f = {0x0, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat18g = {0x32, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat18h = {0x33, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat18[8] = {&dat18a, &dat18b, &dat18c, &dat18d, &dat18e, &dat18f, &dat18g, &dat18h};
    daNpcF_anmPlayData dat19 = {0x9, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat19[1] = {&dat19};
    daNpcF_anmPlayData dat20 = {0xA, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat20[1] = {&dat20};
    daNpcF_anmPlayData dat21a = {0x9, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat21b = {0xA, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat21c = {0x0, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat21[3] = {&dat21a, &dat21b, &dat21c};
    daNpcF_anmPlayData dat22 = {0xB, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat22[1] = {&dat22};
    daNpcF_anmPlayData dat23a = {0xC, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat23b = {0xB, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat23c = {0xD, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat23d = {0xB, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat23e = {0xC, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat23f = {0xD, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat23[6] = {&dat23a, &dat23b, &dat23c, &dat23d, &dat23e, &dat23f};
    daNpcF_anmPlayData dat24 = {0xE, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat24[1] = {&dat24};
    daNpcF_anmPlayData dat25a = {0xF, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat25b = {0xE, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat25c = {0x10, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat25d = {0xE, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat25e = {0xF, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat25f = {0x10, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat25[6] = {&dat25a, &dat25b, &dat25c, &dat25d, &dat25e, &dat25f};
    daNpcF_anmPlayData dat26 = {0x11, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat26[1] = {&dat26};
    daNpcF_anmPlayData dat27a = {0x12, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat27b = {0x11, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat27c = {0x13, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat27d = {0x11, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat27e = {0x12, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat27f = {0x13, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat27[6] = {&dat27a, &dat27b, &dat27c, &dat27d, &dat27e, &dat27f};
    daNpcF_anmPlayData dat28 = {0x35, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat28[1] = {&dat28};
    daNpcF_anmPlayData dat29 = {0xF, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat29[1] = {&dat29};
    daNpcF_anmPlayData dat30 = {0x10, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat30[1] = {&dat30};
    daNpcF_anmPlayData dat31a = {0xF, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat31b = {0x10, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat31[2] = {&dat31a, &dat31b};
    daNpcF_anmPlayData dat32 = {0x12, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat32[1] = {&dat32};
    daNpcF_anmPlayData dat33 = {0x13, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat33[1] = {&dat33};
    daNpcF_anmPlayData dat34a = {0x12, daNpcChat_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat34b = {0x13, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat34[2] = {&dat34a, &dat34b};
    daNpcF_anmPlayData dat35 = {0x2A, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat35[1] = {&dat35};
    daNpcF_anmPlayData dat36 = {0x2E, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat36[1] = {&dat36};
    daNpcF_anmPlayData dat37 = {0x2C, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat37[1] = {&dat37};
    daNpcF_anmPlayData dat38 = {0x29, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat38[1] = {&dat38};
    daNpcF_anmPlayData dat39 = {0x26, daNpcChat_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat39[1] = {&dat39};

    daNpcF_anmPlayData** ppDat[40] = {
        pDat0, pDat1, pDat2, pDat3, pDat4,
        pDat5, pDat6, pDat7, pDat8, pDat9,
        pDat10, pDat11, pDat12, pDat13, pDat14,
        pDat15, pDat16, pDat17, pDat18, pDat19,
        pDat20, pDat21, pDat22, pDat23, pDat24,
        pDat25, pDat26, pDat27, pDat28, pDat29,
        pDat30, pDat31, pDat32, pDat33, pDat34,
        pDat35, pDat36, pDat37, pDat38, pDat39,
    };

    if (mMotion >= 0 && mMotion < 35) {
        playMotionAnmLoop(ppDat);
    } else if (mMotion < 40) {
        playMotionAnm(ppDat);
    }
}

/* 80984DD0-80984F34 004670 0164+00 1/1 0/0 0/0 .text            playMotionAnmLoop__11daNpcChat_cFPPPQ28daNpcF_c18daNpcF_anmPlayData */
void daNpcChat_c::playMotionAnmLoop(daNpcF_c::daNpcF_anmPlayData*** i_data) {
    daNpcF_anmPlayData* playData = NULL;

    if (i_data[mMotion] != NULL) {
        playData = i_data[mMotion][mMotionPhase];
    }

    if (playData != NULL) {
        if (mMotionPrevPhase == mMotionPhase) {
            if (playData->numLoops > 0 && playData->numLoops <= mMotionLoops) {
                mMotionPhase++;
                playData = i_data[mMotion][mMotionPhase];
            } else if (playData->numLoops == 0 && mMotionLoops >= 1) {
                mMotionPhase = 0;
                playData = i_data[mMotion][mMotionPhase];
                mMotionMorfOverride = playData->morf;
            }
        }

        if (playData != NULL && mMotionPrevPhase != mMotionPhase) {
            setMotionAnm(playData->idx, 0.0f);
            f32 i_morf = playData->morf;

            if (mMotionPhase == 0 && 0.0f <= mMotionMorfOverride) {
                i_morf = mMotionMorfOverride;
            }

            mExpressionMorf = 0.0f;
            mpMorf->setMorf(i_morf);
        }
    }

    mMotionPrevPhase = mMotionPhase;
}

/* 80984F34-80984FDC 0047D4 00A8+00 4/4 0/0 0/0 .text            setAction__11daNpcChat_cFM11daNpcChat_cFPCvPvPv_b */
BOOL daNpcChat_c::setAction(actionFunc action) {
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

/* 80984FDC-809850D0 00487C 00F4+00 2/2 0/0 0/0 .text            step__11daNpcChat_cFsi */
bool daNpcChat_c::step(s16 i_targetAngle, int param_2) {
    if (mTurnMode == 0) {
        mTurnTargetAngle = i_targetAngle;
        mTurnAmount = 0;

        if (mCurAngle.y == mTurnTargetAngle) {
            mTurnMode++;
        }

        current.angle.y = mCurAngle.y;
        shape_angle.y = current.angle.y;
        mTurnMode++;
    } else if (mTurnMode == 1) {
        if (turn(mTurnTargetAngle, 15.0f, 0)) {
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

/* 809850D0-80985104 004970 0034+00 1/1 0/0 0/0 .text            setTalkMember__11daNpcChat_cFP11daNpcChat_c */
void daNpcChat_c::setTalkMember(daNpcChat_c* actor_p) {
    if (mTalkGroupNo == actor_p->getTalkGroupNo()) {
        int talkNo = actor_p->getTalkNo();
        if (talkNo < 0) {
            return;
        }

        if (talkNo < 5) {
            mTalkMembers[talkNo] = actor_p;
        }
    }
}

/* 80985104-8098552C 0049A4 0428+00 4/0 0/0 0/0 .text            wait__11daNpcChat_cFPv */
bool daNpcChat_c::wait(void* param_1) {
    // NONMATCHING
    switch (mMode) {
        case 0:
            setMotion(mTalkMotionNo, -1.0f, 1);
            speedF = 0.0f;
            mTalkFlag = false;
            mMode = 2;
            break;

        case 2:
            if (field_0xe38 < 2) {
                return false;
            }

            if (!dKy_darkworld_check() && daPy_py_c::checkNowWolf()) {
                f32 search_range = pow(500.0, 2.0);
                if (!(fopAcM_searchPlayerDistanceXZ2(this) < search_range)) {
                if (mFear) {
                    setAction(&daNpcChat_c::fear);
                    if (!mFear) {
                        for (int i = 0; i < mTalkMemberNum; i++) {
                            if (mTalkMembers[i] != NULL) {
                                mTalkMembers[i]->setFear();
                            } else {
                                break;
                            }
                        }
                    }
                    break;
                }
                
                if (dComIfGp_event_runCheck()) {
                    if (eventInfo.checkCommandTalk()) {
                        if (!dComIfGp_event_chkTalkXY() || dComIfGp_evmng_ChkPresentEnd()) {
                            setAction(&daNpcChat_c::talk);
                        }
                    } else if (dComIfGp_getEventManager().getMyStaffId(l_myName, NULL, 0) != -1) {
                        setAction(&daNpcChat_c::demo);
                    }

                    if (mTalkFlag && mLookPlayerCheck == 1 && mCurAngle.y != fopAcM_searchPlayerAngleY(this)) {
                        if (step(fopAcM_searchPlayerAngleY(this), 1)) {
                            mTurnMode = 0;
                        }
                    }

                    int i_expression, i_motion;
                    if (ctrlMsgAnm(i_expression, i_motion, this, mTalkFlag)) {
                        setMotion(i_motion, -1.0f, 1);
                    }

                    if (mTalkFlag) {
                        if (dComIfGp_event_getTalkPartner() != this) {
                            if (field_0xe51 == 1) {
                                setMotion(0x18, -1.0f, 0);
                            } else if (field_0xe51 == 2) {
                                setMotion(0x1A, -1.0f, 0);
                            } else {
                                setMotion(1, -1.0f, 0);
                            }
                        }
                    }
                } else {
                    if (mTalkFlag) {
                        mMode = 0;
                        break;
                    }

                    if (home.angle.y != mCurAngle.y && step(home.angle.y, 1)) {
                        setMotion(mTalkMotionNo, -1.0f, 1);
                        mTurnMode = 0;
                    }
                    
                    orderEvent(mOrderSpeakEvt, l_evtNames[mOrderEvtNo], 0xFFFF, 0x28, 0xFF, 1);
                }
                }
            }
            
            break;

        case 3:
            break;

        default:
            JUT_ASSERT(2580, 0);
            break;
    }

    return true;
}

/* ############################################################################################## */
/* 8098773C-80987740 000DA0 0004+00 0/1 0/0 0/0 .rodata          @6209 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6209 = 2.0f;
COMPILER_STRIP_GATE(0x8098773C, &lit_6209);
#pragma pop

/* 8098552C-809856C8 004DCC 019C+00 2/0 0/0 0/0 .text            fear__11daNpcChat_cFPv */
bool daNpcChat_c::fear(void* param_0) {
    // NONMATCHING
}

/* 809856C8-80985A84 004F68 03BC+00 1/0 0/0 0/0 .text            talk__11daNpcChat_cFPv */
bool daNpcChat_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80985A84-80985BCC 005324 0148+00 1/0 0/0 0/0 .text            demo__11daNpcChat_cFPv */
bool daNpcChat_c::demo(void* param_0) {
    // NONMATCHING
}

/* 80985BCC-80985BEC 00546C 0020+00 1/0 0/0 0/0 .text            daNpcChat_Create__FPv */
static void daNpcChat_Create(void* param_0) {
    // NONMATCHING
}

/* 80985BEC-80985C0C 00548C 0020+00 1/0 0/0 0/0 .text            daNpcChat_Delete__FPv */
static void daNpcChat_Delete(void* param_0) {
    // NONMATCHING
}

/* 80985C0C-80985C2C 0054AC 0020+00 1/0 0/0 0/0 .text            daNpcChat_Execute__FPv */
static void daNpcChat_Execute(void* param_0) {
    // NONMATCHING
}

/* 80985C2C-80985C4C 0054CC 0020+00 1/0 0/0 0/0 .text            daNpcChat_Draw__FPv */
static void daNpcChat_Draw(void* param_0) {
    // NONMATCHING
}

/* 80985C4C-80985C54 0054EC 0008+00 1/0 0/0 0/0 .text            daNpcChat_IsDelete__FPv */
static bool daNpcChat_IsDelete(void* param_0) {
    return true;
}

/* 80985C54-80985C9C 0054F4 0048+00 5/4 0/0 0/0 .text            __dt__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::~daNpcF_ActorMngr_c() {
extern "C" void __dt__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80985C9C-80985CD8 00553C 003C+00 2/2 0/0 0/0 .text            __ct__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::daNpcF_ActorMngr_c() {
extern "C" void __ct__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80985CD8-80985DA8 005578 00D0+00 1/0 0/0 0/0 .text            __dt__15daNpcF_Lookat_cFv */
// daNpcF_Lookat_c::~daNpcF_Lookat_c() {
extern "C" void __dt__15daNpcF_Lookat_cFv() {
    // NONMATCHING
}

/* 80985DA8-80985DE4 005648 003C+00 5/5 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80985DE4-80985DE8 005684 0004+00 2/2 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80985DE8-80985E24 005688 003C+00 6/6 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80985E24-80985E28 0056C4 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80985E28-80986074 0056C8 024C+00 1/1 0/0 0/0 .text            __dt__8daNpcF_cFv */
// daNpcF_c::~daNpcF_c() {
extern "C" void __dt__8daNpcF_cFv() {
    // NONMATCHING
}

/* 80986074-80986264 005914 01F0+00 1/1 0/0 0/0 .text            __ct__8daNpcF_cFv */
// daNpcF_c::daNpcF_c() {
extern "C" void __ct__8daNpcF_cFv() {
    // NONMATCHING
}

/* 80986264-809862D4 005B04 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 809862D4-80986330 005B74 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80986330-809863A0 005BD0 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 809863A0-809863E8 005C40 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 809863E8-809863F0 005C88 0008+00 1/0 0/0 0/0 .text            ctrlBtk__8daNpcF_cFv */
// bool daNpcF_c::ctrlBtk() {
extern "C" bool ctrlBtk__8daNpcF_cFv() {
    return false;
}

/* 809863F0-809863F4 005C90 0004+00 1/0 0/0 0/0 .text            setCollisions__8daNpcF_cFv */
// void daNpcF_c::setCollisions() {
extern "C" void setCollisions__8daNpcF_cFv() {
    /* empty function */
}

/* 809863F4-809863FC 005C94 0008+00 1/0 0/0 0/0 .text            setExpressionAnm__8daNpcF_cFib */
// bool daNpcF_c::setExpressionAnm(int param_0, bool param_1) {
extern "C" bool setExpressionAnm__8daNpcF_cFib() {
    return true;
}

/* 809863FC-80986400 005C9C 0004+00 1/0 0/0 0/0 .text            setExpression__8daNpcF_cFif */
// void daNpcF_c::setExpression(int param_0, f32 param_1) {
extern "C" void setExpression__8daNpcF_cFif() {
    /* empty function */
}

/* 80986400-80986448 005CA0 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8098BA68-8098BA74 00410C 000C+00 2/2 0/0 0/0 .data            __vt__17daNpcChat_Param_c */
SECTION_DATA extern void* __vt__17daNpcChat_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daNpcChat_Param_cFv,
};

/* 80986448-8098692C 005CE8 04E4+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_chat_cpp */
void __sinit_d_a_npc_chat_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80986448, __sinit_d_a_npc_chat_cpp);
#pragma pop

/* 8098692C-80986930 0061CC 0004+00 1/0 0/0 0/0 .text            adjustShapeAngle__11daNpcChat_cFv
 */
void daNpcChat_c::adjustShapeAngle() {
    /* empty function */
}

// /* 80986930-80986978 0061D0 0048+00 2/1 0/0 0/0 .text            __dt__17daNpcChat_Param_cFv */
// daNpcChat_Param_c::~daNpcChat_Param_c() {
//     // NONMATCHING
// }

/* 80986978-80986980 006218 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80986978() {
    // NONMATCHING
}

/* 80986980-80986988 006220 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80986980() {
    // NONMATCHING
}

AUDIO_INSTANCES;

/* 8098B94C-8098B96C -00001 0020+00 1/0 0/0 0/0 .data            daNpcChat_MethodTable */
static actor_method_class daNpcChat_MethodTable = {
    (process_method_func)daNpcChat_Create__FPv,
    (process_method_func)daNpcChat_Delete__FPv,
    (process_method_func)daNpcChat_Execute__FPv,
    (process_method_func)daNpcChat_IsDelete__FPv,
    (process_method_func)daNpcChat_Draw__FPv,
};

/* 8098B96C-8098B99C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_CHAT */
extern actor_process_profile_definition g_profile_NPC_CHAT = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_CHAT,          // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpcChat_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  398,                    // mPriority
  &daNpcChat_MethodTable, // sub_method
  0x00044107,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
