#include "global.h"
#include "d/d_ky/d_kyeff2/d_kyeff2.h"

extern "C" {

asm void dKyeff2_Draw__FP9dKyeff2_c(void){
    nofralloc
    #include "d/d_ky/d_kyeff2/asm/func_801ADEA0.s"
}


// execute__9dKyeff2_cFv
// dKyeff2_c::execute(void)
asm void dKyeff2_c_NS_execute(void) {
    nofralloc
    #include "d/d_ky/d_kyeff2/asm/func_801ADEC4.s"
}

// dKyeff2_Execute__FP9dKyeff2_c
// dKyeff2_Execute(dKyeff2_c*)
asm void dKyeff2_Execute__FP9dKyeff2_c(void) {
    nofralloc
    #include "d/d_ky/d_kyeff2/asm/func_801ADEE8.s"
}

// dKyeff2_IsDelete__FP9dKyeff2_c
// dKyeff2_IsDelete(dKyeff2_c*)
asm void dKyeff2_IsDelete__FP9dKyeff2_c(void) {
    nofralloc
    #include "d/d_ky/d_kyeff2/asm/func_801ADF08.s"
}

// dKyeff2_Delete__FP9dKyeff2_c
// dKyeff2_Delete(dKyeff2_c*)
asm void dKyeff2_Delete__FP9dKyeff2_c(void) {
    nofralloc
    #include "d/d_ky/d_kyeff2/asm/func_801ADF10.s"
}

// dKyeff2_Create__FP12kankyo_class
// dKyeff2_Create(kankyo_class*)
asm void dKyeff2_Create__FP12kankyo_class(void) {
    nofralloc
    #include "d/d_ky/d_kyeff2/asm/func_801ADF34.s"
}

};
