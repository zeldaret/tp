/**
 * d_s_menu.cpp
 * Debug Level Select Menu
 */

#include "d/s/d_s_menu.h"
#include "f_pc/f_pc_leaf.h"
#include "f_op/f_op_scene.h"

/* 803C3018-803C3040 -00001 0028+00 0/0 0/0 1/0 .data            g_profile_MENU_SCENE */
extern scene_process_profile_definition g_profile_MENU_SCENE = {
    fpcLy_ROOT_e,           // mLayerID
    1,                      // mListID
    fpcPi_CURRENT_e,        // mListPrio
    PROC_MENU_SCENE,        // mProcName
    &g_fpcNd_Method.mBase,  // sub_method
    0,                      // mSize
    0,                      // mSizeOther      
    0,                      // mParameters      
    &g_fopScn_Method.mBase, // sub_method
    NULL,                   // mpMtd
};
