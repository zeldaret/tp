//
//
//

#include "dolphin/types.h"

extern "C" void ModuleProlog();
extern "C" void ModuleEpilog();
extern "C" void ModuleUnresolved();
extern "C" void ModuleConstructorsX(void* const*);
extern "C" void ModuleDestructorsX(void* const*);

extern void* const _ctors[];
extern void* const _dtors[];

extern "C" void _prolog() {
    ModuleConstructorsX(_ctors);
    ModuleProlog();
}

extern "C" void _epilog() {
    ModuleEpilog();
    ModuleDestructorsX(_dtors);
}

extern "C" void _unresolved() {
    ModuleUnresolved();
}
