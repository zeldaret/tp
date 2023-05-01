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
    0,                      // mLayerID     
    1,                      // mListID
    -3,                     // mListPrio
    PROC_WARNING_SCENE,     // mProcName               
    &g_fpcNd_Method.mBase,  // mSubMtd                  
    0x00000204,             // mSize        
    0,                      // mSizeOther              
    0,                      // mParameters              
    &g_fopScn_Method.mBase, // mSubMtd                   
    0,                      // mpMtd
    0                       // padding
};

/* 803C32D8-803C3300 -00001 0028+00 0/0 0/0 1/0 .data            g_profile_WARNING2_SCENE */
extern scene_process_profile_definition g_profile_WARNING2_SCENE = {
    0,                      // mLayerID          
    1,                      // mListID   
    -3,                     // mListPrio    
    PROC_WARNING2_SCENE,    // mProcName                     
    &g_fpcNd_Method.mBase,  // mSubMtd                       
    0x00000204,             // mSize             
    0,                      // mSizeOther                
    0,                      // mParameters                
    &g_fopScn_Method.mBase, // mSubMtd                        
    0,                      // mpMtd
    0                       // padding
};
