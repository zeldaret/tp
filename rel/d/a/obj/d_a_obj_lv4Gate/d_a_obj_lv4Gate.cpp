/**
 * d_a_obj_lv4Gate.cpp
 * Arbiter's Grounds Generic Gate
 */

#include "rel/d/a/obj/d_a_obj_lv4Gate/d_a_obj_lv4Gate.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "d/com/d_com_inf_game.h"
#include "d/d_procname.h"
#include "dol2asm.h"

extern "C" void CreateHeap__11daLv4Gate_cFv();
extern "C" bool Create__16dBgS_MoveBgActorFv();
extern "C" void Execute__11daLv4Gate_cFPPA3_A4_f();
extern "C" void Draw__11daLv4Gate_cFv();
extern "C" void Delete__11daLv4Gate_cFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();

extern "C" extern char const* const d_a_obj_lv4Gate__stringBase0;
extern void* __vt__11daLv4Gate_c[10];

/* 80C5F41C-80C5F428 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80C5F428-80C5F43C 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
// unused data?
#pragma push
#pragma force_active on
static u32 lit_1787[1 + 4 /* padding */] = {
    0x02000201,
    /* padding */
    0x40080000,
    0x00000000,
    0x3FE00000,
    0x00000000,
};
#pragma pop

/* 80C5EB6C-80C5EB9C 0000EC 0030+00 1/1 0/0 0/0 .text            __ct__15daLv4Gate_HIO_cFv */
daLv4Gate_HIO_c::daLv4Gate_HIO_c() {
    mMoveSpeed = 2.0f;
    mShockStrength = 3;
}

/* 80C5EBE4-80C5EC80 000164 009C+00 2/2 0/0 0/0 .text            setBaseMtx__11daLv4Gate_cFv */
void daLv4Gate_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mDoMtx_stack_c::transM(mMoveValue, 0.0f, 0.0f);

    mpModel->setBaseScale(mScale);
    mpModel->i_setBaseTRMtx(mDoMtx_stack_c::get());
}

/* ############################################################################################## */
/* 80C5F414-80C5F414 000020 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C5F414 = "L4Gate";
#pragma pop

/* 80C5EC80-80C5ECEC 000200 006C+00 1/0 0/0 0/0 .text            CreateHeap__11daLv4Gate_cFv */
// vtable ordering issue
#ifdef NONMATCHING
int daLv4Gate_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("L4Gate", 4);

    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm int daLv4Gate_c::CreateHeap() {
extern "C" asm void CreateHeap__11daLv4Gate_cFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv4Gate/d_a_obj_lv4Gate/CreateHeap__11daLv4Gate_cFv.s"
}
#pragma pop
#endif

/* 80C5ECEC-80C5EE54 00026C 0168+00 1/1 0/0 0/0 .text            create__11daLv4Gate_cFv */
int daLv4Gate_c::create() {
    fopAcM_SetupActor(this, daLv4Gate_c);

    int phase = dComIfG_resLoad(&mPhase, "L4Gate");
    if (phase == cPhs_COMPLEATE_e) {
        if (MoveBGCreate("L4Gate", 7, dBgS_MoveBGProc_TypicalRotY, 0x2300, NULL) == cPhs_ERROR_e) {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel->getModelData());

        mInitMove = i_fopAcM_isSwitch(this, fopAcM_GetParam(this) & 0xFF);
        mMoveType = fopAcM_GetParam(this) >> 8;

        f32 target;
        // type 0 is a right side gate, otherwise a left side gate
        if (mMoveType == 0) {
            target = -250.0f;
        } else {
            target = 250.0f;
        }

        mMoveTarget = target;
        mMoveValue = 0.0f;
        mGateOpened = false;

        if (mInitMove) {
            mMoveValue = mMoveTarget;
            mGateOpened = true;
            init_modeMoveEnd();
        } else {
            init_modeWait();
        }

        setBaseMtx();
    }

    return phase;
}

/* 80C5EE54-80C5EEA4 0003D4 0050+00 1/0 0/0 0/0 .text            Execute__11daLv4Gate_cFPPA3_A4_f */
int daLv4Gate_c::Execute(f32 (**param_0)[3][4]) {
    moveGate();
    *param_0 = &mpModel->getBaseTRMtx();
    setBaseMtx();

    return 1;
}

/* 80C5F52C-80C5F538 000014 000C+00 3/3 0/0 0/0 .bss             l_HIO */
static daLv4Gate_HIO_c l_HIO;

/* 80C5EEA4-80C5EF48 000424 00A4+00 1/1 0/0 0/0 .text            moveGate__11daLv4Gate_cFv */
void daLv4Gate_c::moveGate() {
    typedef void (daLv4Gate_c::*modeFunc)();
    static modeFunc mode_proc[] = {&daLv4Gate_c::modeWait, &daLv4Gate_c::modeMove,
                                   &daLv4Gate_c::modeMoveEnd};

    (this->*mode_proc[mMode])();
}

/* 80C5EF48-80C5EF54 0004C8 000C+00 1/1 0/0 0/0 .text            init_modeWait__11daLv4Gate_cFv */
void daLv4Gate_c::init_modeWait() {
    mMode = MODE_WAIT_e;
}

/* 80C5EF54-80C5EFB0 0004D4 005C+00 1/0 0/0 0/0 .text            modeWait__11daLv4Gate_cFv */
void daLv4Gate_c::modeWait() {
    mInitMove = i_fopAcM_isSwitch(this, fopAcM_GetParam(this) & 0xFF);
    if (mInitMove) {
        init_modeMove();
    }
}

