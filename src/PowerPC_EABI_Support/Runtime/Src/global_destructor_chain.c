#include "NMWException.h"

/* 80451988-80451990 000E88 0004+04 2/2 0/0 0/0 .sbss            __global_destructor_chain */
DestructorChain* __global_destructor_chain;

/* 80361C24-80361C3C 35C564 0018+00 0/0 116/116 0/0 .text            __register_global_object */
void* __register_global_object(void* object, void* destructor, void* regmem) {
    ((DestructorChain*)regmem)->next = __global_destructor_chain;
    ((DestructorChain*)regmem)->destructor = destructor;
    ((DestructorChain*)regmem)->object = object;
    __global_destructor_chain = (DestructorChain*)regmem;
    return object;
}

/* 80361BDC-80361C24 35C51C 0048+00 0/0 2/1 0/0 .text            __destroy_global_chain */
void __destroy_global_chain(void) {
    DestructorChain* iter;
    while ((iter = __global_destructor_chain) != 0) {
        __global_destructor_chain = iter->next;
        DTORCALL(iter->destructor, iter->object);
    }
}

/* clang-format off */
__declspec(section ".dtors")
static void* const __destroy_global_chain_reference = __destroy_global_chain;
/* clang-format on */