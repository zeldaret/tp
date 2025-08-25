/**
 * @file d_a_obj_nougu.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_nougu.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __dt__13daObj_Nougu_cFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void create__13daObj_Nougu_cFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void CreateHeap__13daObj_Nougu_cFv();
extern "C" void Delete__13daObj_Nougu_cFv();
extern "C" void Execute__13daObj_Nougu_cFv();
extern "C" void Draw__13daObj_Nougu_cFv();
extern "C" void createHeapCallBack__13daObj_Nougu_cFP10fopAc_ac_c();
extern "C" void getResName__13daObj_Nougu_cFv();
extern "C" void isDelete__13daObj_Nougu_cFv();
extern "C" void setEnvTevColor__13daObj_Nougu_cFv();
extern "C" void setRoomNo__13daObj_Nougu_cFv();
extern "C" void setMtx__13daObj_Nougu_cFv();
extern "C" static void daObj_Nougu_Create__FPv();
extern "C" static void daObj_Nougu_Delete__FPv();
extern "C" static void daObj_Nougu_Execute__FPv();
extern "C" static void daObj_Nougu_Draw__FPv();
extern "C" static bool daObj_Nougu_IsDelete__FPv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __sinit_d_a_obj_nougu_cpp();
extern "C" void __dt__19daObj_Nougu_Param_cFv();
extern "C" static void func_80CA4994();
extern "C" static void func_80CA499C();
extern "C" u8 const m__19daObj_Nougu_Param_c[16];
extern "C" extern char const* const d_a_obj_nougu__stringBase0;
extern "C" u8 mCcDSph__13daObj_Nougu_c[64];

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void GetPolyColor__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetRoomId__4dBgSFRC13cBgS_PolyInfo();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void __dl__FPv();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void _savegpr_24();
extern "C" void _restgpr_24();
extern "C" u8 const mCcDObjData__8daNpcT_c[48];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80CA49F8-80CA49F8 000040 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CA49F8 = "Jagar4";
#pragma pop

/* 80CA4A00-80CA4A40 000000 0040+00 2/2 0/0 0/0 .data            mCcDSph__13daObj_Nougu_c */
SECTION_DATA u8 daObj_Nougu_c::mCcDSph[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80CA4A40-80CA4A44 -00001 0004+00 1/1 0/0 0/0 .data            l_resName */
SECTION_DATA static void* l_resName = (void*)&d_a_obj_nougu__stringBase0;

/* 80CA4A44-80CA4A64 -00001 0020+00 1/0 0/0 0/0 .data            daObj_Nougu_MethodTable */
static actor_method_class daObj_Nougu_MethodTable = {
    (process_method_func)daObj_Nougu_Create__FPv,
    (process_method_func)daObj_Nougu_Delete__FPv,
    (process_method_func)daObj_Nougu_Execute__FPv,
    (process_method_func)daObj_Nougu_IsDelete__FPv,
    (process_method_func)daObj_Nougu_Draw__FPv,
};

/* 80CA4A64-80CA4A94 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_NOUGU */
extern actor_process_profile_definition g_profile_OBJ_NOUGU = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_OBJ_NOUGU,           // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daObj_Nougu_c),    // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  84,                       // mPriority
  &daObj_Nougu_MethodTable, // sub_method
  0x00044100,               // mStatus
  fopAc_ACTOR_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 80CA4A94-80CA4AA0 000094 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80CA4AA0-80CA4AAC 0000A0 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80CA4AAC-80CA4AD0 0000AC 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80CA499C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80CA4994,
};

/* 80CA4AD0-80CA4ADC 0000D0 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80CA4ADC-80CA4AE8 0000DC 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80CA4AE8-80CA4AF4 0000E8 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80CA4AF4-80CA4B00 0000F4 000C+00 2/2 0/0 0/0 .data            __vt__13daObj_Nougu_c */
SECTION_DATA extern void* __vt__13daObj_Nougu_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daObj_Nougu_cFv,
};

/* 80CA3C0C-80CA3D58 0000EC 014C+00 1/0 0/0 0/0 .text            __dt__13daObj_Nougu_cFv */
daObj_Nougu_c::~daObj_Nougu_c() {
    // NONMATCHING
}

