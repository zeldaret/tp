#ifndef D_A_NPC_LF_H
#define D_A_NPC_LF_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class npc_lf_class
 * @brief Lake Fish
 *
 * @details
 *
 */
class npc_lf_class : public fopAc_ac_c {
private:
    /* 0x568 */ u8 field_0x568[0x1fc4 - 0x568];
};
STATIC_ASSERT(sizeof(npc_lf_class) == 0x1fc4);

struct lf_s {
    /* 80A6A8A4 */ ~lf_s();
    /* 80A6A8E0 */ lf_s();
};

class daNPC_LF_HIO_c {
public:
    /* 80A69B6C */ daNPC_LF_HIO_c();
    /* 80A6A8E4 */ ~daNPC_LF_HIO_c();
};


#endif /* D_A_NPC_LF_H */