/* 80C5EFB0-80C5EFBC 000530 000C+00 1/1 0/0 0/0 .text            init_modeMove__11daLv4Gate_cFv */
void daLv4Gate_c::init_modeMove() {
    mMode = MODE_MOVE_e;
}

/* 80C5EFBC-80C5F0C4 00053C 0108+00 1/0 0/0 0/0 .text            modeMove__11daLv4Gate_cFv */
void daLv4Gate_c::modeMove() {
    mDoMtx_stack_c::ZXYrotS(shape_angle.x, shape_angle.y, shape_angle.z);

    cXyz sound_pos(mMoveTarget, 0.0f, 0.0f);
    mDoMtx_stack_c::multVec(&sound_pos, &sound_pos);
    sound_pos += current.pos;

    i_mDoAud_seStartLevel(Z2SE_OBJ_GORONGATE_MOVE, &sound_pos, 0,
                          dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

    if (cLib_addCalc(&mMoveValue, mMoveTarget, 0.2f, l_HIO.mMoveSpeed, 0.5f) == 0.0f) {
        init_modeMoveEnd();
    }
}

/* 80C5F0C4-80C5F1E4 000644 0120+00 2/2 0/0 0/0 .text            init_modeMoveEnd__11daLv4Gate_cFv
 */
void daLv4Gate_c::init_modeMoveEnd() {
    if (!mGateOpened) {
        mDoMtx_stack_c::ZXYrotS(shape_angle.x, shape_angle.y, shape_angle.z);

        cXyz sound_pos(mMoveTarget, 0.0f, 0.0f);
        mDoMtx_stack_c::multVec(&sound_pos, &sound_pos);
        sound_pos += current.pos;

        mDoAud_seStart(Z2SE_OBJ_GORONGATE_STOP, &sound_pos, 0,
                       dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

        dComIfGp_getVibration().StartShock(l_HIO.mShockStrength, 15, cXyz(0.0f, 1.0f, 0.0f));
    }

    mMode = MODE_MOVE_END_e;
}

/* 80C5F1E4-80C5F1E8 000764 0004+00 1/0 0/0 0/0 .text            modeMoveEnd__11daLv4Gate_cFv */
void daLv4Gate_c::modeMoveEnd() {}

/* 80C5F1E8-80C5F28C 000768 00A4+00 1/0 0/0 0/0 .text            Draw__11daLv4Gate_cFv */
int daLv4Gate_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &mTevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &mTevStr);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80C5F28C-80C5F2BC 00080C 0030+00 1/0 0/0 0/0 .text            Delete__11daLv4Gate_cFv */
int daLv4Gate_c::Delete() {
    dComIfG_resDelete(&mPhase, "L4Gate");
    return 1;
}

/* 80C5F2BC-80C5F2E8 00083C 002C+00 1/0 0/0 0/0 .text            daLv4Gate_Draw__FP11daLv4Gate_c */
static int daLv4Gate_Draw(daLv4Gate_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C5F2E8-80C5F308 000868 0020+00 1/0 0/0 0/0 .text            daLv4Gate_Execute__FP11daLv4Gate_c
 */
static int daLv4Gate_Execute(daLv4Gate_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C5F308-80C5F328 000888 0020+00 1/0 0/0 0/0 .text            daLv4Gate_Delete__FP11daLv4Gate_c
 */
static int daLv4Gate_Delete(daLv4Gate_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80C5F328-80C5F348 0008A8 0020+00 1/0 0/0 0/0 .text            daLv4Gate_Create__FP10fopAc_ac_c */
static int daLv4Gate_Create(fopAc_ac_c* i_this) {
    return static_cast<daLv4Gate_c*>(i_this)->create();
}

/* 80C5F348-80C5F3A4 0008C8 005C+00 2/1 0/0 0/0 .text            __dt__15daLv4Gate_HIO_cFv */
daLv4Gate_HIO_c::~daLv4Gate_HIO_c() {}

/* 80C5F484-80C5F4A4 -00001 0020+00 1/0 0/0 0/0 .data            l_daLv4Gate_Method */
static actor_method_class l_daLv4Gate_Method = {
    (process_method_func)daLv4Gate_Create,  (process_method_func)daLv4Gate_Delete,
    (process_method_func)daLv4Gate_Execute, (process_method_func)NULL,
    (process_method_func)daLv4Gate_Draw,
};

/* 80C5F4A4-80C5F4D4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv4Gate */
extern actor_process_profile_definition g_profile_Obj_Lv4Gate = {
    -3,
    3,
    -3,
    PROC_Obj_Lv4Gate,
    &g_fpcLf_Method.mBase,
    sizeof(daLv4Gate_c),
    0,
    0,
    &g_fopAc_Method.base,
    637,
    &l_daLv4Gate_Method,
    0x40000,
    0,
    14,
};

/* 80C5F4D4-80C5F4FC 0000B8 0028+00 1/1 0/0 0/0 .data            __vt__11daLv4Gate_c */
SECTION_DATA extern void* __vt__11daLv4Gate_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__11daLv4Gate_cFv,
    (void*)Create__16dBgS_MoveBgActorFv,
    (void*)Execute__11daLv4Gate_cFPPA3_A4_f,
    (void*)Draw__11daLv4Gate_cFv,
    (void*)Delete__11daLv4Gate_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};
