/**
 * @file d_a_obj_kanban2.cpp
 * 
*/

#include "d/actor/d_a_obj_kanban2.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__19daObj_Kanban2_HIO_cFv();
extern "C" void draw__15daObj_Kanban2_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" static void daObj_Kanban2_Draw__FP15daObj_Kanban2_c();
extern "C" void setKanbanSE__15daObj_Kanban2_cFi();
extern "C" void createBreakParts__15daObj_Kanban2_cFUl5csXyz();
extern "C" void createWallHitBreak__15daObj_Kanban2_cFv();
extern "C" void getKanbanCutType__15daObj_Kanban2_cFv();
extern "C" void getKanbanWolfCutType__15daObj_Kanban2_cFv();
extern "C" void damage_check__15daObj_Kanban2_cFv();
extern "C" void float_damage_check__15daObj_Kanban2_cFv();
extern "C" void deletePart__15daObj_Kanban2_cFv();
extern "C" void getWallAngle__15daObj_Kanban2_cFv();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void setGroundAngle__15daObj_Kanban2_cFv();
extern "C" void checkWaterSurface__15daObj_Kanban2_cFv();
extern "C" void checkPataGround__15daObj_Kanban2_cFss();
extern "C" void setCullMtx__15daObj_Kanban2_cFv();
extern "C" void setSmokeEffect__15daObj_Kanban2_cF4cXyz();
extern "C" void setWaterEffect__15daObj_Kanban2_cFv();
extern "C" void setCenterPos__15daObj_Kanban2_cFv();
extern "C" void checkCarryOn__15daObj_Kanban2_cFv();
extern "C" void setActionMode__15daObj_Kanban2_cFii();
extern "C" void calcNormalSwing__15daObj_Kanban2_cFv();
extern "C" void executeNormal__15daObj_Kanban2_cFv();
extern "C" void initPart__15daObj_Kanban2_cFv();
extern "C" void executePart__15daObj_Kanban2_cFv();
extern "C" void executeFloat__15daObj_Kanban2_cFv();
extern "C" void executeCarry__15daObj_Kanban2_cFv();
extern "C" void action__15daObj_Kanban2_cFv();
extern "C" void mtx_set__15daObj_Kanban2_cFv();
extern "C" void cc_set__15daObj_Kanban2_cFv();
extern "C" void execute__15daObj_Kanban2_cFv();
extern "C" static void daObj_Kanban2_Execute__FP15daObj_Kanban2_c();
extern "C" static bool daObj_Kanban2_IsDelete__FP15daObj_Kanban2_c();
extern "C" void _delete__15daObj_Kanban2_cFv();
extern "C" static void daObj_Kanban2_Delete__FP15daObj_Kanban2_c();
extern "C" void CreateHeap__15daObj_Kanban2_cFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void create__15daObj_Kanban2_cFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" static void daObj_Kanban2_Create__FP15daObj_Kanban2_c();
extern "C" void __dt__19daObj_Kanban2_HIO_cFv();
extern "C" void __sinit_d_a_obj_kanban2_cpp();
extern "C" static void func_805855FC();
extern "C" static void func_80585604();
extern "C" extern char const* const d_a_obj_kanban2__stringBase0;

//
// External References:
//

extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_setupShareTexture__FP12J3DModelDataP12J3DModelData();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void fopAcM_effHamonSet__FPUlPC4cXyzff();
extern "C" void fopAcM_carryOffRevise__FP10fopAc_ac_c();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void dPath_GetPolyRoomPathVec__FRC13cBgS_PolyInfoP4cXyzPi();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void ChkPolySafe__4cBgSFRC13cBgS_PolyInfo();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetGroundUpY__9dBgS_AcchFf();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void __ct__18dBgS_ObjGndChk_SplFv();
extern "C" void __dt__18dBgS_ObjGndChk_SplFv();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void GetCoHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c();
extern "C" void doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci();
extern "C" void ClrCcMove__9cCcD_SttsFv();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __ct__5csXyzFsss();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC3Vec();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
extern "C" void cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz();
extern "C" void cLib_distanceAngleS__Fss();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void deleteObject__14Z2SoundObjBaseFv();
extern "C" void __ct__16Z2SoundObjSimpleFv();
extern "C" void __dl__FPv();
extern "C" void _savegpr_23();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_23();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" f32 Zero__4cXyz[3];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80585620-80585624 000000 0004+00 19/19 0/0 0/0 .rodata          @3970 */
SECTION_RODATA static f32 const lit_3970 = 1.0f;
COMPILER_STRIP_GATE(0x80585620, &lit_3970);

