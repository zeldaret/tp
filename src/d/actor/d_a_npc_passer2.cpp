/**
 * @file d_a_npc_passer2.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_passer2.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" static void createHeapCallBack__FP10fopAc_ac_c();
extern "C" void setAction__14daNpcPasser2_cFQ214daNpcPasser2_c6Mode_e();
extern "C" void callInit__14daNpcPasser2_cFv();
extern "C" void callExecute__14daNpcPasser2_cFv();
extern "C" void initPath__14daNpcPasser2_cFv();
extern "C" void executePath__14daNpcPasser2_cFv();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void setAngle__14daNpcPasser2_cFv();
extern "C" void pathMoveF__14daNpcPasser2_cFv();
extern "C" static void daNpcPasser2_Create__FPv();
extern "C" void create__14daNpcPasser2_cFv();
extern "C" void create_init__14daNpcPasser2_cFv();
extern "C" static void daNpcPasser2_Delete__FPv();
extern "C" void __dt__14daNpcPasser2_cFv();
extern "C" static void daNpcPasser2_Execute__FPv();
extern "C" static void daNpcPasser2_Draw__FPv();
extern "C" static bool daNpcPasser2_IsDelete__FPv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void func_80AA85C8(void* _this, int, int);
extern "C" void __sinit_d_a_npc_passer2_cpp();
extern "C" static void func_80AA8684();
extern "C" static void func_80AA868C();
extern "C" void __dt__9daNpcCd_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" u8 ActionTable__14daNpcPasser2_c[24];

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void setMorf__13mDoExt_morf_cFf();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_getPolygonAngle__FPC8cM3dGPlas();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWallR__12dBgS_AcchCirFf();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void NpcCreate__9daNpcCd_cFi();
extern "C" void ObjCreate__9daNpcCd_cFi();
extern "C" void getAnmP__9daNpcCd_cFii();
extern "C" void setAttention__9daNpcCd_cFi();
extern "C" void loadResrc__9daNpcCd_cFii();
extern "C" void removeResrc__9daNpcCd_cFii();
extern "C" void setEnvTevCol__9daNpcCd_cFv();
extern "C" void setRoomNo__9daNpcCd_cFv();
extern "C" void animation__9daNpcCd_cFv();
extern "C" void setAnm__9daNpcCd_cFP18J3DAnmTransformKeyffiii();
extern "C" void drawObj__9daNpcCd_cFiP8J3DModelf();
extern "C" void drawNpc__9daNpcCd_cFv();
extern "C" void setPath__11PathTrace_cFiiiP4cXyzb();
extern "C" void checkPoint__11PathTrace_cF4cXyzf();
extern "C" void checkPathEnd__11PathTrace_cF4cXyzf();
extern "C" void getTargetPoint__11PathTrace_cFP3Vec();
extern "C" void setNextPoint__11PathTrace_cFR4cXyz();
extern "C" void dKy_getdaytime_hour__Fv();
extern "C" void dKy_getdaytime_minute__Fv();
extern "C" void dKy_getDarktime_hour__Fv();
extern "C" void dKy_getDarktime_minute__Fv();
extern "C" void dKy_getDarktime_week__Fv();
extern "C" void dKy_get_dayofweek__Fv();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void cM_rndF__Ff();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_distanceAngleS__Fss();
extern "C" void __ct__17Z2CreatureCitizenFv();
extern "C" void __dt__17Z2CreatureCitizenFv();
extern "C" void __dl__FPv();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 const m_cylDat__9daNpcCd_c[68];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 l_Cd_HIO[10684];
extern "C" u8 sincosTable___5JMath[65536];

//
// Declarations:
//

/* 80AA74D8-80AA755C 000078 0084+00 1/1 0/0 0/0 .text            createHeapCallBack__FP10fopAc_ac_c
 */
static void createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80AA8A88-80AA8A94 -00001 000C+00 0/1 0/0 0/0 .data            @3845 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3845[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)initPath__14daNpcPasser2_cFv,
};
#pragma pop

