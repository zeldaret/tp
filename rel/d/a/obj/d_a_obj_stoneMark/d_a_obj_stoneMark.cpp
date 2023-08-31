/**
 * d_a_obj_stoneMark.cpp
 * Actor - Object Stone Mark
 * 
 * Visual mark under the stone actor (d_a_obj_stone)
 * 
 */

#include "rel/d/a/obj/d_a_obj_stoneMark/d_a_obj_stoneMark.h"
#include "d/d_procname.h"
#include "dol2asm.h"
#include "m_Do/m_Do_lib.h"

//
// Forward References:
//

extern "C" void initBaseMtx__12daObjSMark_cFv();
extern "C" void setBaseMtx__12daObjSMark_cFv();
extern "C" void Create__12daObjSMark_cFv();
extern "C" void create__12daObjSMark_cFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void draw__12daObjSMark_cFv();
extern "C" void _delete__12daObjSMark_cFv();
extern "C" static void daObjSMark_Draw__FP12daObjSMark_c();
extern "C" static void daObjSMark_Delete__FP12daObjSMark_c();
extern "C" static void daObjSMark_Create__FP10fopAc_ac_c();
extern "C" static void func_8059A3D0();
extern "C" static void func_8059A3D8();
extern "C" extern char const* const d_a_obj_stoneMark__stringBase0;
extern void* __vt__12dBgS_ObjAcch[9];

//
// External References:
//

extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoLib_setResTimgObj__FPC7ResTIMGP9_GXTexObjUlP10_GXTlutObj();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_setCullSizeSphere__FP10fopAc_ac_cffff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void __dl__FPv();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];


//
// Declarations:
//

/* 8059A018-8059A038 000078 0020+00 1/1 0/0 0/0 .text            initBaseMtx__12daObjSMark_cFv */
void daObjSMark_c::initBaseMtx() {
    setBaseMtx();
}

/* 8059A038-8059A080 000098 0048+00 1/1 0/0 0/0 .text            setBaseMtx__12daObjSMark_cFv */
void daObjSMark_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    MTXCopy((MtxP)&mDoMtx_stack_c::now,(MtxP)&mCullMtx);
}
/* ############################################################################################## */
/* 8059A3E8-8059A3EC 000000 0004+00 2/2 0/0 0/0 .rodata          @3642 */
SECTION_RODATA static u8 const lit_3642[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8059A3E8, &lit_3642);

/* 8059A3EC-8059A3F0 000004 0004+00 0/1 0/0 0/0 .rodata          @3643 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3643 = 100.0f;
COMPILER_STRIP_GATE(0x8059A3EC, &lit_3643);
#pragma pop

/* 8059A3F0-8059A3F4 000008 0004+00 0/1 0/0 0/0 .rodata          @3644 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3644 = 30.0f;
COMPILER_STRIP_GATE(0x8059A3F0, &lit_3644);
#pragma pop

/* 8059A404-8059A404 00001C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8059A404 = "A_IwaAto";
#pragma pop

/* 8059A410-8059A414 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "A_IwaAto";

/* 8059A080-8059A168 0000E0 00E8+00 1/1 0/0 0/0 .text            Create__12daObjSMark_cFv */
#ifdef NONMATCHING
// matches with literals
int daObjSMark_c::Create() {
    initBaseMtx();
    fopAcM_SetMtx(this,(MtxP)&mCullMtx);
    fopAcM_setCullSizeSphere(this,0.0f,0.0f,0.0f,100.0f);
    mAcchCir.SetWall(30.0f,30.0f);
    mObjAcch.Set(&fopAcM_GetPosition_p(this),&fopAcM_GetOldPosition_p(this),this,1,&mAcchCir,&fopAcM_GetSpeed_p(this),0,0);
    mObjAcch.CrrPos(dComIfG_Bgsp());
    mDoLib_setResTimgObj((ResTIMG*)dComIfG_getObjectRes(l_arcName,3),&mTexObj,0,0);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjSMark_c::Create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_stoneMark/d_a_obj_stoneMark/Create__12daObjSMark_cFv.s"
}
#pragma pop
#endif



/* 8059A168-8059A25C 0001C8 00F4+00 1/1 0/0 0/0 .text            create__12daObjSMark_cFv */
#ifdef NONMATCHING
// matches, but has issues with weak labels being used
int daObjSMark_c::create() {
    fopAcM_SetupActor(this, daObjSMark_c);

    int phase = dComIfG_resLoad(&mpPhase,l_arcName);
    if (phase == cPhs_COMPLEATE_e){
        if (!Create()) {
            return cPhs_ERROR_e;
        }
    }

    return phase;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjSMark_c::create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_stoneMark/d_a_obj_stoneMark/func_8059A168.s"
}
#pragma pop
#endif

