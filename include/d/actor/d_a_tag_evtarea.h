#ifndef D_A_TAG_EVTAREA_H
#define D_A_TAG_EVTAREA_H

#include "f_op/f_op_actor_mng.h"

class daTag_EvtArea_c : public fopAc_ac_c {
public:
    /* 8048C4F8 */ cPhs__Step create();
    /* 8048C728 */ BOOL Delete();
    /* 8048C730 */ BOOL Execute();
    /* 8048C894 */ BOOL Draw();
    /* 8048C89C */ BOOL isDelete();
    /* 8048C94C */ BOOL chkPointInArea(cXyz, cXyz);

    /* 8048CD08 */ BOOL chkPointInArea(cXyz param_0) {
        cXyz local_28;
        local_28.set(0.0f, 0.0f, 0.0f);
        return chkPointInArea(param_0, local_28);
    }

    /* 8048CD68 */ virtual ~daTag_EvtArea_c() {}

    s32 getType() {
        u8 type = (u8)shape_angle.z;
        return type == 0xff ? 0 : type;
    }

    s32 getNo() {
        u16 no = (shape_angle.z & 0xff00) >> 8;
        return no == 0xff ? 0 : no;
    }

    u32 getOnEvtBit() {
        u32 ret = fopAcM_GetParam(this) & 0xfff;
        return ret == 0xfff ? -1 : ret;
    }

    u32 getOffEvtBit() {
        u32 ret = (fopAcM_GetParam(this) & 0xfff000) >> 12;
        return ret == 0xfff ? -1 : ret;
    }

    u8 getBitSW() { return home.angle.x & 0xff; }

    u8 getBitSW2() { return (home.angle.x & 0xff00) >> 8; }

private:
    /* 0x568 vtable */
    /* 0x56C */ u8 field_0x56c;
};

STATIC_ASSERT(sizeof(daTag_EvtArea_c) == 0x570);

#endif /* D_A_TAG_EVTAREA_H */
