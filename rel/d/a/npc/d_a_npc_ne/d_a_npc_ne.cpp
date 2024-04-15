/**
 * d_a_npc_ne.cpp
 * NPC - Cat
 */

#include "rel/d/a/npc/d_a_npc_ne/d_a_npc_ne.h"
#include "SSystem/SComponent/c_counter.h"
#include "d/com/d_com_inf_game.h"
#include "d/a/d_a_player.h"
#include "d/d_procname.h"
#include "rel/d/a/d_a_mg_rod/d_a_mg_rod.h"
#include "rel/d/a/d_a_mg_fish/d_a_mg_fish.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __ct__14daNpc_Ne_HIO_cFv();
extern "C" static void anm_init__FP12npc_ne_classifUcf();
extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" static void daNpc_Ne_Draw__FP12npc_ne_class();
extern "C" void __dt__4cXyzFv();
extern "C" static void other_bg_check__FP10fopAc_ac_cP10fopAc_ac_c();
extern "C" static void ne_carry_check__FP12npc_ne_class();
extern "C" static void way_bg_check__FP12npc_ne_classs();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" static void water_check__FP12npc_ne_classf();
extern "C" static void climb_angle_get__FP12npc_ne_class();
extern "C" static void s_bl_sub__FPvPv();
extern "C" static void s_ss_sub__FPvPv();
extern "C" static void search_bird__FP12npc_ne_class();
extern "C" static void way_check__FP12npc_ne_classs();
extern "C" static void npc_ne_wait__FP12npc_ne_class();
extern "C" static void npc_ne_away__FP12npc_ne_class();
extern "C" static void ground_search__FP12npc_ne_class();
extern "C" static void s_fish_sub__FPvPv();
extern "C" static void npc_ne_tame__FP12npc_ne_class();
extern "C" static void npc_ne_sanbasi__FP12npc_ne_class();
extern "C" static void npc_ne_bird__FP12npc_ne_class();
extern "C" static void npc_ne_ball__FP12npc_ne_class();
extern "C" static void npc_ne_pathwalk__FP12npc_ne_class();
extern "C" static void npc_ne_jump__FP12npc_ne_class();
extern "C" static void npc_ne_s_jump__FP12npc_ne_class();
extern "C" static void npc_ne_roof__FP12npc_ne_class();
extern "C" static void home_path_search__FP12npc_ne_classi();
extern "C" static void npc_ne_home__FP12npc_ne_class();
extern "C" static void wall_angle_get__FP12npc_ne_class();
extern "C" static void search_ground_1__FP12npc_ne_class();
extern "C" void __ct__4cXyzFv();
extern "C" static void search_ground_2__FP12npc_ne_classs();
extern "C" static void npc_ne_swim__FP12npc_ne_class();
extern "C" static void npc_ne_outswim__FP12npc_ne_class();
extern "C" static void npc_ne_climb__FP12npc_ne_class();
extern "C" static void npc_ne_drop__FP12npc_ne_class();
extern "C" static void npc_ne_s_drop__FP12npc_ne_class();
extern "C" static void npc_ne_carry__FP12npc_ne_class();
extern "C" static void npc_ne_dish__FP12npc_ne_class();
extern "C" static void npc_ne_message__FP12npc_ne_class();
extern "C" static void action__FP12npc_ne_class();
extern "C" static void demo_camera__FP12npc_ne_class();
extern "C" static void message__FP12npc_ne_class();
extern "C" static void daNpc_Ne_Execute__FP12npc_ne_class();
extern "C" static bool daNpc_Ne_IsDelete__FP12npc_ne_class();
extern "C" static void daNpc_Ne_Delete__FP12npc_ne_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daNpc_Ne_Create__FP10fopAc_ac_c();
extern "C" void __ct__12npc_ne_classFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__14daNpc_Ne_HIO_cFv();
extern "C" void __sinit_d_a_npc_ne_cpp();
extern "C" static void func_80A923F8();
extern "C" static void func_80A92400();
extern "C" extern char const* const d_a_npc_ne__stringBase0;
static cPhs__Step daNpc_Ne_Create(fopAc_ac_c*);
static int daNpc_Ne_Delete(npc_ne_class*);
static int daNpc_Ne_Execute(npc_ne_class*);
static int daNpc_Ne_IsDelete(npc_ne_class*);
static int daNpc_Ne_Draw(npc_ne_class*);

//
// External References:
//

extern "C" void fopAcM_riverStream__FP4cXyzPsPff();
extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss();
extern "C" void entry__13mDoExt_btpAnmFP16J3DMaterialTables();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void
__ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl();
extern "C" void setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv();
extern "C" void play__14mDoExt_McaMorfFP3VecUlSc();
extern "C" void entryDL__14mDoExt_McaMorfFv();
extern "C" void modelCalc__14mDoExt_McaMorfFv();
extern "C" void cDmrNowMidnaTalk__Fv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fopAcM_createItem__FPC4cXyziiiPC5csXyzPC4cXyzi();
extern "C" void fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_wayBgCheck__FPC10fopAc_ac_cff();
extern "C" void fopAcM_effHamonSet__FPUlPC4cXyzff();
extern "C" void fopKyM_createWpillar__FPC4cXyzfi();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcSch_JudgeForPName__FPvPv();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void onEventBit__11dSv_event_cFUs();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void dPath_GetRoomPath__Fii();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void __ct__18dBgS_ObjGndChk_SplFv();
extern "C" void __dt__18dBgS_ObjGndChk_SplFv();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void linkGrabSubjectNoDraw__9daPy_py_cFP10fopAc_ac_c();
extern "C" void Start__9dCamera_cFv();
extern "C" void Stop__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void Set__9dCamera_cF4cXyz4cXyzfs();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c();
extern "C" void doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci();
extern "C" void getNowMsgNo__10dMsgFlow_cFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC3Vec();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void changeBgmStatus__8Z2SeqMgrFl();
extern "C" void deleteObject__14Z2SoundObjBaseFv();
extern "C" void __ct__16Z2SoundObjSimpleFv();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void JUTReport__FiiPCce();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80A9241C-80A92420 000000 0004+00 36/36 0/0 0/0 .rodata          @3990 */
SECTION_RODATA static f32 const lit_3990 = 1.0f;
COMPILER_STRIP_GATE(0x80A9241C, &lit_3990);

/* 80A92420-80A92424 000004 0004+00 0/4 0/0 0/0 .rodata          @3991 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3991 = 2.5f;
COMPILER_STRIP_GATE(0x80A92420, &lit_3991);
#pragma pop

/* 80A92424-80A92428 000008 0004+00 0/2 0/0 0/0 .rodata          @3992 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3992 = 12.0f;
COMPILER_STRIP_GATE(0x80A92424, &lit_3992);
#pragma pop

/* 80A92428-80A9242C 00000C 0004+00 0/17 0/0 0/0 .rodata          @3993 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3993 = 2.0f;
COMPILER_STRIP_GATE(0x80A92428, &lit_3993);
#pragma pop

struct home_path_pnt {
    /* 0x0 */ int mNo;
    /* 0x4 */ Vec mPosition;
};  // Size: 0x10

/* 80A925F0-80A92850 000000 0260+00 3/3 0/0 0/0 .data            home_path */
SECTION_DATA static home_path_pnt home_path[38] = {
    {0, {561.0f, 87.0f, -1110.0f}},
    {1, {306.0f, 87.0f, -849.0f}},
    {2, {158.0f, 139.0f, -929.0f}},
    {3, {137.0f, 145.0f, -1055.0f}},
    {4, {332.0f, 481.0f, -1113.0f}},
    {5, {710.0f, 697.0f, -1275.0f}},
    {6, {1005.0f, 766.0f, -1423.0f}},
    {3, {-6.0f, 178.0f, -990.0f}},
    {4, {155.0f, 132.0f, -1606.0f}},
    {5, {482.0f, 93.0f, -1997.0f}},
    {6, {775.0f, 70.0f, -2280.0f}},
    {7, {1185.0f, 75.0f, -2458.0f}},
    {2, {107.0f, 127.0f, -556.0f}},
    {3, {363.0f, 150.0f, 44.0f}},
    {4, {527.0f, 203.0f, 849.0f}},
    {5, {989.0f, 94.0f, 1872.0f}},
    {6, {1346.0f, 267.0f, 2454.0f}},
    {7, {1670.0f, 179.0f, 2923.0f}},
    {8, {2129.0f, 100.0f, 3308.0f}},
    {9, {2967.0f, 120.0f, 3215.0f}},
    {10, {3427.0f, 185.0f, 2506.0f}},
    {11, {3675.0f, 185.0f, 1778.0f}},
    {12, {4129.0f, 197.0f, 988.0f}},
    {13, {4003.0f, 151.0f, 376.0f}},
    {14, {3694.0f, 75.0f, -321.0f}},
    {2, {107.0f, 127.0f, -556.0f}},
    {3, {589.0f, 99.0f, -162.0f}},
    {4, {639.0f, 155.0f, 275.0f}},
    {2, {107.0f, 127.0f, -556.0f}},
    {3, {19.0f, 215.0f, 5.0f}},
    {4, {-172.0f, 227.0f, 728.0f}},
    {5, {-497.0f, 202.0f, 1467.0f}},
    {6, {-992.0f, 115.0f, 2189.0f}},
    {7, {-1479.0f, 101.0f, 2711.0f}},
    {8, {-1911.0f, 88.0f, 3391.0f}},
    {9, {-2173.0f, 75.0f, 4025.0f}},
    {10, {-2526.0f, 80.0f, 4260.0f}},
    {-1, {0.0f, 0.0f, 0.0f}},
};

/* 80A92850-80A92880 -00001 0030+00 1/1 0/0 0/0 .data            @5010 */
SECTION_DATA static void* lit_5010[12] = {
    (void*)(((char*)npc_ne_tame__FP12npc_ne_class) + 0xD0),
    (void*)(((char*)npc_ne_tame__FP12npc_ne_class) + 0x110),
    (void*)(((char*)npc_ne_tame__FP12npc_ne_class) + 0x21C),
    (void*)(((char*)npc_ne_tame__FP12npc_ne_class) + 0x760),
    (void*)(((char*)npc_ne_tame__FP12npc_ne_class) + 0x760),
    (void*)(((char*)npc_ne_tame__FP12npc_ne_class) + 0x44C),
    (void*)(((char*)npc_ne_tame__FP12npc_ne_class) + 0x4A4),
    (void*)(((char*)npc_ne_tame__FP12npc_ne_class) + 0x52C),
    (void*)(((char*)npc_ne_tame__FP12npc_ne_class) + 0x594),
    (void*)(((char*)npc_ne_tame__FP12npc_ne_class) + 0x760),
    (void*)(((char*)npc_ne_tame__FP12npc_ne_class) + 0x684),
    (void*)(((char*)npc_ne_tame__FP12npc_ne_class) + 0x684),
};

/* 80A92880-80A9289C -00001 001C+00 1/1 0/0 0/0 .data            @5215 */
SECTION_DATA static void* lit_5215[7] = {
    (void*)(((char*)npc_ne_ball__FP12npc_ne_class) + 0x1BC),
    (void*)(((char*)npc_ne_ball__FP12npc_ne_class) + 0x224),
    (void*)(((char*)npc_ne_ball__FP12npc_ne_class) + 0x3D8),
    (void*)(((char*)npc_ne_ball__FP12npc_ne_class) + 0x430),
    (void*)(((char*)npc_ne_ball__FP12npc_ne_class) + 0x560),
    (void*)(((char*)npc_ne_ball__FP12npc_ne_class) + 0x4BC),
    (void*)(((char*)npc_ne_ball__FP12npc_ne_class) + 0x4E8),
};

/* 80A9289C-80A928F0 -00001 0054+00 1/1 0/0 0/0 .data            @5659 */
SECTION_DATA static void* lit_5659[21] = {
    (void*)(((char*)npc_ne_home__FP12npc_ne_class) + 0x7C),
    (void*)(((char*)npc_ne_home__FP12npc_ne_class) + 0xB0),
    (void*)(((char*)npc_ne_home__FP12npc_ne_class) + 0x100),
    (void*)(((char*)npc_ne_home__FP12npc_ne_class) + 0x2B4),
    (void*)(((char*)npc_ne_home__FP12npc_ne_class) + 0x2EC),
    (void*)(((char*)npc_ne_home__FP12npc_ne_class) + 0x84C),
    (void*)(((char*)npc_ne_home__FP12npc_ne_class) + 0x84C),
    (void*)(((char*)npc_ne_home__FP12npc_ne_class) + 0x84C),
    (void*)(((char*)npc_ne_home__FP12npc_ne_class) + 0x84C),
    (void*)(((char*)npc_ne_home__FP12npc_ne_class) + 0x84C),
    (void*)(((char*)npc_ne_home__FP12npc_ne_class) + 0x338),
    (void*)(((char*)npc_ne_home__FP12npc_ne_class) + 0x464),
    (void*)(((char*)npc_ne_home__FP12npc_ne_class) + 0x528),
    (void*)(((char*)npc_ne_home__FP12npc_ne_class) + 0x5A4),
    (void*)(((char*)npc_ne_home__FP12npc_ne_class) + 0x5E4),
    (void*)(((char*)npc_ne_home__FP12npc_ne_class) + 0x84C),
    (void*)(((char*)npc_ne_home__FP12npc_ne_class) + 0x84C),
    (void*)(((char*)npc_ne_home__FP12npc_ne_class) + 0x84C),
    (void*)(((char*)npc_ne_home__FP12npc_ne_class) + 0x84C),
    (void*)(((char*)npc_ne_home__FP12npc_ne_class) + 0x84C),
    (void*)(((char*)npc_ne_home__FP12npc_ne_class) + 0x7E8),
};

/* 80A928F0-80A92944 -00001 0054+00 1/1 0/0 0/0 .data            @6824 */
SECTION_DATA static void* lit_6824[21] = {
    (void*)(((char*)action__FP12npc_ne_class) + 0x164),
    (void*)(((char*)action__FP12npc_ne_class) + 0x178),
    (void*)(((char*)action__FP12npc_ne_class) + 0x190),
    (void*)(((char*)action__FP12npc_ne_class) + 0x1BC),
    (void*)(((char*)action__FP12npc_ne_class) + 0x1A8),
    (void*)(((char*)action__FP12npc_ne_class) + 0x200),
    (void*)(((char*)action__FP12npc_ne_class) + 0x210),
    (void*)(((char*)action__FP12npc_ne_class) + 0x1CC),
    (void*)(((char*)action__FP12npc_ne_class) + 0x1D8),
    (void*)(((char*)action__FP12npc_ne_class) + 0x1EC),
    (void*)(((char*)action__FP12npc_ne_class) + 0x220),
    (void*)(((char*)action__FP12npc_ne_class) + 0x30C),
    (void*)(((char*)action__FP12npc_ne_class) + 0x238),
    (void*)(((char*)action__FP12npc_ne_class) + 0x264),
    (void*)(((char*)action__FP12npc_ne_class) + 0x27C),
    (void*)(((char*)action__FP12npc_ne_class) + 0x294),
    (void*)(((char*)action__FP12npc_ne_class) + 0x2A8),
    (void*)(((char*)action__FP12npc_ne_class) + 0x2BC),
    (void*)(((char*)action__FP12npc_ne_class) + 0x2D0),
    (void*)(((char*)action__FP12npc_ne_class) + 0x30C),
    (void*)(((char*)action__FP12npc_ne_class) + 0x2E8),
};

/* 80A92944-80A92948 000354 0004+00 1/1 0/0 0/0 .data            e_name$7147 */
SECTION_DATA static u8 e_name[4] = {
    0x84,
    0x97,
    0x84,
    0x98,
};

/* 80A92948-80A92950 000358 0008+00 1/1 0/0 0/0 .data            dish_bck$7371 */
SECTION_DATA static u8 dish_bck[8] = {
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x08,
};

/* 80A92950-80A92990 000360 0040+00 1/1 0/0 0/0 .data            cc_sph_src$7518 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x0, 0x0}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 20.0f} // mSph
    } // mSphAttr
};

/* 80A92990-80A929D0 0003A0 0040+00 1/1 0/0 0/0 .data            at_sph_src$7519 */
static dCcD_SrcSph at_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0x1f}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 15.0f} // mSph
    } // mSphAttr
};

/* 80A929D0-80A929F0 -00001 0020+00 1/0 0/0 0/0 .data            l_daNpc_Ne_Method */
static actor_method_class l_daNpc_Ne_Method = {
    (process_method_func)daNpc_Ne_Create,
    (process_method_func)daNpc_Ne_Delete,
    (process_method_func)daNpc_Ne_Execute,
    (process_method_func)daNpc_Ne_IsDelete,
    (process_method_func)daNpc_Ne_Draw,
};

/* 80A929F0-80A92A20 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_NE */
extern actor_process_profile_definition g_profile_NPC_NE = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_NPC_NE,
    &g_fpcLf_Method.mBase,
    sizeof(npc_ne_class),
    0,
    0,
    &g_fopAc_Method.base,
    0x2BC,
    &l_daNpc_Ne_Method,
    0x8044000,
    fopAc_NPC_e,
    fopAc_CULLBOX_0_e,
};

/* 80A92A20-80A92A2C 000430 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80A92A2C-80A92A38 00043C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80A92A38-80A92A5C 000448 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A92400,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A923F8,
};

/* 80A92A5C-80A92A68 00046C 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80A92A68-80A92A74 000478 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 80A92A74-80A92A80 000484 000C+00 2/2 0/0 0/0 .data            __vt__14daNpc_Ne_HIO_c */
SECTION_DATA extern void* __vt__14daNpc_Ne_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14daNpc_Ne_HIO_cFv,
};

