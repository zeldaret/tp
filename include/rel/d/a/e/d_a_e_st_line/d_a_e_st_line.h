#ifndef D_A_E_ST_LINE_H
#define D_A_E_ST_LINE_H

#include "f_op/f_op_actor_mng.h"

/**
* @ingroup actors-enemies
* @brief Skulltula
*
*/
class e_st_line_class : public fopEn_enemy_c {
public:
    /* 0x5AC */ request_of_phase_process_class mPhase;
    /* 0x5B4 */ mDoExt_3DlineMat0_c mLine;
    /* 0x5D0 */ s16 field_0x5d0;
    /* 0x5D2 */ u8 field_0x5D2[0x5DC - 0x5D2];
    /* 0x5DC */ cXyz field_0x5dc[64];
    /* 0x8DC */ cXyz field_0x8dc[50];
    /* 0xB34 */ u8 field_0xB34[0xCC4 - 0xB34];
    /* 0xCC4 */ u8 field_0xcc4;
    /* 0xCC5 */ u8 field_0xCC5[0xCC6 - 0xCC5];
    /* 0xCC6 */ u8 field_0xcc6;
    /* 0xCC7 */ u8 field_0xCC7[0xCD4 - 0xCC7];
    /* 0xCD4 */ Z2SoundObjSimple mSound;
    /* 0xCF4 */ u8 field_0xcf4[0xCF8 - 0xCF4];
};

#endif /* D_A_E_ST_LINE_H */
