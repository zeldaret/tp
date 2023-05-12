/**
 * f_pc_line.cpp
 * Framework - Process Line
 */

#include "f_pc/f_pc_line.h"
#include "f_pc/f_pc_node.h"
#include "global.h"

/* ############################################################################################## */
/* 803F4CF0-803F4DB0 00C0+00 s=2 e=0 z=0  None .bss       l_fpcLn_Line */
static node_list_class l_fpcLn_Line[16];

/* 80021F64-80021FB8 0054+00 s=0 e=1 z=0  None .text      fpcLn_Create__Fv */
void fpcLn_Create() {
    s32 i = ARRAY_SIZE(l_fpcLn_Line);
    node_list_class* pLine = l_fpcLn_Line;
    while (i-- > 0)
        cLs_Create(pLine++);
}

/* ############################################################################################## */
/* 804505D8-804505E0 0008+00 s=0 e=2 z=0  None .sdata     g_fpcLn_Queue */
node_lists_tree_class g_fpcLn_Queue = {
    l_fpcLn_Line,
    ARRAY_SIZE(l_fpcLn_Line),
};
