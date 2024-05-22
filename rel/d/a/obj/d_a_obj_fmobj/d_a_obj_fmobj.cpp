/**
 * @file d_a_obj_fmobj.cpp
 * 
*/

#include "rel/d/a/obj/d_a_obj_fmobj/d_a_obj_fmobj.h"
#include "d/bg/d_bg_w.h"
#include "d/com/d_com_inf_game.h"
#include "d/d_procname.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" static void daObj_Fmobj_Draw__FP15obj_fmobj_class();
extern "C" static void daObj_Fmobj_Execute__FP15obj_fmobj_class();
extern "C" static bool daObj_Fmobj_IsDelete__FP15obj_fmobj_class();
extern "C" static void daObj_Fmobj_Delete__FP15obj_fmobj_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daObj_Fmobj_Create__FP10fopAc_ac_c();
extern "C" extern char const* const d_a_obj_fmobj__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void isDungeonItem__12dSv_memBit_cCFi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void Move__4dBgWFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void cM_rndF__Ff();
extern "C" void* __nw__FUl();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];

//
// Declarations:
//

/* 8057CBD8-8057CC44 000078 006C+00 1/0 0/0 0/0 .text daObj_Fmobj_Draw__FP15obj_fmobj_class */
static int daObj_Fmobj_Draw(obj_fmobj_class* i_this) {
    J3DModel* model_p = i_this->mpModel;

    g_env_light.settingTevStruct(0x40, &i_this->current.pos, &i_this->tevStr);
    g_env_light.setLightTevColorType_MAJI(model_p, &i_this->tevStr);
    mDoExt_modelUpdateDL(model_p);
    return 1;
}

/* 8057CC44-8057CC84 0000E4 0040+00 1/0 0/0 0/0 .text daObj_Fmobj_Execute__FP15obj_fmobj_class */
static int daObj_Fmobj_Execute(obj_fmobj_class* i_this) {
    i_this->field_0x578++;

    for (int i = 0; i < 2; i++) {
        if (i_this->field_0x57e[i] != 0) {
            i_this->field_0x57e[i]--;
        }
    }

    return 1;
}

/* 8057CC84-8057CC8C 000124 0008+00 1/0 0/0 0/0 .text daObj_Fmobj_IsDelete__FP15obj_fmobj_class */
static int daObj_Fmobj_IsDelete(obj_fmobj_class* i_this) {
    return 1;
}

/* 8057CC8C-8057CCDC 00012C 0050+00 1/0 0/0 0/0 .text daObj_Fmobj_Delete__FP15obj_fmobj_class */
static int daObj_Fmobj_Delete(obj_fmobj_class* i_this) {
    dComIfG_resDelete(&i_this->mPhase, "Obj_Fmobj");
    dComIfG_Bgsp().Release(i_this->mpBgW);
    return 1;
}

/* 8057CCDC-8057CDE0 00017C 0104+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    obj_fmobj_class* a_this = (obj_fmobj_class*)i_this;

    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("Obj_Fmobj", 4);
    a_this->mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (a_this->mpModel == NULL) {
        return 0;
    }

    a_this->mpBgW = new dBgW();
    if (a_this->mpBgW == NULL) {
        return 0;
    }

    cBgD_t* pdzb = (cBgD_t*)dComIfG_getObjectRes("Obj_Fmobj", 7);
    if (a_this->mpBgW->Set(pdzb, cBgW::MOVE_BG_e, &a_this->mBgMtx) == 1) {
        return 0;
    }

    a_this->mpBgW->SetCrrFunc(dBgS_MoveBGProc_Typical);
    return 1;
}

/* ############################################################################################## */
/* 8057CF68-8057CF6C 000000 0004+00 1/1 0/0 0/0 .rodata          @3743 */
SECTION_RODATA static f32 const lit_3743 = 65536.0f;
COMPILER_STRIP_GATE(0x8057CF68, &lit_3743);

/* 8057CF6C-8057CF70 000004 0004+00 0/1 0/0 0/0 .rodata          @3744 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3744[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8057CF6C, &lit_3744);
#pragma pop

/* 8057CF70-8057CF74 000008 0004+00 0/1 0/0 0/0 .rodata          @3745 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3745 = -30.0f;
COMPILER_STRIP_GATE(0x8057CF70, &lit_3745);
#pragma pop

/* 8057CDE0-8057CF60 000280 0180+00 1/0 0/0 0/0 .text            daObj_Fmobj_Create__FP10fopAc_ac_c
 */
// reg alloc
#ifdef NONMATCHING
static int daObj_Fmobj_Create(fopAc_ac_c* i_this) {
    obj_fmobj_class* a_this = (obj_fmobj_class*)i_this;
    fopAcM_SetupActor(a_this, obj_fmobj_class);

    int phase = dComIfG_resLoad(&a_this->mPhase, "Obj_Fmobj");
    if (phase == cPhs_COMPLEATE_e) {
        a_this->field_0x570 = fopAcM_GetParam(a_this) & 0xFF;

        if (dComIfGs_isStageBossEnemy()) {
            return cPhs_ERROR_e;
        }

        if (!fopAcM_entrySolidHeap(a_this, useHeapInit, 0x4B000)) {
            return cPhs_ERROR_e;
        }

        if (dComIfG_Bgsp().Regist(a_this->mpBgW, a_this)) {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(a_this, a_this->mpModel->getBaseTRMtx());
        a_this->shape_angle.y = cM_rndF(65536.0f);

        mDoMtx_stack_c::transS(a_this->current.pos.x, a_this->current.pos.y, a_this->current.pos.z);
        mDoMtx_stack_c::YrotM(a_this->shape_angle.y);
        a_this->mpModel->setBaseTRMtx(mDoMtx_stack_c::get());

        mDoMtx_stack_c::transM(0.0f, -30.0f, 0.0f);
        MTXCopy(mDoMtx_stack_c::get(), a_this->mDzbMtx);

        a_this->mpBgW->Move();
    }

    return phase;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daObj_Fmobj_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_fmobj/d_a_obj_fmobj/daObj_Fmobj_Create__FP10fopAc_ac_c.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 8057CF80-8057CFA0 -00001 0020+00 1/0 0/0 0/0 .data            l_daObj_Fmobj_Method */
static actor_method_class l_daObj_Fmobj_Method = {
    (process_method_func)daObj_Fmobj_Create,  (process_method_func)daObj_Fmobj_Delete,
    (process_method_func)daObj_Fmobj_Execute, (process_method_func)daObj_Fmobj_IsDelete,
    (process_method_func)daObj_Fmobj_Draw,
};

/* 8057CFA0-8057CFD0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_FMOBJ */
extern actor_process_profile_definition g_profile_OBJ_FMOBJ = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_OBJ_FMOBJ,
    &g_fpcLf_Method.mBase,
    sizeof(obj_fmobj_class),
    0,
    0,
    &g_fopAc_Method.base,
    40,
    &l_daObj_Fmobj_Method,
    0x40100,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_7_e,
};
