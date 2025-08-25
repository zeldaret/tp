/**
 * d_a_obj_stoneMark.cpp
 * Actor - Object Stone Mark
 *
 * Visual mark under the stone actor (d_a_obj_stone)
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_stoneMark.h"
#include "d/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"
#include "m_Do/m_Do_lib.h"

/* 8059A410-8059A414 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "A_IwaAto";

/* 8059A018-8059A038 000078 0020+00 1/1 0/0 0/0 .text            initBaseMtx__12daObjSMark_cFv */
void daObjSMark_c::initBaseMtx() {
    setBaseMtx();
}

/* 8059A038-8059A080 000098 0048+00 1/1 0/0 0/0 .text            setBaseMtx__12daObjSMark_cFv */
void daObjSMark_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    MTXCopy(mDoMtx_stack_c::get(), cullMtx);
}

/* 8059A080-8059A168 0000E0 00E8+00 1/1 0/0 0/0 .text            Create__12daObjSMark_cFv */
int daObjSMark_c::Create() {
    initBaseMtx();
    fopAcM_SetMtx(this, cullMtx);
    fopAcM_setCullSizeSphere(this, 0.0f, 0.0f, 0.0f, 100.0f);
    mAcchCir.SetWall(30.0f, 30.0f);
    mObjAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                 fopAcM_GetSpeed_p(this), 0, 0);
    mObjAcch.CrrPos(dComIfG_Bgsp());
    mDoLib_setResTimgObj((ResTIMG*)dComIfG_getObjectRes(l_arcName, 3), &mTexObj, 0, 0);
    return 1;
}

/* 8059A168-8059A25C 0001C8 00F4+00 1/1 0/0 0/0 .text            create__12daObjSMark_cFv */
int daObjSMark_c::create() {
    fopAcM_SetupActor(this, daObjSMark_c);

    int phase = dComIfG_resLoad(&mpPhase, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        if (!Create()) {
            return cPhs_ERROR_e;
        }
    }

    return phase;
}

/* 8059A2CC-8059A33C 00032C 0070+00 1/1 0/0 0/0 .text            draw__12daObjSMark_cFv */
int daObjSMark_c::draw() {
    static const f32 l_shadow_size[2] = {55.0f, 85.0f};
    dComIfGd_setSimpleShadow(&current.pos, mObjAcch.GetGroundH(),
                             l_shadow_size[fopAcM_GetParam(this) & 0xFF], mObjAcch.m_gnd,
                             shape_angle.y, (-0.6f - g_env_light.field_0x1238 * (0.7f - 0.3f)),
                             &this->mTexObj);
    return 1;
}

/* 8059A33C-8059A370 00039C 0034+00 1/1 0/0 0/0 .text            _delete__12daObjSMark_cFv */
int daObjSMark_c::_delete() {
    dComIfG_resDelete(&mpPhase, l_arcName);
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

/* 8059A404-8059A404 00001C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/* ############################################################################################## */
/* 8059A414-8059A434 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjSMark_Method */
static actor_method_class l_daObjSMark_Method = {
    (process_method_func)daObjSMark_Create,
    (process_method_func)daObjSMark_Delete,
    (process_method_func)NULL,
    (process_method_func)NULL,
    (process_method_func)daObjSMark_Draw,
};

/* 8059A434-8059A464 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_StoneMark */
extern actor_process_profile_definition g_profile_Obj_StoneMark = {
    fpcLy_CURRENT_e,        // mLayerID
    7,                      // mListID
    fpcPi_CURRENT_e,        // mListPrio
    PROC_Obj_StoneMark,     // mProcName
    &g_fpcLf_Method.base,  // sub_method
    sizeof(daObjSMark_c),   // mSize
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // sub_method
    534,                    // mPriority
    &l_daObjSMark_Method,   // sub_method
    0x40100,                // mStatus
    fopAc_ACTOR_e,          // mActorType
    fopAc_CULLSPHERE_8_e,   // cullType
};