/* 80AA8A94-80AA8AA0 -00001 000C+00 0/1 0/0 0/0 .data            @3846 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3846[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)executePath__14daNpcPasser2_cFv,
};
#pragma pop

/* 80AA8AA0-80AA8AB8 000038 0018+00 1/2 0/0 0/0 .data            ActionTable__14daNpcPasser2_c */
SECTION_DATA u8 daNpcPasser2_c::ActionTable[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AA755C-80AA75A0 0000FC 0044+00 1/1 0/0 0/0 .text
 * setAction__14daNpcPasser2_cFQ214daNpcPasser2_c6Mode_e        */
void daNpcPasser2_c::setAction(daNpcPasser2_c::Mode_e param_0) {
    // NONMATCHING
}

/* 80AA75A0-80AA75C8 000140 0028+00 1/1 0/0 0/0 .text            callInit__14daNpcPasser2_cFv */
void daNpcPasser2_c::callInit() {
    // NONMATCHING
}

/* 80AA75C8-80AA75F4 000168 002C+00 1/1 0/0 0/0 .text            callExecute__14daNpcPasser2_cFv */
void daNpcPasser2_c::callExecute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA8A18-80AA8A1C 000000 0004+00 3/3 0/0 0/0 .rodata          @3963 */
SECTION_RODATA static f32 const lit_3963 = 1.0f;
COMPILER_STRIP_GATE(0x80AA8A18, &lit_3963);

/* 80AA8A1C-80AA8A20 000004 0004+00 1/1 0/0 0/0 .rodata          @3964 */
SECTION_RODATA static f32 const lit_3964 = 12.0f;
COMPILER_STRIP_GATE(0x80AA8A1C, &lit_3964);

/* 80AA75F4-80AA774C 000194 0158+00 1/0 0/0 0/0 .text            initPath__14daNpcPasser2_cFv */
void daNpcPasser2_c::initPath() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA8AB8-80AA8AD8 -00001 0020+00 1/0 0/0 0/0 .data            daNpcPasser2_METHODS */
static actor_method_class daNpcPasser2_METHODS = {
    (process_method_func)daNpcPasser2_Create__FPv,
    (process_method_func)daNpcPasser2_Delete__FPv,
    (process_method_func)daNpcPasser2_Execute__FPv,
    (process_method_func)daNpcPasser2_IsDelete__FPv,
    (process_method_func)daNpcPasser2_Draw__FPv,
};

/* 80AA8AD8-80AA8B08 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_PASSER2 */
extern actor_process_profile_definition g_profile_NPC_PASSER2 = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_PASSER2,       // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpcPasser2_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  402,                    // mPriority
  &daNpcPasser2_METHODS,  // sub_method
  0x02040107,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80AA8B08-80AA8B14 0000A0 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80AA8B14-80AA8B20 0000AC 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80AA8B20-80AA8B2C 0000B8 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80AA8B2C-80AA8B38 0000C4 000C+00 2/2 0/0 0/0 .data            __vt__14daNpcPasser2_c */
SECTION_DATA extern void* __vt__14daNpcPasser2_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14daNpcPasser2_cFv,
};

/* 80AA8B38-80AA8B44 0000D0 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80AA8B44-80AA8B50 0000DC 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80AA8B50-80AA8B74 0000E8 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AA868C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AA8684,
};

/* 80AA8B74-80AA8B80 00010C 000C+00 2/2 0/0 0/0 .data            __vt__9daNpcCd_c */
SECTION_DATA extern void* __vt__9daNpcCd_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__9daNpcCd_cFv,
};

/* 80AA8B80-80AA8B8C 000118 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 80AA774C-80AA78C4 0002EC 0178+00 1/0 0/0 0/0 .text            executePath__14daNpcPasser2_cFv */
void daNpcPasser2_c::executePath() {
    // NONMATCHING
}

/* 80AA78C4-80AA790C 000464 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* 80AA790C-80AA7918 0004AC 000C+00 1/1 0/0 0/0 .text            setAngle__14daNpcPasser2_cFv */
void daNpcPasser2_c::setAngle() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA8A20-80AA8A24 000008 0004+00 0/2 0/0 0/0 .rodata          @4127 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4127[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AA8A20, &lit_4127);
#pragma pop

/* 80AA8A24-80AA8A28 00000C 0004+00 0/1 0/0 0/0 .rodata          @4128 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4128 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x80AA8A24, &lit_4128);
#pragma pop

/* 80AA8A28-80AA8A2C 000010 0004+00 0/1 0/0 0/0 .rodata          @4129 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4129 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80AA8A28, &lit_4129);
#pragma pop

/* 80AA8A2C-80AA8A30 000014 0004+00 0/1 0/0 0/0 .rodata          @4130 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4130 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80AA8A2C, &lit_4130);
#pragma pop

/* 80AA8A30-80AA8A34 000018 0004+00 0/1 0/0 0/0 .rodata          @4131 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4131 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x80AA8A30, &lit_4131);
#pragma pop

/* 80AA8A34-80AA8A38 00001C 0004+00 0/1 0/0 0/0 .rodata          @4132 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4132 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80AA8A34, &lit_4132);
#pragma pop

/* 80AA7918-80AA7CB8 0004B8 03A0+00 1/1 0/0 0/0 .text            pathMoveF__14daNpcPasser2_cFv */
void daNpcPasser2_c::pathMoveF() {
    // NONMATCHING
}

/* 80AA7CB8-80AA7CD8 000858 0020+00 1/0 0/0 0/0 .text            daNpcPasser2_Create__FPv */
static void daNpcPasser2_Create(void* param_0) {
    // NONMATCHING
}

/* 80AA7CD8-80AA7F78 000878 02A0+00 1/1 0/0 0/0 .text            create__14daNpcPasser2_cFv */
void daNpcPasser2_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA8A38-80AA8A3C 000020 0004+00 0/1 0/0 0/0 .rodata          @4273 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4273 = -3.0f;
COMPILER_STRIP_GATE(0x80AA8A38, &lit_4273);
#pragma pop