/* 80585710-80585710 0000F0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80585710 = "J_kanban00.bmd";
SECTION_DEAD static char const* const stringBase_8058571F = "J_kanban00_01.bmd";
SECTION_DEAD static char const* const stringBase_80585731 = "J_kanban00_02.bmd";
SECTION_DEAD static char const* const stringBase_80585743 = "J_kanban00_03.bmd";
SECTION_DEAD static char const* const stringBase_80585755 = "J_kanban00_04.bmd";
SECTION_DEAD static char const* const stringBase_80585767 = "J_kanban00_05.bmd";
SECTION_DEAD static char const* const stringBase_80585779 = "J_kanban00_06.bmd";
SECTION_DEAD static char const* const stringBase_8058578B = "J_kanban00_07.bmd";
SECTION_DEAD static char const* const stringBase_8058579D = "J_kanban00_08.bmd";
SECTION_DEAD static char const* const stringBase_805857AF = "J_kanban00_09.bmd";
SECTION_DEAD static char const* const stringBase_805857C1 = "J_kanban00_10.bmd";
SECTION_DEAD static char const* const stringBase_805857D3 = "J_kanban00_11.bmd";
SECTION_DEAD static char const* const stringBase_805857E5 = "J_kanban00_12.bmd";
SECTION_DEAD static char const* const stringBase_805857F7 = "J_kanban00_13.bmd";
SECTION_DEAD static char const* const stringBase_80585809 = "J_kanban00_14.bmd";
SECTION_DEAD static char const* const stringBase_8058581B = "J_kanban00_15.bmd";
SECTION_DEAD static char const* const stringBase_8058582D = "J_kanban00_16.bmd";
SECTION_DEAD static char const* const stringBase_8058583F = "J_kanban00_17.bmd";
SECTION_DEAD static char const* const stringBase_80585851 = "J_kanban00_18.bmd";
#pragma pop

/* 8058586C-805858B8 -00001 004C+00 1/1 0/0 0/0 .data
 * l_kn2_bmdidx__29@unnamed@d_a_obj_kanban2_cpp@                */
SECTION_DATA static void* data_8058586C[19] = {
    (void*)&d_a_obj_kanban2__stringBase0,
    (void*)(((char*)&d_a_obj_kanban2__stringBase0) + 0xF),
    (void*)(((char*)&d_a_obj_kanban2__stringBase0) + 0x21),
    (void*)(((char*)&d_a_obj_kanban2__stringBase0) + 0x33),
    (void*)(((char*)&d_a_obj_kanban2__stringBase0) + 0x45),
    (void*)(((char*)&d_a_obj_kanban2__stringBase0) + 0x57),
    (void*)(((char*)&d_a_obj_kanban2__stringBase0) + 0x69),
    (void*)(((char*)&d_a_obj_kanban2__stringBase0) + 0x7B),
    (void*)(((char*)&d_a_obj_kanban2__stringBase0) + 0x8D),
    (void*)(((char*)&d_a_obj_kanban2__stringBase0) + 0x9F),
    (void*)(((char*)&d_a_obj_kanban2__stringBase0) + 0xB1),
    (void*)(((char*)&d_a_obj_kanban2__stringBase0) + 0xC3),
    (void*)(((char*)&d_a_obj_kanban2__stringBase0) + 0xD5),
    (void*)(((char*)&d_a_obj_kanban2__stringBase0) + 0xE7),
    (void*)(((char*)&d_a_obj_kanban2__stringBase0) + 0xF9),
    (void*)(((char*)&d_a_obj_kanban2__stringBase0) + 0x10B),
    (void*)(((char*)&d_a_obj_kanban2__stringBase0) + 0x11D),
    (void*)(((char*)&d_a_obj_kanban2__stringBase0) + 0x12F),
    (void*)(((char*)&d_a_obj_kanban2__stringBase0) + 0x141),
};

/* 805858B8-805858C8 00004C 0010+00 1/1 0/0 0/0 .data
 * dKn2_CarryOffset__29@unnamed@d_a_obj_kanban2_cpp@            */
SECTION_DATA static u8 data_805858B8[16] = {
    0xD0, 0x7D, 0xBA, 0x21, 0xBA, 0x21, 0xE3, 0x7E, 0x1D, 0x9F, 0xB3, 0x6C, 0xC9, 0xC8, 0xC6, 0x6D,
};

/* 805858C8-80585958 00005C 0090+00 1/1 0/0 0/0 .data
 * dKb2_BAN_SPEED__29@unnamed@d_a_obj_kanban2_cpp@              */
SECTION_DATA static u8 data_805858C8[144] = {
    0x42, 0x0C, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00,
    0x42, 0x0C, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00,
    0x41, 0xC8, 0x00, 0x00, 0x41, 0xC8, 0x00, 0x00, 0x41, 0xC8, 0x00, 0x00, 0x41, 0xC8, 0x00, 0x00,
    0x41, 0xC8, 0x00, 0x00, 0x41, 0xC8, 0x00, 0x00, 0x41, 0xC8, 0x00, 0x00, 0x41, 0xC8, 0x00, 0x00,
    0x42, 0x20, 0x00, 0x00, 0x41, 0x70, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00, 0x41, 0x70, 0x00, 0x00,
    0x42, 0x18, 0x00, 0x00, 0x41, 0x90, 0x00, 0x00, 0x42, 0x18, 0x00, 0x00, 0x41, 0x90, 0x00, 0x00,
    0x42, 0x0C, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00,
    0x41, 0x20, 0x00, 0x00, 0x41, 0xC8, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0x41, 0xC8, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
};

/* 80585958-8058597C 0000EC 0024+00 1/1 0/0 0/0 .data
 * dKb2_BAN_ANGLE__29@unnamed@d_a_obj_kanban2_cpp@              */
SECTION_DATA static u8 data_80585958[36] = {
    0x68, 0x00, 0x78, 0x00, 0x88, 0x00, 0x98, 0x00, 0x68, 0x00, 0x78, 0x00,
    0x88, 0x00, 0x98, 0x00, 0x70, 0x00, 0x90, 0x00, 0x70, 0x00, 0x90, 0x00,
    0x70, 0x00, 0x90, 0x00, 0x70, 0x00, 0x90, 0x00, 0x70, 0x00, 0x90, 0x00,
};

/* 8058597C-805859C4 000110 0048+00 2/2 0/0 0/0 .data
 * dKb2_BAN_PARTS__29@unnamed@d_a_obj_kanban2_cpp@              */
