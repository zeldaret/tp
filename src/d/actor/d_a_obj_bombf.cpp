/*
 * d_a_obj_bombf.cpp
 * Bomb Flower
 */

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_bombf.h"
#include "f_pc/f_pc_name.h"

static const char l_arcName[] = "Bombf";

bool daObjBombf_c::createHeap() {
    mpModel = mDoExt_J3DModel__create((J3DModelData*)dComIfG_getObjectRes(l_arcName, 4), 0x80000,
                                      0x11000084);
    return (mpModel != NULL);
}

static bool daObjBombf_createHeap(fopAc_ac_c* i_this) {
    return static_cast<daObjBombf_c*>(i_this)->createHeap();
}

int daObjBombf_c::create() {
    fopAcM_ct(this, daObjBombf_c);

    int phase = dComIfG_resLoad(&mPhase, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, (heapCallbackFunc)daObjBombf_createHeap, 0x820)) {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        tevStr.room_no = fopAcM_GetRoomNo(this);
        attention_info.position = current.pos;
        eyePos = attention_info.position;
        mBombId = fpcM_ERROR_PROCESS_ID_e;
        setMatrix();
        fopAcM_SetMin(this, -75.0f, 0.0f, -75.0f);
        fopAcM_SetMax(this, 75.0f, 30.0f, 75.0f);
    }

    return phase;
}

static int daObjBombf_Create(fopAc_ac_c* i_this) {
    return static_cast<daObjBombf_c*>(i_this)->create();
}

daObjBombf_c::~daObjBombf_c() {
    dComIfG_resDelete(&mPhase, l_arcName);
}

static int daObjBombf_Delete(daObjBombf_c* i_this) {
    i_this->~daObjBombf_c();
    return 1;
}

void daObjBombf_c::setMatrix() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y + mOffsetY, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    MTXCopy(mDoMtx_stack_c::now, mpModel->mBaseTransformMtx);
}

static const Vec bombOffset = {0.0f, 7.0f, 0.0f};

int daObjBombf_c::execute() {
    cXyz bomb_pos;

    setMatrix();

    if (mBombId == fpcM_ERROR_PROCESS_ID_e) {
        if (mRespawnTimer != 0) {
            mRespawnTimer--;
        } else {
            mDoMtx_multVec(mpModel->getBaseTRMtx(), &bombOffset, &bomb_pos);

            fopAc_ac_c* bomb_actor =
                dBomb_c::createFlowerBomb(&bomb_pos, &shape_angle, fopAcM_GetRoomNo(this));
            mBombId = fopAcM_GetID(bomb_actor);
        }
    } else {
        fopAc_ac_c* actor = fopAcM_SearchByID(mBombId);

        if (actor == NULL) {
            mBombId = fpcM_ERROR_PROCESS_ID_e;
            mRespawnTimer = 150;
        } else if (dBomb_c::checkFlowerBombWait(actor)) {
            mDoMtx_multVec(mpModel->getBaseTRMtx(), &bombOffset, &actor->current.pos);
        }
    }
    return 1;
}

static int daObjBombf_Execute(daObjBombf_c* i_this) {
    return i_this->execute();
}

int daObjBombf_c::draw() {
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    mDoExt_modelUpdateDL(mpModel);
    return 1;
}

static int daObjBombf_Draw(daObjBombf_c* i_this) {
    return i_this->draw();
}

static actor_method_class l_daObjBombf_Method = {
    (process_method_func)daObjBombf_Create,  (process_method_func)daObjBombf_Delete,
    (process_method_func)daObjBombf_Execute, (process_method_func)NULL,
    (process_method_func)daObjBombf_Draw,
};

actor_process_profile_definition g_profile_Obj_Bombf = {
    /* Layer ID     */ fpcLy_CURRENT_e,
    /* List ID      */ 7,
    /* List Prio    */ fpcPi_CURRENT_e,
    /* Proc Name    */ fpcNm_Obj_Bombf_e,
    /* Proc SubMtd  */ &g_fpcLf_Method.base,
    /* Size         */ sizeof(daObjBombf_c),
    /* Size Other   */ 0,
    /* Parameters   */ 0,
    /* Leaf SubMtd  */ &g_fopAc_Method.base,
    /* Draw Prio    */ fpcDwPi_Obj_Bombf_e,
    /* Actor SubMtd */ &l_daObjBombf_Method,
    /* Status       */ fopAcStts_UNK_0x40000_e | fopAcStts_CULL_e,
    /* Group        */ fopAc_ENV_e,
    /* Cull Type    */ fopAc_CULLBOX_CUSTOM_e,
};
