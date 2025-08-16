#ifndef D_A_OBJ_SWPUSH_H
#define D_A_OBJ_SWPUSH_H

#include "d/d_a_obj.h"
#include "d/d_bg_w_sv.h"
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
namespace daObjSwpush {
// public:
    class Hio_c {
    public:
        class Attr_c {
        public:
            /* § 踏みスイッチ §\n - Foot Switch */
            /* 0x00 */ int field_0x0;
            /* 0x04 */ f32 scale;
            /* 0x08 */ f32 draw_spring;             // draw_spring
            /* 0x0C */ f32 draw_resist;             // draw_resist
            /* 0x10 */ f32 draw_down_spd0;          // draw_down_spd0
            /* 0x14 */ f32 draw_pypcon_acc;         // draw_pypcon_acc
            /* 0x18 */ s16 bg_time_lag;             // bg_time_lag  
            /* 0x1A */ s16 able_push_time_any;      // able_push_time_any
            /* 0x1C */ s16 able_push_time_heavy;    // able_push_time_heavy
            /* 0x1E */ s16 able_ride_time_middle;   // able_ride_time_middle
            /* 0x20 */ f32 step_up_space;           // step_up_space
            /* 0x24 */ f32 step_down_space;         // step_down_space
            /* 0x28 */ s16 demo_run_time;           // demo_run_time
            /* 0x2A */ u8 field_0x2a;
            /* 0x2B */ u8 field_0x2b;
        };
    };

    class Act_c : public fopAc_ac_c {
    public:
        enum Prm_e {
            /* 0x00 */ PRM_0_e,
            /* 0x01 */ PRM_1_e,
            /* 0x03 */ PRM_3_e = 0x3,
            /* 0x04 */ PRM_4_e,
            /* 0x08 */ PRM_8_e = 0x8,
            /* 0x10 */ PRM_10_e = 0X10,
            /* 0x18 */ PRM_18_e = 0x18,
            /* 0x1D */ PRM_1D_e = 0x1D,
        };

        const Hio_c::Attr_c& attr() const { return M_attr[mType]; }
        u8 prmZ_get_swSave2() const { return mPrmZ & 0xFF; }
        int prm_get_couple() const { return daObj::PrmAbstract(this, PRM_1_e, PRM_1D_e); }
        u8 prm_get_evId() const { return daObj::PrmAbstract(this, PRM_8_e, PRM_0_e); }
        int prm_get_mdl() const { return daObj::PrmAbstract(this, PRM_4_e, PRM_10_e); }
        int prm_get_swSave() const { return daObj::PrmAbstract(this, PRM_8_e, PRM_8_e); }
        int prm_get_type() const { return daObj::PrmAbstract(this, PRM_3_e, PRM_18_e); }
        bool is_switch() { return fopAcM_isSwitch(this, prm_get_swSave()); }

        /* 80482D4C */ void prmZ_init();
        /* 80482D7C */ bool is_switch2() const;
        /* 80482DC4 */ static BOOL solidHeapCB(fopAc_ac_c*);
        /* 80482DE8 */ bool create_heap();
        /* 80482FE8 */ cPhs__Step create_res_load();
        /* 80483038 */ cPhs__Step Mthd_Create();
        /* 8048348C */ void Mthd_Delete();
        /* 804834E8 */ void set_mtx();
        /* 80483534 */ void init_mtx();
        /* 80483570 */ void set_btp_frame();
        /* 80483574 */ static void rideCB(dBgW*, fopAc_ac_c*, fopAc_ac_c*);
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
        static u32 const M_heap_size[3];
        static Hio_c::Attr_c const M_attr[5];
        static u8 const M_op_vtx[4];
        static void* M_arcname[3];

        /* 0x568 */ u8 field_0x568[0x570 - 0x568];
        /* 0x570 */ dBgWSv* mpBgW;
        /* 0x574 */ Mtx mMtx;
        /* 0x5A4 */ f32 field_0x5a4;
        /* 0x5A8 */ J3DModel* field_0x5a8;
        /* 0x5AC */ int mType;
        /* 0x5B0 */ u8 field_0x5b0[0x5ba - 0x5b0];
        /* 0x5BA */ s16 field_0x5ba;
        /* 0x5BC */ u16 mPrmZ;
        /* 0x5BE */ bool mPrmZInit;
        /* 0x5BF */ u8 field_0x5bf;
        /* 0x5C0 */ u8 field_0x5c0;
        /* 0x5C1 */ u8 field_0x5c1;
        /* 0x5C2 */ s16 field_0x5c2;
        /* 0x5C4 */ u8 field_0x5c4;
        /* 0x5C5 */ u8 field_0x5c5;
        /* 0x5C6 */ u8 field_0x5c6;
        /* 0x5C7 */ u8 field_0x5c7;
        /* 0x5C8 */ s16 field_0x5c8;
        /* 0x5CA */ u8 field_0x5ca;
        /* 0x5CB */ u8 field_0x5cb;
        /* 0x5CC */ f32 field_0x5cc;
        /* 0x5D0 */ f32 field_0x5d0;
        /* 0x5D4 */ f32 field_0x5d4;
        /* 0x5D8 */ f32 field_0x5d8;
        /* 0x5DC */ f32 field_0x5dc;
        /* 0x5E0 */ s16 field_0x5e0;
        /* 0x5E2 */ u8 field_0x5e2[0x5e4 - 0x5e2];
        /* 0x5E4 */ f32 field_0x5e4;
        /* 0x5E8 */ f32 field_0x5e8;
        /* 0x5EC */ f32 field_0x5ec;
        /* 0x5F0 */ u8 field_0x5f0[0x5f2 - 0x5f0];
        /* 0x5F2 */ u8 field_0x5f2;
        /* 0x5F3 */ u8 field_0x5f3;
        /* 0x5F4 */ u8 field_0x5f4;
        /* 0x5F5 */ u8 field_0x5f5[0x5f8 - 0x5f5];
        /* 0x5F8 */ cXyz field_0x5f8;
    };

    #ifdef DEBUG
    class Hio_c : public JORReflexible {
    public:
        void ct() {
            if (mCount++ == 0) {
                daObj::HioVarious_c::init(this, "踏みスイッチ"); // Foot Switch
            }
        }

        void default_set() {
            for (int i = 0; i < 5; i++) {
                field_0x8[i] = Act_c::M_attr[i];
            }
        }

        void dt() {
            if (--mCount == 0) {
                daObj::HioVarious_c::clean(this);
            }
        }

        /* 0x4 */ int mCount;
        /* 0x8 */ Attr_c field_0x8[5];
    };
    #endif
};

STATIC_ASSERT(sizeof(daObjSwpush::Act_c) == 0x604);

// struct daObj {
// public:
//     template <typename A1>
//     void PrmAbstract(/* ... */);
//     /* 80484CE4 */ /* daObj::PrmAbstract<daObjSwpush::Act_c::Prm_e> */
//     void func_80484CE4(void* _this, fopAc_ac_c const*, daObjSwpush::Act_c::Prm_e,
//                        daObjSwpush::Act_c::Prm_e);
// };

#endif /* D_A_OBJ_SWPUSH_H */
