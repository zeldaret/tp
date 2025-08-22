/**
 * d_a_obj_zcloth.cpp
 * Object - Zora Armor
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_zcloth.h"
#include "d/d_com_inf_game.h"
#include "d/d_item_data.h"
#include "d/d_a_itembase_static.h"
#include "d/d_procname.h"

/* 80D3EE18-80D3EE54 000078 003C+00 1/1 0/0 0/0 .text            initBaseMtx__13daObjZCloth_cFv */
void daObjZCloth_c::initBaseMtx() {
    mpModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80D3EE54-80D3EEC0 0000B4 006C+00 2/2 0/0 0/0 .text            setBaseMtx__13daObjZCloth_cFv */
void daObjZCloth_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80D3EEC0-80D3EF0C 000120 004C+00 1/1 0/0 0/0 .text            Create__13daObjZCloth_cFv */
int daObjZCloth_c::Create() {
    initBaseMtx();
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    fopAcM_setCullSizeBox2(this, mpModel->getModelData());
    return 1;
}

/* 80D3EF0C-80D3F0AC 00016C 01A0+00 1/1 0/0 0/0 .text            create__13daObjZCloth_cFv */
int daObjZCloth_c::create() {
    fopAcM_SetupActor(this, daObjZCloth_c);
    m_itemNo = 0x31;
    int phase = dComIfG_resLoad(&mPhase, dItem_data::getFieldArc(m_itemNo));
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, (heapCallbackFunc)CheckFieldItemCreateHeap, 0x2fb0)) {
            return cPhs_ERROR_e;
        }
        else if (!Create()) {
            return cPhs_ERROR_e;
        } 
    }
    return phase;
}

/* 80D3F1AC-80D3F1D0 00040C 0024+00 1/1 0/0 0/0 .text            execute__13daObjZCloth_cFv */
int daObjZCloth_c::execute() {
    setBaseMtx();
    return 1;
}

/* 80D3F1D0-80D3F200 000430 0030+00 1/1 0/0 0/0 .text            draw__13daObjZCloth_cFv */
int daObjZCloth_c::draw() {
    DrawBase();
    return 1;
}

/* 80D3F200-80D3F23C 000460 003C+00 1/1 0/0 0/0 .text            _delete__13daObjZCloth_cFv */
int daObjZCloth_c::_delete() {
    dComIfG_resDelete(&mPhase, dItem_data::getFieldArc(m_itemNo)); 
    return 1;
}  

/* 80D3F23C-80D3F25C 00049C 0020+00 1/0 0/0 0/0 .text            daObjZCloth_Draw__FP13daObjZCloth_c */
static int daObjZCloth_Draw(daObjZCloth_c* i_this) {
    return i_this->draw();
}

/* 80D3F25C-80D3F27C 0004BC 0020+00 1/0 0/0 0/0 .text daObjZCloth_Execute__FP13daObjZCloth_c */
static int daObjZCloth_Execute(daObjZCloth_c* i_this) {
    return i_this->execute();
}

/* 80D3F27C-80D3F29C 0004DC 0020+00 1/0 0/0 0/0 .text daObjZCloth_Delete__FP13daObjZCloth_c */
static int daObjZCloth_Delete(daObjZCloth_c* i_this) {
    return i_this->_delete();
}

/* 80D3F29C-80D3F2BC 0004FC 0020+00 1/0 0/0 0/0 .text            daObjZCloth_Create__FP10fopAc_ac_c */
static int daObjZCloth_Create(fopAc_ac_c* i_this) {
    return static_cast<daObjZCloth_c*>(i_this)->create();
}

/* 80D3F2D4-80D3F2F4 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjZCloth_Method */
static actor_method_class l_daObjZCloth_Method = {
    (process_method_func)daObjZCloth_Create,
    (process_method_func)daObjZCloth_Delete,
    (process_method_func)daObjZCloth_Execute,
    (process_method_func)NULL,
    (process_method_func)daObjZCloth_Draw,
};

/* 80D3F2F4-80D3F324 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_ZoraCloth */
extern actor_process_profile_definition g_profile_Obj_ZoraCloth = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_Obj_ZoraCloth,
    &g_fpcLf_Method.base,
    sizeof(daObjZCloth_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x220,
    &l_daObjZCloth_Method,
    0x40100,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
