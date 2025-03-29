#ifndef D_A_E_TH_BALL_H
#define D_A_E_TH_BALL_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "d/d_bg_s_acch.h"

struct th_chain_s {
    /* 0x000 */ J3DModel* mp_model[50];
    /* 0x0C8 */ cXyz m_pos[50];
    /* 0x320 */ cXyz field_0x320[50];
    /* 0x578 */ csXyz m_rot[50];
    /* 0x6A4 */ f32 field_0x6a4[50];
};

struct th_chain_2s {
    /* 0x000 */ J3DModel* mp_model[20];
    /* 0x050 */ cXyz m_pos[20];
    /* 0x140 */ cXyz field_0x140[20];
    /* 0x230 */ cXyz field_0x230[20];
    /* 0x320 */ csXyz m_rot[20];
    /* 0x398 */ f32 field_0x398[20];
};

/**
 * @ingroup actors-enemies
 * @class e_th_ball_class
 * @brief Darkhammer Ball and Chain
 * 
 * @details 
 * 
 */
class e_th_ball_class : public fopEn_enemy_c {
public:
    /* 0x05AC */ request_of_phase_process_class mPhase;
    /* 0x05B4 */ u8 field_0x5B4[0x05B8 - 0x05B4];
    /* 0x05B8 */ J3DModel* mpBallModel;
    /* 0x05BC */ Z2Creature mSound;
    /* 0x064C */ s16 mCounter;
    /* 0x064E */ s16 mAction;
    /* 0x0650 */ s16 mMode;
    /* 0x0652 */ s16 mTimers[3];
    /* 0x0658 */ s16 field_0x658;
    /* 0x065C */ th_chain_s field_0x65c;
    /* 0x0DC8 */ f32 field_0xdc8;
    /* 0x0DCC */ f32 field_0xdcc;
    /* 0x0DD0 */ s16 field_0xdd0;
    /* 0x0DD4 */ f32 field_0xdd4;
    /* 0x0DD8 */ cXyz field_0xdd8;
    /* 0x0DE4 */ f32 field_0xde4;
    /* 0x0DE8 */ int field_0xde8;
    /* 0x0DEC */ th_chain_2s field_0xdec;
    /* 0x11D4 */ int field_0x11d4;
    /* 0x11D8 */ th_chain_2s field_0x11d8;
    /* 0x15C0 */ f32 field_0x15c0;
    /* 0x15C4 */ s16 field_0x15c4;
    /* 0x15C6 */ s8 field_0x15c6;
    /* 0x15C8 */ dBgS_AcchCir mAcchCir;
    /* 0x1608 */ dBgS_ObjAcch mAcch;
    /* 0x17E0 */ dCcD_Stts mCcStts;
    /* 0x181C */ dCcD_Sph mCcSph;
    /* 0x1954 */ dCcD_Sph mAtSph;
    /* 0x1A8C */ s8 field_0x1a8c;
    /* 0x1A8D */ s8 mDemoMode;
    /* 0x1A8E */ s8 mPlayerGet;
};

STATIC_ASSERT(sizeof(e_th_ball_class) == 0x1a90);


#endif /* D_A_E_TH_BALL_H */
