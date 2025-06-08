#include "__ppc_eabi_linker.h"

#if __MWERKS__
#pragma exceptions off
#pragma internal on
#endif

#ifdef __cplusplus
extern "C" {
#endif

extern void __init_cpp_exceptions(void);
extern void __fini_cpp_exceptions(void);

extern void __destroy_global_chain(void);
extern void __unregister_fragment(int);
extern int __register_fragment(struct __eti_init_info* info, char* TOC);

#ifdef __cplusplus
}
#endif

/* 80450AD0-80450AD8 000550 0004+04 2/2 0/0 0/0 .sdata           fragmentID */
static int fragmentID = -2;

extern void GetR2(char** R2) {
	register char* temp;
	asm {
		mr temp, r2
	}
	*R2 = temp;
}

/* 80362870-803628AC 35D1B0 003C+00 1/0 1/0 0/0 .text            __init_cpp_exceptions */
void __init_cpp_exceptions(void) {
    char* R2;

    if (fragmentID == -2) {
        GetR2(&R2);
        fragmentID = __register_fragment(_eti_init_info, R2);
    }
}

/* 8036283C-80362870 35D17C 0034+00 1/0 1/0 0/0 .text            __fini_cpp_exceptions */
void __fini_cpp_exceptions(void) {
    char* R2;
    if (fragmentID != -2) {
        __unregister_fragment(fragmentID);
        fragmentID = -2;
    }
}

/* 803737C0-803737C4 000000 0004+00 0/0 1/1 0/0 .ctors           __init_cpp_exceptions_reference */
#pragma section ".ctors$10"
__declspec(section ".ctors$10")
extern void* const __init_cpp_exceptions_reference = __init_cpp_exceptions;

/* 80373980-80373984 000000 0004+00 0/0 1/1 0/0 .dtors           __destroy_global_chain_reference */
#pragma section ".dtors$10"
__declspec(section ".dtors$10")
extern void* const __destroy_global_chain_reference = __destroy_global_chain;

/* 80373984-80373988 000004 0004+00 0/0 0/1 0/0 .dtors           __fini_cpp_exceptions_reference */
#pragma section ".dtors$15"
__declspec(section ".dtors$15")
extern void* const __fini_cpp_exceptions_reference = __fini_cpp_exceptions;
