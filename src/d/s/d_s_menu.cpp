/**
 * d_s_menu.cpp
 * dolzel2 - Scene Menu
 */

#include "d/s/d_s_menu.h"
#include "d/d_procname.h"
#include "f_pc/f_pc_node.h"
#include "f_pc/f_pc_leaf.h"
#include "f_op/f_op_scene.h"


/* ############################################################################################## */
/* 803C3018-803C3040 -00001 0028+00 0/0 0/0 1/0 .data            g_profile_MENU_SCENE */
extern scene_process_profile_definition g_profile_MENU_SCENE = {
    0,                      // mLayerID
    1,                      // mListID
    -3,                     // mListPrio
    PROC_MENU_SCENE,        // mProcName
    0,                      // padding
    &g_fpcNd_Method.mBase,  // mSubMtd
    0,                      // mSize
    0,                      // mSizeOther      
    0,                      // mParameters      
    &g_fopScn_Method.mBase, // mSubMtd
    0,                      // mpMtd
    0                       // padding
};