/* 80AA8A3C-80AA8A40 000024 0004+00 0/1 0/0 0/0 .rodata          @4274 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4274 = -40.0f;
COMPILER_STRIP_GATE(0x80AA8A3C, &lit_4274);
#pragma pop

/* 80AA8A40-80AA8A44 000028 0004+00 0/1 0/0 0/0 .rodata          @4275 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4275 = -10.0f;
COMPILER_STRIP_GATE(0x80AA8A40, &lit_4275);
#pragma pop

/* 80AA8A44-80AA8A48 00002C 0004+00 0/1 0/0 0/0 .rodata          @4276 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4276 = -30.0f;
COMPILER_STRIP_GATE(0x80AA8A44, &lit_4276);
#pragma pop

/* 80AA8A48-80AA8A4C 000030 0004+00 0/1 0/0 0/0 .rodata          @4277 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4277 = 30.0f;
COMPILER_STRIP_GATE(0x80AA8A48, &lit_4277);
#pragma pop

/* 80AA8A4C-80AA8A50 000034 0004+00 0/1 0/0 0/0 .rodata          @4278 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4278 = 190.0f;
COMPILER_STRIP_GATE(0x80AA8A4C, &lit_4278);
#pragma pop

/* 80AA8A50-80AA8A54 000038 0004+00 0/1 0/0 0/0 .rodata          @4279 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4279 = 40.0f;
COMPILER_STRIP_GATE(0x80AA8A50, &lit_4279);
#pragma pop

/* 80AA7F78-80AA823C 000B18 02C4+00 1/1 0/0 0/0 .text            create_init__14daNpcPasser2_cFv */
void daNpcPasser2_c::create_init() {
    // NONMATCHING
}

/* 80AA823C-80AA8270 000DDC 0034+00 1/0 0/0 0/0 .text            daNpcPasser2_Delete__FPv */
static void daNpcPasser2_Delete(void* param_0) {
    // NONMATCHING
}

/* 80AA8270-80AA8304 000E10 0094+00 1/0 0/0 0/0 .text            __dt__14daNpcPasser2_cFv */
daNpcPasser2_c::~daNpcPasser2_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA8A54-80AA8A58 00003C 0004+00 1/1 0/0 0/0 .rodata          @4450 */
SECTION_RODATA static f32 const lit_4450 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80AA8A54, &lit_4450);

/* 80AA8A58-80AA8A60 000040 0004+04 1/1 0/0 0/0 .rodata          @4451 */
SECTION_RODATA static f32 const lit_4451[1 + 1 /* padding */] = {
    25.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80AA8A58, &lit_4451);

/* 80AA8304-80AA8500 000EA4 01FC+00 1/0 0/0 0/0 .text            daNpcPasser2_Execute__FPv */
static void daNpcPasser2_Execute(void* param_0) {
    // NONMATCHING
}

/* 80AA8500-80AA8578 0010A0 0078+00 1/0 0/0 0/0 .text            daNpcPasser2_Draw__FPv */
static void daNpcPasser2_Draw(void* param_0) {
    // NONMATCHING
}

/* 80AA8578-80AA8580 001118 0008+00 1/0 0/0 0/0 .text            daNpcPasser2_IsDelete__FPv */
static bool daNpcPasser2_IsDelete(void* param_0) {
    return true;
}

/* 80AA8580-80AA85C8 001120 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA8A60-80AA8A68 000048 0008+00 1/1 0/0 0/0 .rodata          @4481 */
SECTION_RODATA static u8 const lit_4481[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AA8A60, &lit_4481);

/* 80AA85C8-80AA8644 001168 007C+00 1/1 0/0 0/0 .text            cLib_getRndValue<i>__Fii */
extern "C" void func_80AA85C8(void* _this, int param_0, int param_1) {
    // NONMATCHING
}

/* 80AA8644-80AA8684 0011E4 0040+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_passer2_cpp */
void __sinit_d_a_npc_passer2_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80AA8644, __sinit_d_a_npc_passer2_cpp);
#pragma pop

/* 80AA8684-80AA868C 001224 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80AA8684() {
    // NONMATCHING
}

/* 80AA868C-80AA8694 00122C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80AA868C() {
    // NONMATCHING
}

/* 80AA8694-80AA8840 001234 01AC+00 2/1 0/0 0/0 .text            __dt__9daNpcCd_cFv */
// daNpcCd_c::~daNpcCd_c() {
extern "C" void __dt__9daNpcCd_cFv() {
    // NONMATCHING
}

/* 80AA8840-80AA8888 0013E0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80AA8888-80AA88D0 001428 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80AA88D0-80AA892C 001470 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80AA892C-80AA899C 0014CC 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80AA899C-80AA8A0C 00153C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}
