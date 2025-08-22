//
// d_a_obj_lv3saka00.cpp
// Object: lv3saka00 (Lakebed Temple)
//

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv3saka00.h"
#include "d/d_bg_w.h"
#include "d/d_com_inf_game.h"
#include "d/d_procname.h"

/* 80C5BE58-80C5BE78 000078 0020+00 1/1 0/0 0/0 .text            initBaseMtx__14daObjLv3saka_cFv */
void daObjLv3saka_c::initBaseMtx() {
    setBaseMtx();
}

/* 80C5BE78-80C5BED8 000098 0060+00 2/2 0/0 0/0 .text            setBaseMtx__14daObjLv3saka_cFv */
void daObjLv3saka_c::setBaseMtx() {
    MTXTrans(mDoMtx_stack_c::now, current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_YrotM(mDoMtx_stack_c::get(), shape_angle.y);
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 80C5BED8-80C5BFA0 0000F8 00C8+00 1/0 0/0 0/0 .text            Create__14daObjLv3saka_cFv */
int daObjLv3saka_c::Create() {
    if (fopAcM_isSwitch(this, getSwbit())) {
        if (mpBgW->ChkUsed()) {
            dComIfG_Bgsp().Release(mpBgW);
        }
        dComIfG_Bgsp().Regist(mpBgW2, this);
        mpBgW2->Move();
    }

    initBaseMtx();

    if (fopAcM_isSwitch(this, getSwbit())) {
        mpBgW2->Move();
    }

    return 1;
}

/* ############################################################################################## */
/* 80C5C3C4-80C5C3CC 000000 0008+00 1/1 0/0 0/0 .rodata          l_dzbIdx */
static int const l_dzbIdx[] = {3, 3};

/* 80C5C3CC-80C5C3D4 000008 0008+00 1/1 0/0 0/0 .rodata          l_dzbIdx2 */
static int const l_dzbIdx2[] = {4, 4};

/* 80C5C3F0-80C5C3F8 -00001 0008+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName[] = {"Obj_saka", "Obj_saka2"};

/* 80C5BFA0-80C5C058 0001C0 00B8+00 1/0 0/0 0/0 .text            CreateHeap__14daObjLv3saka_cFv */
int daObjLv3saka_c::CreateHeap() {
    mpBgW2 = new dBgW();
    if (mpBgW2 == NULL ||
        mpBgW2->Set((cBgD_t*)dComIfG_getObjectRes(l_arcName[getType()], l_dzbIdx2[getType()]), 1,
                    &mBgMtx))
    {
        mpBgW2 = NULL;
        return 0;
    }

    return 1;
}

/* ############################################################################################## */
/* 80C5C3D4-80C5C3DC 000010 0008+00 1/1 0/0 0/0 .rodata          l_heap_size */
static int const l_heap_size[] = {0x00004E00, 0x00002900};

/* 80C5C058-80C5C0FC 000278 00A4+00 1/1 0/0 0/0 .text            create1st__14daObjLv3saka_cFv */
int daObjLv3saka_c::create1st() {
    int phase = dComIfG_resLoad(&mPhase, l_arcName[getType()]);
    if (phase == cPhs_COMPLEATE_e) {
        phase = MoveBGCreate(l_arcName[getType()], l_dzbIdx[getType()], dBgS_MoveBGProc_TypicalRotY,
                             l_heap_size[getType()], NULL);
        if (phase == cPhs_ERROR_e) {
            return phase;
        }
    }
    return phase;
}

/* 80C5C0FC-80C5C17C 00031C 0080+00 1/0 0/0 0/0 .text            Execute__14daObjLv3saka_cFPPA3_A4_f
 */
int daObjLv3saka_c::Execute(Mtx** param_0) {
    if (fopAcM_isSwitch(this, getSwbit())) {
        setWtrDzb();
    } else {
        setNrmDzb();
    }

    *param_0 = &mBgMtx;
    setBaseMtx();

    return 1;
}

/* 80C5C17C-80C5C1F8 00039C 007C+00 1/1 0/0 0/0 .text            setNrmDzb__14daObjLv3saka_cFv */
void daObjLv3saka_c::setNrmDzb() {
    if (!mpBgW->ChkUsed()) {
        if (mpBgW2->ChkUsed()) {
            dComIfG_Bgsp().Release(mpBgW2);
        }
        dComIfG_Bgsp().Regist(mpBgW, this);
        mpBgW->Move();
    }
}

/* 80C5C1F8-80C5C274 000418 007C+00 1/1 0/0 0/0 .text            setWtrDzb__14daObjLv3saka_cFv */
void daObjLv3saka_c::setWtrDzb() {
    if (!mpBgW2->ChkUsed()) {
        if (mpBgW->ChkUsed()) {
            dComIfG_Bgsp().Release(mpBgW);
        }
        dComIfG_Bgsp().Regist(mpBgW2, this);
        mpBgW2->Move();
    }
}

/* 80C5C274-80C5C27C 000494 0008+00 1/0 0/0 0/0 .text            Draw__14daObjLv3saka_cFv */
int daObjLv3saka_c::Draw() {
    return 1;
}

/* 80C5C27C-80C5C2F0 00049C 0074+00 1/0 0/0 0/0 .text            Delete__14daObjLv3saka_cFv */
int daObjLv3saka_c::Delete() {
    if (mpBgW2 != NULL && mpBgW2->ChkUsed()) {
        dComIfG_Bgsp().Release(mpBgW2);
    }
    dComIfG_resDelete(&mPhase, l_arcName[getType()]);
    return 1;
}

/* ############################################################################################## */
/* 80C5C2F0-80C5C350 000510 0060+00 1/0 0/0 0/0 .text daObjLv3saka_create1st__FP14daObjLv3saka_c
 */
static int daObjLv3saka_create1st(daObjLv3saka_c* i_this) {
    fopAcM_SetupActor(i_this, daObjLv3saka_c);
    return i_this->create1st();
}

/* 80C5C350-80C5C370 000570 0020+00 1/0 0/0 0/0 .text
 * daObjLv3saka_MoveBGDelete__FP14daObjLv3saka_c                */
static int daObjLv3saka_MoveBGDelete(daObjLv3saka_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80C5C370-80C5C390 000590 0020+00 1/0 0/0 0/0 .text
 * daObjLv3saka_MoveBGExecute__FP14daObjLv3saka_c               */
static int daObjLv3saka_MoveBGExecute(daObjLv3saka_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C5C390-80C5C3BC 0005B0 002C+00 1/0 0/0 0/0 .text daObjLv3saka_MoveBGDraw__FP14daObjLv3saka_c
 */
static int daObjLv3saka_MoveBGDraw(daObjLv3saka_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C5C3F8-80C5C418 -00001 0020+00 1/0 0/0 0/0 .data            daObjLv3saka_METHODS */
static actor_method_class daObjLv3saka_METHODS = {
    (process_method_func)daObjLv3saka_create1st, (process_method_func)daObjLv3saka_MoveBGDelete,
    (process_method_func)daObjLv3saka_MoveBGExecute, (process_method_func)NULL,
    (process_method_func)daObjLv3saka_MoveBGDraw};

/* 80C5C418-80C5C448 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv3R10Saka */
extern actor_process_profile_definition g_profile_Obj_Lv3R10Saka = {
    fpcLy_CURRENT_e,         // mLayerID
    3,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_Lv3R10Saka,     // mProcName
    &g_fpcLf_Method.base,   // sub_method
    sizeof(daObjLv3saka_c),  // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    528,                     // mPriority
    &daObjLv3saka_METHODS,   // sub_method
    0x40100,                 // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80C5C3DC-80C5C3DC 000018 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
