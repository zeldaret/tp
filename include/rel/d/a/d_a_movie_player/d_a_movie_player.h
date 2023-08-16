#ifndef D_A_MOVIE_PLAYER_H
#define D_A_MOVIE_PLAYER_H

#include "f_op/f_op_actor.h"

class daMP_c : public fopAc_ac_c {
public:
    /* 80031AD0 */ static int daMP_c_THPPlayerPlay();
    /* 80031B24 */ static void daMP_c_THPPlayerPause();
    /* 80031A78 */ static int daMP_c_Get_MovieRestFrame();
    /* 80031AA4 */ static void daMP_c_Set_PercentMovieVolume(f32);
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

    static daMP_c* m_myObj;

private:
    /* 0x568 */ int (*mpGetMovieRestFrame)(void);
    /* 0x56C */ void (*mpSetPercentMovieVol)(f32);
    /* 0x570 */ int (*mpTHPGetTotalFrame)(void);
    /* 0x574 */ int (*mpTHPPlay)(void);
    /* 0x578 */ void (*mpTHPStop)(void);
    /* 0x57C */ int (*mpTHPPause)(void);
};  // Size: 0x580

#endif /* D_A_MOVIE_PLAYER_H */
