/**
 * @file d_a_obj_inobone.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_inobone.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void bornTgCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" static void bornCoCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" static void s_boar_sub__FPvPv();
extern "C" static void CheckCreateHeap__FP10fopAc_ac_c();
extern "C" void initBaseMtx__12daObjIBone_cFv();
extern "C" void setBaseMtx__12daObjIBone_cFv();
extern "C" void Create__12daObjIBone_cFv();
extern "C" void CreateHeap__12daObjIBone_cFv();
extern "C" void create__12daObjIBone_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void execute__12daObjIBone_cFv();
extern "C" void setBreakEffect__12daObjIBone_cFv();
extern "C" void draw__12daObjIBone_cFv();
extern "C" void _delete__12daObjIBone_cFv();
extern "C" static void daObjIBone_Draw__FP12daObjIBone_c();
extern "C" static void daObjIBone_Execute__FP12daObjIBone_c();
extern "C" static void daObjIBone_Delete__FP12daObjIBone_c();
extern "C" static void daObjIBone_Create__FP10fopAc_ac_c();
extern "C" extern char const* const d_a_obj_inobone__stringBase0;

//
// External References:
//

extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createItemForDirectGet__FPC4cXyziiPC5csXyzPC4cXyzff();
extern "C" void fopAcM_createItem__FPC4cXyziiiPC5csXyzPC4cXyzi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void
setModel__18dPa_modelEcallBackFP14JPABaseEmitterP12J3DModelDataRC12dKy_tevstr_cUcPvUcUc();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void GetTgHitObjSe__12dCcD_GObjInfFv();
extern "C" void getHitSeID__12dCcD_GObjInfFUci();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __ct__5csXyzFsss();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void deleteObject__14Z2SoundObjBaseFv();
extern "C" void startCollisionSE__14Z2SoundObjBaseFUlUlP14Z2SoundObjBase();
extern "C" void __ct__16Z2SoundObjSimpleFv();
extern "C" void __dl__FPv();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_29();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mEcallback__18dPa_modelEcallBack[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* 80C276B8-80C27714 000078 005C+00 1/1 0/0 0/0 .text
 * bornTgCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
static void bornTgCallBack(fopAc_ac_c* param_0, dCcD_GObjInf* param_1, fopAc_ac_c* param_2,
                               dCcD_GObjInf* param_3) {
    // NONMATCHING
}

/* 80C27714-80C27780 0000D4 006C+00 1/1 0/0 0/0 .text
 * bornCoCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
static void bornCoCallBack(fopAc_ac_c* param_0, dCcD_GObjInf* param_1, fopAc_ac_c* param_2,
                               dCcD_GObjInf* param_3) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C28120-80C28164 000000 0044+00 3/3 0/0 0/0 .rodata          l_cyl_src */
const static dCcD_SrcCyl l_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x1f}, {0xd8fafdff, 0x11}, 0x79}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x2, 0x0, 0x0, 0x6}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        140.0f, // mRadius
        70.0f // mHeight
    } // mCyl
};

/* 80C28164-80C281A8 000044 0044+00 0/1 0/0 0/0 .rodata          l_cyl_src2 */
#pragma push
#pragma force_active on
const static dCcD_SrcCyl l_cyl_src2 = {
    {
        {0x0, {{0x0, 0x0, 0x1f}, {0x2000, 0x11}, 0x78}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x2, 0x0, 0x0, 0x3}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        140.0f, // mRadius
        70.0f // mHeight
    } // mCyl
};
#pragma pop

/* 80C281A8-80C281AC 000088 0004+00 1/2 0/0 0/0 .rodata          @3693 */
SECTION_RODATA static f32 const lit_3693 = 100.0f;
COMPILER_STRIP_GATE(0x80C281A8, &lit_3693);

/* 80C281AC-80C281B0 00008C 0004+00 1/2 0/0 0/0 .rodata          @3694 */
SECTION_RODATA static f32 const lit_3694 = 240.0f;
COMPILER_STRIP_GATE(0x80C281AC, &lit_3694);

