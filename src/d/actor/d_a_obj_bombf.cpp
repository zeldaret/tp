/*
 * d_a_obj_bombf.cpp
 * Bomb Flower
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_bombf.h"
#include "d/d_procname.h"

/* 80BBAE84-80BBAE8C 000000 0006+02 3/3 0/0 0/0 .rodata          l_arcName */
static const char l_arcName[] = "Bombf";

/* 80BBA9F8-80BBAA64 000078 006C+00 1/1 0/0 0/0 .text            createHeap__12daObjBombf_cFv */
bool daObjBombf_c::createHeap() {
    field_0x570 = mDoExt_J3DModel__create((J3DModelData*)dComIfG_getObjectRes(l_arcName, 4),
                                          0x80000, 0x11000084);
    return (field_0x570 != NULL);
}

/* 80BBAA64-80BBAA84 0000E4 0020+00 1/1 0/0 0/0 .text daObjBombf_createHeap__FP10fopAc_ac_c */
static bool daObjBombf_createHeap(fopAc_ac_c* i_this) {
    return static_cast<daObjBombf_c*>(i_this)->createHeap();
}

/* 80BBAA84-80BBAB9C 000104 0118+00 1/1 0/0 0/0 .text            create__12daObjBombf_cFv */
int daObjBombf_c::create() {
    fopAcM_SetupActor(this, daObjBombf_c);

    int phase = dComIfG_resLoad(&field_0x568, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, (heapCallbackFunc)daObjBombf_createHeap, 0x820)) {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, field_0x570->getBaseTRMtx());
        tevStr.room_no = fopAcM_GetRoomNo(this);
        attention_info.position = current.pos;
        eyePos = attention_info.position;
        field_0x574 = 0xffffffff;
        setMatrix();
        fopAcM_SetMin(this, -75.0f, 0.0f, -75.0f);
        fopAcM_SetMax(this, 75.0f, 30.0f, 75.0f);
    }

    return phase;
}

/* 80BBAB9C-80BBABBC 00021C 0020+00 1/0 0/0 0/0 .text            daObjBombf_Create__FP10fopAc_ac_c */
static int daObjBombf_Create(fopAc_ac_c* i_this) {
    return static_cast<daObjBombf_c*>(i_this)->create();
}

/* 80BBABBC-80BBAC24 00023C 0068+00 1/1 0/0 0/0 .text            __dt__12daObjBombf_cFv */
daObjBombf_c::~daObjBombf_c() {
    dComIfG_resDelete(&field_0x568, l_arcName);
}

/* 80BBAC24-80BBAC4C 0002A4 0028+00 1/0 0/0 0/0 .text            daObjBombf_Delete__FP12daObjBombf_c */
static int daObjBombf_Delete(daObjBombf_c* i_this) {
    i_this->~daObjBombf_c();
    return 1;
}

/* 80BBAC4C-80BBACC0 0002CC 0074+00 2/2 0/0 0/0 .text            setMatrix__12daObjBombf_cFv */
void daObjBombf_c::setMatrix() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y + field_0x584, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    MTXCopy(mDoMtx_stack_c::now, field_0x570->mBaseTransformMtx);
}

/* 80BBAE9C-80BBAEA8 000018 000C+00 1/1 0/0 0/0 .rodata          bombOffset$3727 */
static const Vec bombOffset = {0.0f, 7.0f, 0.0f};

/* 80BBACC0-80BBADD8 000340 0118+00 1/1 0/0 0/0 .text            execute__12daObjBombf_cFv */
int daObjBombf_c::execute() {
    u32 uVar;
    cXyz vStack;

    setMatrix();

    if (field_0x574 == -1) {
        if (field_0x578 != 0) {
            field_0x578--;
        } else {
            mDoMtx_multVec(field_0x570->getBaseTRMtx(), &bombOffset, &vStack);

            fopAc_ac_c* bomb_actor =
                dBomb_c::createFlowerBomb(&vStack, &shape_angle, fopAcM_GetRoomNo(this));
            field_0x574 = fopAcM_GetID(bomb_actor);
        }
    } else {
        fopAc_ac_c* actor = fopAcM_SearchByID(field_0x574);

        if (actor == NULL) {
            field_0x574 = -1;
            field_0x578 = 150;
        } else if (dBomb_c::checkFlowerBombWait(actor)) {
            mDoMtx_multVec(field_0x570->getBaseTRMtx(), &bombOffset, &actor->current.pos);
        }
    }
    return 1;
}

/* 80BBADD8-80BBADF8 000458 0020+00 1/0 0/0 0/0 .text daObjBombf_Execute__FP12daObjBombf_c */
static int daObjBombf_Execute(daObjBombf_c* i_this) {
    return i_this->execute();
}

/* 80BBADF8-80BBAE5C 000478 0064+00 1/1 0/0 0/0 .text            draw__12daObjBombf_cFv */
int daObjBombf_c::draw() {
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(field_0x570, &tevStr);
    mDoExt_modelUpdateDL(field_0x570);
    return 1;
}

/* 80BBAE5C-80BBAE7C 0004DC 0020+00 1/0 0/0 0/0 .text            daObjBombf_Draw__FP12daObjBombf_c */
static int daObjBombf_Draw(daObjBombf_c* i_this) {
    return i_this->draw();
}

/* 80BBAEA8-80BBAEC8 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjBombf_Method */
static actor_method_class l_daObjBombf_Method = {
    (process_method_func)daObjBombf_Create,  (process_method_func)daObjBombf_Delete,
    (process_method_func)daObjBombf_Execute, (process_method_func)NULL,
    (process_method_func)daObjBombf_Draw,
};

/* 80BBAEC8-80BBAEF8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Bombf */
extern actor_process_profile_definition g_profile_Obj_Bombf = {
    fpcLy_CURRENT_e,        // mLayerID
    7,                      // mListID
    fpcPi_CURRENT_e,        // mListPrio
    PROC_Obj_Bombf,         // mProcName
    &g_fpcLf_Method.base,  // sub_method
    sizeof(daObjBombf_c),   // mSize
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // sub_method
    251,                    // mPriority
    &l_daObjBombf_Method,   // sub_method
    0x40100,                // mStatus
    fopAc_ENV_e,            // mActorType
    fopAc_CULLBOX_CUSTOM_e, // cullType
};
