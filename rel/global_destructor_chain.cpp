//
//
//

#include "dol2asm.h"
#include "dolphin/types.h"

struct __destructor_chain {
    __destructor_chain* next;
    void* destructor;
    void* object;
};

#define CALL_DTOR(DTOR, OBJECT, VALUE) (((void (*)(void*, short))(DTOR))((OBJECT), VALUE))
#define CALL_DTOR_ALL(DTOR, OBJECT) CALL_DTOR(DTOR, OBJECT, (-1))

static __destructor_chain* __global_destructor_chain;

extern "C" void __register_global_object(void* object, void* destructor, __destructor_chain* link) {
    link->next = __global_destructor_chain;
    link->destructor = destructor;
    link->object = object;
    __global_destructor_chain = link;
}

extern "C" void __destroy_global_chain() {
    __destructor_chain* gcd;
    while ((gcd = __global_destructor_chain) != NULL) {
        __global_destructor_chain = gcd->next;

        CALL_DTOR_ALL(gcd->destructor, gcd->object);
    }
}

SECTION_DTORS10 extern void* const __destroy_global_chain_reference = (void*)__destroy_global_chain;