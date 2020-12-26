
#include "global.h"
#include "SComponent/c_list.h"

// l_fpcLn_Line
extern node_list_class lbl_803F4CF0[16];

void fpcLn_Create(void)
{
    s32 i = ARRAY_SIZE(lbl_803F4CF0);
    node_list_class *pLine = lbl_803F4CF0;
    while (i-- > 0)
        cLs_Create(pLine++);
}