SECTION_DATA static u8 data_8058597C[72] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x04, 0x02, 0x00, 0x00, 0x08, 0x04, 0x00, 0x00, 0x00,
    0x08, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x20, 0x20, 0x00, 0x00, 0x10, 0x40, 0x00, 0x00,
    0x00, 0x80, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x40, 0x00,
    0x00, 0x02, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 805859C4-80585A04 000158 0040+00 1/1 0/0 0/0 .data cc_kn2_src__29@unnamed@d_a_obj_kanban2_cpp@
 */
SECTION_DATA static u8 data_805859C4[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13,
    0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x79, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};

/* 80585A04-80585A94 000198 0090+00 1/1 0/0 0/0 .data
 * d_KANBAN_OFFSET__29@unnamed@d_a_obj_kanban2_cpp@             */
SECTION_DATA static u8 data_80585A04[144] = {
    0x41, 0xC8, 0x00, 0x00, 0xC2, 0xDC, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC2, 0xFA, 0x00, 0x00,
    0xC1, 0x20, 0x00, 0x00, 0xC2, 0xFA, 0x00, 0x00, 0xC1, 0xC8, 0x00, 0x00, 0xC2, 0xDC, 0x00, 0x00,
    0xC1, 0xC8, 0x00, 0x00, 0xC2, 0xB4, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0xC2, 0x96, 0x00, 0x00,
    0x41, 0x20, 0x00, 0x00, 0xC2, 0x96, 0x00, 0x00, 0x41, 0xC8, 0x00, 0x00, 0xC2, 0xB4, 0x00, 0x00,
    0x40, 0x40, 0x00, 0x00, 0xC3, 0x11, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0xC3, 0x11, 0x00, 0x00,
    0x40, 0x40, 0x00, 0x00, 0xC2, 0xE6, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0xC2, 0xE6, 0x00, 0x00,
    0x40, 0x40, 0x00, 0x00, 0xC2, 0x8C, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0xC2, 0x8C, 0x00, 0x00,
    0x40, 0x40, 0x00, 0x00, 0xC2, 0x0C, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0xC2, 0x0C, 0x00, 0x00,
    0x40, 0x40, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
};

/* 80585A94-80585B30 -00001 009C+00 1/1 0/0 0/0 .data            @4133 */
SECTION_DATA static void* lit_4133[39] = {
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0xD0),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0x78),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0x68),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0x78),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0xC0),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0x60),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0x78),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0x9C),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0xC8),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0xD0),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0x60),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0xD0),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0xD0),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0xD0),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0xD0),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0xD0),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0xD0),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0xD0),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0xC8),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0x60),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0x70),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0xD0),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0xC8),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0xC8),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0xC8),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0xD0),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0x9C),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0xD0),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0xD0),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0xD0),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0xC8),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0x9C),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0x70),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0x68),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0xD0),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0xD0),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0xD0),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0xC0),
    (void*)(((char*)getKanbanCutType__15daObj_Kanban2_cFv) + 0x78),
};

/* 80585B30-80585B58 -00001 0028+00 1/1 0/0 0/0 .data            @4286 */
SECTION_DATA static void* lit_4286[10] = {
    (void*)(((char*)damage_check__15daObj_Kanban2_cFv) + 0x1D0),
    (void*)(((char*)damage_check__15daObj_Kanban2_cFv) + 0x28C),
    (void*)(((char*)damage_check__15daObj_Kanban2_cFv) + 0x294),
    (void*)(((char*)damage_check__15daObj_Kanban2_cFv) + 0x2B0),
    (void*)(((char*)damage_check__15daObj_Kanban2_cFv) + 0x2EC),
    (void*)(((char*)damage_check__15daObj_Kanban2_cFv) + 0x328),
    (void*)(((char*)damage_check__15daObj_Kanban2_cFv) + 0x3F8),
    (void*)(((char*)damage_check__15daObj_Kanban2_cFv) + 0x400),
    (void*)(((char*)damage_check__15daObj_Kanban2_cFv) + 0x408),
    (void*)(((char*)damage_check__15daObj_Kanban2_cFv) + 0x454),
};

/* 80585B58-80585B60 0002EC 0008+00 1/1 0/0 0/0 .data            w_eff_id$4564 */
SECTION_DATA static u8 w_eff_id[8] = {
    0x01, 0xB8, 0x01, 0xB9, 0x01, 0xBA, 0x01, 0xBB,
};

/* 80585B60-80585B84 -00001 0024+00 1/1 0/0 0/0 .data            @4933 */
SECTION_DATA static void* lit_4933[9] = {
    (void*)(((char*)initPart__15daObj_Kanban2_cFv) + 0xA0),
    (void*)(((char*)initPart__15daObj_Kanban2_cFv) + 0x328),
    (void*)(((char*)initPart__15daObj_Kanban2_cFv) + 0x328),
    (void*)(((char*)initPart__15daObj_Kanban2_cFv) + 0x42C),
    (void*)(((char*)initPart__15daObj_Kanban2_cFv) + 0x42C),
    (void*)(((char*)initPart__15daObj_Kanban2_cFv) + 0x10C),
    (void*)(((char*)initPart__15daObj_Kanban2_cFv) + 0x294),
    (void*)(((char*)initPart__15daObj_Kanban2_cFv) + 0x310),
    (void*)(((char*)initPart__15daObj_Kanban2_cFv) + 0x3A4),
};