/* 80CA3D58-80CA3E24 000238 00CC+00 2/2 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CA49B8-80CA49C8 000000 0010+00 3/3 0/0 0/0 .rodata          m__19daObj_Nougu_Param_c */
SECTION_RODATA u8 const daObj_Nougu_Param_c::m[16] = {
    0x00, 0x00, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CA49B8, &daObj_Nougu_Param_c::m);

/* 80CA49C8-80CA49CC 000010 0004+00 0/1 0/0 0/0 .rodata          @3916 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3916 = -75.0f;
COMPILER_STRIP_GATE(0x80CA49C8, &lit_3916);
#pragma pop

/* 80CA49CC-80CA49D0 000014 0004+00 0/1 0/0 0/0 .rodata          @3917 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3917 = -50.0f;
COMPILER_STRIP_GATE(0x80CA49CC, &lit_3917);
#pragma pop

/* 80CA49D0-80CA49D4 000018 0004+00 0/1 0/0 0/0 .rodata          @3918 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3918 = -100.0f;
COMPILER_STRIP_GATE(0x80CA49D0, &lit_3918);
#pragma pop

/* 80CA49D4-80CA49D8 00001C 0004+00 0/1 0/0 0/0 .rodata          @3919 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3919 = 75.0f;
COMPILER_STRIP_GATE(0x80CA49D4, &lit_3919);
#pragma pop

/* 80CA49D8-80CA49DC 000020 0004+00 0/1 0/0 0/0 .rodata          @3920 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3920 = 50.0f;
COMPILER_STRIP_GATE(0x80CA49D8, &lit_3920);
#pragma pop

/* 80CA49DC-80CA49E0 000024 0004+00 0/1 0/0 0/0 .rodata          @3921 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3921 = 100.0f;
COMPILER_STRIP_GATE(0x80CA49DC, &lit_3921);
#pragma pop

/* 80CA49E0-80CA49E4 000028 0004+00 0/3 0/0 0/0 .rodata          @3922 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3922 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80CA49E0, &lit_3922);
#pragma pop

/* 80CA3E24-80CA40D8 000304 02B4+00 1/1 0/0 0/0 .text            create__13daObj_Nougu_cFv */
void daObj_Nougu_c::create() {
    // NONMATCHING
}

/* 80CA40D8-80CA415C 0005B8 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80CA415C-80CA41A4 00063C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80CA41A4-80CA41EC 000684 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80CA41EC-80CA425C 0006CC 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80CA425C-80CA42B8 00073C 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80CA42B8-80CA4328 000798 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80CA4328-80CA43A0 000808 0078+00 1/1 0/0 0/0 .text            CreateHeap__13daObj_Nougu_cFv */
void daObj_Nougu_c::CreateHeap() {
    // NONMATCHING
}

/* 80CA43A0-80CA43D4 000880 0034+00 1/1 0/0 0/0 .text            Delete__13daObj_Nougu_cFv */
void daObj_Nougu_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CA49E4-80CA49E8 00002C 0004+00 0/1 0/0 0/0 .rodata          @4046 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4046 = 60.0f;
COMPILER_STRIP_GATE(0x80CA49E4, &lit_4046);
#pragma pop

/* 80CA49E8-80CA49EC 000030 0004+00 0/1 0/0 0/0 .rodata          @4047 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4047[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CA49E8, &lit_4047);
#pragma pop

/* 80CA49EC-80CA49F0 000034 0004+00 0/1 0/0 0/0 .rodata          @4048 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4048 = 30.0f;
COMPILER_STRIP_GATE(0x80CA49EC, &lit_4048);
#pragma pop

/* 80CA43D4-80CA45F4 0008B4 0220+00 2/2 0/0 0/0 .text            Execute__13daObj_Nougu_cFv */
void daObj_Nougu_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CA49F0-80CA49F4 000038 0004+00 0/1 0/0 0/0 .rodata          @4060 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4060 = 20.0f;
COMPILER_STRIP_GATE(0x80CA49F0, &lit_4060);
#pragma pop

