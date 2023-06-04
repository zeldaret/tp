/**
 * f_pc_method_iter.cpp
 * Framework - Process Method Iteration
 */

#include "SSystem/SComponent/c_list_iter.h"
#include "f_pc/f_pc_method_iter.h"

/* 80023764-80023788 0024+00 s=0 e=1 z=0  None .text      fpcMtdIt_Method__FP15node_list_classPFPv_i
 */
void fpcMtdIt_Method(node_list_class* i_nodeList, fpcMtdIt_MethodFunc i_methods) {
    cLsIt_Method(i_nodeList, (cNdIt_MethodFunc)i_methods, NULL);
}