/* 80585B84-80585BC0 -00001 003C+00 1/1 0/0 0/0 .data            @5150 */
SECTION_DATA static void* lit_5150[15] = {
    (void*)(((char*)executePart__15daObj_Kanban2_cFv) + 0x90),
    (void*)(((char*)executePart__15daObj_Kanban2_cFv) + 0x90),
    (void*)(((char*)executePart__15daObj_Kanban2_cFv) + 0x90),
    (void*)(((char*)executePart__15daObj_Kanban2_cFv) + 0x504),
    (void*)(((char*)executePart__15daObj_Kanban2_cFv) + 0x5BC),
    (void*)(((char*)executePart__15daObj_Kanban2_cFv) + 0x90),
    (void*)(((char*)executePart__15daObj_Kanban2_cFv) + 0x90),
    (void*)(((char*)executePart__15daObj_Kanban2_cFv) + 0x90),
    (void*)(((char*)executePart__15daObj_Kanban2_cFv) + 0x90),
    (void*)(((char*)executePart__15daObj_Kanban2_cFv) + 0x9C),
    (void*)(((char*)executePart__15daObj_Kanban2_cFv) + 0x244),
    (void*)(((char*)executePart__15daObj_Kanban2_cFv) + 0x380),
    (void*)(((char*)executePart__15daObj_Kanban2_cFv) + 0x548),
    (void*)(((char*)executePart__15daObj_Kanban2_cFv) + 0x578),
    (void*)(((char*)executePart__15daObj_Kanban2_cFv) + 0x5F8),
};

/* 80585BC0-80585BCC 000354 000C+00 1/1 0/0 0/0 .data            kn2_speed_rate$5184 */
SECTION_DATA static u8 kn2_speed_rate[12] = {
    0x3F, 0x80, 0x00, 0x00, 0x3F, 0xC0, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00,
};

/* 80585BCC-80585BEC -00001 0020+00 1/0 0/0 0/0 .data            l_daObj_Kanban2_Method */
static actor_method_class l_daObj_Kanban2_Method = {
    (process_method_func)daObj_Kanban2_Create__FP15daObj_Kanban2_c,
    (process_method_func)daObj_Kanban2_Delete__FP15daObj_Kanban2_c,
    (process_method_func)daObj_Kanban2_Execute__FP15daObj_Kanban2_c,
    (process_method_func)daObj_Kanban2_IsDelete__FP15daObj_Kanban2_c,
    (process_method_func)daObj_Kanban2_Draw__FP15daObj_Kanban2_c,
};

/* 80585BEC-80585C1C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_KANBAN2 */
extern actor_process_profile_definition g_profile_OBJ_KANBAN2 = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_OBJ_KANBAN2,        // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daObj_Kanban2_c), // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  63,                      // mPriority
  &l_daObj_Kanban2_Method, // sub_method
  0x00044100,              // mStatus
  fopAc_ENV_e,             // mActorType
  fopAc_CULLBOX_0_e,       // cullType
};

/* 80585C1C-80585C28 0003B0 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80585C28-80585C34 0003BC 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80585C34-80585C58 0003C8 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80585604,
    (void*)NULL,
    (void*)NULL,
    (void*)func_805855FC,
};

/* 80585C58-80585C64 0003EC 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 80585C64-80585C70 0003F8 000C+00 2/2 0/0 0/0 .data            __vt__19daObj_Kanban2_HIO_c */
SECTION_DATA extern void* __vt__19daObj_Kanban2_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__19daObj_Kanban2_HIO_cFv,
};

/* 8058176C-80581790 0000EC 0024+00 1/1 0/0 0/0 .text            __ct__19daObj_Kanban2_HIO_cFv */
daObj_Kanban2_HIO_c::daObj_Kanban2_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80585624-80585628 000004 0004+00 1/4 0/0 0/0 .rodata          @4013 */
SECTION_RODATA static f32 const lit_4013 = 100.0f;
COMPILER_STRIP_GATE(0x80585624, &lit_4013);

/* 80585628-8058562C 000008 0004+00 0/1 0/0 0/0 .rodata          @4014 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4014 = 400.0f;
COMPILER_STRIP_GATE(0x80585628, &lit_4014);
#pragma pop

/* 8058562C-80585630 00000C 0004+00 3/9 0/0 0/0 .rodata          @4015 */
SECTION_RODATA static u8 const lit_4015[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8058562C, &lit_4015);

/* 80581790-805818DC 000110 014C+00 1/1 0/0 0/0 .text            draw__15daObj_Kanban2_cFv */
void daObj_Kanban2_c::draw() {
    // NONMATCHING
}

