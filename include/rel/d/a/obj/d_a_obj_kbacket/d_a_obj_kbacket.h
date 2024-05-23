#ifndef D_A_OBJ_KBACKET_H
#define D_A_OBJ_KBACKET_H

#include "f_op/f_op_actor_mng.h"

class daObj_KBacket_c : public fopAc_ac_c {
public:
    /* 80585E4C */ ~daObj_KBacket_c();
    /* 80586048 */ void create();
    /* 80586604 */ void CreateHeap();
    /* 80586704 */ void Delete();
    /* 80586738 */ void Execute();
    /* 8058742C */ void Draw();
    /* 805875A0 */ void createHeapCallBack(fopAc_ac_c*);
    /* 805875C0 */ void setEnvTevColor();
    /* 8058761C */ void setRoomNo();
    /* 80587660 */ void reset();
    /* 80587694 */ void setMtx();
    /* 805877C4 */ void calcRollAngle(s16, int);
    /* 80587864 */ void getWallAngle(s16, s16*);
    /* 805879F4 */ void setSmokePrtcl();
    /* 80587A70 */ void setWaterPrtcl();
    /* 80587B68 */ void setHamonPrtcl();

private:
    /* 0x568 */ u8 field_0x568[0xa54 - 0x568];
};
STATIC_ASSERT(sizeof(daObj_KBacket_c) == 0xa54);

class daObj_KBacket_Param_c {
public:
    /* 80587D18 */ ~daObj_KBacket_Param_c();

    static u8 const m[44];
};


#endif /* D_A_OBJ_KBACKET_H */
