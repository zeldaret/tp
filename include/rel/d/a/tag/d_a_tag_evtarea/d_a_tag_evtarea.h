#ifndef D_A_TAG_EVTAREA_H
#define D_A_TAG_EVTAREA_H

#include "f_op/f_op_actor_mng.h"

class daTag_EvtArea_c : public fopAc_ac_c {
public:
    /* 8048C4F8 */ cPhs__Step create();
    /* 8048C728 */ bool Delete();
    /* 8048C730 */ bool Execute();
    /* 8048C894 */ bool Draw();
    /* 8048C89C */ BOOL isDelete();
    /* 8048C94C */ BOOL chkPointInArea(cXyz, cXyz);
    /* 8048CD08 */ BOOL chkPointInArea(cXyz param_0) {
        cXyz local_28;
        local_28.set(0.0f, 0.0f, 0.0f);
        return chkPointInArea(param_0, local_28);
    }
    /* 8048CD68 */ virtual ~daTag_EvtArea_c() {}

    inline s32 getType() {
        u8 type = (u8)shape_angle.z;
        return type == 0xff ? 0 : type;
    }

    inline s32 getNo() {
        u16 no = (shape_angle.z & 0xff00) >> 8;
        return no == 0xff ? 0 : no;
    }

    inline u32 getOnEvtBit();
    inline u32 getOffEvtBit();
    inline u8 getBitSW();
    inline u8 getBitSW2();

private:
    /* 0x568 vtable */
    /* 0x56C */ u8 field_0x56c;
};

STATIC_ASSERT(sizeof(daTag_EvtArea_c) == 0x570);

#endif /* D_A_TAG_EVTAREA_H */
