//
// d_a_obj_lv4gear.cpp
// Spinner gear (Arbiter's Grounds)
//

#include "rel/d/a/obj/d_a_obj_lv4gear/d_a_obj_lv4gear.h"
#include "d/d_procname.h"

/* 80C67F18-80C67F38 000078 0020+00 1/1 0/0 0/0 .text            CheckCreateHeap__FP10fopAc_ac_c */
static int CheckCreateHeap(fopAc_ac_c* i_this) {
    return static_cast<daObjLv4Gear_c*>(i_this)->CreateHeap();
}

/* 80C67F38-80C67FB4 000098 007C+00 1/1 0/0 0/0 .text            searchSwSpinSub__FPvPv */
static void* searchSwSpinSub(void* param_0, void* param_1) {
    daObjSwSpinner_c* swspinner = (daObjSwSpinner_c*)param_0;
    daObjLv4Gear_c* gear = (daObjLv4Gear_c*)param_1;

    if (swspinner != NULL && fopAc_IsActor(swspinner) &&
        fpcM_GetProfName(swspinner) == PROC_Obj_SwSpinner)
    {
        u8 sw_bit = swspinner->getSwBit();
        if (sw_bit != 0xFF && sw_bit == gear->getSwBit()) {
            return swspinner;
        }
    }

    return 0;
}

/* 80C67FB4-80C67FF0 000114 003C+00 1/1 0/0 0/0 .text            initBaseMtx__14daObjLv4Gear_cFv */
void daObjLv4Gear_c::initBaseMtx() {
    mpModel->mBaseScale = scale;
    setBaseMtx();
}

/* 80C67FF0-80C68050 000150 0060+00 2/2 0/0 0/0 .text            setBaseMtx__14daObjLv4Gear_cFv */
void daObjLv4Gear_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y + field_0x578);
    MTXCopy(mDoMtx_stack_c::get(), mpModel->mBaseTransformMtx);
}

/* 80C68050-80C680A4 0001B0 0054+00 1/1 0/0 0/0 .text            Create__14daObjLv4Gear_cFv */
int daObjLv4Gear_c::Create() {
    initBaseMtx();
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    fopAcM_setCullSizeBox2(this, mpModel->getModelData());
    mProcID = -1;
    return 1;
}

/* ############################################################################################## */
/* 80C68500-80C68508 000000 0008+00 2/2 0/0 0/0 .rodata          l_bmd */
static int const l_bmd[] = {0x00000004, 0x00000003};

/* 80C6852C-80C68530 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "P_Gear";

/* 80C680A4-80C68124 000204 0080+00 1/1 0/0 0/0 .text            CreateHeap__14daObjLv4Gear_cFv */
int daObjLv4Gear_c::CreateHeap() {
    mpModel = mDoExt_J3DModel__create((J3DModelData*)dComIfG_getObjectRes(l_arcName, l_bmd[mType]),
                                      0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }
    return 1;
}

/* ############################################################################################## */
/* 80C68508-80C68510 000008 0008+00 0/0 0/0 0/0 .rodata          l_size */
static int const l_size[] = {0x42C80000, 0x43960000};

/* 80C68510-80C68514 000010 0004+00 0/1 0/0 0/0 .rodata          l_rot_start_time */
static s16 const l_rot_start_time[] = {0x000F, 0x0064};

/* 80C68514-80C6851C 000014 0008+00 1/1 0/0 0/0 .rodata          l_heap_size */
static int const l_heap_size[] = {0x00000F00, 0x00000F00};

/* 80C68124-80C681F4 000284 00D0+00 1/1 0/0 0/0 .text            create__14daObjLv4Gear_cFv */
int daObjLv4Gear_c::create() {
    fopAcM_SetupActor(this, daObjLv4Gear_c);

    mType = getType();

    int phase = dComIfG_resLoad(&mPhase, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, (heapCallbackFunc)CheckCreateHeap, l_heap_size[mType])) {
            return cPhs_ERROR_e;
        }

        if (!Create()) {
            return cPhs_ERROR_e;
        }
    }

    return phase;
}