/* 80A88CCC-80A88D14 0000EC 0048+00 1/1 0/0 0/0 .text            __ct__14daNpc_Ne_HIO_cFv */
#ifdef NONMATCHING
// matches with literals
daNpc_Ne_HIO_c::daNpc_Ne_HIO_c() :
    field_0x04(-1),
    mScale(1.0f),
    mWalkSpeed(2.5f),
    mRunSpeed(12.0f),
    mSwimSpeed(2.0f),
    field_0x18(0)
{
    /* empty function */
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpc_Ne_HIO_c::daNpc_Ne_HIO_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/__ct__14daNpc_Ne_HIO_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80A9242C-80A92430 000010 0004+00 1/27 0/0 0/0 .rodata          @4018 */
SECTION_RODATA static u8 const lit_4018[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A9242C, &lit_4018);

/* 80A92430-80A92434 000014 0004+00 1/3 0/0 0/0 .rodata          @4019 */
SECTION_RODATA static f32 const lit_4019 = -1.0f;
COMPILER_STRIP_GATE(0x80A92430, &lit_4019);

/* 80A88D14-80A88DC0 000134 00AC+00 19/19 0/0 0/0 .text            anm_init__FP12npc_ne_classifUcf
 */
#ifdef NONMATCHING
// matches with literals
static void anm_init(npc_ne_class* i_this, int i_resNo, f32 i_morf, u8 i_attr, f32 i_speed) {
    J3DAnmTransform* anm =
        static_cast<J3DAnmTransform*>(dComIfG_getObjectRes(i_this->mResName, i_resNo));
    i_this->mpMorf->setAnm(anm, i_attr, i_morf, i_speed, 0.0f, -1.0f, NULL);
    i_this->mAnmID = i_resNo;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void anm_init(npc_ne_class* param_0, int param_1, f32 param_2, u8 param_3, f32 param_4) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/anm_init__FP12npc_ne_classifUcf.s"
}
#pragma pop
#endif

/* 80A88DC0-80A88FC4 0001E0 0204+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static int nodeCallBack(J3DJoint* i_joint, int param_1) {
    if (param_1 == 0) {
        int jnt_no = i_joint->getJntNo();
        J3DModel* model = j3dSys.getModel();
        npc_ne_class* _this = (npc_ne_class*)model->getUserArea();
        if (_this != NULL) {
            PSMTXCopy(model->getAnmMtx(jnt_no), *calc_mtx);

            // head
            if (jnt_no == 4) {
                mDoMtx_YrotM(*calc_mtx, _this->mHeadAngleY + _this->mHeadBobAngleY);
                mDoMtx_XrotM(*calc_mtx, _this->mHeadAngleX + _this->mHeadBobAngleX);
                mDoMtx_ZrotM(*calc_mtx, _this->mHeadAngleZ);
            }

            // backbone1 / backbone2 / neck
            if (jnt_no == 1 || jnt_no == 2 || jnt_no == 3) {
                mDoMtx_YrotM(*calc_mtx, _this->mBackboneAngleY);
                if (jnt_no == 3) {
                    mDoMtx_YrotM(*calc_mtx, _this->mNeckAngleY);
                }
            }

            // tail1 / tail2
            if (jnt_no == 20 || jnt_no == 21) {
                if (jnt_no == 20) {
                    mDoMtx_ZrotM(*calc_mtx, _this->mTailAngle);
                } else if (jnt_no == 21) {
                    if (_this->mTailAngle > 0) {
                        mDoMtx_ZrotM(*calc_mtx, _this->mTailAngle * 2);
                    }
                }
                mDoMtx_ZrotM(*calc_mtx, _this->mTailSwayAngle[jnt_no - 20]);
            }

            // center
            if (jnt_no == 0) {
                mDoMtx_YrotM(*calc_mtx, 0);
                mDoMtx_XrotM(*calc_mtx, 0);
                mDoMtx_ZrotM(*calc_mtx, 0);
            }

            model->setAnmMtx(jnt_no, *calc_mtx);
            PSMTXCopy(*calc_mtx, J3DSys::mCurrentMtx);
        }
    }
    return 1;
}

/* ############################################################################################## */
/* 80A92434-80A92438 000018 0004+00 1/18 0/0 0/0 .rodata          @4139 */
SECTION_RODATA static f32 const lit_4139 = 100.0f;
COMPILER_STRIP_GATE(0x80A92434, &lit_4139);

/* 80A92438-80A9243C 00001C 0004+00 0/3 0/0 0/0 .rodata          @4140 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4140 = 400.0f;
COMPILER_STRIP_GATE(0x80A92438, &lit_4140);
#pragma pop

/* 80A925D0-80A925D0 0001B4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A925D0 = "Npc_net";
#pragma pop

/* 80A88FC4-80A89160 0003E4 019C+00 1/0 0/0 0/0 .text            daNpc_Ne_Draw__FP12npc_ne_class */
#ifdef NONMATCHING
// matches with literals
static int daNpc_Ne_Draw(npc_ne_class* i_this) {
    if (daPy_py_c::linkGrabSubjectNoDraw(i_this)) {
        return 1;
    }
    
    J3DModel* model = i_this->mpMorf->getModel();
    if (i_this->mResName == "Npc_net") {
        if (!dComIfGs_wolfeye_effect_check()) {
            return 1;
        }
        g_env_light.settingTevStruct(4, &i_this->current.pos, &i_this->tevStr);
    } else {
        g_env_light.settingTevStruct(0, &i_this->current.pos, &i_this->tevStr);
    }
    g_env_light.setLightTevColorType_MAJI(model, &i_this->tevStr);

    i_this->mpBtkAnm->entry(model->getModelData());
    i_this->mpBtpAnm->entry(model->getModelData());
    i_this->mpMorf->entryDL();

    if (!fopAcM_checkCarryNow(i_this)) {
        cXyz vec(i_this->current.pos.x, i_this->current.pos.y + 100.0f, i_this->current.pos.z);
        i_this->mShadowKey = dComIfGd_setShadow(
            i_this->mShadowKey, 1, model, &vec, 400.0f, 0.0f, i_this->current.pos.y,
            i_this->mAcch.GetGroundH(), i_this->mAcch.m_gnd, &i_this->tevStr,
            0, 1.0f, dDlst_shadowControl_c::getSimpleTex()
        );
    }

    if (i_this->mBehavior == npc_ne_class::BHV_DISH) {
        g_env_light.setLightTevColorType_MAJI(i_this->mpDishMorf->getModel(), &i_this->tevStr);
        i_this->mpDishMorf->entryDL();
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daNpc_Ne_Draw(npc_ne_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/daNpc_Ne_Draw__FP12npc_ne_class.s"
}
#pragma pop
#endif

#ifndef NONMATCHING
/* 80A89160-80A8919C 000580 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cXyz::~cXyz() {
extern "C" asm void __dt__4cXyzFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/__dt__4cXyzFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80A9243C-80A92440 000020 0004+00 1/11 0/0 0/0 .rodata          @4183 */
SECTION_RODATA static f32 const lit_4183 = 50.0f;
COMPILER_STRIP_GATE(0x80A9243C, &lit_4183);

/* 80A8919C-80A89298 0005BC 00FC+00 3/3 0/0 0/0 .text other_bg_check__FP10fopAc_ac_cP10fopAc_ac_c
 */
#ifdef NONMATCHING
// matches with literals
static BOOL other_bg_check(fopAc_ac_c* i_this, fopAc_ac_c* i_actor) {
    dBgS_LinChk lin_chk;
    if (i_actor != NULL) {
        cXyz vec1, vec2;
        vec2 = i_actor->current.pos;
        vec2.y += 100.0f;
        vec1 = i_this->current.pos;
        vec1.y += 50.0f;
        lin_chk.Set(&vec1, &vec2, i_this);
        if (dComIfG_Bgsp().LineCross(&lin_chk)) {
            return true;
        } else {
            return false;
        }
    }
    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm BOOL other_bg_check(fopAc_ac_c* param_0, fopAc_ac_c* param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/other_bg_check__FP10fopAc_ac_cP10fopAc_ac_c.s"
}
#pragma pop
#endif

/* 80A89298-80A892D4 0006B8 003C+00 1/1 0/0 0/0 .text            ne_carry_check__FP12npc_ne_class */
static BOOL ne_carry_check(npc_ne_class* i_this) {
    if (i_this->mAction != npc_ne_class::ACT_CARRY && fopAcM_checkCarryNow(i_this)) {
        i_this->mAction = npc_ne_class::ACT_CARRY;
        i_this->mMode = 0;
        i_this->mNoFollow = false;
        return true;
    } else {
        return false;
    }
}

/* ############################################################################################## */
/* 80A92440-80A92444 000024 0004+00 0/5 0/0 0/0 .rodata          @4323 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4323 = 150.0f;
COMPILER_STRIP_GATE(0x80A92440, &lit_4323);
#pragma pop

/* 80A92444-80A92448 000028 0004+00 0/1 0/0 0/0 .rodata          @4324 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4324 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x80A92444, &lit_4324);
#pragma pop

/* 80A92448-80A9244C 00002C 0004+00 0/4 0/0 0/0 .rodata          @4325 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4325 = 250.0f;
COMPILER_STRIP_GATE(0x80A92448, &lit_4325);
#pragma pop

/* 80A9244C-80A92450 000030 0004+00 0/13 0/0 0/0 .rodata          @4326 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4326 = 200.0f;
COMPILER_STRIP_GATE(0x80A9244C, &lit_4326);
#pragma pop

/* 80A892D4-80A895F8 0006F4 0324+00 2/2 0/0 0/0 .text            way_bg_check__FP12npc_ne_classs */
#ifdef NONMATCHING
// matches with literals
static int way_bg_check(npc_ne_class* i_this, s16 i_angle) {
    fopAc_ac_c* _this = static_cast<fopAc_ac_c*>(i_this);
    dBgS_LinChk lin_chk;
    dBgS_GndChk gnd_chk;
    cM3dGPla plane;
    cXyz vec1, vec2, vec3;

    vec1 = _this->current.pos;
    vec1.y += 50.0f;
    mDoMtx_YrotS(*calc_mtx, _this->current.angle.y + i_angle);
    if (_this->current.angle.x < 0) {
        mDoMtx_XrotM(*calc_mtx, _this->current.angle.x);
    }
    vec3.set(0.0f, 0.0f, 150.0f);
    MtxPosition(&vec3, &vec2);
    vec2 += vec1;
    lin_chk.Set(&vec1, &vec2, _this);
    if (dComIfG_Bgsp().LineCross(&lin_chk)) {
        dComIfG_Bgsp().GetTriPla(lin_chk, &plane);
        if (plane.mNormal.y >= 0.8f) {
            return 1;
        }
    }
    
    mDoMtx_YrotS(*calc_mtx, _this->current.angle.y + i_angle);
    vec3.set(0.0f, 150.0f, 150.0f);
    MtxPosition(&vec3, &vec2);
    vec2 += _this->current.pos;
    vec1 = vec2;
    vec2.y -= 250.0f;
    lin_chk.Set(&vec1, &vec2, _this);
    if (!dComIfG_Bgsp().LineCross(&lin_chk)) {
        return 2;
    }

    dBgS_ObjGndChk_Spl gnd_chk_spl;
    vec2.y += 200.0f;
    gnd_chk.SetPos(&vec2);
    f32 cross1 = dComIfG_Bgsp().GroundCross(&gnd_chk);
    gnd_chk_spl.SetPos(&vec2);
    f32 cross2 = dComIfG_Bgsp().GroundCross(&gnd_chk_spl);
    if (cross2 > cross1 && fabsf(vec2.y - cross2) <= 200.0f) {
        return 3;
    } else {
        return 0;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int way_bg_check(npc_ne_class* param_0, s16 param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/way_bg_check__FP12npc_ne_classs.s"
}
#pragma pop
#endif

#ifndef NONMATCHING
/* 80A895F8-80A89640 000A18 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGPla::~cM3dGPla() {
extern "C" asm void __dt__8cM3dGPlaFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/__dt__8cM3dGPlaFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80A92450-80A92454 000034 0004+00 0/5 0/0 0/0 .rodata          @4351 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4351 = 3000.0f;
COMPILER_STRIP_GATE(0x80A92450, &lit_4351);
#pragma pop

/* 80A92454-80A92458 000038 0004+00 0/9 0/0 0/0 .rodata          @4352 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4352 = 10.0f;
COMPILER_STRIP_GATE(0x80A92454, &lit_4352);
#pragma pop

/* 80A89640-80A897C0 000A60 0180+00 1/1 0/0 0/0 .text            water_check__FP12npc_ne_classf */
#ifdef NONMATCHING
// matches with literals
static int water_check(npc_ne_class* i_this, f32 param_1) {
    dBgS_ObjGndChk_Spl gnd_chk_spl;
    dBgS_GndChk gnd_chk;
    dBgS_LinChk lin_chk;
    cXyz vec;
    vec.x = i_this->current.pos.x;
    vec.y = i_this->current.pos.y + 3000.0f;
    vec.z = i_this->current.pos.z;
    lin_chk.Set(&i_this->current.pos, &vec, i_this);
    if (dComIfG_Bgsp().LineCross(&lin_chk)) {
        vec.y = lin_chk.i_GetCross().y - 10.0f;
    }
    gnd_chk_spl.SetPos(&vec);
    i_this->mWaterY = dComIfG_Bgsp().GroundCross(&gnd_chk_spl);
    gnd_chk.SetPos(&vec);
    f32 cross = dComIfG_Bgsp().GroundCross(&gnd_chk);
    if (i_this->current.pos.y <= i_this->mWaterY
        && i_this->mWaterY - cross > param_1 * 2.0f * i_this->mBaseScale.z)
    {
        return 1;
    } else {
        return 0;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int water_check(npc_ne_class* param_0, f32 param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/water_check__FP12npc_ne_classf.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80A92458-80A9245C 00003C 0004+00 0/3 0/0 0/0 .rodata          @4376 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4376 = 25.0f;
COMPILER_STRIP_GATE(0x80A92458, &lit_4376);
#pragma pop

/* 80A9245C-80A92460 000040 0004+00 0/0 0/0 0/0 .rodata          @4377 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4377 = 60.0f;
COMPILER_STRIP_GATE(0x80A9245C, &lit_4377);
#pragma pop

/* 80A92460-80A92464 000044 0004+00 0/13 0/0 0/0 .rodata          @4378 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4378 = 5.0f;
COMPILER_STRIP_GATE(0x80A92460, &lit_4378);
#pragma pop

/* 80A92464-80A92468 000048 0004+00 0/2 0/0 0/0 .rodata          @4454 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4454 = -100.0f;
COMPILER_STRIP_GATE(0x80A92464, &lit_4454);
#pragma pop

/* 80A92468-80A9246C 00004C 0004+00 0/12 0/0 0/0 .rodata          @4455 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4455 = 20.0f;
COMPILER_STRIP_GATE(0x80A92468, &lit_4455);
#pragma pop

/* 80A897C0-80A899C0 000BE0 0200+00 1/1 0/0 0/0 .text            climb_angle_get__FP12npc_ne_class
 */
#ifdef NONMATCHING
// matches with literals
static s16 climb_angle_get(npc_ne_class* i_this) {
    dBgS_LinChk lin_chk;
    mDoMtx_YrotS(*calc_mtx, i_this->current.angle.y);
    mDoMtx_XrotM(*calc_mtx, i_this->current.angle.x);
    cXyz vec1, vec2, vec3;
    vec3.set(0.0f, 50.0f, 10.0f);
    MtxPosition(&vec3, &vec1);
    vec1 += i_this->current.pos;
    vec3.y = -100.0f;
    MtxPosition(&vec3, &vec2);
    vec2 += i_this->current.pos;
    lin_chk.Set(&vec1, &vec2, i_this);
    if (dComIfG_Bgsp().LineCross(&lin_chk)) {
        i_this->mClimbPos = lin_chk.i_GetCross();
        vec3.z = 20.0f;
        MtxPosition(&vec3, &vec2);
        vec2 += i_this->current.pos;
        lin_chk.Set(&vec1, &vec2, i_this);
        if (dComIfG_Bgsp().LineCross(&lin_chk)) {
            vec2 = lin_chk.i_GetCross();
            vec3 = vec2 - i_this->mClimbPos;
            return -cM_atan2s(vec3.y, JMAFastSqrt(vec3.x * vec3.x + vec3.z * vec3.z));
        }
        return 0;
    }
    return 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm s16 climb_angle_get(npc_ne_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/climb_angle_get__FP12npc_ne_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80A92A88-80A92A8C 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80A92A8C-80A92A90 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80A92A90-80A92A94 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 80A92A94-80A92A98 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80A92A98-80A92A9C 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80A92A9C-80A92AA0 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80A92AA0-80A92AA4 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 80A92AA4-80A92AA8 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80A92AA8-80A92AAC 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80A92AAC-80A92AB0 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80A92AB0-80A92AB4 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 80A92AB4-80A92AB8 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80A92AB8-80A92ABC 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 80A92ABC-80A92AC0 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80A92AC0-80A92AC4 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 80A92AC4-80A92AC8 -00001 0004+00 2/2 0/0 0/0 .bss             None */
/* 80A92AC4 0001+00 data_80A92AC4 @1009 */
/* 80A92AC5 0003+00 data_80A92AC5 None */
static u8 struct_80A92AC4;
static bool l_hioInit;

#ifdef NONMATCHING
/* 80A92AD4-80A92AF0 000054 001C+00 11/11 0/0 0/0 .bss             l_HIO */
static daNpc_Ne_HIO_c l_HIO;
#else
/* 80A92AC8-80A92AD4 000048 000C+00 1/1 0/0 0/0 .bss             @3985 */
static u8 lit_3985[12];

/* 80A92AD4-80A92AF0 000054 001C+00 11/11 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[28];
#endif

/* 80A92AF0-80A92B04 000070 0014+00 2/3 0/0 0/0 .bss             target_info */
static fopAc_ac_c* target_info[5];

/* 80A92B04-80A92B18 000084 0014+00 0/1 0/0 0/0 .bss             target_bgc */
#pragma push
#pragma force_active on
static BOOL target_bgc[5];
#pragma pop

/* 80A92B18-80A92B1C 000098 0004+00 2/3 0/0 0/0 .bss             target_info_count */
static int target_info_count;

/* 80A899C0-80A89A38 000DE0 0078+00 1/1 0/0 0/0 .text            s_bl_sub__FPvPv */
static void* s_bl_sub(void* i_proc, void* i_this) {
    if (fopAc_IsActor(i_proc)
        && (fopAcM_GetName(i_proc) == PROC_OBJ_FOOD || fopAcM_GetName(i_proc) == PROC_BD)
        && target_info_count < 5)
    {
        target_info[target_info_count] = static_cast<fopAc_ac_c*>(i_proc);
        target_info_count++;
    }
    return NULL;
}

/* 80A89A38-80A89AB0 000E58 0078+00 1/1 0/0 0/0 .text            s_ss_sub__FPvPv */
static void* s_ss_sub(void* i_proc, void* i_this) {
    if (fopAc_IsActor(i_proc)
        && (fopAcM_GetName(i_proc) == PROC_NI || fopAcM_GetName(i_proc) == PROC_BD)
        && target_info_count < 5)
    {
        target_info[target_info_count] = static_cast<fopAc_ac_c*>(i_proc);
        target_info_count++;
    }
    return NULL;
}

/* ############################################################################################## */
/* 80A9246C-80A92470 000050 0004+00 0/9 0/0 0/0 .rodata          @4571 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4571 = 30.0f;
COMPILER_STRIP_GATE(0x80A9246C, &lit_4571);
#pragma pop

/* 80A92470-80A92474 000054 0004+00 0/2 0/0 0/0 .rodata          @4572 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4572 = 2000.0f;
COMPILER_STRIP_GATE(0x80A92470, &lit_4572);
#pragma pop

/* 80A89AB0-80A89D28 000ED0 0278+00 3/3 0/0 0/0 .text            search_bird__FP12npc_ne_class */
#ifdef NONMATCHING
// matches with literals
static fopAc_ac_c* search_bird(npc_ne_class* i_this) {
    target_info_count = 0;
    for (int i = 0; i < 5; i++) {
        target_info[i] = NULL;
        target_bgc[i] = false;
    }

    if (i_this->mSearchBall) {
        fpcEx_Search(s_bl_sub, i_this);
    } else {
        fpcEx_Search(s_ss_sub, i_this);
    }

    f32 f = 200.0f;
    if (target_info_count != 0) {
        fopAc_ac_c* actor;
        int i = 0;
        while (i < target_info_count) {
            actor = target_info[i];
            cXyz eye_delta, delta;
            eye_delta.x = actor->current.pos.x - i_this->eyePos.x;
            eye_delta.y = actor->current.pos.y + 50.0f - i_this->eyePos.y;
            eye_delta.z = actor->current.pos.z - i_this->eyePos.z;
            delta.x = actor->current.pos.x - i_this->current.pos.x;
            delta.z = actor->current.pos.z - i_this->current.pos.z;
            f32 eye_dist = JMAFastSqrt(eye_delta.x * eye_delta.x + eye_delta.z * eye_delta.z);
            f32 dist = JMAFastSqrt(delta.x * delta.x + delta.z * delta.z);

            if (eye_dist < f && !(dist > i_this->mDistToTarget + 30.0f)) {
                if (target_bgc[i] || other_bg_check(i_this, actor)) {
                    target_bgc[i] = true;
                } else {
                    if (fabsf(actor->current.pos.y + 50.0f - i_this->eyePos.y) <= 100.0f) {
                        s16 angle = i_this->shape_angle.y - cM_atan2s(eye_delta.x, eye_delta.z);
                        if (angle < 0x4000 && angle > -0x4000) {
                            return actor;
                        }
                    }
                }
            }
            
            i++;
            if (i == target_info_count) {
                i = 0;
                f += 200.0f;
                if (f > 2000.0f) {
                    return NULL;
                }
            }
        }
    } else {
        return NULL;
    }
    return NULL;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm fopAc_ac_c* search_bird(npc_ne_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/search_bird__FP12npc_ne_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80A92474-80A92478 000058 0004+00 0/1 0/0 0/0 .rodata          @4635 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4635 = 1000.0f;
COMPILER_STRIP_GATE(0x80A92474, &lit_4635);
#pragma pop

/* 80A89D28-80A89EF4 001148 01CC+00 2/2 0/0 0/0 .text            way_check__FP12npc_ne_classs */
#ifdef NONMATCHING
// matches with literals
static BOOL way_check(npc_ne_class* i_this, s16 i_angleY) {
    fopAc_ac_c* _this = static_cast<fopAc_ac_c*>(i_this);
    f32 fvar1 = 1000.0f;
    cXyz vec1, vec2, vec3, vec4;
    vec2 = _this->current.pos;
    vec2.y += 20.0f;
    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 0x10; j++) {
            mDoMtx_YrotS(*calc_mtx, i_angleY);
            vec1.set(0.0f, 100.0f, fvar1);
            MtxPosition(&vec1, &vec3);
            vec3 += vec2;
            dBgS_LinChk lin_chk;
            lin_chk.Set(&vec2, &vec3, _this);
            if (dComIfG_Bgsp().LineCross(&lin_chk)) {
                i_angleY += 0x1000;
            } else {
                vec4.set(vec3.x, vec3.y - 250.0f, vec3.z);
                lin_chk.Set(&vec3, &vec4, _this);
                if (!dComIfG_Bgsp().LineCross(&lin_chk)) {
                    i_angleY += 0x1000;
                } else {
                    i_this->mTargetAngleY = i_angleY;
                    return true;
                }
            }
        }
        fvar1 -= 150.0f;
    }
    return false;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void way_check(npc_ne_class* param_0, s16 param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/way_check__FP12npc_ne_classs.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80A92478-80A9247C 00005C 0004+00 0/1 0/0 0/0 .rodata          @4677 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4677 = 13.0f / 10.0f;
COMPILER_STRIP_GATE(0x80A92478, &lit_4677);
#pragma pop

/* 80A9247C-80A92480 000060 0004+00 0/2 0/0 0/0 .rodata          @4678 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4678 = 65536.0f;
COMPILER_STRIP_GATE(0x80A9247C, &lit_4678);
#pragma pop

/* 80A92480-80A92484 000064 0004+00 0/8 0/0 0/0 .rodata          @4679 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4679 = 0.5f;
COMPILER_STRIP_GATE(0x80A92480, &lit_4679);
#pragma pop

/* 80A92484-80A92488 000068 0004+00 0/7 0/0 0/0 .rodata          @4680 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4680 = 500.0f;
COMPILER_STRIP_GATE(0x80A92484, &lit_4680);
#pragma pop

/* 80A92488-80A9248C 00006C 0004+00 0/6 0/0 0/0 .rodata          @4681 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4681 = 1.5f;
COMPILER_STRIP_GATE(0x80A92488, &lit_4681);
#pragma pop

/* 80A9248C-80A92490 000070 0004+00 0/8 0/0 0/0 .rodata          @4682 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4682 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80A9248C, &lit_4682);
#pragma pop

/* 80A92490-80A92494 000074 0004+00 0/13 0/0 0/0 .rodata          @4683 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4683 = 3.0f;
COMPILER_STRIP_GATE(0x80A92490, &lit_4683);
#pragma pop

/* 80A92494-80A92498 000078 0004+00 0/4 0/0 0/0 .rodata          @4684 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4684 = 350.0f;
COMPILER_STRIP_GATE(0x80A92494, &lit_4684);
#pragma pop

/* 80A89EF4-80A8A234 001314 0340+00 1/1 0/0 0/0 .text            npc_ne_wait__FP12npc_ne_class */
#ifdef NONMATCHING
// matches with literals
static void npc_ne_wait(npc_ne_class* i_this) {
    fopAc_ac_c* _this = static_cast<fopAc_ac_c*>(i_this);
    daPy_py_c* player = static_cast<daPy_py_c*>(dComIfGp_getPlayer(0));
    cLib_addCalc0(&_this->speedF, 1.0f, 1.3f);

    if (i_this->mResName == "Npc_net") {
        switch (i_this->mMode) {
        case 0:
            i_this->mTargetAngleY = cM_rndF(0x10000);
            // fallthrough

        case 1:
            if (cM_rndF(1.0f) < 0.5f) {
                if (i_this->mAnmID != npc_ne_class::ANM_WAIT) {
                    anm_init(i_this, npc_ne_class::ANM_WAIT, 20.0f, 2, 1.0f);
                }
            } else {
                if (i_this->mAnmID != npc_ne_class::ANM_SIT_B) {
                    anm_init(i_this, npc_ne_class::ANM_SIT_B, 20.0f, 0, 1.0f);
                }
            }
            i_this->mTimers[0] = cM_rndF(200.0f) + 500.0f;
            i_this->mMode = 2;
            break;

        case 2:
            if (i_this->mTimers[0] == 0) {
                i_this->mMode = 1;
            }
            break;
        }

        cLib_addCalcAngleS2(&_this->current.angle.y, i_this->mTargetAngleY, 4, 0x400);
        i_this->mMessageState = 2;
    } else {
        i_this->mLookMode = npc_ne_class::LOOK_PLAYER;
        s16 angle_diff;

        switch (i_this->mMode) {
        case 0:
            i_this->mAnmSpeed = 1.5f;
            anm_init(i_this, npc_ne_class::ANM_WALK, 2.0f, 2, i_this->mAnmSpeed);
            i_this->mMode++;
            if (cM_rndF(1.0f) < 0.5f) {
                i_this->mTargetAngleY = i_this->mAngleToPlayer + 0xB000;
            } else {
                i_this->mTargetAngleY = i_this->mAngleToPlayer + 0x5000;
            }
            // fallthrough

        case 1:
            cLib_addCalcAngleS2(&_this->current.angle.y, i_this->mTargetAngleY, 4, 0x400);
            angle_diff = _this->current.angle.y - i_this->mTargetAngleY;
            if (angle_diff < 0x200 && angle_diff > -0x200) {
                i_this->mAnmSpeed = cM_rndF(0.1f) + 0.5f;
                anm_init(i_this, npc_ne_class::ANM_WAIT, 3.0f, 2, i_this->mAnmSpeed);
                i_this->mMode++;
                i_this->mTimers[0] = cM_rndF(100.0f) + 200.0f;
            }
            break;

        case 2:
            angle_diff = _this->current.angle.y - i_this->mAngleToPlayer + 0x8000;
            if (angle_diff < 0x800 && angle_diff > -0x800) {
                i_this->mMode = 0;
            }
            if (i_this->mTimers[0] == 1) {
                i_this->mAnmSpeed = 1.0f;
                anm_init(i_this, npc_ne_class::ANM_SIT_B, 20.0f, 0, i_this->mAnmSpeed);
            }
            break;
        }

        if (!(i_this->mCounter & 0xf) && !other_bg_check(_this, player) &&
            (!i_this->mNoFollow || i_this->mDistToTarget < 350.0f))
        {
            i_this->mAction = npc_ne_class::ACT_AWAY;
            i_this->mMode = 0;
            i_this->mTimers[3] = 0;
            i_this->mTimers[2] = 0;
            i_this->mTimers[1] = 0;
            i_this->mTimers[0] = 0;
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void npc_ne_wait(npc_ne_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/npc_ne_wait__FP12npc_ne_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80A92498-80A9249C 00007C 0004+00 0/2 0/0 0/0 .rodata          @4771 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4771 = 4000.0f;
COMPILER_STRIP_GATE(0x80A92498, &lit_4771);
#pragma pop

/* 80A9249C-80A924A0 000080 0004+00 0/9 0/0 0/0 .rodata          @4772 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4772 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80A9249C, &lit_4772);
#pragma pop

/* 80A924A0-80A924A4 000084 0004+00 0/5 0/0 0/0 .rodata          @4773 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4773 = 40.0f;
COMPILER_STRIP_GATE(0x80A924A0, &lit_4773);
#pragma pop

/* 80A924A4-80A924A8 000088 0004+00 0/6 0/0 0/0 .rodata          @4774 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4774 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80A924A4, &lit_4774);
#pragma pop

/* 80A924A8-80A924AC 00008C 0004+00 0/3 0/0 0/0 .rodata          @4775 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4775 = 5000.0f;
COMPILER_STRIP_GATE(0x80A924A8, &lit_4775);
#pragma pop

/* 80A924AC-80A924B0 000090 0004+00 0/2 0/0 0/0 .rodata          @4776 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4776 = -0.5f;
COMPILER_STRIP_GATE(0x80A924AC, &lit_4776);
#pragma pop

/* 80A924B0-80A924B4 000094 0004+00 0/1 0/0 0/0 .rodata          @4777 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4777 = -4000.0f;
COMPILER_STRIP_GATE(0x80A924B0, &lit_4777);
#pragma pop

/* 80A924B4-80A924BC 000098 0004+04 0/2 0/0 0/0 .rodata          @4778 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4778[1 + 1 /* padding */] = {
    -5000.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80A924B4, &lit_4778);
#pragma pop

/* 80A924BC-80A924C4 0000A0 0008+00 0/4 0/0 0/0 .rodata          @4781 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4781[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A924BC, &lit_4781);
#pragma pop

/* 80A8A234-80A8A8F4 001654 06C0+00 1/1 0/0 0/0 .text            npc_ne_away__FP12npc_ne_class */
#ifdef NONMATCHING
// matches with literals
static void npc_ne_away(npc_ne_class* i_this) {
    if (!i_this->mNoFollow) {
        i_this->mAction = npc_ne_class::ACT_TAME;
        i_this->mMode = 0;
        return;
    }

    int ivar4;
    s16 max_angle_step = 0xa00;
    ivar4 = 0;
    switch (i_this->mMode) {
    case 0:
        i_this->mAnmSpeed = 1.0f;
        anm_init(i_this, npc_ne_class::ANM_WALK, 5.0f, 2, i_this->mAnmSpeed);
        i_this->mTargetAngleY = i_this->mAngleToPlayer + 0x8000 + (s16)cM_rndFX(4000.0f);
        way_check(i_this, i_this->mTargetAngleY);
        i_this->mMode++;
        i_this->mDistScale = cM_rndFX(0.2f) + 1.0f;
        // fallthrough

    case 1:
        max_angle_step = 0x200;
        if (i_this->mTimers[3] == 0) {
            i_this->mTimers[3] = cM_rndF(40.0f) + 40.0f;
            i_this->mLookNoMoveTimer = cM_rndF(20.0f) + 20.0f;
        }
        cLib_addCalc2(&i_this->mAnmSpeed, 2.0f, 1.0f, 0.05f);
        cLib_addCalc2(&i_this->speedF, i_this->mAnmSpeed * l_HIO.mWalkSpeed,
                      1.0f, l_HIO.mWalkSpeed * 0.2f);
        if (i_this->mDistToTarget > 500.0f) {
            i_this->mMode = 2;
            if (i_this->mTargetAngleY > (s16)(i_this->mAngleToPlayer + 0x8000)) {
                i_this->mTargetAngleY = i_this->mAngleToPlayer + 0xB000;
            } else {
                i_this->mTargetAngleY = i_this->mAngleToPlayer + 0x5000;
            }
            i_this->mTimers[0] = 20;
            i_this->mTimers[1] = 0;
        } else if (i_this->mDistToTarget < 200.0f) {
            i_this->mMode = 5;
            i_this->mTargetAngleY = i_this->mAngleToPlayer + 0x8000 + (s16)cM_rndFX(4000.0f);
            way_check(i_this, i_this->mTargetAngleY);
            i_this->mSound.startSound(Z2SE_CAT_CRY_ANNOY, 0, -1);
        } else {
            if (i_this->mTimers[1] == 0) {
                if (i_this->mCounter & 1) {
                    ivar4 = way_bg_check(i_this, 0);
                }
                if (ivar4 || i_this->mAcch.ChkWallHit() || !(i_this->mCounter & 0x1f)) {
                    i_this->mTargetAngleY =
                        i_this->mAngleToPlayer + 0x8000 + (s16)cM_rndFX(3000.0f);
                    way_check(i_this, i_this->mTargetAngleY);
                }
                if (i_this->mTimers[4] != 0) {
                    max_angle_step = 0x600;
                } else {
                    max_angle_step = 0x200;
                }
            } else {
                max_angle_step = 0x400;
            }
        }
        break;

    case 2:
        cLib_addCalc2(&i_this->mAnmSpeed, 2.0f, 1.0f, 0.05f);
        cLib_addCalc2(&i_this->speedF, i_this->mAnmSpeed * l_HIO.mWalkSpeed,
                      1.0f, l_HIO.mWalkSpeed * 0.2f);
        if (i_this->mTimers[1] == 0) {
            if (way_bg_check(i_this, 0) >= 2) {
                i_this->mTimers[1] = cM_rndF(20.0f) + 30.0f;
                i_this->mTargetAngleY = i_this->shape_angle.y + 0x8000 + (s16)cM_rndFX(5000.0f);
            }
            max_angle_step = 0x200;
        } else {
            max_angle_step = 0x400;
        }
        i_this->mLookMode = npc_ne_class::LOOK_PLAYER;
        if (i_this->mTimers[0] == 0) {
            i_this->mAction = npc_ne_class::ACT_WAIT;
            i_this->mAnmSpeed = cM_rndF(0.1f) + 0.5f;
            anm_init(i_this, npc_ne_class::ANM_WAIT, 3.0f, 2, i_this->mAnmSpeed);
            i_this->mMode = 2;
            i_this->mTimers[0] = cM_rndF(100.0f) + 200.0f;
        }
        break;

    case 5:
        i_this->mAnmSpeed = 1.0f;
        anm_init(i_this, npc_ne_class::ANM_RUN, 3.0f, 2, i_this->mAnmSpeed);
        i_this->mMode++;
        // fallthrough

    case 6:
        if (i_this->mTimers[3] == 0) {
            i_this->mTimers[3] = cM_rndF(20.0f) + 20.0f;
            i_this->mLookNoMoveTimer = cM_rndF(10.0f) + 10.0f;
        }
        cLib_addCalc2(&i_this->mAnmSpeed, 1.5f, 1.0f, 0.1f);
        cLib_addCalc2(&i_this->speedF, i_this->mAnmSpeed * l_HIO.mRunSpeed,
                      1.0f, l_HIO.mRunSpeed * 0.5f);
        if (i_this->mCounter & 1) {
            ivar4 = way_bg_check(i_this, 0);
        }
        if (ivar4 || i_this->mAcch.ChkWallHit() || !(i_this->mCounter & 0xf)) {
            i_this->mTargetAngleY = i_this->mAngleToPlayer + 0x8000 + (s16)cM_rndFX(4000.0f);
            way_check(i_this, i_this->mTargetAngleY);
        }
        if (i_this->mTimers[0] == 0) {
            i_this->mTargetAngleY += (s16)cM_rndFX(4000.0f);
            i_this->mTimers[0] = cM_rndF(25.0f) + 20.0f;
        }
        if (i_this->mDistToTarget > 400.0f && i_this->mTimers[2] == 0) {
            i_this->mAction = npc_ne_class::ACT_WAIT;
            i_this->mMode = 0;
        }
        break;
    }

    s16 prev_angle = i_this->current.angle.y;
    cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->mTargetAngleY, 4, max_angle_step);
    f32 ang_z = i_this->speedF * (i_this->current.angle.y - prev_angle) * -0.5f;
    if (ang_z > 4000.0f) {
        ang_z = 4000.0f;
    } else if (ang_z < -4000.0f) {
        ang_z = -4000.0f;
    }
    i_this->current.angle.z = ang_z;

    if (max_angle_step >= 0x400) {
        f32 ang_y = i_this->speedF * (i_this->current.angle.y - prev_angle) * 0.1f;
        if (ang_y > 5000.0f) {
            ang_y = 5000.0f;
        } else if (ang_y < -5000.0f) {
            ang_y = -5000.0f;
        }
        i_this->mBackboneTargetAngleY = ang_y;
    }
    
    i_this->mpMorf->setPlaySpeed(i_this->mAnmSpeed);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void npc_ne_away(npc_ne_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/npc_ne_away__FP12npc_ne_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80A924C4-80A924C8 0000A8 0004+00 0/2 0/0 0/0 .rodata          @4838 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4838 = -300.0f;
COMPILER_STRIP_GATE(0x80A924C4, &lit_4838);
#pragma pop

/* 80A924C8-80A924CC 0000AC 0004+00 0/2 0/0 0/0 .rodata          @4839 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4839 = 300.0f;
COMPILER_STRIP_GATE(0x80A924C8, &lit_4839);
#pragma pop

/* 80A8A8F4-80A8AAE8 001D14 01F4+00 1/1 0/0 0/0 .text            ground_search__FP12npc_ne_class */
#ifdef NONMATCHING
// matches with literals
static cXyz ground_search(npc_ne_class* i_this) {
    daPy_py_c* player = static_cast<daPy_py_c*>(dComIfGp_getPlayer(0));
    dBgS_ObjGndChk_Spl gnd_chk_spl;
    dBgS_GndChk gnd_chk;
    cXyz vec1, vec2;
    for (int i = 0; i <= 4; i++) {
        mDoMtx_YrotS(*calc_mtx, player->shape_angle.y);
        vec1.y = 100.0f;
        if (i == 0) {
            vec1.x = 0.0f;
            vec1.z = -300.0f;
        } else if (i == 1) {
            vec1.x = 300.0f;
            vec1.z = -100.0f;
        } else if (i == 2) {
            vec1.x = -300.0f;
            vec1.z = -100.0f;
        } else if (i == 3) {
            vec1.x = -300.0f;
            vec1.z = 100.0f;
        } else {
            vec1.x = -300.0f;
            vec1.z = 100.0f;
        }
        MtxPosition(&vec1, &vec2);
        vec2 += player->current.pos;
        gnd_chk.SetPos(&vec2);
        vec2.y = dComIfG_Bgsp().GroundCross(&gnd_chk);
        if (fabsf(vec2.y - player->current.pos.y) < 100.0f) {
            gnd_chk_spl.SetPos(&vec2);
            if (dComIfG_Bgsp().GroundCross(&gnd_chk_spl) < vec2.y) {
                return vec2;
            }
        }
    }
    return i_this->current.pos;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm cXyz ground_search(npc_ne_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/ground_search__FP12npc_ne_class.s"
}
#pragma pop
#endif

/* 80A8AAE8-80A8AB70 001F08 0088+00 1/1 0/0 0/0 .text            s_fish_sub__FPvPv */
static void* s_fish_sub(void* i_proc, void* i_this) {
    npc_ne_class* _this = static_cast<npc_ne_class*>(i_this);
    if (fopAc_IsActor(i_proc) && fopAcM_GetName(i_proc) == PROC_MG_FISH) {
        mg_fish_class* fish = static_cast<mg_fish_class*>(i_proc);
        if (fish->field_0x5b6 == 0x35 && fish->field_0x5b8 >= 10) {
            _this->mFishID = fopAcM_GetID(fish);
            return i_proc;
        }
    }
    return NULL;
}

/* ############################################################################################## */
/* 80A924CC-80A924D0 0000B0 0004+00 0/6 0/0 0/0 .rodata          @5004 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5004 = 4.0f;
COMPILER_STRIP_GATE(0x80A924CC, &lit_5004);
#pragma pop

/* 80A924D0-80A924D4 0000B4 0004+00 0/3 0/0 0/0 .rodata          @5005 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5005 = 3.5f;
COMPILER_STRIP_GATE(0x80A924D0, &lit_5005);
#pragma pop

/* 80A8AB70-80A8B530 001F90 09C0+00 2/1 0/0 0/0 .text            npc_ne_tame__FP12npc_ne_class */
#ifdef NONMATCHING
// matches with literals
static void npc_ne_tame(npc_ne_class* i_this) {
    fopAc_ac_c* _this = static_cast<fopAc_ac_c*>(i_this);
    if (i_this->mNoFollow) {
        i_this->mAction = npc_ne_class::ACT_AWAY;
        i_this->mMode = 0;
        i_this->mTimers[3] = 0;
        i_this->mTimers[2] = 0;
        i_this->mTimers[1] = 0;
        i_this->mTimers[0] = 0;
    } else {
        daPy_py_c* player = static_cast<daPy_py_c*>(dComIfGp_getPlayer(0));
        s16 angle_max_step = 0;
        i_this->mLookMode = npc_ne_class::LOOK_PLAYER;

        f32 dist1, dist2, dist3;
        if (i_this->mWantsFish) {
            dist1 = 250.0f;
            dist2 = 350.0f;
            dist3 = 150.0f;
        } else {
            dist1 = 200.0f;
            dist2 = 500.0f;
            dist3 = 0.0f;
        }

        int ivar7 = 0;
        s16 angle_diff;
        switch (i_this->mMode) {
            case 0:
                i_this->mAnmSpeed = 1.0f;
                anm_init(i_this, npc_ne_class::ANM_WALK, 5.0f, 2, i_this->mAnmSpeed);
                i_this->mMode++;
                i_this->mDistScale = cM_rndFX(0.2f) + 1.0f;
                // fallthrough

            case 1:
                i_this->mTargetAngleY = i_this->mAngleToPlayer;
                angle_max_step = 0x400;
                i_this->mTailTargetAngle = -15000;
                i_this->mTailSwayTarget = 3000.0f;
                if (i_this->mDistToTarget < dist1) {
                    cLib_addCalc2(&i_this->mAnmSpeed, 1.0f, 1.0f, 0.05f);
                    cLib_addCalc0(&_this->speedF, 1.0f, 2.5f);
                    if (_this->speedF < 4.0f) {
                        i_this->mTimers[0] = cM_rndF(100.0f) + 200.0f;
                        i_this->mMode = 2;
                        i_this->mTimers[1] = 30;
                    }
                } else if (i_this->mDistToTarget > dist2) {
                    i_this->mMode = 5;
                } else {
                    f32 target_anm_speed = (i_this->mDistToTarget - dist1) * 0.1f;
                    if (target_anm_speed > 3.5f) {
                        target_anm_speed = 3.5f;
                    }
                    if (target_anm_speed < 2.0f) {
                        target_anm_speed = 2.0f;
                    }
                    cLib_addCalc2(&i_this->mAnmSpeed, target_anm_speed, 1.0f, 0.1f);
                    cLib_addCalc2(&_this->speedF, i_this->mAnmSpeed * l_HIO.mWalkSpeed,
                                  1.0f, 0.2f * l_HIO.mWalkSpeed);
                }
                break;

            case 2:
                i_this->mTargetAngleY = i_this->mAngleToPlayer;
                angle_diff = _this->current.angle.y - i_this->mTargetAngleY;
                if (i_this->mTimers[1] != 0) {
                    if (angle_diff > 0x4000 || angle_diff < -0x4000) {
                        angle_max_step = 0x800;
                        if (i_this->mAnmID != npc_ne_class::ANM_WALK) {
                            anm_init(i_this, npc_ne_class::ANM_WALK, 3.0f, 2, 2.0f);
                        }
                    } else {
                        if (i_this->mAnmID != npc_ne_class::ANM_WAIT) {
                            i_this->mAnmSpeed = cM_rndF(0.1f) + 0.5f;
                            anm_init(i_this, npc_ne_class::ANM_WAIT, 5.0f, 2, i_this->mAnmSpeed);
                        }
                    }
                }

                if (i_this->mTimers[0] != 0) {
                    i_this->mTailTargetAngle = -15000;
                    i_this->mTailSwayTarget = 3000.0f;
                }

                if (i_this->mDistToTarget < dist3 ||
                                    (i_this->mTimers[3] == 0 && i_this->mAcch.ChkWallHit())) {
                    i_this->mMode = 7;
                    i_this->mTimers[3] = 30;
                } else if (i_this->mDistToTarget < dist3 + 30.0f) {
                    if (i_this->mTimers[2] == 0 && i_this->mTimers[1] == 0
                                    && angle_diff < 0x4000 && angle_diff > -0x4000
                                    && way_bg_check(i_this, 0x8000) == 0) {
                        i_this->mTimers[2] = cM_rndF(7.0f) + 15.0f;
                        anm_init(i_this, npc_ne_class::ANM_WALK, 3.0f, 2, -3.0f);
                        i_this->mAnmSpeed = -3.0f;
                    }
                } else if (i_this->mDistToTarget > dist1 + 50.0f) {
                    i_this->mMode = 0;
                }

                if (i_this->mTimers[2] != 0) {
                    if (i_this->mTimers[2] == 1) {
                        i_this->mAnmSpeed = cM_rndF(0.1f) + 0.5f;
                        anm_init(i_this, npc_ne_class::ANM_WAIT, 5.0f, 2, i_this->mAnmSpeed);
                    }
                    cLib_addCalc2(&_this->speedF, -3.5f, 1.0f, 1.0f);
                    angle_max_step = 0x400;
                } else {
                    cLib_addCalc0(&_this->speedF, 1.0f, 1.0f);
                }

                if (i_this->mTimers[0] == 1) {
                    i_this->mAnmSpeed = 1.0f;
                    anm_init(i_this, npc_ne_class::ANM_SIT_A, 20.0f, 0, i_this->mAnmSpeed);
                }
                break;

            case 5:
                i_this->mAnmSpeed = 1.0f;
                anm_init(i_this, npc_ne_class::ANM_RUN, 3.0f, 2, i_this->mAnmSpeed);
                i_this->mMode++;
                i_this->mSound.startSound(Z2SE_CAT_CRY_FAMILIER, 0, -1);
                // fallthrough
            
            case 6:
                i_this->mTargetAngleY = i_this->mAngleToPlayer;
                angle_max_step = 0xa00;
                cLib_addCalc2(&i_this->mAnmSpeed, 1.5f, 1.0f, 0.1f);
                cLib_addCalc2(&_this->speedF, i_this->mAnmSpeed * l_HIO.mRunSpeed,
                              1.0f, 0.5f * l_HIO.mRunSpeed);

                if (i_this->mDistToTarget < dist1 + 100.0f) {
                    i_this->mAnmSpeed = 3.5f;
                    anm_init(i_this, npc_ne_class::ANM_WALK, 2.0f, 2, i_this->mAnmSpeed);
                    i_this->mMode = 1;
                }
                break;
            
            case 7:
                i_this->mAnmSpeed = 1.0f;
                anm_init(i_this, npc_ne_class::ANM_RUN, 3.0f, 2, i_this->mAnmSpeed);
                i_this->mMode++;
                i_this->mSound.startSound(Z2SE_CAT_CRY_FAMILIER, 0, -1);
                i_this->mTargetAngleY = i_this->mAngleToPlayer + 0x8000;
                // fallthrough

            case 8:
                angle_max_step = 0xa00;
                cLib_addCalc2(&i_this->mAnmSpeed, 1.5f, 1.0f, 0.1f);
                cLib_addCalc2(&_this->speedF, i_this->mAnmSpeed * l_HIO.mRunSpeed,
                              1.0f, 0.5f * l_HIO.mRunSpeed);
                
                if (i_this->mCounter & 1) {
                    ivar7 = way_bg_check(i_this, 0);
                }
                if (ivar7 != 0 || i_this->mAcch.ChkWallHit() || !(i_this->mCounter & 0xf))
                {
                    i_this->mTargetAngleY =
                        i_this->mAngleToPlayer + 0x8000 + (s16)cM_rndFX(4000.0f);
                    way_check(i_this, i_this->mTargetAngleY);    
                }

                if (i_this->mDistToTarget > dist3 + 40.0f) {
                    i_this->mAnmSpeed = 3.5f;
                    anm_init(i_this, npc_ne_class::ANM_WALK, 2.0f, 2, i_this->mAnmSpeed);
                    i_this->mMode = 1;
                }
                break;
            
            case 10:
            case 11:
                i_this->mTargetAngleY = i_this->mAngleToPlayer;
                cLib_addCalc0(&_this->speedF, 1.0f, 3.0f);
                angle_diff = _this->current.angle.y - i_this->mTargetAngleY;
                
                if (i_this->mMode == 10) {
                    if (angle_diff > 0x400 || angle_diff < -0x400) {
                        i_this->mAnmSpeed = 1.0f;
                        anm_init(i_this, npc_ne_class::ANM_WALK, 5.0f, 2, i_this->mAnmSpeed);
                        i_this->mMode = 11;
                    }
                } else {
                    angle_max_step = 0x600;
                    i_this->mLookDownTimer = 0;
                    if (angle_diff <= 0x400 && angle_diff >= -0x400) {
                        i_this->mAnmSpeed = cM_rndF(0.1f) + 0.5f;
                        anm_init(i_this, npc_ne_class::ANM_WAIT, 5.0f, 2, i_this->mAnmSpeed);
                        i_this->mMode = 10;
                    }
                }

                if (i_this->mDistToTarget < dist3) {
                    i_this->mMode = 7;
                    i_this->mTimers[2] = 20;
                }
                break;
        }

        if (i_this->mMode < 7) {
            if (i_this->mTimers[2] == 0) {
                ivar7 = way_bg_check(i_this, 0);
                if (ivar7 != 0) {
                    if (ivar7 == -1) {
                        i_this->mAction = npc_ne_class::ACT_CLIMB;
                        i_this->mMode = 0;
                    } else {
                        i_this->mMode = 10;
                        i_this->mAnmSpeed = cM_rndF(0.1f) + 0.5f;
                        anm_init(i_this, npc_ne_class::ANM_WAIT, 5.0f, 2, i_this->mAnmSpeed);
                        if (ivar7 >= 2) {
                            i_this->mLookDownTimer = 30;
                        }
                    }
                }
            }
        } else if (i_this->mMode >= 10 && way_bg_check(i_this, 0) == 0) {
            i_this->mMode = 0;
        }

        s16 prev_angle_y = _this->current.angle.y;
        cLib_addCalcAngleS2(&_this->current.angle.y, i_this->mTargetAngleY, 4, angle_max_step);
        f32 angle = _this->speedF * (_this->current.angle.y - prev_angle_y) * -0.5f;
        if (angle > 4000.0f) {
            angle = 4000.0f;
        } else if (angle < -4000.0f) {
            angle = -4000.0f;
        }
        _this->current.angle.z = angle;

        if (angle_max_step > 0x600) {
            angle = _this->speedF * (_this->current.angle.y - prev_angle_y) * 0.1f;
            if (angle > 5000.0f) {
                angle = 5000.0f;
            } else if (angle < -5000.0f) {
                angle = -5000.0f;
            }
            i_this->mBackboneTargetAngleY = angle;
        }

        i_this->mpMorf->setPlaySpeed(i_this->mAnmSpeed);

        if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[470])) {
            if (fpcEx_Search(s_fish_sub, _this) != NULL) {
                i_this->mAction = npc_ne_class::ACT_HOME;
                i_this->mMode = 10;
            }
        }

        if ((i_this->mCounter & 0x1f) == 0xf && other_bg_check(_this, player)) {
            i_this->mAction = npc_ne_class::ACT_WAIT;
            i_this->mMode = 0;
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void npc_ne_tame(npc_ne_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/npc_ne_tame__FP12npc_ne_class.s"
}
#pragma pop
#endif

/* 80A8B530-80A8B61C 002950 00EC+00 1/1 0/0 0/0 .text            npc_ne_sanbasi__FP12npc_ne_class */
#ifdef NONMATCHING
// matches with literals
static void npc_ne_sanbasi(npc_ne_class* i_this) {
    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, npc_ne_class::ANM_WAIT, 5.0f, 2, 1.0f);
        i_this->mMode = 1;
        break;
    case 1:
        i_this->mLookDownTimer = 30;
    }

    if (i_this->mDistToTarget < 500.0f || !i_this->mNoFollow) {
        i_this->mAction = npc_ne_class::ACT_TAME;
        i_this->mMode = 0;
        i_this->mLookDownTimer = 0;
        if (!i_this->mNoFollow) {
            i_this->mSound.startSound(Z2SE_CAT_CRY_FAMILIER, 0, -1);
        }
        i_this->mTimers[4] = 100;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void npc_ne_sanbasi(npc_ne_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/npc_ne_sanbasi__FP12npc_ne_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80A924D4-80A924D8 0000B8 0004+00 0/2 0/0 0/0 .rodata          @5006 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5006 = 15.0f;
COMPILER_STRIP_GATE(0x80A924D4, &lit_5006);
#pragma pop

/* 80A924D8-80A924DC 0000BC 0004+00 0/0 0/0 0/0 .rodata          @5007 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5007 = 7.0f;
COMPILER_STRIP_GATE(0x80A924D8, &lit_5007);
#pragma pop

/* 80A924DC-80A924E0 0000C0 0004+00 0/0 0/0 0/0 .rodata          @5008 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5008 = -3.0f;
COMPILER_STRIP_GATE(0x80A924DC, &lit_5008);
#pragma pop

/* 80A924E0-80A924E4 0000C4 0004+00 0/0 0/0 0/0 .rodata          @5009 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5009 = -3.5f;
COMPILER_STRIP_GATE(0x80A924E0, &lit_5009);
#pragma pop

/* 80A924E4-80A924EC 0000C8 0008+00 0/7 0/0 0/0 .rodata          @5106 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5106[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A924E4, &lit_5106);
#pragma pop

/* 80A924EC-80A924F4 0000D0 0008+00 0/7 0/0 0/0 .rodata          @5107 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5107[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A924EC, &lit_5107);
#pragma pop

/* 80A924F4-80A924FC 0000D8 0008+00 0/7 0/0 0/0 .rodata          @5108 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5108[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A924F4, &lit_5108);
#pragma pop

/* 80A924FC-80A92500 0000E0 0004+00 0/2 0/0 0/0 .rodata          @5109 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5109 = 0.75f;
COMPILER_STRIP_GATE(0x80A924FC, &lit_5109);
#pragma pop

/* 80A8B61C-80A8BAFC 002A3C 04E0+00 1/1 0/0 0/0 .text            npc_ne_bird__FP12npc_ne_class */
#ifdef NONMATCHING
// matches with literals
static void npc_ne_bird(npc_ne_class* i_this) {
    fopAc_ac_c* bird = search_bird(i_this);
    if (bird == NULL) {
        i_this->mAction = npc_ne_class::ACT_WAIT;
        i_this->mMode = 0;
        return;
    }

    i_this->mTargetPos = bird->current.pos;
    cXyz delta = i_this->mTargetPos - i_this->current.pos;
    i_this->mTargetAngleY = cM_atan2s(delta.x, delta.z);
    i_this->mDistToTarget = delta.abs();

    s16 max_angle_step = 0;
    i_this->mLookMode = npc_ne_class::LOOK_TARGET;
    i_this->mLookTarget = i_this->mTargetPos;

    switch(i_this->mMode) {
    case 0:
        i_this->mAnmSpeed = 1.0f;
        anm_init(i_this, npc_ne_class::ANM_WALK, 5.0f, 2, i_this->mAnmSpeed);
        i_this->mMode++;
        i_this->mDistScale = cM_rndFX(0.2f) + 1.0f;
        // fallthrough
    
    case 1:
        max_angle_step = 0x400;
        i_this->mTailTargetAngle = -15000;
        i_this->mTailSwayTarget = 3000.0f;
        if (i_this->mDistToTarget < 200.0f) {
            cLib_addCalc2(&i_this->mAnmSpeed, 1.0f, 1.0f, 0.05f);
            cLib_addCalc0(&i_this->speedF, 1.0f, 2.5f);
            if (i_this->speedF < 1.0f) {
                i_this->mAnmSpeed = cM_rndF(0.1f) + 0.5f;
                anm_init(i_this, npc_ne_class::ANM_WAIT, 5.0f, 2, i_this->mAnmSpeed);
                i_this->mTimers[0] = cM_rndF(100.0f) + 200.0f;
                i_this->mTimers[1] = cM_rndF(20.0f) + 3.0f;
                i_this->mMode = 2;
            }
        } else if (i_this->mDistToTarget > 500.0f) {
            i_this->mMode = 5;
        } else {
            f32 target_anm_speed = (i_this->mDistToTarget - 200.0f) * 0.1f;
            if (target_anm_speed > 3.5f) {
                target_anm_speed = 3.5f;
            }
            if (target_anm_speed < 2.0f) {
                target_anm_speed = 2.0f;
            }
            cLib_addCalc2(&i_this->mAnmSpeed, target_anm_speed, 1.0f, 0.1f);
            cLib_addCalc2(&i_this->speedF, i_this->mAnmSpeed * l_HIO.mWalkSpeed,
                          1.0f, 0.2f * l_HIO.mWalkSpeed);
        }
        break;

    case 2:
        if (i_this->mTimers[0] != 0) {
            i_this->mTailTargetAngle = -15000;
            i_this->mTailSwayTarget = 3000.0f;
        }
        cLib_addCalc0(&i_this->speedF, 1.0f, 1.0f);
        if (i_this->mDistToTarget > 250.0f) {
            i_this->mMode = 0;
        }
        if (i_this->mTimers[1] == 1 && cM_rndF(1.0f) < 0.75f) {
            i_this->mAction = npc_ne_class::ACT_JUMP;
            i_this->mMode = 0;
        }
        if (i_this->mTimers[0] == 1) {
            i_this->mAnmSpeed = 1.0f;
            anm_init(i_this, npc_ne_class::ANM_SIT_A, 20.0f, 0, i_this->mAnmSpeed);
        }
        break;

    case 5:
        i_this->mAnmSpeed = 1.0f;
        anm_init(i_this, npc_ne_class::ANM_RUN, 3.0f, 2, i_this->mAnmSpeed);
        i_this->mMode++;
        // fallthrough

    case 6:
        max_angle_step = 0xa00;
        cLib_addCalc2(&i_this->mAnmSpeed, 1.5f, 1.0f, 0.1f);
        cLib_addCalc2(&i_this->speedF, i_this->mAnmSpeed * l_HIO.mRunSpeed,
                      1.0f, 0.5f * l_HIO.mRunSpeed);
        if (i_this->mDistToTarget < 350.0f) {
            i_this->mAnmSpeed = 3.5f;
            anm_init(i_this, npc_ne_class::ANM_WALK, 2.0f, 2, i_this->mAnmSpeed);
            i_this->mMode = 1;
        }
        break;
    }

    cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->mTargetAngleY, 4, max_angle_step);
    i_this->mpMorf->setPlaySpeed(i_this->mAnmSpeed);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void npc_ne_bird(npc_ne_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/npc_ne_bird__FP12npc_ne_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80A92500-80A92504 0000E4 0004+00 0/1 0/0 0/0 .rodata          @5211 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5211 = 7.0f / 20.0f;
COMPILER_STRIP_GATE(0x80A92500, &lit_5211);
#pragma pop

/* 80A92504-80A92508 0000E8 0004+00 0/1 0/0 0/0 .rodata          @5212 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5212 = 70.0f;
COMPILER_STRIP_GATE(0x80A92504, &lit_5212);
#pragma pop

/* 80A8BAFC-80A8C094 002F1C 0598+00 2/1 0/0 0/0 .text            npc_ne_ball__FP12npc_ne_class */
#ifdef NONMATCHING
// matches with literals
static void npc_ne_ball(npc_ne_class* i_this) {
    fopAc_ac_c* ball = search_bird(i_this);
    if (ball == NULL) {
        i_this->mAction = npc_ne_class::ACT_WAIT;
        i_this->mMode = 0;
        return;
    }

    i_this->mTargetPos = ball->current.pos;
    cXyz delta = i_this->mTargetPos - i_this->current.pos;
    i_this->mTargetAngleY = cM_atan2s(delta.x, delta.z);
    i_this->mDistToTarget = delta.abs();

    s16 max_angle_step = 0;
    i_this->mLookMode = npc_ne_class::LOOK_TARGET;
    i_this->mLookTarget = i_this->mTargetPos;

    switch (i_this->mMode) {
    case 0:
        i_this->mAnmSpeed = 1.0f;
        anm_init(i_this, npc_ne_class::ANM_WALK, 5.0f, 2, i_this->mAnmSpeed);
        i_this->mMode++;
        i_this->mDistScale = cM_rndFX(0.2f) + 1.0f;
        if (cM_rndF(1.0f) < 0.35f) {
            i_this->field_0x6d4 = 70.0f;
        } else {
            i_this->field_0x6d4 = 40.0f;
        }
        // fallthrough

    case 1:
        max_angle_step = 0x400;
        i_this->mTailTargetAngle = -15000;
        i_this->mTailSwayTarget = 3000.0f;
        if (i_this->mDistToTarget < i_this->field_0x6d4) {
            cLib_addCalc2(&i_this->mAnmSpeed, 1.0f, 1.0f, 0.05f);
            cLib_addCalc0(&i_this->speedF, 1.0f, 2.5f);
            if (i_this->speedF < 1.0f) {
                if (i_this->field_0x6d4 < 50.0f) {
                    i_this->mMode = 3;
                    if (cM_rndF(1.0f) < 0.5f) {
                        anm_init(i_this, npc_ne_class::ANM_FAWN_L, 10.0f, 0, 1.0f);
                    } else {
                        anm_init(i_this, npc_ne_class::ANM_FAWN_R, 10.0f, 0, 1.0f);
                    }
                } else {
                    i_this->mAnmSpeed = cM_rndF(0.1f) + 0.5f;
                    anm_init(i_this, npc_ne_class::ANM_WAIT, 5.0f, 2, i_this->mAnmSpeed);
                    i_this->mTimers[0] = cM_rndF(100.0f) + 200.0f;
                    i_this->mTimers[1] = cM_rndF(20.0f) + 3.0f;
                    i_this->mMode = 2;
                }
            }
        } else if (i_this->mDistToTarget > 200.0f) {
            i_this->mMode = 5;
        } else {
            f32 target_anm_speed = (i_this->mDistToTarget - 70.0f) * 0.1f;
            if (target_anm_speed > 3.5f) {
                target_anm_speed = 3.5f;
            }
            if (target_anm_speed < 2.0f) {
                target_anm_speed = 2.0f;
            }
            cLib_addCalc2(&i_this->mAnmSpeed, target_anm_speed, 1.0f, 0.1f);
            cLib_addCalc2(&i_this->speedF, i_this->mAnmSpeed * l_HIO.mWalkSpeed,
                          1.0f, 0.2f * l_HIO.mWalkSpeed);
        }
        break;

    case 2:
        i_this->mTailTargetAngle = -15000;
        i_this->mTailSwayTarget = 3000.0f;
        cLib_addCalc0(&i_this->speedF, 1.0f, 1.0f);
        if (i_this->mDistToTarget > 100.0f) {
            i_this->mMode = 0;
        }
        if (i_this->mTimers[1] == 1) {
            i_this->mAction = npc_ne_class::ACT_S_JUMP;
            i_this->mMode = 0;
        }
        break;

    case 3:
        i_this->mTailTargetAngle = -15000;
        i_this->mTailSwayTarget = 3000.0f;
        cLib_addCalc0(&i_this->speedF, 1.0f, 1.0f);
        if (i_this->mpMorf->isStop()) {
            i_this->mAction = npc_ne_class::ACT_WAIT;
            i_this->mMode = 0;
        }
        if (i_this->mpMorf->getFrame() >= 16.0f) {
            cLib_addCalc2(&i_this->field_0xbf4, 80.0f, 1.0f, 20.0f);
        }
        break;

    case 5:
        i_this->mAnmSpeed = 1.0f;
        anm_init(i_this, npc_ne_class::ANM_RUN, 3.0f, 2, i_this->mAnmSpeed);
        i_this->mMode++;
        // fallthrough

    case 6:
        max_angle_step = 0xa00;
        cLib_addCalc2(&i_this->mAnmSpeed, 1.5f, 1.0f, 0.1f);
        cLib_addCalc2(&i_this->speedF, i_this->mAnmSpeed * l_HIO.mRunSpeed,
                      1.0f, 0.5f * l_HIO.mRunSpeed);
        if (i_this->mDistToTarget < 150.0f) {
            i_this->mAnmSpeed = 3.5f;
            anm_init(i_this, npc_ne_class::ANM_WALK, 2.0f, 2, i_this->mAnmSpeed);
            i_this->mMode = 1;
        }
    }

    cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->mTargetAngleY, 4, max_angle_step);
    i_this->mpMorf->setPlaySpeed(i_this->mAnmSpeed);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void npc_ne_ball(npc_ne_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/npc_ne_ball__FP12npc_ne_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80A92508-80A9250C 0000EC 0004+00 0/0 0/0 0/0 .rodata          @5213 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5213 = 16.0f;
COMPILER_STRIP_GATE(0x80A92508, &lit_5213);
#pragma pop

/* 80A9250C-80A92510 0000F0 0004+00 0/0 0/0 0/0 .rodata          @5214 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5214 = 80.0f;
COMPILER_STRIP_GATE(0x80A9250C, &lit_5214);
#pragma pop

/* 80A92510-80A92514 0000F4 0004+00 0/1 0/0 0/0 .rodata          @5297 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5297 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x80A92510, &lit_5297);
#pragma pop

/* 80A92514-80A92518 0000F8 0004+00 0/1 0/0 0/0 .rodata          @5298 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5298 = 37.0f / 5.0f;
COMPILER_STRIP_GATE(0x80A92514, &lit_5298);
#pragma pop

/* 80A8C094-80A8C508 0034B4 0474+00 1/1 0/0 0/0 .text            npc_ne_pathwalk__FP12npc_ne_class
 */
#ifdef NONMATCHING
// matches with literals
static void npc_ne_pathwalk(npc_ne_class* i_this) {
    switch (i_this->mMode) {
    case 0:
        i_this->mAnmSpeed = 1.5f;
        anm_init(i_this, npc_ne_class::ANM_WALK, 2.0f, 2, i_this->mAnmSpeed);
        i_this->mMode = 1;
        // fallthrough

    case 1:
        i_this->mPathPointNo += i_this->mPathDir;
        if (i_this->mPathPointNo >= (i_this->mpPath->m_num & 0xff)) {
            if (dPath_ChkClose(i_this->mpPath)) {
                i_this->mPathPointNo = 0;
            } else {
                i_this->mPathDir = -1;
                i_this->mPathPointNo = i_this->mpPath->m_num - 2;
            }
        } else if (i_this->mPathPointNo < 0) {
            i_this->mPathDir = 1;
            i_this->mPathPointNo = 1;
        }
        dStage_dPnt_c* point = i_this->mpPath->m_points;
        point += i_this->mPathPointNo;
        i_this->mTargetPos.x = point->m_position.x + cM_rndFX(50.0f);
        i_this->mTargetPos.y = point->m_position.y;
        i_this->mTargetPos.z = point->m_position.z + cM_rndFX(50.0f);
        i_this->mMode = 2;
        i_this->mAngleYStep = 0.0f;
        break;

    case 2:
        i_this->mLookTarget = i_this->mTargetPos;
        cXyz delta = i_this->mTargetPos - i_this->current.pos;
        if (delta.abs() < i_this->speedF * 10.0f) {
            i_this->mMode = 1;
        }
        i_this->mTargetAngleY = cM_atan2s(delta.x, delta.z);
        break;
    }

    if (i_this->mAnmID == npc_ne_class::ANM_WALK) {
        f32 target_speed;
        if (i_this->mDistToTarget < 300.0f) {
            target_speed = 3.0f;
            if (i_this->mTimers[3] == 0) {
                i_this->mTimers[3] = cM_rndF(40.0f) + 40.0f;
                i_this->mLookNoMoveTimer = cM_rndF(20.0f) + 20.0f;
            }
        } else {
            target_speed = 1.5f;
            i_this->mLookMode = npc_ne_class::LOOK_TARGET;
        }
        cLib_addCalc2(&i_this->mAnmSpeed, target_speed, 1.0f, 0.05f);
        cLib_addCalc2(&i_this->speedF, i_this->mAnmSpeed * l_HIO.mWalkSpeed * 0.9f,
                      1.0f, 0.2f * l_HIO.mWalkSpeed);
        i_this->mpMorf->setPlaySpeed(i_this->mAnmSpeed);
        if (i_this->mDistToTarget < 100.0f && i_this->speedF > 7.4f) {
            i_this->mAnmSpeed = 1.0f;
            anm_init(i_this, npc_ne_class::ANM_RUN, 3.0f, 2, i_this->mAnmSpeed);
        }
    } else {
        cLib_addCalc2(&i_this->mAnmSpeed, 1.5f, 1.0f, 0.1f);
        cLib_addCalc2(&i_this->speedF, i_this->mAnmSpeed * l_HIO.mRunSpeed,
                      1.0f, 0.5f * l_HIO.mRunSpeed);
        if (i_this->mDistToTarget > 300.0f) {
            i_this->mAnmSpeed = 3.0f;
            anm_init(i_this, npc_ne_class::ANM_WALK, 2.0f, 2, i_this->mAnmSpeed);
        }
    }
    cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->mTargetAngleY,
                        8, i_this->mAngleYStep * i_this->speedF);
    cLib_addCalc2(&i_this->mAngleYStep, 150.0f, 1.0f, 30.0f);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void npc_ne_pathwalk(npc_ne_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/npc_ne_pathwalk__FP12npc_ne_class.s"
}
#pragma pop
#endif

/* 80A8C508-80A8C748 003928 0240+00 1/1 0/0 0/0 .text            npc_ne_jump__FP12npc_ne_class */
#ifdef NONMATCHING
// matches with literals
static void npc_ne_jump(npc_ne_class* i_this) {
    int frame = i_this->mpMorf->getFrame();
    f32 target_speed = 0.0f;
    f32 max_speed_step = 3.0f;

    switch (i_this->mMode) {
    case 0:
        i_this->mAnmSpeed = 1.0f;
        anm_init(i_this, npc_ne_class::ANM_TO_JUMP, 5.0f, 0, 1.0f);
        i_this->mMode++;
        break;

    case 1:
        cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->mTargetAngleY, 4, 0x1000);
        if (i_this->mpMorf->isStop()) {
            anm_init(i_this, npc_ne_class::ANM_JUMP_LOOP, 2.0f, 0, 1.0f);
            i_this->mMode++;
            i_this->mSound.startSound(Z2SE_CAT_CRY_ATTACK, 0, -1);
        }
        break;

    case 2:
        target_speed = 2.0f;
        max_speed_step = 2.0f;
        if (frame >= 1) {
            if (frame < 10) {
                target_speed = 25.0f;
                max_speed_step = 25.0f;
                i_this->mAtEnable = 1;
                i_this->mAtSph.OffAtVsPlayerBit();
            } else {
                target_speed = 0.0f;
                max_speed_step = 4.0f;
            }
        }
        if (i_this->mpMorf->isStop()) {
            anm_init(i_this, npc_ne_class::ANM_TO_WAIT, 2.0f, 0, 1.0f);
            i_this->mMode++;
        }
        break;

    case 3:
        if (i_this->mpMorf->isStop()) {
            i_this->mAction = npc_ne_class::ACT_WAIT;
            i_this->mMode = 0;
        }
        break;
    }

    cLib_addCalc2(&i_this->speedF, target_speed, 1.0f, max_speed_step);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void npc_ne_jump(npc_ne_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/npc_ne_jump__FP12npc_ne_class.s"
}
#pragma pop
#endif

/* 80A8C748-80A8C8F8 003B68 01B0+00 1/1 0/0 0/0 .text            npc_ne_s_jump__FP12npc_ne_class */
#ifdef NONMATCHING
// matches with literals
static void npc_ne_s_jump(npc_ne_class* i_this) {
    int frame = i_this->mpMorf->getFrame();
    f32 target_speed = 0.0f;
    f32 max_speed_step = 3.0f;

    switch (i_this->mMode) {
    case 0:
        i_this->mAnmSpeed = 1.0f;
        anm_init(i_this, npc_ne_class::ANM_TO_JUMP, 3.0f, 0, 1.5f);
        i_this->mMode++;
        break;

    case 1:
        cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->mTargetAngleY, 2, 0x2000);
        if (frame >= 3) {
            anm_init(i_this, npc_ne_class::ANM_JUMP_START, 2.0f, 0, 1.0f);
            i_this->mMode++;
        }
        break;

    case 2:
        if (frame >= 1) {
            target_speed = 20.0f;
            max_speed_step = 20.0f;
        } else {
            target_speed = 2.0f;
            max_speed_step = 2.0f;
        }
        if (frame >= 3) {
            anm_init(i_this, npc_ne_class::ANM_JUMP_END, 3.0f, 0, 1.0f);
            i_this->mpMorf->setFrame(4.0f);
            i_this->mMode++;
        }
        break;

    case 3:
        if (i_this->mpMorf->isStop()) {
            i_this->mAction = npc_ne_class::ACT_WAIT;
            i_this->mMode = 0;
        }
        break;
    }

    cLib_addCalc2(&i_this->speedF, target_speed, 1.0f, max_speed_step);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void npc_ne_s_jump(npc_ne_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/npc_ne_s_jump__FP12npc_ne_class.s"
}
#pragma pop
#endif

/* 80A8C8F8-80A8CA20 003D18 0128+00 1/1 0/0 0/0 .text            npc_ne_roof__FP12npc_ne_class */
#ifdef NONMATCHING
// matches with literals
static void npc_ne_roof(npc_ne_class* i_this) {
    i_this->mCcDisableTimer = 5;
    i_this->mLookMode = npc_ne_class::LOOK_PLAYER;

    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, npc_ne_class::ANM_WAIT, 5.0f, 2, 1.0f);
        i_this->mMode = 1;
        i_this->mTimers[0] = cM_rndF(100.0f) + 200.0f;
        break;

    case 1:
        if (i_this->mTimers[0] == 1) {
            anm_init(i_this, npc_ne_class::ANM_SIT_B, 20.0f, 0, 1.0f);
        }
        if (i_this->mDistToTarget < 500.0f) {
            i_this->mMode = 0;
        }
        break;
    }

    if (i_this->mDistToTarget < 200.0f) {
        i_this->mAction = npc_ne_class::ACT_HOME;
        i_this->mMode = 0;
        i_this->mSound.startSound(Z2SE_CAT_CRY_ANNOY, 0, -1);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void npc_ne_roof(npc_ne_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/npc_ne_roof__FP12npc_ne_class.s"
}
#pragma pop
#endif

/* 80A8CA20-80A8CC64 003E40 0244+00 1/1 0/0 0/0 .text            home_path_search__FP12npc_ne_classi
 */
#ifdef NONMATCHING
// matches with literals
static int home_path_search(npc_ne_class* i_this, int param_1) {
    f32 max_dist = 100.0f;
    BOOL local_1c0[100];
    for (int i = 0; i < 100; i++) {
        local_1c0[i] = false;
    }

    for (int i = 0; i < 100; i++) {
        if (home_path[i].mNo >= 0) {
            if (home_path[i].mNo >= param_1
                && (i_this->mHomePathIdx == 1000
                    || home_path[i_this->mHomePathIdx].mNo == home_path[i].mNo + 1)
                && !local_1c0[i])
            {
                cXyz delta, pos;
                pos = home_path[i].mPosition;
                delta = i_this->current.pos - pos;
                if (delta.abs() < max_dist) {
                    return i;
                }
            }
        } else {
            i = -1;
            max_dist += 100.0f;
            if (max_dist > 2000.0f) {
                return -1;
            }
        }
    }

    return -1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int home_path_search(npc_ne_class* param_0, int param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/home_path_search__FP12npc_ne_classi.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80A92518-80A9251C 0000FC 0004+00 0/3 0/0 0/0 .rodata          @5653 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5653 = 10000.0f;
COMPILER_STRIP_GATE(0x80A92518, &lit_5653);
#pragma pop

/* 80A9251C-80A92520 000100 0004+00 0/1 0/0 0/0 .rodata          @5654 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5654 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x80A9251C, &lit_5654);
#pragma pop

/* 80A92520-80A92524 000104 0004+00 0/1 0/0 0/0 .rodata          @5655 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5655 = 236.0f;
COMPILER_STRIP_GATE(0x80A92520, &lit_5655);
#pragma pop

/* 80A92524-80A92528 000108 0004+00 0/1 0/0 0/0 .rodata          @5656 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5656 = 0x42BA999A;
COMPILER_STRIP_GATE(0x80A92524, &lit_5656);
#pragma pop

/* 80A92528-80A9252C 00010C 0004+00 0/1 0/0 0/0 .rodata          @5657 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5657 = -777.5f;
COMPILER_STRIP_GATE(0x80A92528, &lit_5657);
#pragma pop

/* 80A925D0-80A925D0 0001B4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A925D8 = " PN %d";
#pragma pop

/* 80A8CC64-80A8D608 004084 09A4+00 2/1 0/0 0/0 .text            npc_ne_home__FP12npc_ne_class */
#ifdef NONMATCHING
// matches with literals
static BOOL npc_ne_home(npc_ne_class* i_this) {
    BOOL ret = true;
    i_this->mCcDisableTimer = 10;
    int frame = i_this->mpMorf->getFrame();
    f32 target_speed = 0.0f;
    f32 max_speed_step = 4.0f;
    cXyz vec;
    f32 dist_xz;
    s16 angle;

    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, npc_ne_class::ANM_RUN, 3.0f, 2, 1.5f);
        i_this->mMode = 1;
        i_this->mHomePathIdx = 1000;
        i_this->mAngleYStep = 10000.0f;
        i_this->mTimers[0] = 0;
        // fallthrough

    case 1:
        i_this->mHomePathIdx = home_path_search(i_this, 0);
        if (i_this->mHomePathIdx < 0) {
            i_this->mAction = npc_ne_class::ACT_TAME;
            i_this->mMode = 0;
            return true;
        }
        if (i_this->mDemoMode == 0) {
            i_this->mDemoMode = 1;
        }
        i_this->mMode = 2;
        // fallthrough

    case 2:
        target_speed = l_HIO.mRunSpeed * 1.5f;
        vec.x = home_path[i_this->mHomePathIdx].mPosition.x;
        vec.y = home_path[i_this->mHomePathIdx].mPosition.y;
        vec.z = home_path[i_this->mHomePathIdx].mPosition.z;
        vec -= i_this->current.pos;
        i_this->mTargetAngleY = cM_atan2s(vec.x, vec.z);
        dist_xz = JMAFastSqrt(vec.x * vec.x + vec.z * vec.z);
        if (dist_xz <= target_speed * 1.2f) {
            if (i_this->mHomePathIdx == 1) {
                i_this->mMode = 20;
                i_this->mDemoMode = 3;
                i_this->mDemoCounter = 0;
                i_this->current.pos.set(236.0f, 93.3f, -777.5f);
                i_this->current.angle.y = 0x5f94;
                i_this->mSound.startSound(Z2SE_CAT_CRY_CARRY, 0, -1);
            } else if (i_this->mHomePathIdx == 5 || i_this->mHomePathIdx == 4) {
                i_this->mMode = 3;
                i_this->speedF = 0.0f;
                if (i_this->mHomePathIdx == 5) {
                    i_this->mTimers[1] = 8;
                } else {
                    i_this->mTimers[1] = 12;
                }
                anm_init(i_this, npc_ne_class::ANM_TO_JUMP, 2.0f, 0, 1.0f);
            } else {
                i_this->mMode = 1;
                i_this->mAngleYStep = 5000.0f;
            }
        }
        if (i_this->mAcch.ChkWallHit()) {
            i_this->mTimers[0] += 2;
        }
        if (i_this->mTimers[0] > 30) {
            i_this->mAction = npc_ne_class::ACT_TAME;
            i_this->mMode = 0;
        }
        break;

    case 3:
        i_this->speedF = 0.0f;
        if (i_this->mTimers[1] == 0) {
            i_this->mMode = 4;
            anm_init(i_this, npc_ne_class::ANM_JUMP_LOOP, 2.0f, 0, 1.0f);
            i_this->mTimers[1] = 6;
        }
        break;

    case 4:
        i_this->current.angle.x = 0x3000;
        target_speed = l_HIO.mRunSpeed;
        if (i_this->mTimers[1] == 0 && i_this->mAcch.i_ChkGroundHit()) {
            i_this->mMode = 1;
            anm_init(i_this, npc_ne_class::ANM_RUN, 2.0f, 2, 1.5f);
        }
        break;

    case 10:
        i_this->mHomePathIdx = 1000;
        i_this->mAngleYStep = 5000.0f;
        i_this->mHomePathIdx = home_path_search(i_this, 3);
        i_this->current.pos.x = home_path[i_this->mHomePathIdx].mPosition.x;
        i_this->current.pos.y = home_path[i_this->mHomePathIdx].mPosition.y;
        i_this->current.pos.z = home_path[i_this->mHomePathIdx].mPosition.z;
        i_this->old.pos = i_this->current.pos;
        anm_init(i_this, npc_ne_class::ANM_TO_JUMP, 5.0f, 0, 1.0f);
        i_this->mMode = 11;
        i_this->mHomePathIdx = home_path_search(i_this, 0);
        vec.x = home_path[i_this->mHomePathIdx].mPosition.x;
        vec.y = home_path[i_this->mHomePathIdx].mPosition.y;
        vec.z = home_path[i_this->mHomePathIdx].mPosition.z;
        vec -= i_this->current.pos;
        angle = cM_atan2s(vec.x, vec.z);
        i_this->shape_angle.y = angle;
        i_this->current.angle.y = angle;
        i_this->mTargetAngleY = angle;
        i_this->mDemoMode = 10;
        i_this->mTimers[0] = 30;
        i_this->mSound.startSound(Z2SE_CAT_CRY_ANNOY_D, 0, -1);
        // fallthrough

    case 11:
        i_this->mNeckAngleY = cM_ssin(g_Counter.mTimer * 5000) * 500.0f;
        if (i_this->mTimers[0] == 0 && i_this->mpMorf->isStop()) {
            anm_init(i_this, npc_ne_class::ANM_JUMP_LOOP, 2.0f, 0, 1.0f);
            i_this->mSound.startSound(Z2SE_CAT_CRY_ATTACK_D, 0, -1);
            i_this->mMode = 12;
        }
        break;

    case 12:
        target_speed = 2.0f;
        max_speed_step = 2.0f;
        if (frame >= 1) {
            if (frame < 10) {
                target_speed = 20.0f;
                max_speed_step = 20.0f;
            } else {
                target_speed = 0.0f;
                max_speed_step = 4.0f;
            }
        }
        if (i_this->mpMorf->isStop()) {
            anm_init(i_this, npc_ne_class::ANM_RUN, 3.0f, 2, 1.5f);
            i_this->mMode = 13;
        }
        break;

    case 13:
        i_this->mHomePathIdx = home_path_search(i_this, 0);
        if (i_this->mHomePathIdx < 0) {
            i_this->mAction = npc_ne_class::ACT_TAME;
            i_this->mMode = 0;
            i_this->mDemoMode = 99;
            return true;
        }
        i_this->mMode = 14;
        // fallthrough

    case 14:
        target_speed = l_HIO.mRunSpeed * 1.5f;
        vec.x = home_path[i_this->mHomePathIdx].mPosition.x;
        vec.y = home_path[i_this->mHomePathIdx].mPosition.y;
        vec.z = home_path[i_this->mHomePathIdx].mPosition.z;
        vec -= i_this->current.pos;
        i_this->mTargetAngleY = cM_atan2s(vec.x, vec.z);
        dist_xz = JMAFastSqrt(vec.x * vec.x + vec.z * vec.z);
        if (dist_xz <= 70.0f) {
            if (i_this->mHomePathIdx == 1) {
                i_this->mMode = 20;
                i_this->mDemoMode = 3;
                i_this->mDemoCounter = 0;
                i_this->current.pos.set(236.0f, 93.3f, -777.5f);
                i_this->current.angle.y = 0x5f94;
                i_this->mAngleYStep = 5000.0f;
                dComIfGs_onEventBit(0x1001);
            } else {
                i_this->mMode = 13;
                i_this->mAngleYStep = 0.0f;
                JUTReport(200, 150, " PN %d", home_path[i_this->mHomePathIdx].mNo);
                if (home_path[i_this->mHomePathIdx].mNo >= 4 && i_this->mDemoCounter > 0xa0) {
                    i_this->mHomePathIdx = home_path_search(i_this, 0);
                    i_this->current.pos.x = home_path[i_this->mHomePathIdx].mPosition.x;
                    i_this->current.pos.y = home_path[i_this->mHomePathIdx].mPosition.y;
                    i_this->current.pos.z = home_path[i_this->mHomePathIdx].mPosition.z;
                    i_this->old.pos = i_this->current.pos;
                    i_this->field_0xcb4 = true;
                    i_this->mDemoCounter = 122;
                }
            }
        }
        if (i_this->mAcch.ChkWallHit()) {
            i_this->mTimers[0] += 2;
        }
        if (i_this->mTimers[0] > 30) {
            i_this->mDemoMode = 99;
        }
        break;

    case 20:
        target_speed = l_HIO.mRunSpeed * 1.5f;
        ret = false;
        i_this->speed.y = 0.0f;
        i_this->gravity = 0.0f;
        vec.x = home_path[0].mPosition.x;
        vec.z = home_path[0].mPosition.z;
        vec -= i_this->current.pos;
        i_this->mTargetAngleY = cM_atan2s(vec.x, vec.z);
        i_this->mAngleYStep = 5000.0f;
        break;
    }

    cLib_addCalc2(&i_this->speedF, target_speed, 1.0f, max_speed_step);
    s16 prev_ang_y = i_this->current.angle.y;
    cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->mTargetAngleY, 2, i_this->mAngleYStep);
    cLib_addCalc2(&i_this->mAngleYStep, 5000.0f, 1.0f, 200.0f);
    
    f32 ang_z = i_this->speedF * (i_this->current.angle.y - prev_ang_y) * -0.5f;
    if (ang_z > 4000.0f) {
        ang_z = 4000.0f;
    } else if (ang_z < -4000.0f) {
        ang_z = -4000.0f;
    }
    i_this->current.angle.z = ang_z;
    
    if (i_this->mAngleYStep > 1000.0f) {
        f32 ang_y = i_this->speedF * (i_this->current.angle.y - prev_ang_y) * 0.1f;
        if (ang_y > 5000.0f) {
            ang_y = 5000.0f;
        } else if (ang_y < -5000.0f) {
            ang_y = -5000.0f;
        }
        i_this->mBackboneTargetAngleY = ang_y;
    }

    return ret;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int npc_ne_home(npc_ne_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/npc_ne_home__FP12npc_ne_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80A9252C-80A92530 000110 0004+00 0/2 0/0 0/0 .rodata          @5718 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5718 = -50.0f;
COMPILER_STRIP_GATE(0x80A9252C, &lit_5718);
#pragma pop

/* 80A8D608-80A8D7C4 004A28 01BC+00 2/2 0/0 0/0 .text            wall_angle_get__FP12npc_ne_class */
#ifdef NONMATCHING
// matches with literals
static s16 wall_angle_get(npc_ne_class* i_this) {
    fopAc_ac_c* _this = static_cast<fopAc_ac_c*>(i_this);
    dBgS_LinChk lin_chk;
    mDoMtx_YrotS(*calc_mtx, _this->shape_angle.y);
    cXyz vec1, vec2, vec3[2];
    vec1.set(0.0f, 50.0f, -50.0f);
    MtxPosition(&vec1, &vec2);
    vec2 += _this->current.pos;
    vec1.set(5.0f, 0.0f, 200.0f);
    for (int i = 0; i < 2; i++) {
        MtxPosition(&vec1, &vec3[i]);
        vec1.x *= -1.0f;
        vec3[i] += vec2;
        lin_chk.Set(&vec2, &vec3[i], _this);
        if (dComIfG_Bgsp().LineCross(&lin_chk)) {
            i_this->mClimbPos = lin_chk.i_GetCross();
            vec3[i] = lin_chk.i_GetCross();
        } else {
            return 1;
        }
    }
    vec1 = vec3[1] - vec3[0];
    return cM_atan2s(vec1.x, vec1.z) + 0x4000;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm s16 wall_angle_get(npc_ne_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/wall_angle_get__FP12npc_ne_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80A925D0-80A925D0 0001B4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A925DF = "F_SP103";
#pragma pop

/* 80A8D7C4-80A8DD54 004BE4 0590+00 1/1 0/0 0/0 .text            search_ground_1__FP12npc_ne_class
 */
#ifdef NONMATCHING
// matches with literals
static void search_ground_1(npc_ne_class* i_this) {
    fopAc_ac_c* _this = static_cast<fopAc_ac_c*>(i_this);
    dBgS_LinChk lin_chk;
    cXyz pos[16];
    cXyz vec1, vec2, vec3;
    s16 ang_y = _this->shape_angle.y;
    f32 var_y, var_z;
    if (!strcmp(dComIfGp_getStartStageName(), "F_SP103")) {
        var_y = 200.0f;
        var_z = 100.0f;
    } else {
        var_y = 30.0f;
        var_z = 30.0f;
    }

    for (int i = 0; i < 16; i++) {
        vec1 = _this->current.pos;
        vec1.y = i_this->mWaterY;
        mDoMtx_YrotS(*calc_mtx, ang_y);
        vec3.set(0.0f, 0.0f, 5000.0f);
        MtxPosition(&vec3, &vec2);
        vec2 += vec1;
        lin_chk.Set(&vec1, &vec2, _this);
        if (dComIfG_Bgsp().LineCross(&lin_chk)) {
            vec2 = lin_chk.i_GetCross();
            vec3.set(0.0f, var_y, var_z);
            MtxPosition(&vec3, &vec1);
            vec1 += vec2;
            vec2 = vec1;
            vec2.y -= var_y + 20.0f;
            lin_chk.Set(&vec1, &vec2, _this);
            if (dComIfG_Bgsp().LineCross(&lin_chk)) {
                pos[i] = lin_chk.i_GetCross();
                vec1 = lin_chk.i_GetCross();
                vec1.y += 5.0f;
                vec3.set(0.0f, 0.0f, 200.0f);
                MtxPosition(&vec3, &vec2);
                vec2 += vec1;
                lin_chk.Set(&vec1, &vec2, _this);
                if (dComIfG_Bgsp().LineCross(&lin_chk)) {
                    pos[i] = _this->current.pos;
                    pos[i].x += 10000.0f;
                }
            } else {
                pos[i] = _this->current.pos;
                pos[i].x += 10000.0f;
            }
        }
        ang_y += 0x1000;
    }

    int i = 0;
    for (int j = 1; j < 16; j++) {
        if ((pos[i] - _this->current.pos).abs() > (pos[j] - _this->current.pos).abs()) {
            i = j;
        }
    }
    i_this->mTargetPos = pos[i];
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void search_ground_1(npc_ne_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/search_ground_1__FP12npc_ne_class.s"
}
#pragma pop
#endif

/* 80A8DD54-80A8DD58 005174 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" asm void __ct__4cXyzFv() {
    /* empty function */
}

/* ############################################################################################## */
/* 80A92530-80A92534 000114 0004+00 0/2 0/0 0/0 .rodata          @5891 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5891 = 120.0f;
COMPILER_STRIP_GATE(0x80A92530, &lit_5891);
#pragma pop

/* 80A8DD58-80A8DEE0 005178 0188+00 1/1 0/0 0/0 .text            search_ground_2__FP12npc_ne_classs
 */
#ifdef NONMATCHING
// matches with literals
static BOOL search_ground_2(npc_ne_class* i_this, s16 i_wallAngle) {
    fopAc_ac_c* _this = static_cast<fopAc_ac_c*>(i_this);
    dBgS_LinChk lin_chk;
    cXyz vec1, vec2, vec3;
    vec2 = _this->current.pos;
    vec2.y = i_this->mWaterY;
    f32 var_y, var_z;
    if (!strcmp(dComIfGp_getStartStageName(), "F_SP103")) {
        var_y = 120.0f;
        var_z = 100.0f;
    } else {
        var_y = 50.0f;
        var_z = 40.0f;
    }
    mDoMtx_YrotS(*calc_mtx, i_wallAngle);
    vec3.set(0.0f, var_y, var_z);
    MtxPosition(&vec3, &vec1);
    vec1 += vec2;
    vec2 = vec1;
    vec2.y -= 200.0f;
    lin_chk.Set(&vec1, &vec2, _this);
    if (dComIfG_Bgsp().LineCross(&lin_chk)) {
        i_this->mTargetPos = lin_chk.i_GetCross();
        return true;
    } else {
        return false;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm BOOL search_ground_2(npc_ne_class* param_0, s16 param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/search_ground_2__FP12npc_ne_classs.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80A92534-80A92538 000118 0004+00 0/2 0/0 0/0 .rodata          @5924 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5924 = 45.0f;
COMPILER_STRIP_GATE(0x80A92534, &lit_5924);
#pragma pop

/* 80A8DEE0-80A8E0E4 005300 0204+00 1/1 0/0 0/0 .text            npc_ne_swim__FP12npc_ne_class */
#ifdef NONMATCHING
// matches with literals
static void npc_ne_swim(npc_ne_class* i_this) {
    s16 max_angle_step = 0;

    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, npc_ne_class::ANM_SWIM, 5.0f, 2, 1.0f);
        i_this->mMode++;
        i_this->mDistScale = cM_rndFX(0.2f) + 1.0f;
        i_this->speedF = 0.0f;
        i_this->mTimers[1] = 50;
        search_ground_1(i_this);
        // fallthrough

    case 1:
        if (i_this->mpMorf->checkFrame(4.0f) || i_this->mpMorf->checkFrame(12.0f)) {
            i_this->mSound.startSound(Z2SE_CAT_SWIM, 0, -1);
        }
        max_angle_step = 0x100;
        if ((i_this->mCounter & 0x3f) == 0) {
            search_ground_1(i_this);
        }
        cXyz delta = i_this->mTargetPos - i_this->current.pos;
        i_this->mTargetAngleY = cM_atan2s(delta.x, delta.z);
        break;
    }

    cLib_addCalc2(&i_this->speedF, l_HIO.mSwimSpeed, 1.0f, 0.1f);
    cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->mTargetAngleY, 0x20, max_angle_step);
    i_this->speed.y = 0.0f;
    i_this->gravity = 0.0f;
    cLib_addCalc2(&i_this->current.pos.y,
                  i_this->mWaterY - i_this->mBaseScale.z * 45.0f, 1.0f, 5.0f);
    if (i_this->mTimers[1] == 0 && i_this->mAcch.ChkWallHit()) {
        s16 wall_angle = wall_angle_get(i_this);
        if (wall_angle != 1 && search_ground_2(i_this, wall_angle)) {
            i_this->mAction = npc_ne_class::ACT_OUT_SWIM;
            i_this->mMode = 0;
            i_this->mTargetAngleY = wall_angle_get(i_this);
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void npc_ne_swim(npc_ne_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/npc_ne_swim__FP12npc_ne_class.s"
}
#pragma pop
#endif

/* 80A8E0E4-80A8E428 005504 0344+00 1/1 0/0 0/0 .text            npc_ne_outswim__FP12npc_ne_class */
#ifdef NONMATCHING
// matches with literals
static void npc_ne_outswim(npc_ne_class* i_this) {
    cXyz delta;

    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, npc_ne_class::ANM_RUN, 5.0f, 2, 2.0f);
        i_this->mMode++;
        i_this->speedF = 0.0f;
        // fallthrough

    case 1:
        i_this->current.angle.x = -0x4000;
        cLib_addCalc2(&i_this->current.pos.y, i_this->mTargetPos.y - 10.0f, 1.0f, 5.0f);
        cLib_addCalc2(&i_this->current.pos.x, i_this->mClimbPos.x, 1.0f, 5.0f);
        cLib_addCalc2(&i_this->current.pos.z, i_this->mClimbPos.z, 1.0f, 5.0f);
        if (fabsf(i_this->current.pos.y - (i_this->mTargetPos.y - 10.0f)) < 1.0f) {
            i_this->mMode++;
            i_this->mTimers[0] = 5;
        }
        break;

    case 2:
        i_this->current.angle.x = 0;
        cLib_addCalc2(&i_this->current.pos.x, i_this->mTargetPos.x, 1.0f, 5.0f);
        cLib_addCalc2(&i_this->current.pos.y, i_this->mTargetPos.y, 1.0f, 5.0f);
        cLib_addCalc2(&i_this->current.pos.z, i_this->mTargetPos.z, 1.0f, 5.0f);
        delta = i_this->current.pos - i_this->mTargetPos;
        if (i_this->mTimers[0] == 1) {
            anm_init(i_this, npc_ne_class::ANM_JUMP_END, 3.0f, 0, 1.0f);
        }
        if (delta.abs() < 1.0f) {
            i_this->mMode++;
            if (i_this->mAnmID != npc_ne_class::ANM_JUMP_END) {
                anm_init(i_this, npc_ne_class::ANM_JUMP_END, 2.0f, 0, 2.0f);
            }
        }
        break;

    case 3:
        if (i_this->mpMorf->isStop()) {
            i_this->mAction = npc_ne_class::ACT_AWAY;
            i_this->mMode = 0;
            i_this->mTimers[3] = 0;
            i_this->mTimers[2] = 0;
            i_this->mTimers[1] = 0;
            i_this->mTimers[0] = 0;
        }
        break;
    }

    cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->mTargetAngleY, 4, 0x800);
    i_this->speed.y = 0.0f;
    i_this->gravity = 0.0f;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void npc_ne_outswim(npc_ne_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/npc_ne_outswim__FP12npc_ne_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80A92538-80A9253C 00011C 0004+00 0/4 0/0 0/0 .rodata          @6108 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6108 = 35.0f;
COMPILER_STRIP_GATE(0x80A92538, &lit_6108);
#pragma pop

/* 80A8E428-80A8EA78 005848 0650+00 1/1 0/0 0/0 .text            npc_ne_climb__FP12npc_ne_class */
#ifdef NONMATCHING
// matches with literals
static BOOL npc_ne_climb(npc_ne_class* i_this) {
    fopAc_ac_c* _this = static_cast<fopAc_ac_c*>(i_this);
    BOOL ret = false;
    i_this->mCcDisableTimer = 10;
    cXyz vec1, vec2, delta;

    switch (i_this->mMode) {
    case 0:
        i_this->mAnmSpeed = 1.0f;
        anm_init(i_this, npc_ne_class::ANM_RUN, 3.0f, 2, i_this->mAnmSpeed);
        i_this->mMode++;
        // fallthrough

    case 1:
        ret = true;
        cLib_addCalc2(&_this->speedF, i_this->mAnmSpeed * l_HIO.mRunSpeed,
                      1.0f, 0.5f * l_HIO.mRunSpeed);
        delta = i_this->mClimbPos - _this->current.pos;
        if (delta.abs() < 40.0f || i_this->mAcch.ChkWallHit() ||
            fopAcM_wayBgCheck(_this, 35.0f * i_this->mBaseScale.z, 30.0f * i_this->mBaseScale.y))
        {
            s16 wall_angle = wall_angle_get(i_this);
            if (wall_angle != 1) {
                anm_init(i_this, npc_ne_class::ANM_TO_JUMP, 5.0f, 0, 1.0f);
                _this->current.angle.y = wall_angle;
                _this->current.pos = _this->old.pos;
                _this->speedF = 0.0f;
                i_this->mMode++;
            } else {
                i_this->mAction = npc_ne_class::ACT_WAIT;
                i_this->mMode = 0;
            }
        }
        break;

    case 2:
        i_this->mLookUpTimer = 2;
        if (i_this->mpMorf->isStop()) {
            anm_init(i_this, npc_ne_class::ANM_RUN, 5.0f, 2, 2.0f);
            i_this->mMode++;
            i_this->mTimers[0] = 50;
        }
        break;

    case 3:
        _this->current.angle.x = climb_angle_get(i_this);
        if (i_this->mTimers[0] >= 47) {
            _this->current.angle.x = -0x3800;
        }
        cLib_addCalc2(&_this->current.pos.y, i_this->mTargetPos.y, 1.0f, 15.0f);
        if (_this->current.angle.x <= -0x2000) {
            cLib_addCalc2(&_this->current.pos.x, i_this->mClimbPos.x, 1.0f, 15.0f);
            cLib_addCalc2(&_this->current.pos.z, i_this->mClimbPos.z, 1.0f, 15.0f);
            break;
        } else {
            mDoMtx_YrotS(*calc_mtx, _this->current.angle.y);
            vec1.x = 0.0f;
            vec1.y = 100.0f;
            vec1.z = 40.0f * i_this->mBaseScale.z;
            MtxPosition(&vec1, &vec2);
            vec2 += _this->current.pos;
            dBgS_GndChk gnd_chk;
            gnd_chk.SetPos(&vec2);
            i_this->mTargetPos.y = dComIfG_Bgsp().GroundCross(&gnd_chk);
            i_this->mTargetPos.x = vec2.x;
            i_this->mTargetPos.z = vec2.z;
            i_this->mMode = 4;
        }
        // fallthrough

    case 4:
        i_this->current.angle.x = climb_angle_get(i_this);
        cLib_addCalc2(&_this->current.pos.x, i_this->mTargetPos.x, 1.0f, 15.0f);
        cLib_addCalc2(&_this->current.pos.y, i_this->mTargetPos.y, 1.0f, 15.0f);
        cLib_addCalc2(&_this->current.pos.z, i_this->mTargetPos.z, 1.0f, 15.0f);
        delta = i_this->mTargetPos - _this->current.pos;
        if (delta.abs() < 30.0f || i_this->mTimers[0] == 0) {
            anm_init(i_this, npc_ne_class::ANM_JUMP_END, 2.0f, 0, 1.0f);
            i_this->mMode = 5;
        }
        break;

    case 5:
        cLib_addCalc2(&_this->current.pos.x, i_this->mTargetPos.x, 0.2f, 15.0f);
        cLib_addCalc2(&_this->current.pos.y, i_this->mTargetPos.y, 1.0f, 15.0f);
        cLib_addCalc2(&_this->current.pos.z, i_this->mTargetPos.z, 0.2f, 15.0f);
        if (i_this->mpMorf->isStop()) {
            if (i_this->mBehavior == npc_ne_class::BHV_PIER) {
                i_this->mAction = npc_ne_class::ACT_HOME;
            } else {
                i_this->mAction = npc_ne_class::ACT_WAIT;
            }
            i_this->mMode = 0;
        }
        break;
    }

    if (!ret) {
        _this->speed.y = 0.0f;
        _this->speedF = 0.0f;
        _this->gravity = 0.0f;
    }
    return ret;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int npc_ne_climb(npc_ne_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/npc_ne_climb__FP12npc_ne_class.s"
}
#pragma pop
#endif

/* 80A8EA78-80A8EB60 005E98 00E8+00 1/1 0/0 0/0 .text            npc_ne_drop__FP12npc_ne_class */
#ifdef NONMATCHING
// matches with literals
static void npc_ne_drop(npc_ne_class* i_this) {
    switch (i_this->mMode) {
    case 0:
        i_this->mMode++;
        i_this->speedF = 0.0f;
        i_this->speed.y = 0.0f;
        anm_init(i_this, npc_ne_class::ANM_JUMP_END, 3.0f, 0, 0.0f);
        // fallthrough

    case 1:
        i_this->current.angle.x = 0x3000;
        if (i_this->mAcch.i_ChkGroundHit()) {
            i_this->shape_angle.x = 0;
            i_this->current.angle.x = 0;
            i_this->mpMorf->setPlaySpeed(2.0f);
            i_this->mTimers[0] = 10;
            i_this->mMode++;
        }
        break;

    case 2:
        if (i_this->mTimers[0] == 0) {
            i_this->mAction = npc_ne_class::ACT_WAIT;
            i_this->mMode = 0;
            i_this->mNoFollow = true;
        }
        break;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void npc_ne_drop(npc_ne_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/npc_ne_drop__FP12npc_ne_class.s"
}
#pragma pop
#endif

/* 80A8EB60-80A8ED58 005F80 01F8+00 1/1 0/0 0/0 .text            npc_ne_s_drop__FP12npc_ne_class */
#ifdef NONMATCHING
// matches with literals
static void npc_ne_s_drop(npc_ne_class* i_this) {
    int frame = i_this->mpMorf->getFrame();
    f32 target_speed = 0.0f;
    f32 max_speed_step = 3.0f;

    switch (i_this->mMode) {
    case 0:
        i_this->mAnmSpeed = 1.0f;
        anm_init(i_this, npc_ne_class::ANM_TO_JUMP, 3.0f, 0, 1.0f);
        i_this->mMode++;
        break;

    case 1:
        i_this->mLookDownTimer = 3;
        i_this->speed.y = 0.0f;
        i_this->speedF = 0.0f;
        i_this->gravity = 0.0f;
        if (!i_this->mpMorf->isStop()) {
            break;
        }
        anm_init(i_this, npc_ne_class::ANM_JUMP_START, 2.0f, 0, 1.0f);
        i_this->mMode++;
        i_this->mTimers[0] = 3;
        i_this->shape_angle.x = 0x1c00;
        // fallthrough

    case 2:
        i_this->current.angle.x = 0x3800;
        if (frame >= 1) {
            max_speed_step = target_speed = 10.0f;
        } else {
            max_speed_step = target_speed = 2.0f;
        }
        if (i_this->mTimers[0] == 0 && i_this->mAcch.i_ChkGroundHit()) {
            anm_init(i_this, npc_ne_class::ANM_JUMP_END, 3.0f, 0, 1.0f);
            i_this->mpMorf->setFrame(4.0f);
            i_this->mMode++;
        }
        break;

    case 3:
        max_speed_step = 1.0f;
        if (i_this->mpMorf->isStop()) {
            i_this->mAction = npc_ne_class::ACT_WAIT;
            i_this->mMode = 0;
        }
        break;
    }

    cLib_addCalc2(&i_this->speedF, target_speed, 1.0f, max_speed_step);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void npc_ne_s_drop(npc_ne_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/npc_ne_s_drop__FP12npc_ne_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80A9253C-80A92540 000120 0004+00 0/1 0/0 0/0 .rodata          @6251 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6251 = 1300.0f;
COMPILER_STRIP_GATE(0x80A9253C, &lit_6251);
#pragma pop

/* 80A92540-80A92544 000124 0004+00 0/2 0/0 0/0 .rodata          @6252 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6252 = -10.0f;
COMPILER_STRIP_GATE(0x80A92540, &lit_6252);
#pragma pop

/* 80A92544-80A92548 000128 0004+00 0/1 0/0 0/0 .rodata          @6253 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6253 = -1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80A92544, &lit_6253);
#pragma pop

/* 80A8ED58-80A8F0FC 006178 03A4+00 1/1 0/0 0/0 .text            npc_ne_carry__FP12npc_ne_class */
#ifdef NONMATCHING
// matches with literals
static BOOL npc_ne_carry(npc_ne_class* i_this) {
    fopAc_ac_c* _this = static_cast<fopAc_ac_c*>(i_this);
    BOOL ret = false;
    i_this->mCcDisableTimer = 5;

    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, npc_ne_class::ANM_TO_CARRY_B, 1.0f, 0,
                 daPy_getLinkPlayerActorClass()->getBaseAnimeFrameRate());
        i_this->mpMorf->setFrame(daPy_getLinkPlayerActorClass()->getBaseAnimeFrame());
        i_this->mTimers[0] = 20;
        i_this->mMode++;
        break;

    case 1:
        if (i_this->mpMorf->checkFrame(10.0f)) {
            i_this->mSound.startSound(Z2SE_CAT_CRY_CARRY, 0, -1);
        }
        if (daPy_getLinkPlayerActorClass()->getGrabPutStart()) {
            anm_init(i_this, npc_ne_class::ANM_TO_CARRY_B, 1.0f, 0,
                    daPy_getLinkPlayerActorClass()->getBaseAnimeFrameRate());
            i_this->mpMorf->setFrame(daPy_getLinkPlayerActorClass()->getBaseAnimeFrame());
            i_this->mMode++;
        }
        break;
    }

    i_this->mTailSwayTarget = 1300.0f;

    if (!fopAcM_checkCarryNow(_this)) {
        i_this->mAction = npc_ne_class::ACT_TAME;
        i_this->mMode = 0;
        dBgS_GndChk gnd_chk;
        cXyz pos = _this->current.pos;
        pos.y += 50.0f;
        gnd_chk.SetPos(&pos);
        if (fabsf(_this->current.pos.y - dComIfG_Bgsp().GroundCross(&gnd_chk)) < 30.0f) {
            _this->current.pos.y = dComIfG_Bgsp().GroundCross(&gnd_chk);
            i_this->mGroundY = _this->current.pos.y;
            _this->gravity = 0.0f;
        } else {
            i_this->mAction = npc_ne_class::ACT_DROP;
            i_this->mMode = 0;
            i_this->mSound.startSound(Z2SE_CAT_CRY_ANNOY, 0, -1);
            _this->speed.y = -10.0f;
            return false;
        }
    }

    _this->speedF = 0.0f;
    if (i_this->mTimers[0] != 0) {
        ret = true;
        _this->speed.y = -0.1f;
    } else {
        _this->speed.y = 0.0f;
    }
    i_this->mCarryTimer = 10;

    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    dBgS_LinChk lin_chk;
    cXyz pos = _this->current.pos;
    pos.y += 2.0f;
    lin_chk.Set(&player->eyePos, &pos, _this);
    if (dComIfG_Bgsp().LineCross(&lin_chk)) {
        _this->current.pos = lin_chk.i_GetCross();
    }

    return ret;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int npc_ne_carry(npc_ne_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/npc_ne_carry__FP12npc_ne_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80A92548-80A9254C 00012C 0004+00 0/1 0/0 0/0 .rodata          @6270 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6270 = 20000.0f;
COMPILER_STRIP_GATE(0x80A92548, &lit_6270);
#pragma pop

/* 80A8F0FC-80A8F1B0 00651C 00B4+00 1/1 0/0 0/0 .text            npc_ne_dish__FP12npc_ne_class */
#ifdef NONMATCHING
// matches with literals
static void npc_ne_dish(npc_ne_class* i_this) {
    i_this->mCcDisableTimer = 10;

    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, npc_ne_class::ANM_MILK, 1.0f, 2, 1.0f);
        i_this->mMode++;
        // fallthrough

    case 1:
    default:
        if (!dComIfGs_isEventBit(0x1001)) {
            i_this->current.pos.y = 20000.0f;
            i_this->speed.y = 0.0f;
            fopAcM_OffStatus(i_this, fopAcStts_CULL_e);
        }
        break;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void npc_ne_dish(npc_ne_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/npc_ne_dish__FP12npc_ne_class.s"
}
#pragma pop
#endif

/* 80A8F1B0-80A8F278 0065D0 00C8+00 1/1 0/0 0/0 .text            npc_ne_message__FP12npc_ne_class */
#ifdef NONMATCHING
// matches with literals
static void npc_ne_message(npc_ne_class* i_this) {
    i_this->mLookMode = npc_ne_class::LOOK_PLAYER;

    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, npc_ne_class::ANM_WAIT, 3.0f, 2, 1.0f);
        i_this->mMode++;
        // fallthrough

    case 1:
    default:
        cLib_addCalc0(&i_this->speedF, 1.0f, 2.0f);
        cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->mAngleToPlayer, 2, 0x1000);
        if (!i_this->mIsTalking && i_this->mDistToTarget > 400.0f) {
            i_this->mAction = npc_ne_class::ACT_WAIT;
            i_this->mMode = 0;
        }
        break;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void npc_ne_message(npc_ne_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/npc_ne_message__FP12npc_ne_class.s"
}
#pragma pop
#endif

/* 80A9254C-80A92550 000130 0004+00 0/1 0/0 0/0 .rodata          @6811 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6811 = -7.0f;
COMPILER_STRIP_GATE(0x80A9254C, &lit_6811);
#pragma pop

/* 80A92550-80A92554 000134 0004+00 0/1 0/0 0/0 .rodata          @6812 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6812 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80A92550, &lit_6812);

/* 80A8F278-80A903E8 006698 1170+00 2/1 0/0 0/0 .text            action__FP12npc_ne_class */
#ifdef NONMATCHING
// matches with literals
static void action(npc_ne_class* i_this) {
    fopAc_ac_c* _this = static_cast<fopAc_ac_c*>(i_this);
    daPy_py_c* player = static_cast<daPy_py_c*>(dComIfGp_getPlayer(0));

    _this->gravity = -7.0f;

    if (i_this->mResName == "Npc_net") {
        i_this->mDistToTarget = 10000.0f;
    } else {
        i_this->mDistToTarget = i_this->mDistScale * fopAcM_searchPlayerDistance(_this);
    }
    if (daPy_getPlayerActorClass()->checkHorseRide()) {
        i_this->mDistToTarget -= 100.0f;
    }
    i_this->mAngleToPlayer = fopAcM_searchPlayerAngleY(_this);

    i_this->field_0x6b8 = fabsf(player->eyePos.y - player->current.pos.y);
    if (fabsf(i_this->current.pos.y - player->current.pos.y) > 50.0f) {
        i_this->field_0x6b8 = 100.0f;
    }
    i_this->field_0x6b8 *= 0.7f;

    BOOL ground_check = true;
    int water_check_state = 1;
    BOOL drop_check = true;
    int water_state = 0;
    BOOL carry_check = true;
    i_this->mCcSph.OnCoSetBit();

    if (i_this->field_0x65c < 1.0f) {
        BOOL bird_check = false;
        i_this->field_0x560 = 1;
        i_this->mMessageState = 0;

        switch (i_this->mAction) {
        case npc_ne_class::ACT_WAIT:
            i_this->mMessageState = 1;
            npc_ne_wait(i_this);
            bird_check = true;
            break;
        case npc_ne_class::ACT_AWAY:
            npc_ne_away(i_this);
            bird_check = true;
            i_this->mMessageState = 1;
            break;
        case npc_ne_class::ACT_TAME:
            npc_ne_tame(i_this);
            bird_check = true;
            i_this->mMessageState = 1;
            break;
        case npc_ne_class::ACT_HOME:
            ground_check = npc_ne_home(i_this);
            drop_check = false;
            break;
        case npc_ne_class::ACT_ROOF:
            npc_ne_roof(i_this);
            drop_check = true;
            break;
        case npc_ne_class::ACT_BIRD:
            npc_ne_bird(i_this);
            break;
        case npc_ne_class::ACT_BALL:
            i_this->field_0x560 = 0x23;
            npc_ne_ball(i_this);
            break;
        case npc_ne_class::ACT_SANBASI:
            npc_ne_sanbasi(i_this);
            drop_check = false;
            carry_check = false;
            break;
        case npc_ne_class::ACT_JUMP:
            npc_ne_jump(i_this);
            carry_check = false;
            break;
        case npc_ne_class::ACT_S_JUMP:
            npc_ne_s_jump(i_this);
            carry_check = false;
            break;
        case npc_ne_class::ACT_PATH_WALK:
            npc_ne_pathwalk(i_this);
            bird_check = true;
            i_this->mMessageState = 1;
            break;
        case npc_ne_class::ACT_SWIM:
            npc_ne_swim(i_this);
            water_check_state = 2;
            water_state = 2;
            drop_check = false;
            fopAcM_riverStream(&_this->current.pos, &i_this->field_0xcb6,
                               &i_this->field_0xcb8, 0.5f);
            break;
        case npc_ne_class::ACT_OUT_SWIM:
            npc_ne_outswim(i_this);
            water_check_state = 0;
            ground_check = false;
            drop_check = false;
            break;
        case npc_ne_class::ACT_CLIMB:
            ground_check = npc_ne_climb(i_this);
            water_check_state = 0;
            drop_check = false;
            break;
        case npc_ne_class::ACT_DROP:
            npc_ne_drop(i_this);
            drop_check = false;
            carry_check = false;
            break;
        case npc_ne_class::ACT_S_DROP:
            npc_ne_s_drop(i_this);
            drop_check = false;
            carry_check = false;
            break;
        case npc_ne_class::ACT_MESSAGE:
            npc_ne_message(i_this);
            i_this->mMessageState = 2;
            break;
        case npc_ne_class::ACT_DISH:
            npc_ne_dish(i_this);
            water_check_state = 0;
            drop_check = false;
            carry_check = false;
            break;
        case npc_ne_class::ACT_CARRY:
            ground_check = npc_ne_carry(i_this);
            water_check_state = 0;
            drop_check = false;
            i_this->mCcSph.OffCoSetBit();
            carry_check = false;
            break;
        }

        if (i_this->mResName != "Npc_net") {
            if (i_this->mMessageState == 1 && daPy_py_c::i_checkNowWolf()
                                         && i_this->mDistToTarget < 300.0f) {
                i_this->mAction = npc_ne_class::ACT_MESSAGE;
                i_this->mMode = 0;
                bird_check = false;
            }

            if (bird_check && !i_this->mWantsFish) {
                fopAc_ac_c* bird_or_ball = search_bird(i_this);
                if (bird_or_ball != NULL) {
                    if (fopAcM_GetName(bird_or_ball) == PROC_OBJ_FOOD) {
                        i_this->mAction = npc_ne_class::ACT_BALL;
                        i_this->mMode = 0;
                        carry_check = true;
                    } else {
                        i_this->mAction = npc_ne_class::ACT_BIRD;
                        i_this->mMode = 0;
                        carry_check = true;
                    }
                }
            }
        }
    }

    if (carry_check && !i_this->mWantsFish) {
        cLib_onBit<u32>(_this->attention_info.flags, 0x10);
        if (ne_carry_check(i_this)) {
            return;
        }
    } else {
        cLib_offBit<u32>(_this->attention_info.flags, 0x10);
    }

    cXyz vec1, vec2, vec3;
    if (i_this->mWantsFish && i_this->mAction != npc_ne_class::ACT_SANBASI
                            && player->current.pos.z > -2800.0f) {
        dmg_rod_class* rod = static_cast<dmg_rod_class*>(fopAcM_SearchByName(PROC_MG_ROD));
        if (rod != NULL && rod->field_0xf7c == 1 && rod->field_0xf7e != 5
                        && rod->field_0x13b4 != 0 && !i_this->mNoFollow) {
            if (i_this->mDistToTarget > 500.0f) {
                _this->current.pos = ground_search(i_this);
                _this->old = _this->current;
            }
        } else if (!i_this->mNoFollow) {
            if (i_this->mDistToTarget > 700.0f && fopAcM_CheckCondition(_this, 4)
                                             && player->speedF > 2.0f) {
                camera_class* camera = dComIfGp_getCamera(0);
                vec1.x = camera->mLookat.mEye.x - camera->mLookat.mCenter.x;
                vec1.z = camera->mLookat.mEye.z - camera->mLookat.mCenter.z;
                mDoMtx_YrotS(*calc_mtx, cM_atan2s(vec1.x, vec1.z));
                vec1.set(0.0f, -50.0f, 100.0f);
                MtxPosition(&vec1, &vec2);
                vec2 += camera->mLookat.mEye;
                dBgS_ObjGndChk_Spl gnd_chk_spl;
                gnd_chk_spl.SetPos(&vec2);
                f32 cross = dComIfG_Bgsp().GroundCross(&gnd_chk_spl);
                dBgS_GndChk gnd_chk;
                gnd_chk.SetPos(&vec2);
                vec2.y = dComIfG_Bgsp().GroundCross(&gnd_chk);
                if (vec2.y >= cross && fabsf(vec2.y - player->current.pos.y) < 100.0f) {
                    if (i_this->mAction != npc_ne_class::ACT_TAME) {
                        i_this->mAction = npc_ne_class::ACT_TAME;
                        i_this->mMode = 0;
                    }
                    _this->current.pos = vec2;
                    _this->old = _this->current;
                }
            }
        } else {
            if (player->current.pos.y > 500.0f) {
                i_this->mAction = npc_ne_class::ACT_SANBASI;
                i_this->mMode = 0;
                _this->current.pos.set(3400.0f, 84.13f, 64.0f);
                _this->current.angle.y = -0x6987;
                _this->shape_angle.y = _this->current.angle.y;
                _this->old = _this->home = _this->current;
                _this->speedF = 0.0f;
            }
        }
    }

    cLib_addCalcAngleS2(&_this->current.angle.x, 0, 1, 0x400);
    mDoMtx_YrotS(*calc_mtx, _this->current.angle.y);
    vec1.x = 0.0f;
    vec1.y = 0.0f;
    vec1.z = _this->speedF * i_this->mBaseScale.z;
    MtxPosition(&vec1, &vec2);
    _this->speed.x = vec2.x;
    _this->speed.z = vec2.z;
    _this->speed.y += _this->gravity;
    _this->current.pos += _this->speed;
    if (_this->speed.y < -120.0f) {
        _this->speed.y = -120.0f;
    }
    if (!fopAcM_checkCarryNow(_this) && i_this->mAction != npc_ne_class::ACT_PATH_WALK) {
        cXyz* cc_move = i_this->mStts.GetCCMoveP();
        if (cc_move != NULL) {
            _this->current.pos.x += cc_move->x * 0.1f;
            _this->current.pos.y += cc_move->y * 0.1f;
            _this->current.pos.z += cc_move->z * 0.1f;
        }
    }

    if (i_this->field_0x65c > 1.0f) {
        vec1.x = 0.0f;
        vec1.y = 0.0f;
        vec1.z = -i_this->field_0x65c;
        mDoMtx_YrotS(*calc_mtx, i_this->field_0x660);
        MtxPosition(&vec1, &vec2);
        _this->current.pos += vec2;
        cLib_addCalc0(&i_this->field_0x65c, 1.0f, 6.0f);
        _this->speedF = 0.0f;
    }

    if (ground_check) {
        i_this->mAcch.CrrPos(dComIfG_Bgsp());
        i_this->mGroundY = i_this->mAcch.GetGroundH();
    } else {
        i_this->mGroundY = _this->current.pos.y;
    }
    if (ground_check && i_this->mAcch.ChkGroundHit()) {
        dBgS_GndChk gnd_chk;
        mDoMtx_YrotS(*calc_mtx, _this->shape_angle.y);
        vec1.x = 0.0f;
        vec1.y = 0.0f;
        vec1.z = i_this->mBaseScale.z * -25.0f;
        MtxPosition(&vec1, &vec2);
        vec2 += _this->current.pos;
        vec3.set(vec2.x, vec2.y + 100.0f, vec2.z);
        gnd_chk.SetPos(&vec3);
        vec2.y = dComIfG_Bgsp().GroundCross(&gnd_chk);
        vec1 = vec2 - _this->current.pos;
        if (fabsf(vec1.y) < 50.0f) {
            f32 vec1_xz = JMAFastSqrt(vec1.x * vec1.x + vec1.z * vec1.z);
            _this->current.angle.x = cM_atan2s(vec1.y, vec1_xz);
        }
    }

    cLib_addCalcAngleS2(&_this->shape_angle.y, _this->current.angle.y, 2, 0x2000);
    cLib_addCalcAngleS2(&_this->shape_angle.x, _this->current.angle.x, 2, 0x1000);
    cLib_addCalcAngleS2(&_this->shape_angle.z, _this->current.angle.z, 4, 0x1000);
    _this->current.angle.z = 0;
    cLib_addCalcAngleS2(&i_this->mBackboneAngleY, i_this->mBackboneTargetAngleY, 2, 0x400);

    if (drop_check) {
        f32 height = _this->current.pos.y - i_this->mGroundY;
        if (height > 300.0f) {
            i_this->mAction = npc_ne_class::ACT_DROP;
            i_this->mMode = 0;
            i_this->mSound.startSound(Z2SE_CAT_CRY_ANNOY, 0, -1);
        } else if (height > 30.0f && i_this->mAction != npc_ne_class::ACT_ROOF) {
            _this->current.pos = _this->old.pos;
            i_this->mAction = npc_ne_class::ACT_S_DROP;
            i_this->mMode = 0;
        }
    }

    if (water_check_state == 1) {
        if (water_check(i_this, 5.0f) > 0) {
            i_this->mAction = npc_ne_class::ACT_SWIM;
            i_this->mMode = 0;
            i_this->mNoFollow = true;
            water_state = 1;
            if (i_this->mBehavior == npc_ne_class::BHV_PIER) {
                i_this->mBehavior = npc_ne_class::BHV_NONE;
            }
            i_this->field_0x65c = 0.0f;
        }
    } else if (water_check_state == 2) {
        if (water_check(i_this, 5.0f) != 1) {
            i_this->mAction = npc_ne_class::ACT_AWAY;
            i_this->mMode = 5;
            i_this->mTimers[2] = cM_rndF(5.0f) + 10.0f;
            i_this->mTimers[3] = 30;
            i_this->mTargetAngleY = _this->shape_angle.y;
            i_this->mTimers[0] = cM_rndF(5.0f) + 10.0f;
            i_this->mTimers[1] = 20;
        }
    }

    if (i_this->mLookNoMoveTimer != 0) {
        i_this->mLookNoMoveTimer--;
        i_this->mLookMode = npc_ne_class::LOOK_NONE;
    }
    if (i_this->mLookDownTimer != 0) {
        i_this->mLookDownTimer--;
        i_this->mLookMode = npc_ne_class::LOOK_TARGET;
        mDoMtx_YrotS(*calc_mtx, _this->current.angle.y);
        vec1.set(0.0f, -30.0f, 50.0f);
        MtxPosition(&vec1, &i_this->mLookTarget);
        i_this->mLookTarget += _this->current.pos;
    }
    if (i_this->mLookUpTimer != 0) {
        i_this->mLookUpTimer--;
        i_this->mLookMode = npc_ne_class::LOOK_TARGET;
        mDoMtx_YrotS(*calc_mtx, _this->current.angle.y);
        vec1.set(0.0f, 30.0f, 50.0f);
        MtxPosition(&vec1, &i_this->mLookTarget);
        i_this->mLookTarget += _this->current.pos;
    }

    if (i_this->mBackboneAngleY < 0x800 && i_this->mBackboneAngleY > -0x800
                                    && i_this->mLookMode != npc_ne_class::LOOK_FORWARD) {
        if ((i_this->mCounter & 0xf) == 0 || i_this->mLookMode <= npc_ne_class::LOOK_TARGET) {
            if (i_this->mLookMode == npc_ne_class::LOOK_TARGET) {
                vec1 = i_this->mLookTarget - i_this->current.pos;
            } else {
                vec1 = player->eyePos - i_this->current.pos;
                if (!daPy_py_c::i_checkNowWolf()) {
                    vec1.y += i_this->mBaseScale.z * -40.0f;
                }
            }
            i_this->mHeadTargetAngleY = cM_atan2s(vec1.x, vec1.z) - _this->shape_angle.y;
            f32 vec1_xz = JMAFastSqrt(vec1.x * vec1.x + vec1.z * vec1.z);
            i_this->mHeadTargetAngleZ = cM_atan2s(vec1.y, vec1_xz) + _this->shape_angle.x;
            if (i_this->mHeadTargetAngleY > 15000) {
                i_this->mHeadTargetAngleY = 15000;
            } else if (i_this->mHeadTargetAngleY < -15000) {
                i_this->mHeadTargetAngleY = -15000;
            }
            if (i_this->mHeadTargetAngleZ > 15000) {
                i_this->mHeadTargetAngleZ = 15000;
            } else if (i_this->mHeadTargetAngleZ < -15000) {
                i_this->mHeadTargetAngleZ = -15000;
            }
        }
        i_this->mLookMode = npc_ne_class::LOOK_FORWARD;
    } else {
        i_this->mHeadTargetAngleZ = 0;
        i_this->mHeadTargetAngleY = 0;
    }

    i_this->mBackboneTargetAngleY = 0;
    cLib_addCalcAngleS2(&i_this->mHeadAngleY, i_this->mHeadTargetAngleY, 4, 0x1000);
    cLib_addCalcAngleS2(&i_this->mHeadAngleZ, i_this->mHeadTargetAngleZ, 4, 0x1000);
    cLib_addCalcAngleS2(&i_this->mHeadBobAngleY, i_this->mHeadBobTargetAngleY, 4, 0x400);
    cLib_addCalcAngleS2(&i_this->mHeadBobAngleX, i_this->mHeadBobTargetAngleX, 4, 0x400);

    if (fabsf(player->speedF) < 2.0f) {
        if (i_this->mHeadBobTimer != 0) {
            i_this->mHeadBobTimer--;
            if (i_this->mHeadBobTimer == 0) {
                i_this->mHeadBobTimer = cM_rndF(20.0f) + 20.0f;
                if (cM_rndF(1.0f) < 0.5f) {
                    i_this->mHeadBobTargetAngleY = cM_rndFX(1500.0f);
                }
                if (cM_rndF(1.0f) < 0.5f) {
                    i_this->mHeadBobTargetAngleX = cM_rndFX(1500.0f);
                }
            }
        }
    } else {
        i_this->mHeadBobTargetAngleX = 0;
        i_this->mHeadBobTargetAngleY = 0;
        i_this->mHeadBobTimer = cM_rndF(40.0f) + 40.0f;
    }

    for (int i = 0; i < 2; i++) {
        i_this->mTailSwayAngle[i] =
            i_this->mTailSway * cM_ssin(i_this->mCounter * 2000 + i * -22000);
    }
    cLib_addCalc2(&i_this->mTailSway, i_this->mTailSwayTarget, 0.1f, 100.0f);
    i_this->mTailSwayTarget = 0.0f;
    cLib_addCalcAngleS2(&i_this->mTailAngle, i_this->mTailTargetAngle, 8, 1000);
    i_this->mTailTargetAngle = 0;

    if (water_state != 0) {
        cXyz splash_pos = _this->eyePos;
        splash_pos.y = i_this->mWaterY;
        if (water_state == 1) {
            if (i_this->mSplashTimer == 0) {
                i_this->mSplashTimer = 20;
                fopKyM_createWpillar(&splash_pos, 0.7f, 0);
                i_this->mSound.startSound(Z2SE_CM_BODYFALL_WATER_S, 0, -1);
            }
        } else {
            fopAcM_effHamonSet(i_this->mParticle, &splash_pos, 0.7f, 0.1f);
        }
    }

    if (i_this->mBtpReset != 0) {
        cLib_addCalcAngleS2(&i_this->mBtpFrame, 3, 1, 1);
        i_this->mBtpReset = 0;
        i_this->mBtpTimer = 60;
    } else {
        if (i_this->mBtpTimer == 0) {
            i_this->mBtpTimer = cM_rndF(100.0f) + 30.0f;
        } else {
            i_this->mBtpTimer--;
            if (i_this->mBtpTimer <= 5) {
                i_this->mBtpFrame = 5 - i_this->mBtpTimer;
            } else {
                i_this->mBtpFrame = 0;
            }
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void action(npc_ne_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/action__FP12npc_ne_class.s"
}
#pragma pop
#endif

/* 80A92554-80A92558 000138 0004+00 0/0 0/0 0/0 .rodata          @6813 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6813 = -2800.0f;
COMPILER_STRIP_GATE(0x80A92554, &lit_6813);
#pragma pop

/* 80A92558-80A9255C 00013C 0004+00 0/0 0/0 0/0 .rodata          @6814 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6814 = 700.0f;
COMPILER_STRIP_GATE(0x80A92558, &lit_6814);
#pragma pop

/* 80A9255C-80A92560 000140 0004+00 0/1 0/0 0/0 .rodata          @6815 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6815 = 3400.0f;
COMPILER_STRIP_GATE(0x80A9255C, &lit_6815);
#pragma pop

/* 80A92560-80A92564 000144 0004+00 0/1 0/0 0/0 .rodata          @6816 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6816 = 0x42A8428F;
COMPILER_STRIP_GATE(0x80A92560, &lit_6816);
#pragma pop

/* 80A92564-80A92568 000148 0004+00 0/1 0/0 0/0 .rodata          @6817 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6817 = 64.0f;
COMPILER_STRIP_GATE(0x80A92564, &lit_6817);
#pragma pop

/* 80A92568-80A9256C 00014C 0004+00 0/0 0/0 0/0 .rodata          @6818 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6818 = -120.0f;
COMPILER_STRIP_GATE(0x80A92568, &lit_6818);
#pragma pop

/* 80A9256C-80A92570 000150 0004+00 0/0 0/0 0/0 .rodata          @6819 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6819 = 6.0f;
COMPILER_STRIP_GATE(0x80A9256C, &lit_6819);
#pragma pop

/* 80A92570-80A92574 000154 0004+00 0/0 0/0 0/0 .rodata          @6820 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6820 = -25.0f;
COMPILER_STRIP_GATE(0x80A92570, &lit_6820);
#pragma pop

/* 80A92574-80A92578 000158 0004+00 0/1 0/0 0/0 .rodata          @6821 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6821 = -30.0f;
COMPILER_STRIP_GATE(0x80A92574, &lit_6821);
#pragma pop

/* 80A92578-80A9257C 00015C 0004+00 0/0 0/0 0/0 .rodata          @6822 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6822 = -40.0f;
COMPILER_STRIP_GATE(0x80A92578, &lit_6822);
#pragma pop

/* 80A9257C-80A92580 000160 0004+00 0/1 0/0 0/0 .rodata          @6823 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6823 = 1500.0f;
COMPILER_STRIP_GATE(0x80A9257C, &lit_6823);
#pragma pop

/* 80A92580-80A92584 000164 0004+00 0/1 0/0 0/0 .rodata          @7051 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7051 = 55.0f;
COMPILER_STRIP_GATE(0x80A92580, &lit_7051);
#pragma pop

/* 80A92584-80A92588 000168 0004+00 0/1 0/0 0/0 .rodata          @7052 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7052 = 387.0f;
COMPILER_STRIP_GATE(0x80A92584, &lit_7052);
#pragma pop

/* 80A92588-80A9258C 00016C 0004+00 0/1 0/0 0/0 .rodata          @7053 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7053 = 133.0f;
COMPILER_STRIP_GATE(0x80A92588, &lit_7053);
#pragma pop

/* 80A9258C-80A92590 000170 0004+00 0/1 0/0 0/0 .rodata          @7054 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7054 = -866.0f;
COMPILER_STRIP_GATE(0x80A9258C, &lit_7054);
#pragma pop

/* 80A92590-80A92594 000174 0004+00 0/1 0/0 0/0 .rodata          @7055 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7055 = 284.0f;
COMPILER_STRIP_GATE(0x80A92590, &lit_7055);
#pragma pop

/* 80A92594-80A92598 000178 0004+00 0/1 0/0 0/0 .rodata          @7056 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7056 = 208.0f;
COMPILER_STRIP_GATE(0x80A92594, &lit_7056);
#pragma pop

/* 80A92598-80A9259C 00017C 0004+00 0/1 0/0 0/0 .rodata          @7057 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7057 = -585.0f;
COMPILER_STRIP_GATE(0x80A92598, &lit_7057);
#pragma pop

/* 80A9259C-80A925A0 000180 0004+00 0/1 0/0 0/0 .rodata          @7058 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7058 = 33.0f / 100.0f;
COMPILER_STRIP_GATE(0x80A9259C, &lit_7058);
#pragma pop

/* 80A925A0-80A925A4 000184 0004+00 0/1 0/0 0/0 .rodata          @7059 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7059 = 3.0f / 100.0f;
COMPILER_STRIP_GATE(0x80A925A0, &lit_7059);
#pragma pop

/* 80A925A4-80A925A8 000188 0004+00 0/1 0/0 0/0 .rodata          @7060 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7060 = 130.0f;
COMPILER_STRIP_GATE(0x80A925A4, &lit_7060);
#pragma pop

/* 80A925A8-80A925AC 00018C 0004+00 0/1 0/0 0/0 .rodata          @7061 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7061 = 170.0f;
COMPILER_STRIP_GATE(0x80A925A8, &lit_7061);
#pragma pop

/* 80A903E8-80A90E28 007808 0A40+00 1/1 0/0 0/0 .text            demo_camera__FP12npc_ne_class */
#ifdef NONMATCHING
// matches with literals
static void demo_camera(npc_ne_class* i_this) {
    fopAc_ac_c* _this = static_cast<fopAc_ac_c*>(i_this);
    daPy_py_c* player = static_cast<daPy_py_c*>(dComIfGp_getPlayer(0));
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));

    if (i_this->mDemoTimer != 0) {
        i_this->mDemoTimer--;
    }

    dBgS_LinChk lin_chk;
    dBgS_GndChk gnd_chk;
    fopAc_ac_c* fish;
    cXyz vec, eye, center;
    BOOL bvar1 = false;
    BOOL bird_check = false;

    switch (i_this->mDemoMode) {
    case 0:
        break;

    case 1:
        if (!_this->eventInfo.i_checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(_this, 2, 0xffff, 0);
            _this->eventInfo.i_onCondition(dEvtCnd_CANDEMO_e);
            return;
        }

        camera->mCamera.Stop();
        i_this->mDemoMode = 2;
        i_this->mDemoCounter = 0;
        i_this->mCameraFovY = 55.0f;
        camera->mCamera.SetTrimSize(3);
        daPy_getPlayerActorClass()->changeOriginalDemo();
        // fallthrough

    case 2:
        daPy_getPlayerActorClass()->setPlayerPosAndAngle(&player->current.pos,
                                                         i_this->mAngleToPlayer + 0x8000, 0);
        
        center = _this->current.pos;
        eye = _this->current.pos;
        eye.y += 200.0f;
        eye.z += 500.0f;

        if (i_this->mDemoTimer == 0) {
            i_this->mCameraEye1 = eye;
            i_this->mCameraCenter1 = center;
        } else {
            cLib_addCalc2(&i_this->mCameraEye1.x, eye.x, 0.1f, 30.0f);
            cLib_addCalc2(&i_this->mCameraEye1.y, eye.y, 0.1f, 30.0f);
            cLib_addCalc2(&i_this->mCameraEye1.z, eye.z, 0.1f, 30.0f);
            cLib_addCalc2(&i_this->mCameraCenter1.x, center.x, 0.2f, 30.0f);
            cLib_addCalc2(&i_this->mCameraCenter1.y, center.y, 0.2f, 30.0f);
            cLib_addCalc2(&i_this->mCameraCenter1.z, center.z, 0.2f, 30.0f);
        }
        break;

    case 3:
        if (i_this->mDemoCounter == 0) {
            i_this->mCameraCenter1.set(387.0f, 133.0f, -866.0f);
            i_this->mCameraEye1.set(284.0f, 208.0f, -585.0f);
        }

        if (i_this->mDemoCounter == 12) {
            fopAc_ac_c* door = fopAcM_SearchByName(PROC_OBJ_NDOOR);
            if (door != NULL) {
                door->field_0x567 = 10;
                Z2GetAudioMgr()->seStart(Z2SE_OBJ_CAT_DOOR, &door->current.pos,
                                         0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
            }
            Z2GetAudioMgr()->changeBgmStatus(0);
        }

        cLib_addCalc2(&i_this->mCameraFovY, 35.0f, 0.1f, 0.33f);

        if (i_this->field_0xcc0 && i_this->mDemoCounter == 52) {
            Z2GetAudioMgr()->seStart(Z2SE_READ_RIDDLE_B, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        }

        if (i_this->mDemoCounter > 110) {
            i_this->mDemoMode = 99;
        }
        break;

    case 10:
        if (!_this->eventInfo.i_checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(_this, 2, 0xffff, 0);
            _this->eventInfo.i_onCondition(dEvtCnd_CANDEMO_e);
            return;
        }

        camera->mCamera.Stop();
        i_this->mDemoMode = 11;
        i_this->mDemoCounter = 0;
        i_this->mCameraFovY = 45.0f;
        camera->mCamera.SetTrimSize(3);
        daPy_getPlayerActorClass()->changeOriginalDemo();
        // fallthrough

    case 11:
        daPy_getPlayerActorClass()->setPlayerPosAndAngle(&player->current.pos,
                                                         i_this->mAngleToPlayer + 0x8000, 0);
        
        mDoMtx_YrotS(*calc_mtx, _this->current.angle.y);

        if (i_this->mMode >= 13) {
            center = _this->current.pos;
            center.y += 20.0f;
        } else {
            vec.x = 0.0f;
            vec.y = 0.0f;
            vec.z = 100.0f;
            MtxPosition(&vec, &center);
            center += _this->current.pos;
        }

        if (i_this->mDemoCounter <= 38) {
            mg_fish_class* fish = static_cast<mg_fish_class*>(fopAcM_SearchByID(i_this->mFishID));
            if (i_this->mDemoCounter == 0) {
                vec.x = 0.0f;
                vec.y = 0.0f;
                vec.z = 200.0f;
                MtxPosition(&vec, &i_this->mDemoFishPos);
                i_this->mDemoFishPos += i_this->current.pos;
            }
            fish->current.pos.x = i_this->mDemoFishPos.x;
            fish->current.pos.z = i_this->mDemoFishPos.z;
            if (i_this->mDemoCounter >= 25) {
                cLib_addCalc2(&fish->current.pos.y, i_this->mAcch.GetGroundH() + 10.0f,
                              0.2f, 30.0f);
            }
            if (i_this->mDemoCounter == 38) {
                fish->field_0xc3c = 1;
                i_this->field_0xcc0 = true;
                Z2GetAudioMgr()->changeBgmStatus(1);
            }
        }

        if (i_this->mDemoCounter == 0) {
            if (cM_rndF(1.0f) < 0.5f) {
                vec.x = 50.0f;
            } else {
                vec.x = -50.0f;
            }
            vec.y = 150.0f;
            vec.z = 350.0f;
            MtxPosition(&vec, &i_this->mCameraEye1);
            i_this->mCameraEye1 += _this->current.pos;
            i_this->mCameraCenter1 = center;
        } else {
            cLib_addCalc2(&i_this->mCameraCenter1.x, center.x, 0.2f, 30.0f);
            cLib_addCalc2(&i_this->mCameraCenter1.y, center.y, 0.2f, 30.0f);
            cLib_addCalc2(&i_this->mCameraCenter1.z, center.z, 0.2f, 30.0f);
            if (i_this->mMode >= 13) {
                cLib_addCalc2(&i_this->mCameraFovY, 45.0f, 0.03f, 0.2f);
                i_this->mCameraEye1.x += 0.2f * _this->speed.x;
                i_this->mCameraEye1.z += 0.2f * _this->speed.z;
            } else {
                cLib_addCalc2(&i_this->mCameraFovY, 55.0f, 0.05f, 0.2f);
            }

            if (home_path[i_this->mHomePathIdx].mNo > 3) {
                bvar1 = true;
            }

            if (i_this->mDemoCounter >= 80 && i_this->mDemoCounter <= 120) {
                bird_check = true;
                if (i_this->mDemoCounter == 80) {
                    i_this->mCameraCenter2 = player->eyePos;
                    i_this->mCameraCenter2.y += -10.0f;
                    mDoMtx_YrotS(*calc_mtx, player->shape_angle.y);
                    vec.x = 30.0f;
                    vec.y = 130.0f;
                    vec.z = 120.0f;
                    MtxPosition(&vec, &i_this->mCameraEye2);
                    i_this->mCameraEye2 += player->current.pos;
                    player->i_changeDemoParam2(2);
                } else if (i_this->mDemoCounter == 120) {
                    player->i_changeDemoParam2(0);
                }
            }
        }
        break;

    case 99:
        fopAcM_delete(_this);
        fish = fopAcM_SearchByID(i_this->mFishID);
        if (fish != NULL) {
            fopAcM_delete(fish);
        }
        // fallthrough

    case 100:
        camera->mCamera.Start();
        camera->mCamera.SetTrimSize(0);
        dComIfGp_event_reset();
        i_this->mDemoMode = 0;
        break;
    }

    if (i_this->mDemoMode != 0) {
        if (bird_check) {
            camera->mCamera.Set(i_this->mCameraCenter2, i_this->mCameraEye2,
                                i_this->mCameraFovY, 0);
        } else {
            if (bvar1) {
                lin_chk.Set(&i_this->mCameraCenter1, &i_this->mCameraEye1, _this);
                if (dComIfG_Bgsp().LineCross(&lin_chk)) {
                    i_this->field_0xcb4 = true;
                    i_this->mDemoCounter = 122;
                }
            }

            if (i_this->field_0xcb4) {
                i_this->field_0xcb4 = false;
                mDoMtx_YrotS(*calc_mtx, _this->current.angle.y);
                vec.x = cM_rndF(50.0f) + 100.0f;
                if (cM_rndF(1.0f) < 0.5f) {
                    vec.x *= -1.0f;
                }
                vec.y = cM_rndF(100.0f) + 170.0f;
                if (home_path[i_this->mHomePathIdx].mNo > 3) {
                    vec.z = cM_rndFX(100.0f) + 200.0f;
                } else {
                    vec.z = cM_rndF(100.0f) + -300.0f;
                }
                MtxPosition(&vec, &i_this->mCameraEye1);
                i_this->mCameraEye1 += _this->current.pos;
                i_this->mCameraCenter1 = _this->current.pos;
                i_this->mCameraCenter1.y += 20.0f;
                i_this->mCameraFovY = 55.0f;
            }

            camera->mCamera.Set(i_this->mCameraCenter1, i_this->mCameraEye1,
                                i_this->mCameraFovY, 0);
        }

        i_this->mDemoCounter++;
        
        if (i_this->mDemoMode < 10 && i_this->mAction != npc_ne_class::ACT_HOME) {
            i_this->mDemoMode = 100;
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void demo_camera(npc_ne_class* i_this) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/demo_camera__FP12npc_ne_class.s"
}
#pragma pop
#endif

/* 80A90E28-80A91004 008248 01DC+00 1/1 0/0 0/0 .text            message__FP12npc_ne_class */
static int message(npc_ne_class* i_this) {
    if (i_this->mResName == "Npc_net" && !dComIfGs_wolfeye_effect_check()) {
        i_this->mMessageState = 0;
    }

    if (i_this->mIsTalking) {
        i_this->mCcDisableTimer = 10;
        if (i_this->mMsgFlow.doFlow(i_this, NULL, 0)) {
            dComIfGp_event_reset();
            i_this->mIsTalking = 0;
            if (i_this->mIsGengle == 1 && (i_this->mMsgFlow.getNowMsgNo() == 0x18a1 ||
                                           i_this->mMsgFlow.getNowMsgNo() == 0x18a2)) {
                fopAcM_createItem(&dComIfGp_getPlayer(0)->eyePos, SILVER_RUPEE, -1,
                                  fopAcM_GetRoomNo(i_this), NULL, NULL, 3);
            }
        }
        return 1;
    } else {
        if (dComIfGp_event_runCheck() && i_this->eventInfo.checkCommandTalk()) {
            i_this->mMsgFlow.init(i_this, i_this->mFlowID, 0, NULL);
            i_this->mIsTalking = 1;
        }

        if (i_this->mMessageState == 2 && i_this->mFlowID != -1 && daPy_py_c::i_checkNowWolf() &&
                                !fopAcM_otherBgCheck(daPy_getLinkPlayerActorClass(), i_this)) {
            fopAcM_OnStatus(i_this, 0);
            cLib_onBit<u32>(i_this->attention_info.flags, 0xa);
            if (i_this->mResName == "Npc_net") {
                cLib_onBit<u32>(i_this->attention_info.flags, 0xc00000);
            }
            i_this->eventInfo.i_onCondition(dEvtCnd_CANTALK_e);
        } else {
            fopAcM_OffStatus(i_this, 0);
            cLib_offBit<u32>(i_this->attention_info.flags, 0xc0000a);
        }

        return 0;
    }
}

/* 80A925AC-80A925B0 000190 0004+00 0/1 0/0 0/0 .rodata          @7319 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7319 = 100000.0f;
COMPILER_STRIP_GATE(0x80A925AC, &lit_7319);
#pragma pop

/* 80A925B0-80A925B4 000194 0004+00 0/1 0/0 0/0 .rodata          @7320 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7320 = -20000.0f;
COMPILER_STRIP_GATE(0x80A925B0, &lit_7320);
#pragma pop

/* 80A925B4-80A925B8 000198 0004+00 0/1 0/0 0/0 .rodata          @7321 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7321 = 300000.0f;
COMPILER_STRIP_GATE(0x80A925B4, &lit_7321);
#pragma pop

/* 80A925B8-80A925BC 00019C 0004+00 0/1 0/0 0/0 .rodata          @7322 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7322 = -10000.0f;
COMPILER_STRIP_GATE(0x80A925B8, &lit_7322);
#pragma pop

/* 80A91004-80A9172C 008424 0728+00 2/1 0/0 0/0 .text            daNpc_Ne_Execute__FP12npc_ne_class
 */
#ifdef NONMATCHING
// matches with literals
static int daNpc_Ne_Execute(npc_ne_class* i_this) {
    if (cDmrNowMidnaTalk() && !fopAcM_checkCarryNow(i_this)) {
        return 1;
    }

    cXyz vec1(0.0f, 0.0f, 0.0f);
    i_this->mCounter++;

    if (i_this->mWantsFish && (i_this->mCounter & 0xf) == 0) {
        if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[470])
                                    && i_this->mDistToTarget < 1500.0f) {
            if (fopAcM_SearchByName(PROC_MG_ROD) != NULL) {
                i_this->mNoFollow = false;
            } else {
                i_this->mNoFollow = true;
            }
        } else {
            i_this->mNoFollow = true;
        }
    }

    for (int i = 0; i < 5; i++) {
        if (i_this->mTimers[i] != 0) {
            i_this->mTimers[i]--;
        }
    }
    if (i_this->mCcDisableTimer != 0) {
        i_this->mCcDisableTimer--;
    }
    if (i_this->mCarryTimer != 0) {
        i_this->mCarryTimer--;
    }
    if (i_this->mSplashTimer != 0) {
        i_this->mSplashTimer--;
    }
    i_this->mNeckAngleY = 0;

    action(i_this);

    mDoMtx_stack_c::transS(i_this->current.pos.x, i_this->current.pos.y, i_this->current.pos.z);
    mDoMtx_stack_c::YrotM(i_this->shape_angle.y);
    mDoMtx_stack_c::XrotM(i_this->shape_angle.x);
    mDoMtx_stack_c::ZrotM(i_this->shape_angle.z);
    i_this->scale.x = i_this->mBaseScale.x * l_HIO.mScale;
    mDoMtx_stack_c::scaleM(i_this->scale.x, i_this->scale.x, i_this->scale.x);
    J3DModel* model = i_this->mpMorf->getModel();
    model->setBaseTRMtx(mDoMtx_stack_c::get());
    i_this->mpMorf->play(&i_this->eyePos, 0, 0);
    i_this->mpBtkAnm->setFrame(i_this->mBtkFrame);
    i_this->mpBtpAnm->setFrame(i_this->mBtpFrame);
    i_this->mpMorf->modelCalc();

    if (i_this->mBehavior == npc_ne_class::BHV_DISH) {
        mDoMtx_stack_c::transS(i_this->mDishPos.x, i_this->mDishPos.y, i_this->mDishPos.z);
        mDoMtx_stack_c::YrotM(i_this->shape_angle.y);
        i_this->mpDishMorf->getModel()->setBaseTRMtx(mDoMtx_stack_c::get());
        i_this->mpDishMorf->play(&i_this->eyePos, 0, 0);
        i_this->mpDishMorf->modelCalc();
    }

    PSMTXCopy(model->getAnmMtx(4), *calc_mtx);
    MtxPosition(&vec1, &i_this->eyePos);
    i_this->attention_info.position = i_this->eyePos;
    i_this->attention_info.position.y += i_this->mBaseScale.y * 20.0f;

    PSMTXCopy(model->getAnmMtx(3), *calc_mtx);
    vec1.set(i_this->field_0xbf4 + -30.0f, 0.0f, 0.0f);
    cLib_addCalc0(&i_this->field_0xbf4, 1.0f, 5.0f);
    cXyz center;
    MtxPosition(&vec1, &center);
    if (i_this->mCcDisableTimer != 0) {
        center.y += 100000.0f;
    }
    i_this->mCcSph.SetC(center);
    i_this->mCcSph.SetR(i_this->mBaseScale.z * 30.0f);
    dComIfG_Ccsp()->Set(&i_this->mCcSph);

    cXyz vec3(-20000.0f, 300000.0f, -10000.0f);
    center = i_this->eyePos;
    if (i_this->mAtEnable == 0) {
        center += vec3;
    } else {
        i_this->mAtEnable = 0;
    }
    i_this->mAtSph.SetC(center);
    i_this->mAtSph.SetR(25.0f);
    dComIfG_Ccsp()->Set(&i_this->mAtSph);

    i_this->mSound.framework(0, dComIfGp_getReverb(fopAcM_GetRoomNo(i_this)));
    message(i_this);
    demo_camera(i_this);

    if (i_this->mResName == "Npc_net" && !dComIfGs_wolfeye_effect_check()) {
        static u16 e_name[2] = {0x8497, 0x8498};
        for (int i = 0; i < 2; i++) {
            i_this->mParticle[i] = dComIfGp_particle_set(i_this->mParticle[i], e_name[i],
                                                        &i_this->eyePos, NULL, NULL);
            JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(i_this->mParticle[i]);
            if (emitter != NULL) {
                emitter->setGlobalAlpha(!dComIfGs_wolfeye_effect_check() ? 0xff : 0);
            }
        }
    }

    if (i_this->mFishID != -1 && i_this->field_0xcc0) {
        mg_fish_class* fish = static_cast<mg_fish_class*>(fopAcM_SearchByID(i_this->mFishID));
        PSMTXCopy(model->getAnmMtx(4), mDoMtx_stack_c::get());
        mDoMtx_stack_c::ZrotM(-19000);
        mDoMtx_stack_c::scaleM(0.5f, 0.5f, 0.5f);
        mDoMtx_stack_c::transM(5.0f, 35.0f, 15.0f);
        fish->mpMorf->getModel()->setBaseTRMtx(mDoMtx_stack_c::get());
        int ivar3 = cM_ssin(g_Counter.mTimer * 15000) * 1500.0f;
        for (int i = 0; i <= fish->field_0x72c; i++) {
            fish->field_0x718[i] = ivar3;
        }
        for (u16 i = 1; i < fish->mpMorf->getModel()->getModelData()->getJointNum(); i++) {
            fish->mpMorf->getModel()->getModelData()
                ->getJointNodePointer(i)->setCallBack(fish->mNodeCallBack);
        }
        fish->mpMorf->play(NULL, 0, 0);
        fish->mpMorf->modelCalc();
        fish->current.pos = i_this->eyePos;
        fish->eyePos = i_this->eyePos;
    }

    if (i_this->current.pos.y - i_this->home.pos.y < -5000.0f && fopAcM_CheckCondition(i_this, 4)) {
        i_this->old.pos = i_this->current.pos = i_this->home.pos;
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daNpc_Ne_Execute(npc_ne_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/daNpc_Ne_Execute__FP12npc_ne_class.s"
}
#pragma pop
#endif

/* 80A9172C-80A91734 008B4C 0008+00 1/0 0/0 0/0 .text            daNpc_Ne_IsDelete__FP12npc_ne_class
 */
static int daNpc_Ne_IsDelete(npc_ne_class* i_this) {
    return 1;
}

/* 80A91734-80A91798 008B54 0064+00 1/0 0/0 0/0 .text            daNpc_Ne_Delete__FP12npc_ne_class
 */
static int daNpc_Ne_Delete(npc_ne_class* i_this) {
    dComIfG_resDelete(&i_this->mPhase, i_this->mResName);
    if (i_this->mHIOInit != 0) {
        l_hioInit = false;
    }
    if (i_this->heap != NULL) {
        i_this->mSound.deleteObject();
    }
    return 1;
}

/* 80A91798-80A91B40 008BB8 03A8+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
#ifdef NONMATCHING
// regalloc
static int useHeapInit(fopAc_ac_c* i_this) {
    npc_ne_class* _this = static_cast<npc_ne_class*>(i_this);
    _this->mpMorf =
        new mDoExt_McaMorf(static_cast<J3DModelData*>(dComIfG_getObjectRes(_this->mResName, 28)),
                           NULL, NULL,
                           static_cast<J3DAnmTransform*>(dComIfG_getObjectRes(_this->mResName, 24)),
                           2, 1.0f, 0, -1, 1, NULL, 0x80000, 0x11020284);
    if (_this->mpMorf == NULL || _this->mpMorf->getModel() == NULL) {
        return 0;
    }

    J3DModel* model = _this->mpMorf->getModel();
    i_this->model = model;
    model->setUserArea((u32)i_this);

    for (u16 i = 0; i < model->getModelData()->getJointNum(); i++) {
        if (i == 1 || i == 2 || i == 3 || i == 4 || i == 20 || i == 21) {
            model->getModelData()->getJointNodePointer(i)->setCallBack(nodeCallBack);
        }
    }

    _this->mpBtkAnm = new mDoExt_btkAnm();
    if (_this->mpBtkAnm == NULL) {
        return 0;
    }
    J3DAnmTextureSRTKey* btk =
        static_cast<J3DAnmTextureSRTKey*>(dComIfG_getObjectRes(_this->mResName, 32));
    if (!_this->mpBtkAnm->init(_this->mpMorf->getModel()->getModelData(), btk, 1, 0, 1.0f, 0, -1)) {
        return 0;
    }

    _this->mpBtpAnm = new mDoExt_btpAnm();
    if (_this->mpBtpAnm == NULL) {
        return 0;
    }
    J3DAnmTexPattern* btp =
        static_cast<J3DAnmTexPattern*>(dComIfG_getObjectRes(_this->mResName, 35));
    if (!_this->mpBtpAnm->init(_this->mpMorf->getModel()->getModelData(), btp, 1, 0, 1.0f, 0, -1)) {
        return 0;
    }

    _this->mSound.init(&i_this->current.pos, 1);
    
    if (_this->mBehavior == npc_ne_class::BHV_DISH) {
        static int dish_bck[2] = {npc_ne_class::ANM_EMPTY_DISH, npc_ne_class::ANM_DRINK_DISH};
        s32 dish_flag = dComIfGs_isEventBit(0x1001) ? 1 : 0;
        _this->mpDishMorf = new mDoExt_McaMorf(
            static_cast<J3DModelData*>(dComIfG_getObjectRes(_this->mResName, 29)), NULL, NULL,
            static_cast<J3DAnmTransform*>(dComIfG_getObjectRes(_this->mResName,
                                                               dish_bck[dish_flag])),
            2, 1.0f, 0, -1, 1, NULL, 0x80000, 0x11000084);
        if (_this->mpDishMorf == NULL || _this->mpDishMorf->getModel() == NULL) {
            return 0;
        }
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int useHeapInit(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/useHeapInit__FP10fopAc_ac_c.s"
}
#pragma pop
#endif

#ifndef NONMATCHING
/* 80A91B40-80A91B88 008F60 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" asm void __dt__12J3DFrameCtrlFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop
#endif

/* 80A925BC-80A925C0 0001A0 0004+00 0/1 0/0 0/0 .rodata          @7656 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7656 = 1005.0f;
COMPILER_STRIP_GATE(0x80A925BC, &lit_7656);
#pragma pop

/* 80A925C0-80A925C4 0001A4 0004+00 0/1 0/0 0/0 .rodata          @7657 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7657 = 766.0f;
COMPILER_STRIP_GATE(0x80A925C0, &lit_7657);
#pragma pop

/* 80A925C4-80A925C8 0001A8 0004+00 0/1 0/0 0/0 .rodata          @7658 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7658 = -1423.0f;
COMPILER_STRIP_GATE(0x80A925C4, &lit_7658);
#pragma pop

/* 80A925C8-80A925CC 0001AC 0004+00 0/1 0/0 0/0 .rodata          @7659 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_7659 = 0x407FEF9E;
COMPILER_STRIP_GATE(0x80A925C8, &lit_7659);
#pragma pop

/* 80A925CC-80A925D0 0001B0 0004+00 0/1 0/0 0/0 .rodata          @7660 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7660 = 0.625f;
COMPILER_STRIP_GATE(0x80A925CC, &lit_7660);
#pragma pop

/* 80A925D0-80A925D0 0001B4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A925E7 = "Npc_ne";
#pragma pop

/* 80A91B88-80A92118 008FA8 0590+00 1/0 0/0 0/0 .text            daNpc_Ne_Create__FP10fopAc_ac_c */
#ifdef NONMATCHING
// matches with literals
static cPhs__Step daNpc_Ne_Create(fopAc_ac_c* i_this) {
    npc_ne_class* _this = static_cast<npc_ne_class*>(i_this);
    fopAcM_SetupActor(i_this, npc_ne_class);

    if (dKy_darkworld_check()) {
        _this->mResName = "Npc_net";
    } else {
        _this->mResName = "Npc_ne";
    }
    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&_this->mPhase, _this->mResName);

    if (step == cPhs_COMPLEATE_e) {
        _this->mBehavior = (u8)fopAcM_GetParam(_this);
        _this->mTexture = (u8)(fopAcM_GetParam(_this) >> 8) & 0xf;
        _this->mSize = (u8)(fopAcM_GetParam(_this) >> 0xc) & 0xf;
        _this->mPathIndex = (u8)(fopAcM_GetParam(_this) >> 0x10);
        _this->mIsGengle = (u8)(fopAcM_GetParam(_this) >> 0x18);

        if (_this->mIsGengle == 1 &&
                        !dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[457])) {
            return cPhs_ERROR_e;
        }

        _this->mFlowID = i_this->current.angle.x;
        i_this->shape_angle.x = 0;
        i_this->current.angle.x = 0;

        if (!fopAcM_entrySolidHeap(i_this, useHeapInit, 0x2a50)) {
            return cPhs_ERROR_e;
        }

        if (_this->mPathIndex != 0xff) {
            _this->mpPath = dPath_GetRoomPath(_this->mPathIndex, fopAcM_GetRoomNo(i_this));
            if (_this->mpPath == NULL) {
                return cPhs_ERROR_e;
            }
            _this->field_0x5b9 = _this->mPathIndex + 1;
            _this->mPathDir = 1;
            _this->mAction = npc_ne_class::ACT_PATH_WALK;
        } else {
            if (_this->mBehavior == npc_ne_class::BHV_TAME) {
                _this->mAction = npc_ne_class::ACT_TAME;
            } else if (_this->mBehavior == npc_ne_class::BHV_PIER) {
                if (dComIfGs_isEventBit(0x1001)) {
                    _this->mAction = npc_ne_class::ACT_ROOF;
                    i_this->current.pos.set(1005.0f, 766.0f, -1423.0f);
                    i_this->old = i_this->home = i_this->current;
                    i_this->current.angle.y = 0;
                    _this->mNoFollow = true;
                } else {
                    _this->mAction = npc_ne_class::ACT_SANBASI;
                    i_this->current.pos.set(3400.0f, 84.13f, 64.0f);
                    i_this->current.angle.y = -0x6987;
                    i_this->shape_angle.y = i_this->current.angle.y;
                    i_this->old = _this->home = i_this->current;
                    _this->mNoFollow = true;
                    _this->mWantsFish = 1;
                }
            } else if (_this->mBehavior == npc_ne_class::BHV_DISH) {
                _this->mAction = npc_ne_class::ACT_DISH;
                _this->mDishPos = i_this->current.pos;
                fopAcM_OnStatus(i_this, fopAcStts_NOPAUSE_e);
            }
        }

        if (!l_hioInit) {
            _this->mHIOInit = 1;
            l_hioInit = true;
            l_HIO.field_0x04 = -1;
        }

        fopAcM_OnStatus(i_this, fopAcStts_CULL_e);
        fopAcM_OnCarryType(i_this, fopAcM_CARRY_TYPE_8);
        i_this->attention_info.flags = 0;
        i_this->attention_info.field_0x0[4] = 7;
        fopAcM_SetMtx(i_this, _this->mpMorf->getModel()->getBaseTRMtx());
        i_this->health = 1;
        _this->field_0x560 = 1;

        /* 80A92950-80A92990 000360 0040+00 1/1 0/0 0/0 .data            cc_sph_src$7518 */
        static dCcD_SrcSph cc_sph_src = {
            {
                {0x0, {{0x0, 0x0, 0x0}, {0x0, 0x0}, 0x75}}, // mObj
                {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
                {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
                {0x0}, // mGObjCo
            }, // mObjInf
            {
                {{0.0f, 0.0f, 0.0f}, 20.0f} // mSph
            } // mSphAttr
        };

        /* 80A92990-80A929D0 0003A0 0040+00 1/1 0/0 0/0 .data            at_sph_src$7519 */
        static dCcD_SrcSph at_sph_src = {
            {
                {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0x1f}, {0x0, 0x0}, 0x0}}, // mObj
                {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
                {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
                {0x0}, // mGObjCo
            }, // mObjInf
            {
                {{0.0f, 0.0f, 0.0f}, 15.0f} // mSph
            } // mSphAttr
        };

        _this->mStts.Init(0x1e, 0, i_this);
        _this->mCcSph.Set(cc_sph_src);
        _this->mCcSph.SetStts(&_this->mStts);
        _this->mAtSph.Set(at_sph_src);
        _this->mAtSph.SetStts(&_this->mStts);
        _this->mCcSph.OnTgNoHitMark();

        if (_this->mTexture == 0xf) {
            _this->mBtkFrame = cM_rndF(3.999f);
        } else {
            _this->mBtkFrame = _this->mTexture;
            if (_this->mBtkFrame > 3) {
                _this->mBtkFrame = 3;
            }
        }
        _this->mCounter = cM_rndF(0x10000);
        if (_this->mSize == 1) {
            _this->mBaseScale.set(0.75f, 0.75f, 0.75f);
            _this->mSearchBall = 1;
        } else if (_this->mSize == 2) {
            _this->mBaseScale.set(0.625f, 0.625f, 0.625f);
            _this->mSearchBall = 1;
        } else {
            _this->mBaseScale.set(1.0f, 1.0f, 1.0f);
        }
        _this->mAcch.Set(fopAcM_GetPosition_p(i_this), fopAcM_GetOldPosition_p(i_this), i_this, 1,
                         &_this->mAcchCir, fopAcM_GetSpeed_p(i_this), NULL, NULL);
        _this->mAcchCir.SetWall(_this->mBaseScale.y * 30.0f, _this->mBaseScale.z * 35.0f);
        _this->mDistScale = cM_rndFX(0.2f) + 1.0f;
        _this->mGroundY = i_this->current.pos.y;
        if (_this->mResName == "Npc_net") {
            _this->mAction = npc_ne_class::ACT_WAIT;
            _this->mMode = 0;
        }
        _this->mFishID = -1;

        daNpc_Ne_Execute(_this);
    }
    return step;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm cPhs__Step daNpc_Ne_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/daNpc_Ne_Create__FP10fopAc_ac_c.s"
}
#pragma pop
#endif

/* 80A92118-80A92274 009538 015C+00 1/1 0/0 0/0 .text            __ct__12npc_ne_classFv */
#ifdef NONMATCHING
// matches but vtable ordering is wrong
npc_ne_class::npc_ne_class() {
    /* empty function */
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm npc_ne_class::npc_ne_class() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/__ct__12npc_ne_classFv.s"
}
#pragma pop
#endif

#ifndef NONMATCHING
/* 80A92274-80A922BC 009694 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGSph::~cM3dGSph() {
extern "C" asm void __dt__8cM3dGSphFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/__dt__8cM3dGSphFv.s"
}
#pragma pop

/* 80A922BC-80A92304 0096DC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 80A92304-80A92374 009724 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 80A92374-80A923BC 009794 0048+00 2/1 0/0 0/0 .text            __dt__14daNpc_Ne_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpc_Ne_HIO_c::~daNpc_Ne_HIO_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/__dt__14daNpc_Ne_HIO_cFv.s"
}
#pragma pop

/* 80A923BC-80A923F8 0097DC 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_ne_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_npc_ne_cpp() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/__sinit_d_a_npc_ne_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80A923BC, __sinit_d_a_npc_ne_cpp);
#pragma pop

/* 80A923F8-80A92400 009818 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80A923F8() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/func_80A923F8.s"
}
#pragma pop

/* 80A92400-80A92408 009820 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80A92400() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_ne/d_a_npc_ne/func_80A92400.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80A92B1C-80A92B20 00009C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80A92B1C[4];
#pragma pop

/* 80A92B20-80A92B24 0000A0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80A92B20[4];
#pragma pop

/* 80A92B24-80A92B28 0000A4 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80A92B24[4];
#pragma pop

/* 80A92B28-80A92B2C 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80A92B28[4];
#pragma pop

/* 80A92B2C-80A92B30 0000AC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A92B2C[4];
#pragma pop

/* 80A92B30-80A92B34 0000B0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A92B30[4];
#pragma pop

/* 80A92B34-80A92B38 0000B4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80A92B34[4];
#pragma pop

/* 80A92B38-80A92B3C 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80A92B38[4];
#pragma pop

/* 80A92B3C-80A92B40 0000BC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80A92B3C[4];
#pragma pop

/* 80A92B40-80A92B44 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80A92B40[4];
#pragma pop

/* 80A92B44-80A92B48 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80A92B44[4];
#pragma pop

/* 80A92B48-80A92B4C 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80A92B48[4];
#pragma pop

/* 80A92B4C-80A92B50 0000CC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80A92B4C[4];
#pragma pop

/* 80A92B50-80A92B54 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A92B50[4];
#pragma pop

/* 80A92B54-80A92B58 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80A92B54[4];
#pragma pop

/* 80A92B58-80A92B5C 0000D8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80A92B58[4];
#pragma pop

/* 80A92B5C-80A92B60 0000DC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80A92B5C[4];
#pragma pop

/* 80A92B60-80A92B64 0000E0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80A92B60[4];
#pragma pop

/* 80A92B64-80A92B68 0000E4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80A92B64[4];
#pragma pop

/* 80A92B68-80A92B6C 0000E8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80A92B68[4];
#pragma pop

/* 80A92B6C-80A92B70 0000EC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80A92B6C[4];
#pragma pop

/* 80A92B70-80A92B74 0000F0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A92B70[4];
#pragma pop

/* 80A92B74-80A92B78 0000F4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A92B74[4];
#pragma pop

/* 80A92B78-80A92B7C 0000F8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A92B78[4];
#pragma pop

/* 80A92B7C-80A92B80 0000FC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80A92B7C[4];
#pragma pop

/* 80A925D0-80A925D0 0001B4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
