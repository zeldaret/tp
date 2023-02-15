#ifndef D_A_SUSPEND_H
#define D_A_SUSPEND_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daSus_c : public fopAc_ac_c {
public:
    /* 80031248 */ void newData(s8, cXyz const&, cXyz const&, u8, u8, u8);
    /* 804D5118 */ int create();


};

#endif /* D_A_SUSPEND_H */
