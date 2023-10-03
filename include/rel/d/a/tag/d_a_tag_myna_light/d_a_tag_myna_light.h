#ifndef D_A_TAG_MYNA_LIGHT_H
#define D_A_TAG_MYNA_LIGHT_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daTag_MynaLight_c : public fopAc_ac_c {
public:
    /* 80D5CB38 */ int create();
    /* 80D5CB9C */ int Delete();
    /* 80D5CBF4 */ int Execute();
    /* 80D5CD94 */ int Draw();
    /* 80D5CE40 */ bool setTurnOnOffChange();
    /* 80D5D148 */ u32 getTurnOnTime();
    /* 80D5D154 */ u32 getTurnOffTime();
    /* 80D5D160 */ void initialize();

    /* 80D5D298 */ virtual ~daTag_MynaLight_c();

    bool checkTurnOnOffChange() {
        bool var1 = mTurnOnFlag - field_0x578;
        return var1 & 0xFF;
    }

    /* 0x568 */  // vtable
    /* 0x56C */ f32 field_0x56c;
    /* 0x570 */ JPABaseEmitter* field_0x570[2];
    /* 0x578 */ bool field_0x578;
    /* 0x579 */ bool mTurnOnFlag;
};  // Size: 0x57C

STATIC_ASSERT(sizeof(daTag_MynaLight_c) == 0x57C);

#endif /* D_A_TAG_MYNA_LIGHT_H */
