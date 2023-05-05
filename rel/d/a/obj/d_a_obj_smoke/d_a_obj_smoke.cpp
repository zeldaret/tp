/**
 * d_a_obj_smoke.cpp
 * Object - Smoke
 */

#include "rel/d/a/obj/d_a_obj_smoke/d_a_obj_smoke.h"

/* 80CDCE78-80CDCE98 000078 0020+00 1/1 0/0 0/0 .text            initBaseMtx__12daObjSmoke_cFv */
void daObjSmoke_c::initBaseMtx() {
    setBaseMtx();
}

/* 80CDCE98-80CDCEF0 000098 0058+00 1/1 0/0 0/0 .text            setBaseMtx__12daObjSmoke_cFv */
void daObjSmoke_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x,current.pos.y,current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x,shape_angle.y,shape_angle.z);
}

/* 80CDCEF0-80CDCF9C 0000F0 00AC+00 1/1 0/0 0/0 .text            Create__12daObjSmoke_cFv */
int daObjSmoke_c::Create() {
    initBaseMtx();

    if (i_fopAcM_isSwitch(this,getSwbit())) {
        mParticle = dComIfGp_particle_set(0x85a6,&current.pos,&current.angle,&mScale,0xff,0,0xffffffff,0,0,0);
    }

    return 1;
}

/* 80CDCF9C-80CDD004 00019C 0068+00 1/1 0/0 0/0 .text            create__12daObjSmoke_cFv */
int daObjSmoke_c::create() {
        if (!fopAcM_CheckCondition(this, 8)) {
            new (this) daObjSmoke_c();
            fopAcM_OnCondition(this, 8);
        }
        if (Create() == 0) {
            return cPhs_ERROR_e;
        }
        return cPhs_COMPLEATE_e; 
}

/* 80CDD004-80CDD0B8 000204 00B4+00 1/1 0/0 0/0 .text            execute__12daObjSmoke_cFv */
int daObjSmoke_c::execute() {
    if (i_fopAcM_isSwitch(this,getSwbit()) && !mParticle) {
        mParticle = dComIfGp_particle_set(0x85a6,&current.pos,&current.angle,&mScale,0xff,0,0xffffffff,0,0,0);
    }

    return 1;
}


/* 80CDD0B8-80CDD0F8 0002B8 0040+00 1/1 0/0 0/0 .text            _delete__12daObjSmoke_cFv */
int daObjSmoke_c::_delete() {
    if (mParticle) {
        mParticle->quitImmortalEmitter();
        mParticle->becomeInvalidEmitter();
        mParticle = 0;
    }
    return 1;
}

/* 80CDD0F8-80CDD118 0002F8 0020+00 1/0 0/0 0/0 .text daObjSmoke_Execute__FP12daObjSmoke_c */
static int daObjSmoke_Execute(daObjSmoke_c* i_this) {
    return i_this->execute();
}

/* 80CDD118-80CDD138 000318 0020+00 1/0 0/0 0/0 .text            daObjSmoke_Delete__FP12daObjSmoke_c
 */
static int daObjSmoke_Delete(daObjSmoke_c* i_this) {
    return i_this->_delete();
}

/* 80CDD138-80CDD158 000338 0020+00 1/0 0/0 0/0 .text            daObjSmoke_Create__FP10fopAc_ac_c
 */
static int daObjSmoke_Create(fopAc_ac_c* i_this) {
    return static_cast<daObjSmoke_c*>(i_this)->create();
}

/* ############################################################################################## */
/* 80CDD164-80CDD184 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjSmoke_Method */
static actor_method_class l_daObjSmoke_Method = {
    (process_method_func)daObjSmoke_Create,
    (process_method_func)daObjSmoke_Delete,
    (process_method_func)daObjSmoke_Execute
};

/* 80CDD184-80CDD1B4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Smoke */
extern actor_process_profile_definition g_profile_Obj_Smoke = {
    -3,                    // mLayerID     
    7,                     // mListID   
    -3,                    // mListPrio    
    PROC_Obj_Smoke,        // mProcName                
    &g_fpcLf_Method.mBase, // mSubMtd                       
    sizeof(daObjSmoke_c),  // mSize                       
    0,                     // mSizeOther   
    0,                     // mParameters          
    &g_fopAc_Method.base,  // mSubMtd                      
    0x0278,                // mPriority         
    &l_daObjSmoke_Method,  // mSubMtd                      
    0x00040100,            // mStatus             
    0,                     // mActorType   
    0x0E,                  // mCullType      
};
