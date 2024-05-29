#ifndef D_A_OBJ_LV6EGATE_H
#define D_A_OBJ_LV6EGATE_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjLv6EGate_c
 * @brief Temple of Time Electric Gate
 *
 * @details
 *
 */
class daObjLv6EGate_c : public fopAc_ac_c {
public:
    /* 80C82078 */ void create1st();
    /* 80C82108 */ void setMtx();
    /* 80C82178 */ bool CreateHeap();
    /* 80C82180 */ void Create();
    /* 80C822DC */ void offDisp();
    /* 80C82330 */ void onDisp();
    /* 80C82388 */ void Execute(f32 (**)[3][4]);
    /* 80C82690 */ void Draw();
    /* 80C826A0 */ void Delete();
    /* 80C82A80 */ ~daObjLv6EGate_c();

private:
    /* 0x568 */ u8 field_0x568[0x1038 - 0x568];
};
STATIC_ASSERT(sizeof(daObjLv6EGate_c) == 0x1038);


#endif /* D_A_OBJ_LV6EGATE_H */
