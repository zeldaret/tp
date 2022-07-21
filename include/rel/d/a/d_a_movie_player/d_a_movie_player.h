#ifndef D_A_MOVIE_PLAYER_H
#define D_A_MOVIE_PLAYER_H

#include "dolphin/types.h"
#include "f_op/f_op_actor.h"

typedef void (*daMP_Func)();

class daMP_c : public fopAc_ac_c {
public:
    /* 80031A78 */ void daMP_c_Get_MovieRestFrame();
    /* 80031AA4 */ void daMP_c_Set_PercentMovieVolume(f32);
    /* 80878BB8 */ void daMP_c_Get_arg_demoNo();
    /* 80878C04 */ void daMP_c_Get_arg_movieNo();
    /* 80878C28 */ void daMP_c_Init();
    /* 80878D64 */ void daMP_c_Finish();
    /* 80878D94 */ void daMP_c_Main();
    /* 80878DD8 */ void daMP_c_Draw();
    /* 80878E60 */ void daMP_c_Callback_Init(fopAc_ac_c*);
    /* 80878ED4 */ daMP_c();
    /* 80878F18 */ void daMP_c_Callback_Finish(daMP_c*);
    /* 80878F38 */ void daMP_c_Callback_Main(daMP_c*);
    /* 80878F70 */ void daMP_c_Callback_Draw(daMP_c*);

    static u8 m_myObj[4];

private:
    /* 0x568 */ daMP_Func mpGetMovieRestFrame;
    /* 0x56C */ daMP_Func mpSetPercentMovieVol;
    /* 0x570 */ daMP_Func mpTHPGetTotalFrame;
    /* 0x574 */ daMP_Func mpTHPPlay;
    /* 0x578 */ daMP_Func mpTHPStop;
    /* 0x57C */ daMP_Func mpTHPPause;
};  // Size: 0x580

#endif /* D_A_MOVIE_PLAYER_H */
