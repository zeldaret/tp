/**
 * d_s_title.cpp
 * dolzel2 - Scene Title
 */

#include "d/s/d_s_title.h"
#include "f_op/f_op_scene.h"
#include "f_pc/f_pc_leaf.h"
#include "d/d_procname.h"

/* ############################################################################################## */
/* 803C32B0-803C32D8 -00001 0028+00 0/0 0/0 1/0 .data            g_profile_WARNING_SCENE */
extern scene_process_profile_definition g_profile_WARNING_SCENE = {
    fpcLy_ROOT_e,           // mLayerID     
    1,                      // mListID
    fpcPi_CURRENT_e,        // mListPrio
    PROC_WARNING_SCENE,     // mProcName               
    &g_fpcNd_Method.mBase,  // mSubMtd                  
    0x204,                  // mSize        
    0,                      // mSizeOther              
    0,                      // mParameters              
    &g_fopScn_Method.mBase, // mSubMtd                   
    NULL,                   // mpMtd
};

/* 803C32D8-803C3300 -00001 0028+00 0/0 0/0 1/0 .data            g_profile_WARNING2_SCENE */
extern scene_process_profile_definition g_profile_WARNING2_SCENE = {
    fpcLy_ROOT_e,           // mLayerID          
    1,                      // mListID   
    fpcPi_CURRENT_e,        // mListPrio    
    PROC_WARNING2_SCENE,    // mProcName                     
    &g_fpcNd_Method.mBase,  // mSubMtd                       
    0x204,                  // mSize             
    0,                      // mSizeOther                
    0,                      // mParameters                
    &g_fopScn_Method.mBase, // mSubMtd                        
    NULL,                   // mpMtd
};
