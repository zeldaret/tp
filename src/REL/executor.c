#include "REL/executor.h"

void _prolog(void) {
    ModuleConstructorsX(_ctors);
    ModuleProlog();
}

void _epilog(void) {
    ModuleEpilog();
    ModuleDestructorsX(_dtors);
}

void _unresolved(void) {
    ModuleUnresolved();
}