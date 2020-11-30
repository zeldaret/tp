
#include "global.h"
#include "f/f_pc/f_pc_method_iter.h"

extern "C" {

void fpcMtdIt_Method(node_list_class *pList, cNdIt_MethodFunc pMethod)
{
    cLsIt_Method(pList, pMethod, NULL);
}

};