/* 80CA49F4-80CA49F8 00003C 0004+00 0/1 0/0 0/0 .rodata          @4061 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4061 = 1.0f;
COMPILER_STRIP_GATE(0x80CA49F4, &lit_4061);
#pragma pop

/* 80CA45F4-80CA46B8 000AD4 00C4+00 1/1 0/0 0/0 .text            Draw__13daObj_Nougu_cFv */
void daObj_Nougu_c::Draw() {
    // NONMATCHING
}

/* 80CA46B8-80CA46D8 000B98 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__13daObj_Nougu_cFP10fopAc_ac_c            */
void daObj_Nougu_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80CA46D8-80CA46E8 000BB8 0010+00 3/3 0/0 0/0 .text            getResName__13daObj_Nougu_cFv */
void daObj_Nougu_c::getResName() {
    // NONMATCHING
}

/* 80CA46E8-80CA4708 000BC8 0020+00 1/1 0/0 0/0 .text            isDelete__13daObj_Nougu_cFv */
void daObj_Nougu_c::isDelete() {
    // NONMATCHING
}

/* 80CA4708-80CA4764 000BE8 005C+00 2/2 0/0 0/0 .text            setEnvTevColor__13daObj_Nougu_cFv
 */
void daObj_Nougu_c::setEnvTevColor() {
    // NONMATCHING
}

/* 80CA4764-80CA47A4 000C44 0040+00 2/2 0/0 0/0 .text            setRoomNo__13daObj_Nougu_cFv */
void daObj_Nougu_c::setRoomNo() {
    // NONMATCHING
}

/* 80CA47A4-80CA4808 000C84 0064+00 1/1 0/0 0/0 .text            setMtx__13daObj_Nougu_cFv */
void daObj_Nougu_c::setMtx() {
    // NONMATCHING
}

/* 80CA4808-80CA4828 000CE8 0020+00 1/0 0/0 0/0 .text            daObj_Nougu_Create__FPv */
static void daObj_Nougu_Create(void* param_0) {
    // NONMATCHING
}

/* 80CA4828-80CA4848 000D08 0020+00 1/0 0/0 0/0 .text            daObj_Nougu_Delete__FPv */
static void daObj_Nougu_Delete(void* param_0) {
    // NONMATCHING
}

/* 80CA4848-80CA4868 000D28 0020+00 1/0 0/0 0/0 .text            daObj_Nougu_Execute__FPv */
static void daObj_Nougu_Execute(void* param_0) {
    // NONMATCHING
}

/* 80CA4868-80CA4888 000D48 0020+00 1/0 0/0 0/0 .text            daObj_Nougu_Draw__FPv */
static void daObj_Nougu_Draw(void* param_0) {
    // NONMATCHING
}

/* 80CA4888-80CA4890 000D68 0008+00 1/0 0/0 0/0 .text            daObj_Nougu_IsDelete__FPv */
static bool daObj_Nougu_IsDelete(void* param_0) {
    return true;
}

/* 80CA4890-80CA48D8 000D70 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CA4B00-80CA4B0C 000100 000C+00 2/2 0/0 0/0 .data            __vt__19daObj_Nougu_Param_c */
SECTION_DATA extern void* __vt__19daObj_Nougu_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__19daObj_Nougu_Param_cFv,
};

/* 80CA4B18-80CA4B24 000008 000C+00 1/1 0/0 0/0 .bss             @3805 */
static u8 lit_3805[12];

/* 80CA4B24-80CA4B28 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80CA48D8-80CA494C 000DB8 0074+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_nougu_cpp */
void __sinit_d_a_obj_nougu_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80CA48D8, __sinit_d_a_obj_nougu_cpp);
#pragma pop

/* 80CA494C-80CA4994 000E2C 0048+00 2/1 0/0 0/0 .text            __dt__19daObj_Nougu_Param_cFv */
daObj_Nougu_Param_c::~daObj_Nougu_Param_c() {
    // NONMATCHING
}

/* 80CA4994-80CA499C 000E74 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80CA4994() {
    // NONMATCHING
}

/* 80CA499C-80CA49A4 000E7C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80CA499C() {
    // NONMATCHING
}

/* 80CA49F8-80CA49F8 000040 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
