/**
 * @file d_a_obj_catdoor.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_catdoor.h"
#include "d/d_com_inf_game.h"

//
// Declarations:
//

static const char* l_arcName = "CatDoor";

u32 const daObjCatDoor_c::M_attr = 0x001E0578;

daObjCatDoor_c::~daObjCatDoor_c() {
    if (mDoor1.bgw.ChkUsed()) {
        dComIfG_Bgsp().Release(&mDoor1.bgw);
    }
    if (mDoor2.bgw.ChkUsed()) {
        dComIfG_Bgsp().Release(&mDoor2.bgw);
    }
    dComIfG_resDelete(&mPhaseReq, l_arcName);
}

int daObjCatDoor_c::createHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 4);

    ASSERT(modelData != NULL);
    mDoor1.pmodel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    mDoor2.pmodel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mDoor1.pmodel == NULL || mDoor2.pmodel == NULL) {
        return 0;
    }

    cBgD_t* cbgd = (cBgD_t*)dComIfG_getObjectRes(l_arcName, 7);
    if (mDoor1.bgw.Set(cbgd, 1, &mDoor1.mtx)) {
        return 0;
    }

    cBgD_t* cbgd2 = (cBgD_t*)dComIfG_getObjectRes(l_arcName, 7);
    if (mDoor2.bgw.Set(cbgd2, 1, &mDoor2.mtx)) {
        return 0;
    }

    return 1;
}

int daObjCatDoor_c::draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);

        fopAc_ac_c* p1 = static_cast<fopAc_ac_c*>(this);
        g_env_light.setLightTevColorType_MAJI(mDoor1.pmodel, &p1->tevStr);
        g_env_light.setLightTevColorType_MAJI(mDoor2.pmodel, &p1->tevStr);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mDoor1.pmodel);
    mDoExt_modelUpdateDL(mDoor2.pmodel);
    dComIfGd_setList();
    return 1;
}

int daObjCatDoor_c::execute() {
    if (dComIfGs_isSwitch(fopAcM_GetParam(this) & 0xFF, fopAcM_GetHomeRoomNo(this)) ||
        mRotSpeed == 0)
    {
        return 1;
    }
    calcOpen();
    setBaseMtx();
    return 1;
}

/* 80BC42B8-80BC42C4 000078 000C+00 1/1 0/0 1/1 .text            attr__14daObjCatDoor_cCFv */
const s16* daObjCatDoor_c::attr() const {
    return (const s16*)&daObjCatDoor_c::M_attr;
}

/* 80BC42C4-80BC43F4 000084 0130+00 1/1 0/0 0/0 .text            createSolidHeap__FP10fopAc_ac_c */
static int createSolidHeap(fopAc_ac_c* i_this) {
    return static_cast<daObjCatDoor_c*>(i_this)->createHeap();
}

int daObjCatDoor_c::create() {
    fopAcM_SetupActor(this, daObjCatDoor_c);

    int phase_state = dComIfG_resLoad(&mPhaseReq, l_arcName);
    if (phase_state == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createSolidHeap, 0x2520)) {
            phase_state = cPhs_ERROR_e;
        } else {
            create_init();
        }
    }
    return phase_state;
}

void daObjCatDoor_c::create_init() {
    ASSERT(getSwitchNo() != 0xff);
    fopAcM_setCullSizeBox(this, -200.0f, 0.0f, -20.0f, 200.0f, 260.0f, 100.0f);
    if (fopAcM_isSwitch(this, getSwitchNo())) {
        mDoor1.angle = 0x8800;
        mDoor2.angle = 0x7800;
    } else {
        mDoor1.bgw.SetCrrFunc(NULL);
        mDoor1.bgw.SetRoomId(fopAcM_GetRoomNo(this));
        dComIfG_Bgsp().Regist(&mDoor1.bgw, this);
        mDoor2.bgw.SetCrrFunc(NULL);
        mDoor2.bgw.SetRoomId(fopAcM_GetRoomNo(this));
        dComIfG_Bgsp().Regist(&mDoor2.bgw, this);
    }
    initBaseMtx();
}

/* 80BC43F4-80BC4454 0001B4 0060+00 1/1 0/0 0/0 .text            initBaseMtx__14daObjCatDoor_cFv */
void daObjCatDoor_c::initBaseMtx() {
    cullMtx = mMtx;
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_YrotM(mDoMtx_stack_c::get(), shape_angle.y);
    mDoMtx_copy(mDoMtx_stack_c::get(), mMtx);
    setBaseMtx();
}

