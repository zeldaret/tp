#include "f/f_pc/f_pc_method_iter.h"
#include "dolphin/types.h"

void fpcMtdIt_Method(node_list_class* pList, fpcMtdIt_MethodFunc pMethod) {
    cLsIt_Method(pList, (cNdIt_MethodFunc)pMethod, NULL);
}