/* 8059A25C-8059A2CC 0002BC 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_stoneMark/d_a_obj_stoneMark/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 8059A3F4-8059A3FC 00000C 0008+00 0/1 0/0 0/0 .rodata          l_shadow_size$3714 */
#pragma push
#pragma force_active on
static const f32 l_shadow_size[2] = {
    55.0f, 
    85.0f
};

COMPILER_STRIP_GATE(0x8059A3F4, &l_shadow_size);
#pragma pop

/* 8059A3FC-8059A400 000014 0004+00 0/1 0/0 0/0 .rodata          @3718 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3718 = -3.0f / 5.0f;
COMPILER_STRIP_GATE(0x8059A3FC, &lit_3718);
#pragma pop

/* 8059A400-8059A404 000018 0004+00 0/1 0/0 0/0 .rodata          @3719 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_3719 = 0x3ECCCCCC;
COMPILER_STRIP_GATE(0x8059A400, &lit_3719);
#pragma pop

/* 8059A2CC-8059A33C 00032C 0070+00 1/1 0/0 0/0 .text            draw__12daObjSMark_cFv */
#ifdef NONMATCHING
// matches with literals
int daObjSMark_c::draw() {
    dComIfGd_setSimpleShadow(&current.pos,
                    mObjAcch.GetGroundH(),
                    l_shadow_size[fopAcM_GetParam(this) & 0xFF],
                    mObjAcch.m_gnd,
                    shape_angle.y,
                    ((f32)-0.6 - g_env_light.field_0x1238 * (f32)0.4),
                    &this->mTexObj);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjSMark_c::draw() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_stoneMark/d_a_obj_stoneMark/draw__12daObjSMark_cFv.s"
}
#pragma pop
#endif

/* 8059A33C-8059A370 00039C 0034+00 1/1 0/0 0/0 .text            _delete__12daObjSMark_cFv */
int daObjSMark_c::_delete() {
    dComIfG_resDelete(&mpPhase,l_arcName);
    return 1;
}
/* 8059A370-8059A390 0003D0 0020+00 1/0 0/0 0/0 .text            daObjSMark_Draw__FP12daObjSMark_c
 */
static int daObjSMark_Draw(daObjSMark_c* i_this) {
    return i_this->draw();
}

/* 8059A390-8059A3B0 0003F0 0020+00 1/0 0/0 0/0 .text            daObjSMark_Delete__FP12daObjSMark_c
 */
static int daObjSMark_Delete(daObjSMark_c* i_this) {
    return i_this->_delete();
}

/* 8059A3B0-8059A3D0 000410 0020+00 1/0 0/0 0/0 .text            daObjSMark_Create__FP10fopAc_ac_c
 */
static int daObjSMark_Create(fopAc_ac_c* i_this) {
    return static_cast<daObjSMark_c*>(i_this)->create();
}

/* 8059A3D0-8059A3D8 000430 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_8059A3D0() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_stoneMark/d_a_obj_stoneMark/func_8059A3D0.s"
}
#pragma pop

/* 8059A3D8-8059A3E0 000438 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_8059A3D8() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_stoneMark/d_a_obj_stoneMark/func_8059A3D8.s"
}
#pragma pop

/* 8059A404-8059A404 00001C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/* ############################################################################################## */
/* 8059A414-8059A434 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjSMark_Method */
static actor_method_class l_daObjSMark_Method = {
    (process_method_func)daObjSMark_Create__FP10fopAc_ac_c,
    (process_method_func)daObjSMark_Delete__FP12daObjSMark_c,
    (process_method_func)0,
    (process_method_func)0,
    (process_method_func)daObjSMark_Draw__FP12daObjSMark_c
};

/* 8059A434-8059A464 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_StoneMark */
extern actor_process_profile_definition g_profile_Obj_StoneMark = {
    -3,                     // mLayerID   
    7,                      // mListID 
    -3,                     // mListPrio  
    PROC_Obj_StoneMark,     // mProcName      
    &g_fpcLf_Method.mBase,  // mSubMtd                     
    sizeof(daObjSMark_c),   // mSize                     
    0,                      // mSizeOther 
    0,                      // mParameters        
    &g_fopAc_Method.base,   // mSubMtd                    
    0x0216,                 // mPriority      
    &l_daObjSMark_Method,   // mSubMtd                    
    0x00040100,             // mStatus           
    0,                      // mActorType 
    23,                     // mCullType  
};

/* 8059A464-8059A488 000054 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8059A3D8,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8059A3D0,
};
