/**
 * d_a_hitobj.cpp
 * 
 */

#include "rel/d/a/d_a_hitobj/d_a_hitobj.h"
#include "dol2asm.h"
#include "dolphin/types.h"
#include "f_op/f_op_kankyo_mng.h"

//
// Forward References:
//

extern "C" static bool daHitobj_Draw__FP12hitobj_class();
extern "C" static void daHitobj_Execute__FP12hitobj_class();
extern "C" static bool daHitobj_IsDelete__FP12hitobj_class();
extern "C" static void daHitobj_Delete__FP12hitobj_class();
extern "C" static void daHitobj_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" extern char const* const d_a_hitobj__stringBase0;

//
// External References:
//

extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopKyM_Delete__FPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void __dl__FPv();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];

//
// Declarations:
//

/* 8046B358-8046B360 000078 0008+00 1/0 0/0 0/0 .text            daHitobj_Draw__FP12hitobj_class */
static int daHitobj_Draw(hitobj_class* i_this) {
    return 1;
}

/* 8046B360-8046B3C8 000080 0068+00 1/0 0/0 0/0 .text            daHitobj_Execute__FP12hitobj_class
 */
static int daHitobj_Execute(hitobj_class* i_this) {
    if (i_this->field_0x572 != 0) {
        i_this->field_0x572--;
        i_this->field_0x6d4.SetC(i_this->current.pos);
        dComIfG_Ccsp()->Set((cCcD_Obj*)&i_this->field_0x5b0);
    } else {
        fopKyM_Delete(i_this);
    }

    return 1;
}

/* 8046B3C8-8046B3D0 0000E8 0008+00 1/0 0/0 0/0 .text            daHitobj_IsDelete__FP12hitobj_class
 */
static int daHitobj_IsDelete(hitobj_class* i_this) {
    return 1;
}

/* 8046B3D0-8046B400 0000F0 0030+00 1/0 0/0 0/0 .text            daHitobj_Delete__FP12hitobj_class
 */
static int daHitobj_Delete(hitobj_class* i_this) {
    dComIfG_resDelete(&i_this->mPhase,"Hitobj");
    return 1;
}

/* ############################################################################################## */
/* 8046B5DC-8046B61C 000000 0040+00 1/1 0/0 0/0 .data            cc_sph_src$3657 */
// 
SECTION_DATA static u8 cc_sph_src[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0xC8, 0x00, 0x00,
};

/* 8046B61C-8046B63C -00001 0020+00 1/0 0/0 0/0 .data            l_daHitobj_Method */
SECTION_DATA static void* l_daHitobj_Method[8] = {
    (void*)daHitobj_Create__FP10fopAc_ac_c,
    (void*)daHitobj_Delete__FP12hitobj_class,
    (void*)daHitobj_Execute__FP12hitobj_class,
    (void*)daHitobj_IsDelete__FP12hitobj_class,
    (void*)daHitobj_Draw__FP12hitobj_class,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};

/* 8046B63C-8046B66C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_HITOBJ */
SECTION_DATA extern void* g_profile_HITOBJ[12] = {
    (void*)0xFFFFFFFD, (void*)0x0007FFFD,
    (void*)0x01040000, (void*)&g_fpcLf_Method,
    (void*)0x000006E8, (void*)NULL,
    (void*)NULL,       (void*)&g_fopAc_Method,
    (void*)0x02B20000, (void*)&l_daHitobj_Method,
    (void*)0x00040000, (void*)NULL,
};

/* 8046B66C-8046B678 000090 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 8046B678-8046B684 00009C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 8046B400-8046B53C 000120 013C+00 1/0 0/0 0/0 .text            daHitobj_Create__FP10fopAc_ac_c */
#ifdef NONMATCHING
// can't figure out what field_0x5b0 is supposed to be
static int daHitobj_Create(fopAc_ac_c* i_this) {
    hitobj_class* hitobj = (hitobj_class*)i_this;
    if (!fopAcM_CheckCondition(hitobj, 8)) {
        new (hitobj) hitobj_class();
        fopAcM_OnCondition(hitobj, 8);
    }
    if (dComIfG_resLoad(&hitobj->mPhase,"Hitobj") == cPhs_COMPLEATE_e) {
        hitobj->field_0x570 = fopAcM_GetParam(hitobj);
        hitobj->field_0x574.Init(0xff,0xff,hitobj);
        hitobj->field_0x5b0.Set(*(cCcD_SrcObj*)&cc_sph_src);
        hitobj->field_0x5b0.SetStts(&hitobj->field_0x574);
        hitobj->field_0x572 = 3;
    }
    return cPhs_COMPLEATE_e;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daHitobj_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_hitobj/d_a_hitobj/daHitobj_Create__FP10fopAc_ac_c.s"
}
#pragma pop
#endif

/* 8046B53C-8046B584 00025C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGSph::~cM3dGSph() {
extern "C" asm void __dt__8cM3dGSphFv() {
    nofralloc
#include "asm/rel/d/a/d_a_hitobj/d_a_hitobj/__dt__8cM3dGSphFv.s"
}
#pragma pop

/* 8046B584-8046B5CC 0002A4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/d_a_hitobj/d_a_hitobj/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 8046B5D4-8046B5D4 000000 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
