/**
 * d_a_obj_tmoon.cpp
 * Moon in Hidden Skill Scene
 */

#include "rel/d/a/obj/d_a_obj_tmoon/d_a_obj_tmoon.h"

/* 80D12B98-80D12BB8 000078 0020+00 1/1 0/0 0/0 .text            CheckCreateHeap__FP10fopAc_ac_c */
static bool CheckCreateHeap(fopAc_ac_c* i_this) {
    return static_cast<daObjTMoon_c*>(i_this)->CreateHeap();
}

/* 80D12BB8-80D12BF4 000098 003C+00 1/1 0/0 0/0 .text            initBaseMtx__12daObjTMoon_cFv */
void daObjTMoon_c::initBaseMtx() {
    field_0x570->setBaseScale(mScale);
    setBaseMtx();
}

/* 80D12BF4-80D12C48 0000D4 0054+00 1/1 0/0 0/0 .text            setBaseMtx__12daObjTMoon_cFv */
void daObjTMoon_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    PSMTXCopy(mDoMtx_stack_c::now, field_0x570->mBaseTransformMtx);
}

/* 80D12C48-80D12C9C 000128 0054+00 1/1 0/0 0/0 .text            Create__12daObjTMoon_cFv */
int daObjTMoon_c::Create() {
    field_0x574 = getEventBit1();
    field_0x576 = getEventBit2();
    initBaseMtx();
    fopAcM_SetMtx(this, field_0x570->getBaseTRMtx());
    return 1;
}

/* 80D12FA0-80D12FA4 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static const char* l_arcName[] = {"A_TMoon"};

/* 80D12C9C-80D12D0C 00017C 0070+00 1/1 0/0 0/0 .text            CreateHeap__12daObjTMoon_cFv */
bool daObjTMoon_c::CreateHeap() {
    field_0x570 = mDoExt_J3DModel__create((J3DModelData*)dComIfG_getObjectRes(l_arcName[0], 3),
                                          0x80000, 0x11000084);
    return field_0x570 != NULL;
}

/* 80D12D0C-80D12DC0 0001EC 00B4+00 1/1 0/0 0/0 .text            create__12daObjTMoon_cFv */
int daObjTMoon_c::create() {
    if (!fopAcM_CheckCondition(this, 8)) {
        new (this) daObjTMoon_c();
        fopAcM_OnCondition(this, 8);
    }
    int phase = dComIfG_resLoad(&field_0x568, l_arcName[0]);
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, (heapCallbackFunc)CheckCreateHeap, 0x880)) {
            return cPhs_ERROR_e;
        } else if (!Create()) {
            return cPhs_ERROR_e;
        }
    }
    return phase;
}

/* 80D12DC0-80D12EB4 0002A0 00F4+00 1/1 0/0 0/0 .text            execute__12daObjTMoon_cFv */
int daObjTMoon_c::execute() {
    if ((field_0x576 != 0x3ff) &&
            (i_dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[field_0x576])) ||
        (field_0x574 != 0x3ff) &&
            (!i_dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[field_0x574])))
    {
        fopDwTg_DrawQTo(&mDwTg);
        return 1;
    } else if ((field_0x574 != 0x3ff) &&
               (i_dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[field_0x574])))
    {
        fopDwTg_ToDrawQ(&mDwTg, fpcLf_GetPriority(this));
        return 1;
    }
    return 1;
}

/* 80D12EB4-80D12EDC 000394 0028+00 1/1 0/0 0/0 .text            draw__12daObjTMoon_cFv */
int daObjTMoon_c::draw() {
    g_env_light.mMoonPos = current.pos;
    return 1;
}

/* 80D12EDC-80D12F10 0003BC 0034+00 1/1 0/0 0/0 .text            _delete__12daObjTMoon_cFv */
int daObjTMoon_c::_delete() {
    dComIfG_resDelete(&field_0x568, l_arcName[0]);
    return 1;
}

/* 80D12F10-80D12F30 0003F0 0020+00 1/0 0/0 0/0 .text            daObjTMoon_Draw__FP12daObjTMoon_c */
static int daObjTMoon_Draw(daObjTMoon_c* i_this) {
    return i_this->draw();
}

/* 80D12F30-80D12F50 000410 0020+00 1/0 0/0 0/0 .text daObjTMoon_Execute__FP12daObjTMoon_c */
static int daObjTMoon_Execute(daObjTMoon_c* i_this) {
    return i_this->execute();
}

/* 80D12F50-80D12F70 000430 0020+00 1/0 0/0 0/0 .text            daObjTMoon_Delete__FP12daObjTMoon_c */
static int daObjTMoon_Delete(daObjTMoon_c* i_this) {
    return i_this->_delete();
}

/* 80D12F70-80D12F90 000450 0020+00 1/0 0/0 0/0 .text            daObjTMoon_Create__FP12daObjTMoon_c */
static int daObjTMoon_Create(daObjTMoon_c* i_this) {
    return i_this->create();
}

/* 80D12FA4-80D12FC4 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjTMoon_Method */
static actor_method_class l_daObjTMoon_Method = {
    (process_method_func)daObjTMoon_Create,  (process_method_func)daObjTMoon_Delete,
    (process_method_func)daObjTMoon_Execute, (process_method_func)NULL,
    (process_method_func)daObjTMoon_Draw,
};

/* 80D12FC4-80D12FF4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_TMoon */
extern actor_process_profile_definition g_profile_Obj_TMoon = {
    -3,                     // mLayerID
    7,                      // mListID
    -3,                     // mListPrio
    PROC_Obj_TMoon,         // mProcName
    0,                      // Padding
    &g_fpcLf_Method.mBase,  // mSubMtd
    sizeof(daObjTMoon_c),   // mSize
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // mSubMtd
    0x0239,                 // mPriority
    0,                      // Padding
    0,                      // Padding
    &l_daObjTMoon_Method,   // mSubMtd
    0x00040000,             // mStatus
    0,                      // mActorType
    14,                     // mCullType
    0,                      // Padding
    0,                      // Padding
};