/* 80C27780-80C27810 000140 0090+00 1/1 0/0 0/0 .text            s_boar_sub__FPvPv */
static void s_boar_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80C27810-80C27830 0001D0 0020+00 1/1 0/0 0/0 .text            CheckCreateHeap__FP10fopAc_ac_c */
static void CheckCreateHeap(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C27830-80C2786C 0001F0 003C+00 1/1 0/0 0/0 .text            initBaseMtx__12daObjIBone_cFv */
void daObjIBone_c::initBaseMtx() {
    // NONMATCHING
}

/* 80C2786C-80C278CC 00022C 0060+00 1/1 0/0 0/0 .text            setBaseMtx__12daObjIBone_cFv */
void daObjIBone_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C281B0-80C281B4 000090 0004+00 0/1 0/0 0/0 .rodata          @3738 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3738 = 27.0f / 20.0f;
COMPILER_STRIP_GATE(0x80C281B0, &lit_3738);
#pragma pop

/* 80C278CC-80C279A8 00028C 00DC+00 1/1 0/0 0/0 .text            Create__12daObjIBone_cFv */
void daObjIBone_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C281C4-80C281C4 0000A4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C281C4 = "Obj_Ibone";
SECTION_DEAD static char const* const stringBase_80C281CE = "A_InoBone.bmd";
#pragma pop

/* 80C281F8-80C281FC -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_inobone__stringBase0;

/* 80C281FC-80C28200 -00001 0004+00 1/1 0/0 0/0 .data            l_bmdName */
SECTION_DATA static void* l_bmdName = (void*)(((char*)&d_a_obj_inobone__stringBase0) + 0xA);

/* 80C279A8-80C27A20 000368 0078+00 1/1 0/0 0/0 .text            CreateHeap__12daObjIBone_cFv */
void daObjIBone_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C28200-80C28220 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjIBone_Method */
static actor_method_class l_daObjIBone_Method = {
    (process_method_func)daObjIBone_Create__FP10fopAc_ac_c,
    (process_method_func)daObjIBone_Delete__FP12daObjIBone_c,
    (process_method_func)daObjIBone_Execute__FP12daObjIBone_c,
    0,
    (process_method_func)daObjIBone_Draw__FP12daObjIBone_c,
};

/* 80C28220-80C28250 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_InoBone */
extern actor_process_profile_definition g_profile_Obj_InoBone = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_InoBone,       // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjIBone_c),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  729,                    // mPriority
  &l_daObjIBone_Method,   // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C28250-80C2825C 000058 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80C2825C-80C28268 000064 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80C27A20-80C27BBC 0003E0 019C+00 1/1 0/0 0/0 .text            create__12daObjIBone_cFv */
void daObjIBone_c::create() {
    // NONMATCHING
}

/* 80C27BBC-80C27C04 00057C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80C27C04-80C27C4C 0005C4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C281B4-80C281B8 000094 0004+00 0/1 0/0 0/0 .rodata          @3926 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3926[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C281B4, &lit_3926);
#pragma pop

/* 80C27C4C-80C27E48 00060C 01FC+00 1/1 0/0 0/0 .text            execute__12daObjIBone_cFv */
void daObjIBone_c::execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C281B8-80C281BC 000098 0002+02 0/1 0/0 0/0 .rodata          particle_id$3930 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const particle_id[2 + 2 /* padding */] = {
    0x82,
    0xE3,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C281B8, &particle_id);
#pragma pop

/* 80C281BC-80C281C0 00009C 0004+00 0/1 0/0 0/0 .rodata          @3963 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3963 = 1.0f;
COMPILER_STRIP_GATE(0x80C281BC, &lit_3963);
#pragma pop

/* 80C281C0-80C281C4 0000A0 0004+00 0/1 0/0 0/0 .rodata          @3964 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3964 = -1.0f;
COMPILER_STRIP_GATE(0x80C281C0, &lit_3964);
#pragma pop

/* 80C281C4-80C281C4 0000A4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C281DC = "BreakBoarBone.bmd";
SECTION_DEAD static char const* const stringBase_80C281EE = "Always";
#pragma pop

/* 80C27E48-80C27FEC 000808 01A4+00 1/1 0/0 0/0 .text            setBreakEffect__12daObjIBone_cFv */
void daObjIBone_c::setBreakEffect() {
    // NONMATCHING
}

/* 80C27FEC-80C28050 0009AC 0064+00 1/1 0/0 0/0 .text            draw__12daObjIBone_cFv */
void daObjIBone_c::draw() {
    // NONMATCHING
}

/* 80C28050-80C28098 000A10 0048+00 1/1 0/0 0/0 .text            _delete__12daObjIBone_cFv */
void daObjIBone_c::_delete() {
    // NONMATCHING
}

/* 80C28098-80C280B8 000A58 0020+00 1/0 0/0 0/0 .text            daObjIBone_Draw__FP12daObjIBone_c
 */
static void daObjIBone_Draw(daObjIBone_c* param_0) {
    // NONMATCHING
}

/* 80C280B8-80C280D8 000A78 0020+00 1/0 0/0 0/0 .text daObjIBone_Execute__FP12daObjIBone_c */
static void daObjIBone_Execute(daObjIBone_c* param_0) {
    // NONMATCHING
}

/* 80C280D8-80C280F8 000A98 0020+00 1/0 0/0 0/0 .text            daObjIBone_Delete__FP12daObjIBone_c
 */
static void daObjIBone_Delete(daObjIBone_c* param_0) {
    // NONMATCHING
}

/* 80C280F8-80C28118 000AB8 0020+00 1/0 0/0 0/0 .text            daObjIBone_Create__FP10fopAc_ac_c
 */
static void daObjIBone_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C281C4-80C281C4 0000A4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
