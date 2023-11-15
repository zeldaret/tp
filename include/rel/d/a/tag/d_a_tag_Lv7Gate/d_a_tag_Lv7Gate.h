#ifndef D_A_TAG_LV7GATE_H
#define D_A_TAG_LV7GATE_H

#include "d/com/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"

class daTagLv7Gate_c : public fopAc_ac_c {
public:
    inline ~daTagLv7Gate_c();

    /* 80D50C64 */ int create();
    /* 80D50D30 */ void create_init();
    /* 80D511C8 */ int execute();
    /* 80D51628 */ void calcFly();

    inline int createHeap();
    inline void setPath(u8 i_path_ID);
    inline void initBaseMtx();
    inline void setBaseMtx();
    inline void flyAnime();
    inline bool checkPoint(f32 i_speed);
    inline bool setNextPoint();
    inline int draw();

    u8 getPathID() { return (fopAcM_GetParam(this) >> 0x10); }
    u16 getFlowNodeNo() { return fopAcM_GetParam(this); }

    /* 0X568 */ J3DModel* mpModel;
    /* 0X56C */ mDoExt_bckAnm* mpBck;
    /* 0X570 */ dPath* mRoomPath;
    /* 0X574 */ request_of_phase_process_class mPhase;
    /* 0X57C */ cXyz mPos2;
    /* 0X588 */ cXyz mPos1;
    /* 0X594 */ csXyz field_0x594;
    /* 0X59C */ char* mEvName;
    /* 0X5A0 */ int field_0x5a0;
    /* 0X5A4 */ f32 mDistance;
    /* 0X5A8 */ f32 mLastFrame;
    /* 0X5AC */ u16 field_0x5ac;
    /* 0X5AE */ s16 mEvtId;
    /* 0X5B0 */ bool field_0x5b0;
    /* 0X5B1 */ bool field_0x5b1;
};  // Size: 0x5B4

#endif /* D_A_TAG_LV7GATE_H */
