#ifndef D_A_TAG_CHKPOINT_H
#define D_A_TAG_CHKPOINT_H

#include "f_op/f_op_actor_mng.h"
#include "d/com/d_com_inf_game.h"
#include "JSystem/JKernel/JKRHeap.h"

class daTag_Chk_c : public fopAc_ac_c {
public:
    /* 8048A6F8 */ s32 execute();

    u16 getAreaType() { return orig.angle.z & 0x100; }
    u16 getHeight() { return fopAcM_GetParam(this) & 0xff; }
    u8 getSwBit() { return fopAcM_GetParam(this) >> 8; }
    u8 getSwBit2() { return fopAcM_GetParam(this) >> 16; }

    s32 create() {
        fopAcM_SetupActor(this, daTag_Chk_c);

        if (getAreaType() == 0) {
            scale.x *= 50.0f;
            scale.y *= 100.0f;
            scale.z *= 50.0f;

            mPos1.set(current.pos.x - scale.x, current.pos.y, current.pos.z - scale.z);
            mPos2.set(current.pos.x + scale.x, current.pos.y + scale.y, current.pos.z + scale.z);
        } else {
            scale.x *= 100.0f;
            scale.y *= 100.0f;
            scale.z *= 0.0f;

            mPos1.set(0.0f, current.pos.y, 0.0f);
            mPos2.set(0.0f, current.pos.y + scale.y, 0.0f);
        }

        attention_info.position = current.pos;

        u16 l_height = getHeight();
        l_height != 0xff ? attention_info.position.y += l_height * 10.0f : attention_info.position.y += scale.y * 0.5f;

        eyePos = attention_info.position;
        return cPhs_COMPLEATE_e;
    }
private:
    /* 0x568 */ u8 field_0x568[8];
    /* 0x570 */ cXyz mPos1;
    /* 0x57C */ cXyz mPos2;
};
STATIC_ASSERT(sizeof(daTag_Chk_c) == 0x588);

#endif /* D_A_TAG_CHKPOINT_H */
