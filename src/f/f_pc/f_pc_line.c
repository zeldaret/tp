
#include "dolphin/types.h"
#include "SComponent/c_list.h"

// l_fpcLn_Line
extern node_list_class lbl_803F4CF0[16];

#define ARRAY_SIZE(o) (sizeof((o)) / sizeof(*(o)))

void fpcLn_Create(void)
{
    int i = ARRAY_SIZE(lbl_803F4CF0);
    node_list_class *pLine = lbl_803F4CF0;
    while (i-- > 0)
        cLs_Create(pLine++);
}