/* 805818DC-80581918 00025C 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80581918-80581938 000298 0020+00 1/0 0/0 0/0 .text daObj_Kanban2_Draw__FP15daObj_Kanban2_c */
static void daObj_Kanban2_Draw(daObj_Kanban2_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80585630-80585634 000010 0004+00 2/4 0/0 0/0 .rodata          @4036 */
SECTION_RODATA static f32 const lit_4036 = -1.0f;
COMPILER_STRIP_GATE(0x80585630, &lit_4036);

/* 80581938-805819BC 0002B8 0084+00 1/1 0/0 0/0 .text            setKanbanSE__15daObj_Kanban2_cFi */
void daObj_Kanban2_c::setKanbanSE(int param_0) {
    // NONMATCHING
}

/* 805819BC-805819FC 00033C 0040+00 3/3 0/0 0/0 .text createBreakParts__15daObj_Kanban2_cFUl5csXyz
 */
void daObj_Kanban2_c::createBreakParts(u32 param_0, csXyz param_1) {
    // NONMATCHING
}

/* 805819FC-80581B5C 00037C 0160+00 1/1 0/0 0/0 .text createWallHitBreak__15daObj_Kanban2_cFv */
void daObj_Kanban2_c::createWallHitBreak() {
    // NONMATCHING
}

/* 80581B5C-80581C48 0004DC 00EC+00 2/1 0/0 0/0 .text getKanbanCutType__15daObj_Kanban2_cFv */
void daObj_Kanban2_c::getKanbanCutType() {
    // NONMATCHING
}

/* 80581C48-80581D04 0005C8 00BC+00 1/1 0/0 0/0 .text getKanbanWolfCutType__15daObj_Kanban2_cFv */
void daObj_Kanban2_c::getKanbanWolfCutType() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80585634-80585638 000014 0004+00 1/3 0/0 0/0 .rodata          @4283 */
SECTION_RODATA static f32 const lit_4283 = 0.5f;
COMPILER_STRIP_GATE(0x80585634, &lit_4283);

/* 80585638-8058563C 000018 0004+00 0/4 0/0 0/0 .rodata          @4284 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4284 = 40.0f;
COMPILER_STRIP_GATE(0x80585638, &lit_4284);
#pragma pop

/* 80581D04-8058221C 000684 0518+00 2/1 0/0 0/0 .text            damage_check__15daObj_Kanban2_cFv
 */
void daObj_Kanban2_c::damage_check() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8058563C-80585640 00001C 0004+00 0/0 0/0 0/0 .rodata          @4285 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4285 = 1000.0f;
COMPILER_STRIP_GATE(0x8058563C, &lit_4285);
#pragma pop

/* 80585640-80585644 000020 0004+00 0/0 0/0 0/0 .rodata          @4330 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4330 = 15.0f;
COMPILER_STRIP_GATE(0x80585640, &lit_4330);
#pragma pop

/* 80585644-80585648 000024 0004+00 0/0 0/0 0/0 .rodata          @4331 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4331 = 8000.0f;
COMPILER_STRIP_GATE(0x80585644, &lit_4331);
#pragma pop

/* 80585648-8058564C 000028 0004+00 0/2 0/0 0/0 .rodata          @4332 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4332 = 5.0f;
COMPILER_STRIP_GATE(0x80585648, &lit_4332);
#pragma pop

/* 8058564C-80585650 00002C 0004+00 0/1 0/0 0/0 .rodata          @4344 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4344 = -3.0f;
COMPILER_STRIP_GATE(0x8058564C, &lit_4344);
#pragma pop

/* 80585650-80585654 000030 0004+00 0/8 0/0 0/0 .rodata          @4345 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4345 = 10.0f;
COMPILER_STRIP_GATE(0x80585650, &lit_4345);
#pragma pop

/* 80585654-80585658 000034 0004+00 0/2 0/0 0/0 .rodata          @4346 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4346 = 4000.0f;
COMPILER_STRIP_GATE(0x80585654, &lit_4346);
#pragma pop

/* 8058221C-805822F0 000B9C 00D4+00 1/1 0/0 0/0 .text float_damage_check__15daObj_Kanban2_cFv */
void daObj_Kanban2_c::float_damage_check() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80585658-80585660 000038 0008+00 0/1 0/0 0/0 .rodata          @4417 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4417[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80585658, &lit_4417);
#pragma pop

/* 80585660-80585668 000040 0008+00 0/1 0/0 0/0 .rodata          @4418 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4418[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80585660, &lit_4418);
#pragma pop

/* 80585668-80585670 000048 0008+00 0/1 0/0 0/0 .rodata          @4419 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4419[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80585668, &lit_4419);
#pragma pop

/* 80585670-80585674 000050 0004+00 0/1 0/0 0/0 .rodata          @4420 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4420 = 2500.0f;
COMPILER_STRIP_GATE(0x80585670, &lit_4420);
#pragma pop

/* 80585674-80585678 000054 0004+00 1/2 0/0 0/0 .rodata          @4421 */
SECTION_RODATA static f32 const lit_4421 = 500.0f;
COMPILER_STRIP_GATE(0x80585674, &lit_4421);

/* 805822F0-805825A4 000C70 02B4+00 2/2 0/0 0/0 .text            deletePart__15daObj_Kanban2_cFv */
void daObj_Kanban2_c::deletePart() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80585678-8058567C 000058 0004+00 1/2 0/0 0/0 .rodata          @4450 */
SECTION_RODATA static f32 const lit_4450 = 200.0f;
COMPILER_STRIP_GATE(0x80585678, &lit_4450);

/* 805825A4-805826D4 000F24 0130+00 1/1 0/0 0/0 .text            getWallAngle__15daObj_Kanban2_cFv
 */
void daObj_Kanban2_c::getWallAngle() {
    // NONMATCHING
}

/* 805826D4-8058271C 001054 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8058567C-80585680 00005C 0004+00 0/2 0/0 0/0 .rodata          @4489 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4489 = 50.0f;
COMPILER_STRIP_GATE(0x8058567C, &lit_4489);
#pragma pop

/* 80585680-80585688 000060 0004+04 1/3 0/0 0/0 .rodata          @4490 */
SECTION_RODATA static f32 const lit_4490[1 + 1 /* padding */] = {
    -1000000000.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80585680, &lit_4490);

/* 8058271C-80582894 00109C 0178+00 2/2 0/0 0/0 .text            setGroundAngle__15daObj_Kanban2_cFv
 */
void daObj_Kanban2_c::setGroundAngle() {
    // NONMATCHING
}

/* 80582894-80582944 001214 00B0+00 2/2 0/0 0/0 .text checkWaterSurface__15daObj_Kanban2_cFv */
void daObj_Kanban2_c::checkWaterSurface() {
    // NONMATCHING
}

/* 80582944-80582A68 0012C4 0124+00 1/1 0/0 0/0 .text checkPataGround__15daObj_Kanban2_cFss */
void daObj_Kanban2_c::checkPataGround(s16 param_0, s16 param_1) {
    // NONMATCHING
}

/* 80582A68-80582AAC 0013E8 0044+00 3/3 0/0 0/0 .text            setCullMtx__15daObj_Kanban2_cFv */
void daObj_Kanban2_c::setCullMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80585688-80585690 000068 0008+00 1/1 0/0 0/0 .rodata          @4555 */
SECTION_RODATA static u8 const lit_4555[8] = {
    0x3F, 0x94, 0x7A, 0xE1, 0x47, 0xAE, 0x14, 0x7B,
};
COMPILER_STRIP_GATE(0x80585688, &lit_4555);

/* 80582AAC-80582AFC 00142C 0050+00 1/1 0/0 0/0 .text setSmokeEffect__15daObj_Kanban2_cF4cXyz */
void daObj_Kanban2_c::setSmokeEffect(cXyz param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80585C78-80585C7C 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80585C7C-80585C80 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80585C80-80585C84 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 80585C84-80585C88 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80585C88-80585C8C 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80585C8C-80585C90 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80585C90-80585C94 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 80585C94-80585C98 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80585C98-80585C9C 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80585C9C-80585CA0 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80585CA0-80585CA4 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 80585CA4-80585CA8 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80585CA8-80585CAC 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 80585CAC-80585CB0 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80585CB0-80585CB4 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 80585CB4-80585CB8 -00001 0004+00 2/2 0/0 0/0 .bss             None */
/* 80585CB4 0001+00 data_80585CB4 @1009 */
/* 80585CB5 0003+00 data_80585CB5 None */
static u8 struct_80585CB4[4];

/* 80585CB8-80585CC4 000048 000C+00 1/1 0/0 0/0 .bss             @3965 */
static u8 lit_3965[12];

/* 80585CC4-80585CD0 000054 000C+00 3/3 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[12];

/* 80585CD0-80585CE0 000060 000C+04 0/1 0/0 0/0 .bss             @4561 */
#pragma push
#pragma force_active on
static u8 lit_4561[12 + 4 /* padding */];
#pragma pop

/* 80585CE0-80585CEC 000070 000C+00 0/1 0/0 0/0 .bss             sc$4560 */
#pragma push
#pragma force_active on
static u8 sc[12];
#pragma pop

/* 80582AFC-80582C40 00147C 0144+00 2/2 0/0 0/0 .text            setWaterEffect__15daObj_Kanban2_cFv
 */
void daObj_Kanban2_c::setWaterEffect() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80585690-80585694 000070 0004+00 0/2 0/0 0/0 .rodata          @4645 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4645 = 30.0f;
COMPILER_STRIP_GATE(0x80585690, &lit_4645);
#pragma pop

/* 80585694-80585698 000074 0004+00 0/2 0/0 0/0 .rodata          @4646 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4646 = 20.0f;
COMPILER_STRIP_GATE(0x80585694, &lit_4646);
#pragma pop

/* 80585698-805856A0 000078 0008+00 0/3 0/0 0/0 .rodata          @4648 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4648[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80585698, &lit_4648);
#pragma pop

/* 80582C40-80582E68 0015C0 0228+00 3/3 0/0 0/0 .text            setCenterPos__15daObj_Kanban2_cFv
 */
void daObj_Kanban2_c::setCenterPos() {
    // NONMATCHING
}

/* 80582E68-80582EF0 0017E8 0088+00 2/2 0/0 0/0 .text            checkCarryOn__15daObj_Kanban2_cFv
 */
void daObj_Kanban2_c::checkCarryOn() {
    // NONMATCHING
}

/* 80582EF0-80582F40 001870 0050+00 6/6 0/0 0/0 .text            setActionMode__15daObj_Kanban2_cFii
 */
void daObj_Kanban2_c::setActionMode(int param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805856A0-805856A4 000080 0004+00 0/4 0/0 0/0 .rodata          @4781 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4781 = 70.0f;
COMPILER_STRIP_GATE(0x805856A0, &lit_4781);
#pragma pop

/* 805856A4-805856A8 000084 0004+00 0/1 0/0 0/0 .rodata          @4782 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4782 = 3584.0f;
COMPILER_STRIP_GATE(0x805856A4, &lit_4782);
#pragma pop

/* 805856A8-805856AC 000088 0004+00 0/2 0/0 0/0 .rodata          @4783 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4783 = 2048.0f;
COMPILER_STRIP_GATE(0x805856A8, &lit_4783);
#pragma pop

/* 805856AC-805856B0 00008C 0004+00 0/1 0/0 0/0 .rodata          @4784 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4784 = -2048.0f;
COMPILER_STRIP_GATE(0x805856AC, &lit_4784);
#pragma pop

/* 80582F40-80583364 0018C0 0424+00 1/1 0/0 0/0 .text calcNormalSwing__15daObj_Kanban2_cFv */
void daObj_Kanban2_c::calcNormalSwing() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805856B0-805856B4 000090 0004+00 0/1 0/0 0/0 .rodata          @4861 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4861 = 150.0f;
COMPILER_STRIP_GATE(0x805856B0, &lit_4861);
#pragma pop

/* 80583364-80583598 001CE4 0234+00 1/1 0/0 0/0 .text            executeNormal__15daObj_Kanban2_cFv
 */
void daObj_Kanban2_c::executeNormal() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805856B4-805856B8 000094 0004+00 0/1 0/0 0/0 .rodata          @4922 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4922 = -4.0f;
COMPILER_STRIP_GATE(0x805856B4, &lit_4922);
#pragma pop

/* 805856B8-805856BC 000098 0004+00 0/1 0/0 0/0 .rodata          @4923 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4923 = 35.0f;
COMPILER_STRIP_GATE(0x805856B8, &lit_4923);
#pragma pop

/* 805856BC-805856C0 00009C 0004+00 0/0 0/0 0/0 .rodata          @4924 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4924 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x805856BC, &lit_4924);
#pragma pop

/* 805856C0-805856C4 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4925 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4925 = 1024.0f;
COMPILER_STRIP_GATE(0x805856C0, &lit_4925);
#pragma pop

/* 805856C4-805856C8 0000A4 0004+00 0/0 0/0 0/0 .rodata          @4926 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4926 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x805856C4, &lit_4926);
#pragma pop

/* 805856C8-805856CC 0000A8 0004+00 0/0 0/0 0/0 .rodata          @4927 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4927 = 25.0f;
COMPILER_STRIP_GATE(0x805856C8, &lit_4927);
#pragma pop

/* 805856CC-805856D0 0000AC 0004+00 0/0 0/0 0/0 .rodata          @4928 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4928 = 80.0f;
COMPILER_STRIP_GATE(0x805856CC, &lit_4928);
#pragma pop

/* 805856D0-805856D4 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4929 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4929 = 512.0f;
COMPILER_STRIP_GATE(0x805856D0, &lit_4929);
#pragma pop

/* 805856D4-805856D8 0000B4 0004+00 0/0 0/0 0/0 .rodata          @4930 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4930 = 4.0f;
COMPILER_STRIP_GATE(0x805856D4, &lit_4930);
#pragma pop

/* 805856D8-805856DC 0000B8 0004+00 0/0 0/0 0/0 .rodata          @4931 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4931 = 4096.0f;
COMPILER_STRIP_GATE(0x805856D8, &lit_4931);
#pragma pop

/* 805856DC-805856E0 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4932 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4932 = 8192.0f;
COMPILER_STRIP_GATE(0x805856DC, &lit_4932);
#pragma pop

/* 80583598-80583A2C 001F18 0494+00 2/1 0/0 0/0 .text            initPart__15daObj_Kanban2_cFv */
void daObj_Kanban2_c::initPart() {
    // NONMATCHING
}

/* 80583A2C-8058437C 0023AC 0950+00 2/1 0/0 0/0 .text            executePart__15daObj_Kanban2_cFv */
void daObj_Kanban2_c::executePart() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805856E0-805856E4 0000C0 0004+00 0/1 0/0 0/0 .rodata          @5147 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5147 = 0.75f;
COMPILER_STRIP_GATE(0x805856E0, &lit_5147);
#pragma pop

/* 805856E4-805856E8 0000C4 0004+00 0/1 0/0 0/0 .rodata          @5148 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5148 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x805856E4, &lit_5148);
#pragma pop

/* 805856E8-805856EC 0000C8 0004+00 0/1 0/0 0/0 .rodata          @5149 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5149 = -10.0f;
COMPILER_STRIP_GATE(0x805856E8, &lit_5149);
#pragma pop

/* 805856EC-805856F0 0000CC 0004+00 0/1 0/0 0/0 .rodata          @5269 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5269 = 2.0f;
COMPILER_STRIP_GATE(0x805856EC, &lit_5269);
#pragma pop

/* 805856F0-805856F4 0000D0 0004+00 0/1 0/0 0/0 .rodata          @5270 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5270 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x805856F0, &lit_5270);
#pragma pop

/* 805856F4-805856F8 0000D4 0004+00 0/1 0/0 0/0 .rodata          @5271 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5271 = 2000.0f;
COMPILER_STRIP_GATE(0x805856F4, &lit_5271);
#pragma pop

/* 805856F8-805856FC 0000D8 0004+00 0/1 0/0 0/0 .rodata          @5272 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5272 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x805856F8, &lit_5272);
#pragma pop

/* 805856FC-80585700 0000DC 0004+00 0/1 0/0 0/0 .rodata          @5273 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5273 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x805856FC, &lit_5273);
#pragma pop

/* 80585700-80585708 0000E0 0008+00 0/1 0/0 0/0 .rodata          @5275 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5275[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80585700, &lit_5275);
#pragma pop

/* 8058437C-80584884 002CFC 0508+00 1/1 0/0 0/0 .text            executeFloat__15daObj_Kanban2_cFv
 */
void daObj_Kanban2_c::executeFloat() {
    // NONMATCHING
}

/* 80584884-805849CC 003204 0148+00 1/1 0/0 0/0 .text            executeCarry__15daObj_Kanban2_cFv
 */
void daObj_Kanban2_c::executeCarry() {
    // NONMATCHING
}

/* 805849CC-80584AD8 00334C 010C+00 1/1 0/0 0/0 .text            action__15daObj_Kanban2_cFv */
void daObj_Kanban2_c::action() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80585708-8058570C 0000E8 0004+00 0/1 0/0 0/0 .rodata          @5378 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5378 = -20.0f;
COMPILER_STRIP_GATE(0x80585708, &lit_5378);
#pragma pop

/* 80584AD8-80584CFC 003458 0224+00 1/1 0/0 0/0 .text            mtx_set__15daObj_Kanban2_cFv */
void daObj_Kanban2_c::mtx_set() {
    // NONMATCHING
}

/* 80584CFC-80584DF0 00367C 00F4+00 1/1 0/0 0/0 .text            cc_set__15daObj_Kanban2_cFv */
void daObj_Kanban2_c::cc_set() {
    // NONMATCHING
}

/* 80584DF0-80584EB0 003770 00C0+00 1/1 0/0 0/0 .text            execute__15daObj_Kanban2_cFv */
void daObj_Kanban2_c::execute() {
    // NONMATCHING
}

/* 80584EB0-80584ED0 003830 0020+00 2/1 0/0 0/0 .text daObj_Kanban2_Execute__FP15daObj_Kanban2_c
 */
static void daObj_Kanban2_Execute(daObj_Kanban2_c* param_0) {
    // NONMATCHING
}

/* 80584ED0-80584ED8 003850 0008+00 1/0 0/0 0/0 .text daObj_Kanban2_IsDelete__FP15daObj_Kanban2_c
 */
static bool daObj_Kanban2_IsDelete(daObj_Kanban2_c* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80585710-80585710 0000F0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80585863 = "Obj_kn2";
#pragma pop

/* 80584ED8-80584F44 003858 006C+00 1/1 0/0 0/0 .text            _delete__15daObj_Kanban2_cFv */
void daObj_Kanban2_c::_delete() {
    // NONMATCHING
}

/* 80584F44-80584F64 0038C4 0020+00 1/0 0/0 0/0 .text daObj_Kanban2_Delete__FP15daObj_Kanban2_c */
static void daObj_Kanban2_Delete(daObj_Kanban2_c* param_0) {
    // NONMATCHING
}

/* 80584F64-805850C8 0038E4 0164+00 1/1 0/0 0/0 .text            CreateHeap__15daObj_Kanban2_cFv */
void daObj_Kanban2_c::CreateHeap() {
    // NONMATCHING
}

/* 805850C8-805850E8 003A48 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8058570C-80585710 0000EC 0004+00 0/1 0/0 0/0 .rodata          @5568 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5568 = -200.0f;
COMPILER_STRIP_GATE(0x8058570C, &lit_5568);
#pragma pop

/* 805850E8-80585458 003A68 0370+00 1/1 0/0 0/0 .text            create__15daObj_Kanban2_cFv */
void daObj_Kanban2_c::create() {
    // NONMATCHING
}

/* 80585458-805854A0 003DD8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 805854A0-805854E8 003E20 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 805854E8-80585558 003E68 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80585558-80585578 003ED8 0020+00 1/0 0/0 0/0 .text daObj_Kanban2_Create__FP15daObj_Kanban2_c */
static void daObj_Kanban2_Create(daObj_Kanban2_c* param_0) {
    // NONMATCHING
}

/* 80585578-805855C0 003EF8 0048+00 2/1 0/0 0/0 .text            __dt__19daObj_Kanban2_HIO_cFv */
daObj_Kanban2_HIO_c::~daObj_Kanban2_HIO_c() {
    // NONMATCHING
}

/* 805855C0-805855FC 003F40 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_kanban2_cpp */
void __sinit_d_a_obj_kanban2_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x805855C0, __sinit_d_a_obj_kanban2_cpp);
#pragma pop

/* 805855FC-80585604 003F7C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_805855FC() {
    // NONMATCHING
}

/* 80585604-8058560C 003F84 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80585604() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80585CEC-80585CF0 00007C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80585CEC[4];
#pragma pop

/* 80585CF0-80585CF4 000080 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80585CF0[4];
#pragma pop

/* 80585CF4-80585CF8 000084 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80585CF4[4];
#pragma pop

/* 80585CF8-80585CFC 000088 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80585CF8[4];
#pragma pop

/* 80585CFC-80585D00 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80585CFC[4];
#pragma pop

/* 80585D00-80585D04 000090 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80585D00[4];
#pragma pop

/* 80585D04-80585D08 000094 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80585D04[4];
#pragma pop

/* 80585D08-80585D0C 000098 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80585D08[4];
#pragma pop

/* 80585D0C-80585D10 00009C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80585D0C[4];
#pragma pop

/* 80585D10-80585D14 0000A0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80585D10[4];
#pragma pop

/* 80585D14-80585D18 0000A4 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80585D14[4];
#pragma pop

/* 80585D18-80585D1C 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80585D18[4];
#pragma pop

/* 80585D1C-80585D20 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80585D1C[4];
#pragma pop

/* 80585D20-80585D24 0000B0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80585D20[4];
#pragma pop

/* 80585D24-80585D28 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80585D24[4];
#pragma pop

/* 80585D28-80585D2C 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80585D28[4];
#pragma pop

/* 80585D2C-80585D30 0000BC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80585D2C[4];
#pragma pop

/* 80585D30-80585D34 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80585D30[4];
#pragma pop

/* 80585D34-80585D38 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80585D34[4];
#pragma pop

/* 80585D38-80585D3C 0000C8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80585D38[4];
#pragma pop

/* 80585D3C-80585D40 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80585D3C[4];
#pragma pop

/* 80585D40-80585D44 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80585D40[4];
#pragma pop

/* 80585D44-80585D48 0000D4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80585D44[4];
#pragma pop

/* 80585D48-80585D4C 0000D8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80585D48[4];
#pragma pop

/* 80585D4C-80585D50 0000DC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80585D4C[4];
#pragma pop

/* 80585710-80585710 0000F0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
