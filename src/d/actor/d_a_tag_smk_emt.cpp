/**
 * d_a_tag_smk_emt.cpp
 * Tag - Smoke Emit
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_tag_smk_emt.h"
#include "d/d_procname.h"

/* 80D612D8-80D61324 000078 004C+00 2/2 0/0 0/0 .text            __ct__13daTagSmkEmt_cFv */
daTagSmkEmt_c::daTagSmkEmt_c() {
    memset(&mParticles,0,0xc);
}

/* 80D61324-80D61384 0000C4 0060+00 1/0 0/0 0/0 .text            __dt__13daTagSmkEmt_cFv */
daTagSmkEmt_c::~daTagSmkEmt_c() {}

/* 80D61384-80D613DC 000124 0058+00 1/1 0/0 0/0 .text            create__13daTagSmkEmt_cFv */
int daTagSmkEmt_c::create() {
    fopAcM_SetupActor(this, daTagSmkEmt_c);
    createSmkEmt();
    return cPhs_COMPLEATE_e;
}

/* 80D613DC-80D61400 00017C 0024+00 1/1 0/0 0/0 .text            Delete__13daTagSmkEmt_cFv */
int daTagSmkEmt_c::Delete() {
    deleteSmkEmt();
    return 1;
}

/* 80D61400-80D61408 0001A0 0008+00 1/1 0/0 0/0 .text            draw__13daTagSmkEmt_cFv */
int daTagSmkEmt_c::draw() {
    return 1;
}

/* 80D61408-80D61410 0001A8 0008+00 1/1 0/0 0/0 .text            execute__13daTagSmkEmt_cFv */
int daTagSmkEmt_c::execute() {
    return 1;
}

/* ############################################################################################## */
/* 80D61600-80D61608 000000 0006+02 1/1 0/0 0/0 .rodata          PARTICLE_NAME$3654 */
static u16 const PARTICLE_NAME[3] = {
    0x87E7,
    0x87E8,
    0x87E9
};

/* 80D61410-80D61500 0001B0 00F0+00 1/1 0/0 0/0 .text            createSmkEmt__13daTagSmkEmt_cFv */
void daTagSmkEmt_c::createSmkEmt() {
    cXyz pos(current.pos);
    csXyz angle(0,0,0);
    cXyz pos2(1.0f,1.0f,1.0f);

    for (int i = 0; i < 3; i++) {
        mParticles[i] = dComIfGp_particle_set(PARTICLE_NAME[i],&pos,&angle,&pos2);
    }
}

/* 80D61500-80D61544 0002A0 0044+00 1/1 0/0 0/0 .text            deleteSmkEmt__13daTagSmkEmt_cFv */
void daTagSmkEmt_c::deleteSmkEmt() {
    for (int i = 0; i < 3; i++) {
        if (mParticles[i]) {
            mParticles[i]->becomeInvalidEmitter();
            mParticles[i] = 0;
        }
    }
}

/* 80D61544-80D61598 0002E4 0054+00 1/0 0/0 0/0 .text daTagSmkEmt_create__FP13daTagSmkEmt_c */
static int daTagSmkEmt_create(daTagSmkEmt_c* i_this) {
    fopAcM_SetupActor(i_this, daTagSmkEmt_c);
    return i_this->create();
}

/* 80D61598-80D615B8 000338 0020+00 1/0 0/0 0/0 .text daTagSmkEmt_Delete__FP13daTagSmkEmt_c */
static int daTagSmkEmt_Delete(daTagSmkEmt_c* i_this) {
    return i_this->Delete();
}

/* 80D615B8-80D615D8 000358 0020+00 1/0 0/0 0/0 .text daTagSmkEmt_execute__FP13daTagSmkEmt_c */
static int daTagSmkEmt_execute(daTagSmkEmt_c* i_this) {
    return i_this->execute();
}

/* 80D615D8-80D615F8 000378 0020+00 1/0 0/0 0/0 .text            daTagSmkEmt_draw__FP13daTagSmkEmt_c
 */
static int daTagSmkEmt_draw(daTagSmkEmt_c* i_this) {
    return i_this->draw();
}

/* ############################################################################################## */
/* 80D6160C-80D6162C -00001 0020+00 1/0 0/0 0/0 .data            daTagSmkEmt_METHODS */
static actor_method_class daTagSmkEmt_METHODS = {
    (process_method_func)daTagSmkEmt_create,
    (process_method_func)daTagSmkEmt_Delete,
    (process_method_func)daTagSmkEmt_execute,
    (process_method_func)0,
    (process_method_func)daTagSmkEmt_draw
};

/* 80D6162C-80D6165C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_SmkEmt */
extern actor_process_profile_definition g_profile_Tag_SmkEmt = {
    fpcLy_CURRENT_e,         // mLayerID    
    7,                       // mListID  
    fpcPi_CURRENT_e,         // mListPrio   
    PROC_Tag_SmkEmt,         // mProcName                
    &g_fpcLf_Method.base,   // sub_method                      
    sizeof(daTagSmkEmt_c),   // mSize                       
    0,                       // mSizeOther  
    0,                       // mParameters         
    &g_fopAc_Method.base,    // sub_method                     
    743,                     // mPriority       
    &daTagSmkEmt_METHODS,    // sub_method                     
    0x40000,                 // mStatus            
    fopAc_ACTOR_e,           // mActorType  
    fopAc_CULLBOX_CUSTOM_e,  // cullType     
};
