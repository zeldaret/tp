#ifndef C_C_DYLINK_H
#define C_C_DYLINK_H

#include "f_op/f_op_scene_mng.h"

struct cDylPhs {
    /* 80018804 */ static int phase_01(void*);
    /* 8001880C */ static int phase_02(s16*);
    /* 80018844 */ static int phase_03(void*);
    /* 8001884C */ static int Link(request_of_phase_process_class*, s16);
    /* 80018890 */ static int Unlink(request_of_phase_process_class*, s16);
};

struct DynamicNameTableEntry {
    s16 mKey;
    const char* name;
};

int cDyl_InitAsyncIsDone();
void cDyl_InitAsync();

#endif /* C_C_DYLINK_H */