/* ############################################################################################## */
/* 80C681F4-80C683E0 000354 01EC+00 1/1 0/0 0/0 .text            execute__14daObjLv4Gear_cFv */
int daObjLv4Gear_c::execute() {
    mTarget = 0;

    if (mProcID == 0xFFFFFFFF) {
        base_process_class* proc = fpcEx_Search(searchSwSpinSub, this);
        if (proc != NULL) {
            mProcID = (proc != NULL) ? proc->mBsPcId : -1;
        }
    } else {
        daObjSwSpinner_c* swspinner = (daObjSwSpinner_c*)fopAcM_SearchByID(mProcID);
        if (swspinner != NULL) {
            mTarget = swspinner->GetRotSpeedY();
        }

        if (mTarget == 0) {
            mCount = 0;
        } else {
            mCount += 1;
        }

        if (mCount > l_rot_start_time[mType]) {
            cLib_chaseS(&mSpeed, mTarget, 10);
        } else {
            cLib_chaseS(&mSpeed, 0, 50);
        }

        if (checkSE() == 0 && mSpeed != 0) {
            if (mType == GEAR_S_e) {
                fopAcM_seStartLevel(this, Z2SE_OBJ_SPNR_GEAR_S, mSpeed);
            } else if (mType == GEAR_L_e) {
                fopAcM_seStartLevel(this, Z2SE_OBJ_SPNR_GEAR_L, mSpeed);
            }
        }
    }

    field_0x578 += mSpeed;
    setBaseMtx();

    return 1;
}

/* 80C683E0-80C68444 000540 0064+00 1/1 0/0 0/0 .text            draw__14daObjLv4Gear_cFv */
int daObjLv4Gear_c::draw() {
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    mDoExt_modelUpdateDL(mpModel);
    return 1;
}

/* 80C68444-80C68478 0005A4 0034+00 1/1 0/0 0/0 .text            _delete__14daObjLv4Gear_cFv */
int daObjLv4Gear_c::_delete() {
    dComIfG_resDelete(&mPhase, l_arcName);
    return 1;
}

/* 80C68478-80C68498 0005D8 0020+00 1/0 0/0 0/0 .text daObjLv4Gear_Draw__FP14daObjLv4Gear_c */
static int daObjLv4Gear_Draw(daObjLv4Gear_c* i_this) {
    return i_this->draw();
}

/* 80C68498-80C684B8 0005F8 0020+00 1/0 0/0 0/0 .text daObjLv4Gear_Execute__FP14daObjLv4Gear_c */
static int daObjLv4Gear_Execute(daObjLv4Gear_c* i_this) {
    return i_this->execute();
}

/* 80C684B8-80C684D8 000618 0020+00 1/0 0/0 0/0 .text daObjLv4Gear_Delete__FP14daObjLv4Gear_c */
static int daObjLv4Gear_Delete(daObjLv4Gear_c* i_this) {
    return i_this->_delete();
}

/* 80C684D8-80C684F8 000638 0020+00 1/0 0/0 0/0 .text daObjLv4Gear_Create__FP14daObjLv4Gear_c */
static int daObjLv4Gear_Create(daObjLv4Gear_c* i_this) {
    return i_this->create();
}

/* ############################################################################################## */
/* 80C68530-80C68550 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjLv4Gear_Method */
static actor_method_class l_daObjLv4Gear_Method = {
    (process_method_func)daObjLv4Gear_Create,  (process_method_func)daObjLv4Gear_Delete,
    (process_method_func)daObjLv4Gear_Execute, (process_method_func)NULL,
    (process_method_func)daObjLv4Gear_Draw,
};

/* 80C68550-80C68580 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv4Gear */
extern actor_process_profile_definition g_profile_Obj_Lv4Gear = {
    fpcLy_CURRENT_e,         // mLayerID
    7,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_Lv4Gear,        // mProcName
    &g_fpcLf_Method.mBase,   // sub_method
    sizeof(daObjLv4Gear_c),  // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    561,                     // mPriority
    &l_daObjLv4Gear_Method,  // sub_method
    0x40100,                 // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80C68524-80C68524 000024 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
