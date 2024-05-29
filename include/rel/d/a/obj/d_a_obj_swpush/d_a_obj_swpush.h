#ifndef D_A_OBJ_SWPUSH_H
#define D_A_OBJ_SWPUSH_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjSwpush
 * @brief Push Switch
 *
 * @details This is a multi-purpose depression switch actor.
 * Used by: Gold Pressure Switch, Lakebed Pressure Switch
 *
 */
class daObjSwpush : public fopAc_ac_c {
public:
    class Act_c {
    public:
        struct Prm_e {};

        /* 80482D4C */ void prmZ_init();
        /* 80482D7C */ void is_switch2() const;
        /* 80482DC4 */ void solidHeapCB(fopAc_ac_c*);
        /* 80482DE8 */ void create_heap();
        /* 80482FE8 */ void create_res_load();
        /* 80483038 */ void Mthd_Create();
        /* 8048348C */ void Mthd_Delete();
        /* 804834E8 */ void set_mtx();
        /* 80483534 */ void init_mtx();
        /* 80483570 */ void set_btp_frame();
        /* 80483574 */ void rideCB(dBgW*, fopAc_ac_c*, fopAc_ac_c*);
        /* 804839B4 */ void jnodeCB(J3DJoint*, int);
        /* 80483A5C */ void calc_top_pos();
        /* 80483B70 */ void top_bg_aim_req(f32, s16);
        /* 80483B7C */ void set_push_flag();
        /* 80483D0C */ void mode_upper_init();
        /* 80483D2C */ void mode_upper();
        /* 80483FA8 */ void mode_u_l_init();
        /* 80484008 */ void mode_u_l();
        /* 804841D4 */ void mode_lower_init();
        /* 804841F4 */ void mode_lower();
        /* 80484388 */ void mode_l_u_init();
        /* 804843C0 */ void mode_l_u();
        /* 80484570 */ void demo_non_init();
        /* 8048457C */ void demo_non();
        /* 80484580 */ void demo_reqPause_init();
        /* 804845D8 */ void demo_reqPause();
        /* 8048460C */ void demo_runPause_init();
        /* 8048464C */ void demo_runPause();
        /* 804846B4 */ void demo_stop_puase();
        /* 80484708 */ void demo_reqSw_init();
        /* 804847B4 */ void demo_reqSw();
        /* 80484828 */ void demo_runSw_init();
        /* 80484834 */ void demo_runSw();
        /* 80484890 */ void check_ride_couple(s16);
        /* 804848D8 */ void nr_ride_people(char);
        /* 80484908 */ void Mthd_Execute();
        /* 80484BB8 */ void Mthd_Draw();

        static u8 const M_bmd[6 + 2 /* padding */];
        static u8 const M_dzb[6 + 2 /* padding */];
        static u8 const M_heap_size[12];
        static u8 const M_attr[220];
        static u32 const M_op_vtx;
        static void* M_arcname[3];
    };

private:
    /* 0x568 */ u8 field_0x568[0x604 - 0x568];
};
STATIC_ASSERT(sizeof(daObjSwpush) == 0x604);

struct daObj {
public:
    template <typename A1>
    void PrmAbstract(/* ... */);
    /* 80484CE4 */ /* daObj::PrmAbstract<daObjSwpush::Act_c::Prm_e> */
    void func_80484CE4(void* _this, fopAc_ac_c const*, daObjSwpush::Act_c::Prm_e,
                       daObjSwpush::Act_c::Prm_e);
};

#endif /* D_A_OBJ_SWPUSH_H */
