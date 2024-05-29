#ifndef D_A_OBJ_BEMOS_H
#define D_A_OBJ_BEMOS_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjBm_c
 * @brief Beamos (Movable Object)
 *
 * @details
 *
 */
class daObjBm_c : public fopAc_ac_c {
public:
    class BgcSrc_c {};

    class Bgc_c {
    public:
        /* 80BB0E0C */ Bgc_c();
        /* 80BB0ED4 */ void wall_pos(fopAc_ac_c const*, daObjBm_c::BgcSrc_c const*, int, s16, f32);
        /* 80BB1154 */ void chk_wall_pre(fopAc_ac_c const*, daObjBm_c::BgcSrc_c const*, int, s16);
        
        static u8 const M_lin20[368];
        static u8 M_lin5[80];
        static u8 M_gnd_work[1932];
        static u8 M_wrt_work[84];
        static u8 M_wall_work[2576];
    };

    /* 80BAE36C */ void PPCallBack(fopAc_ac_c*, fopAc_ac_c*, s16, dBgW_Base::PushPullLabel);
    /* 80BAE5FC */ void initBaseMtx();
    /* 80BAE68C */ void setBaseMtx();
    /* 80BAE778 */ int Create();
    /* 80BAEADC */ int CreateHeap();
    /* 80BAEFD8 */ void create1st();
    /* 80BAF09C */ int Execute(f32 (**)[3][4]);
    /* 80BAF29C */ void main_proc_call();
    /* 80BAF328 */ void initActionEnBemos();
    /* 80BAF37C */ void initActionObjBemos();
    /* 80BAF46C */ void actionEnBemos();
    /* 80BAF750 */ void actionObjBemos();
    /* 80BAF80C */ void setCrawCO();
    /* 80BAF8F8 */ void calcBeamPos();
    /* 80BAFC08 */ void calcBeamLenAndAt();
    /* 80BAFFA8 */ void checkFindPlayer();
    /* 80BB0104 */ void checkSearchPlayer();
    /* 80BB0260 */ void getSearchDistance();
    /* 80BB02B8 */ void getBeamSearchDistance();
    /* 80BB0310 */ void effect_proc();
    /* 80BB0580 */ void effectWait();
    /* 80BB0584 */ void initEffectSet0();
    /* 80BB0718 */ void effectSet0();
    /* 80BB071C */ void effectSet1();
    /* 80BB0720 */ void effectEnd();
    /* 80BB0724 */ void check_to_walk();
    /* 80BB0824 */ void mode_wait_init();
    /* 80BB0888 */ void mode_wait();
    /* 80BB09C8 */ void mode_walk_init();
    /* 80BB09E0 */ void mode_walk();
    /* 80BB0DA8 */ void mode_afl();
    /* 80BB0DC0 */ void mode_dead_init();
    /* 80BB0DE4 */ void mode_dead();
    /* 80BB0DE8 */ void clr_moment_cnt();
    /* 80BB1194 */ void initActionSwWait();
    /* 80BB11D4 */ void actionSwWait();
    /* 80BB14C8 */ void initActionWarning();
    /* 80BB154C */ void actionWarning();
    /* 80BB1654 */ void initActionFindPlayer();
    /* 80BB1814 */ void actionFindPlayer();
    /* 80BB1960 */ void initActionAttack();
    /* 80BB1BD0 */ void actionAttack();
    /* 80BB248C */ void initActionDead();
    /* 80BB2700 */ void actionDead();
    /* 80BB2AB0 */ int Draw();
    /* 80BB2C8C */ int Delete();

    static u8 const M_dir_base[8];
private:
    /* 0x568 */ u8 field_0x568[0x1258 - 0x568];
};
STATIC_ASSERT(sizeof(daObjBm_c) == 0x1258);


#endif /* D_A_OBJ_BEMOS_H */
