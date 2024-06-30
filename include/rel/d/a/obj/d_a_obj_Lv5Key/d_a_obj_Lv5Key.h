#ifndef D_A_OBJ_LV5KEY_H
#define D_A_OBJ_LV5KEY_H

#include "f_op/f_op_actor_mng.h"




/**
 * @ingroup actors-objects
 * @class daObjLv5Key_c
 * @brief Snowpeak Ruins Key
 *
 * @details
 *
 */
class daObjLv5Key_c : public fopAc_ac_c {
public:
    /* 80B9B9B8 */ void CreateHeap();
    /* 80B9BA94 */ void Init();
    /* 80B9BB5C */ void setBgc();
    /* 80B9BBCC */ void initCcSph();
    /* 80B9BC2C */ void setCcSph();
    /* 80B9BD30 */ void setAction(void (daObjLv5Key_c::*)(int), int);
    /* 80B9BDD8 */ void Action();
    /* 80B9BE24 */ void Wait(int);
    /* 80B9BF08 */ void Open(int);
    /* 80B9BFDC */ void Fall(int);
    /* 80B9C17C */ void Land(int);
    /* 80B9C268 */ void Shake(int);
    /* 80B9C3B0 */ void TranslateByNowDirect(f32, f32, f32);
    /* 80B9C410 */ void Execute();
    /* 80B9C450 */ void Draw();
    /* 80B9C500 */ void Delete();
    /* 80B9C534 */ void setBaseMtx();
    /* 80B9C5EC */ void create_1st();

    void setStatus(u8 status) { mStatus = status; }
    void keylock_open_start() { setStatus(2); }
    void keylock_shake_start() { setStatus(1); }
    bool is_open() { return mStatus == 3; }

private:
    /* 0x568 */ u8 field_0x568[0x945 - 0x568];
    /* 0x945 */ s8 mStatus;
    /* 0x946 */ u8 field_0x946[0x97c - 0x946];
};

STATIC_ASSERT(sizeof(daObjLv5Key_c) == 0x97c);


#endif /* D_A_OBJ_LV5KEY_H */
