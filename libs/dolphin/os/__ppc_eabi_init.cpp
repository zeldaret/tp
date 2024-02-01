//
// __ppc_eabi_init
//

#include "dol2asm.h"
#include "dolphin/base/PPCArch.h"

#ifdef __cplusplus
extern "C" {
#endif

//
// Forward References:
//

void __init_user();
void __init_cpp();
void _ExitProcess();

//
// External References:
//

typedef void (*voidfunctionptr)(); // pointer to function returning void
SECTION_CTORS10 extern voidfunctionptr __init_cpp_exceptions_reference[];

/* 80342B78-80342B98 33D4B8 0020+00 0/0 1/1 0/0 .text            __init_user */
void __init_user(void) {
    __init_cpp();
}

/* 80342B98-80342BEC 33D4D8 0054+00 1/1 0/0 0/0 .text            __init_cpp */
#pragma peephole off
void __init_cpp(void) {
    /**
     *	call static initializers
     */
    voidfunctionptr* constructor;
    for (constructor = __init_cpp_exceptions_reference; *constructor; constructor++) {
        (*constructor)();
    }
}
#pragma peephole reset

/* 80342BEC-80342C0C 33D52C 0020+00 0/0 2/2 0/0 .text            _ExitProcess */
void _ExitProcess(void) {
    PPCHalt();
}

#ifdef __cplusplus
}
#endif