/* 80BC4454-80BC4560 000214 010C+00 2/2 0/0 1/1 .text            setBaseMtx__14daObjCatDoor_cFv */
void daObjCatDoor_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_YrotM(mDoMtx_stack_c::get(), shape_angle.y);
    for (int i = 0; i < 2; i++) {
        daObjCatDoor_Door_c* door = i == 0 ? &mDoor1 : &mDoor2;
        f32 xOff = i == 0 ? -97.0f : 97.0f;
        s16 rot = i == 0 ? door->angle : s16(door->angle + 0x8000);
        mDoMtx_stack_c::push();
        mDoMtx_stack_c::transM(xOff, 0.0, 0.0);
        mDoMtx_YrotM(mDoMtx_stack_c::get(), (s16)rot);
        mDoMtx_copy(mDoMtx_stack_c::get(), door->pmodel->mBaseTransformMtx);
        mDoMtx_copy(mDoMtx_stack_c::get(), door->mtx);
        door->bgw.Move();
        mDoMtx_stack_c::pop();
    }
}

/* 80BC4560-80BC4628 000320 00C8+00 1/1 0/0 0/0 .text            calcOpen__14daObjCatDoor_cFv */
void daObjCatDoor_c::calcOpen() {
    s16 prev = mRotSpeed;
    int res = cLib_chaseS(&mRotSpeed, 0, *attr());
    for (int i = 0; i < 2; i++) {
        daObjCatDoor_Door_c* door = i == 0 ? &mDoor1 : &mDoor2;
        if (i == 0) {
            door->angle -= mRotSpeed;
        } else {
            door->angle += mRotSpeed;
        }
    }

    if (prev != 0 && res != 0) {
        fopAcM_onSwitch(this, getSwitchNo());
    }
}

/* 80BC4628-80BC46EC 0003E8 00C4+00 1/0 0/0 0/0 .text daObjCatDoor_Draw__FP14daObjCatDoor_c */
static int daObjCatDoor_Draw(daObjCatDoor_c* i_this) {
    return static_cast<daObjCatDoor_c*>(i_this)->draw();
}

/* 80BC46EC-80BC4760 0004AC 0074+00 1/0 0/0 0/0 .text daObjCatDoor_Execute__FP14daObjCatDoor_c */
static int daObjCatDoor_Execute(daObjCatDoor_c* i_this) {
    return static_cast<daObjCatDoor_c*>(i_this)->execute();
}

/* 80BC4760-80BC4768 000520 0008+00 1/0 0/0 0/0 .text daObjCatDoor_IsDelete__FP14daObjCatDoor_c */
static bool daObjCatDoor_IsDelete(daObjCatDoor_c* i_this) {
    return true;
}

/* 80BC4768-80BC4848 000528 00E0+00 1/0 0/0 0/0 .text daObjCatDoor_Delete__FP14daObjCatDoor_c */
static int daObjCatDoor_Delete(daObjCatDoor_c* i_this) {
    fopAcM_GetID(i_this);
    i_this->~daObjCatDoor_c();
    return 1;
}

/* 80BC4848-80BC49AC 000608 0164+00 1/0 0/0 0/0 .text            daObjCatDoor_Create__FP10fopAc_ac_c
 */
static int daObjCatDoor_Create(fopAc_ac_c* i_this) {
    fopAcM_GetID(i_this);
    daObjCatDoor_c* a_this = static_cast<daObjCatDoor_c*>(i_this);
    return a_this->create();
}

/* ############################################################################################## */
/* 80BC49E4-80BC4A04 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjCatDoor_Method */
static actor_method_class l_daObjCatDoor_Method = {
    (process_method_func)daObjCatDoor_Create,  (process_method_func)daObjCatDoor_Delete,
    (process_method_func)daObjCatDoor_Execute, (process_method_func)daObjCatDoor_IsDelete,
    (process_method_func)daObjCatDoor_Draw,
};

/* 80BC4A04-80BC4A34 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_CatDoor */
extern actor_process_profile_definition g_profile_Obj_CatDoor = {
    fpcLy_CURRENT_e,         // mLayerID
    3,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_CatDoor,        // mProcName
    &g_fpcLf_Method.base,   // mSubMtd
    sizeof(daObjCatDoor_c),  // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // mSubMtd
    684,                     // mPriority
    &l_daObjCatDoor_Method,  // mSubMtd
    0x44100,                 // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // mCullType
};
