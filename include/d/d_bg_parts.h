#ifndef D_D_BG_PARTS
#define D_D_BG_PARTS

#include "f_op/f_op_actor.h"

class dBgp_c {
public:
    int registBg(fopAc_ac_c*);
    void draw(fopAc_ac_c*);
    int execute(bool);
    void releaseBg();
};

#endif /* D_D_BG_PARTS */
