#ifndef D_A_OBJ_MOVEBOX_H
#define D_A_OBJ_MOVEBOX_H

#include "d/com/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"

class daObjMovebox : public fopAc_ac_c {
    struct Act_c {
        struct Prm_e {};

        /* 8047E628 */ void prm_get_swSave1() const;
        /* 8047E650 */ void prmZ_init();
        /* 8047E680 */ void prmX_init();
        /* 8047E6B0 */ void attr() const;
        /* 8047E6C8 */ void set_mtx();
        /* 8047E7B0 */ void init_mtx();
        /* 8047E7F4 */ void path_init();
        /* 8047E92C */ void path_save();
        /* 8047EB48 */ void CreateHeap();
        /* 8047EBEC */ void RideCallBack(dBgW*, fopAc_ac_c*, fopAc_ac_c*);
        /* 8047ED10 */ void PPCallBack(fopAc_ac_c*, fopAc_ac_c*, s16, dBgW_Base::PushPullLabel);
        /* 8047EE0C */ void Create();
        /* 8047F11C */ void afl_sway();
        /* 8047F38C */ void check_to_walk();
        /* 8047F50C */ void clr_moment_cnt();
        /* 8047F530 */ void chk_appear() const;
        /* 8047F5CC */ void eff_smoke_slip_start();
        /* 8047F634 */ void mode_wait_init();
        /* 8047F6A8 */ void mode_wait();
        /* 8047F8D4 */ void mode_walk_init();
        /* 8047F8F4 */ void mode_walk();
        /* 8047FCBC */ void mode_afl_init();
        /* 8047FCE4 */ void mode_afl();
        /* 8047FF5C */ void sound_slip();
        /* 80480020 */ void sound_limit();
        /* 804800E4 */ void sound_land();
        /* 804801A8 */ void vib_land();
        /* 804801FC */ void eff_land_smoke();
        /* 8048027C */ void Execute(f32 (**)[3][4]);
        /* 80480728 */ void Draw();
        /* 804808FC */ void Delete();

        static void* M_dir_base[2];
        static void* const M_arcname[8];
        static u8 const M_cyl_src[68];
        static u8 const M_attr[1280];
    };

    struct BgcSrc_c {};

    struct Bgc_c {
        /* 8047DAEC */ Bgc_c();
        /* 8047DBF0 */ void gnd_pos(daObjMovebox::Act_c const*, daObjMovebox::BgcSrc_c const*, int,
                                    f32);
        /* 8047DD88 */ void wrt_pos(cXyz const&);
        /* 8047DE58 */ void wall_pos(daObjMovebox::Act_c const*, daObjMovebox::BgcSrc_c const*, int,
                                     s16, f32);
        /* 8047E134 */ void proc_vertical(daObjMovebox::Act_c*);
        /* 8047E2D4 */ void chk_wall_pre(daObjMovebox::Act_c const*, daObjMovebox::BgcSrc_c const*,
                                         int, s16);
        /* 8047E350 */ void chk_wall_touch(daObjMovebox::Act_c const*,
                                           daObjMovebox::BgcSrc_c const*, s16);
        /* 8047E5A0 */ void chk_wall_touch2(daObjMovebox::Act_c const*,
                                            daObjMovebox::BgcSrc_c const*, int, s16);

        static u8 const M_lin5[80];
        static u8 const M_lin20[368];
        static u8 M_gnd_work[1932];
        static u8 M_wrt_work[84];
        static u8 M_wall_work[2576];
    };

private:
    /* 0x568 */ u8 field_0x568[0x90c - 0x568];
};
STATIC_ASSERT(sizeof(daObjMovebox) == 0x90C);

#endif /* D_A_OBJ_MOVEBOX_H */
