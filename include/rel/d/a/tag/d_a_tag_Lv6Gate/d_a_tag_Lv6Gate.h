#ifndef D_A_TAG_LV6GATE_H
#define D_A_TAG_LV6GATE_H

#include "d/bg/d_bg_w.h"
#include "d/com/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"

class daTagLv6Gate_c : public fopAc_ac_c {
public:
    /* 80D4F8B8 */ int createHeap();
    /* 80D4FBD8 */ int create();
    /* 80D4FEDC */ int execute();
    /* 80D506AC */ int draw();

    inline ~daTagLv6Gate_c();

    inline void seStair();
    inline void seGlassOff();
    inline void seGlassOn();
    inline void initBaseMtx();
    inline void setBaseMtx();
    inline void create_init();
    inline bool checkOpenArea();
    inline void cut1();
    inline void cut2();
    inline void cut4();

    void stabMasterSword() { field_0x76a = 1; }
    u8 getSwitchNo1() { return fopAcM_GetParam(this) & 0xFF; }
    u8 getSwitchNo2() { return fopAcM_GetParam(this) >> 0x8 & 0xFF; }

    /* 0x568 */ J3DModel* mpModel[2];
    /* 0x570 */ mDoExt_btkAnm* mpBtk[2];
    /* 0x578 */ dBgW mBgW[2];
    /* 0x6F8 */ Mtx field_0x6f8[2];
    /* 0x758 */ request_of_phase_process_class mPhase;
    /* 0x760 */ f32 field_0x760[2];
    /* 0x768 */ s16 mEvtId;
    /* 0x76A */ u8 field_0x76a;
};  // Size: 0x76C

#endif /* D_A_TAG_LV6GATE_H */
