#ifndef D_A_OBJ_MOVEBOX_H
#define D_A_OBJ_MOVEBOX_H

#include "d/d_com_inf_game.h"
#include "d/d_a_obj.h"
#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_movebg_actor.h"
#include "d/d_bg_w.h"

/**
 * @ingroup actors-objects
 * @class daObjMovebox
 * @brief Multi-Purpose Moving Box
 *
 * @details Multi-purpose moving box actor.
 * Used for: Goron Mines Push Block, Death Mountain Block,
 *      Large Wooden Crate, Sacred Grove Block, 
 *      Arbiter's Grounds Block (2 of them), Kakariko Graveyard Gravestone
 *
 */
namespace daObjMovebox {
    class Hio_c {
    public:
        class Attr_c {
        public:
            /* 0x00 */ s16 mFirstPushStopTime;
            /* 0x02 */ s16 mRepeatPushStopTime;
            /* 0x04 */ s16 mPushMoveTime;
            /* 0x06 */ s16 mFirstPullStopTime;
            /* 0x08 */ s16 mRepeatPullStopTime;
            /* 0x0A */ s16 mPullMoveTime;
            /* 0x0C */ f32 mUnitDistance;
            /* 0x10 */ f32 mShadowSize;
            /* 0x14 */ f32 mGravity;
            /* 0x18 */ f32 mViscosityResistance;
            /* 0x1C */ f32 mInertiaResistance;
            /* 0x20 */ f32 mFallYInitSpeed;
            /* 0x24 */ f32 mLandSmokeScale;
            /* 0x28 */ f32 mBuoyancy;
            /* 0x2C */ f32 mPlayerGravity;
            /* 0x30 */ f32 mMiscGravity;
            /* 0x34 */ f32 mWaterOscillationAccel;
            /* 0x38 */ s16 mWaterOscillationAngleSpeed;
            /* 0x3C */ f32 mWaterViscoscityResistance;
            /* 0x40 */ f32 mWaterInertiaResistance;
            /* 0x44 */ f32 mPlayerTiltPower;
            /* 0x48 */ f32 mMiscTiltPower;
            /* 0x4C */ f32 mMaxTiltPower;
            /* 0x50 */ f32 mTiltSpringFactor;
            /* 0x54 */ f32 mTiltViscoscityResistance;
            /* 0x58 */ int field_0x58;
            /* 0x5C */ int field_0x5c;
            /* 0x60 */ u32 field_0x60;
            /* 0x64 */ f32 field_0x64;
            /* 0x68 */ f32 field_0x68;
            /* 0x6C */ f32 field_0x6c;
            /* 0x70 */ f32 field_0x70;
            /* 0x74 */ f32 field_0x74;
            /* 0x78 */ f32 field_0x78;
            /* 0x7C */ u32 field_0x7c;
            /* 0x80 */ u32 field_0x80;
            /* 0x84 */ u32 field_0x84;
            /* 0x88 */ u32 field_0x88;
            /* 0x8C */ int field_0x8c;
            /* 0x90 */ s16 field_0x90;
            /* 0x92 */ s16 field_0x92;
            /* 0x94 */ s16 field_0x94;
            /* 0x96 */ s16 field_0x96;
            /* 0x98 */ s16 field_0x98;
            /* 0x9A */ s16 field_0x9a;
            /* 0x9C */ u8 field_0x9c;
            /* 0x9D */ u8 field_0x9d;
            /* 0x9E */ u8 field_0x9e;
        };
    };

    class BgcSrc_c {
    public:
        /* 0x0 */ f32 field_0x0;
        /* 0x4 */ f32 field_0x4;
        /* 0x8 */ f32 field_0x8;
        /* 0xC */ f32 field_0xc;
    };

    class Act_c;

    class Bgc_c {
    public:
        enum State_e {
            STATE_0_e = 0x0,
            STATE_1_e = 0x1,
            STATE_2_e = 0x2,
            STATE_4_e = 0x4,
            STATE_8_e = 0x8,
            STATE_10_e = 0x10,
            STATE_20_e = 0x20,
            STATE_40_e = 0x40,
        };

        /* 8047DAEC */ Bgc_c();
        /* 8047DBF0 */ void gnd_pos(daObjMovebox::Act_c const*, daObjMovebox::BgcSrc_c const*, int,
                                    f32);
        /* 8047DD88 */ void wrt_pos(cXyz const&);
        /* 8047DE58 */ void wall_pos(daObjMovebox::Act_c const*, daObjMovebox::BgcSrc_c const*, int,
                                     s16, f32);
        /* 8047E134 */ void proc_vertical(daObjMovebox::Act_c*);
        /* 8047E2D4 */ bool chk_wall_pre(daObjMovebox::Act_c const*, daObjMovebox::BgcSrc_c const*,
                                         int, s16);
        /* 8047E350 */ bool chk_wall_touch(daObjMovebox::Act_c const*,
                                           daObjMovebox::BgcSrc_c const*, s16);
        /* 8047E5A0 */ bool chk_wall_touch2(daObjMovebox::Act_c const*,
                                            daObjMovebox::BgcSrc_c const*, int, s16);

        static const daObjMovebox::BgcSrc_c M_lin5[];
        static const daObjMovebox::BgcSrc_c M_lin20[];

        static dBgS_ObjGndChk M_gnd_work[23];
        static dBgS_WtrChk M_wrt_work;
        static dBgS_ObjLinChk M_wall_work[23];

        /* 0x000 */ f32 field_0x0[23];
        /* 0x05C */ int field_0x5c;
        /* 0x060 */ f32 field_0x60;
        /* 0x064 */ cXyz field_0x64[23];
        /* 0x178 */ int field_0x178;
        /* 0x17C */ f32 field_0x17c;
        /* 0x180 */ State_e mState;
    };

    class Act_c : public dBgS_MoveBgActor {
    public:
        enum Prm_e {
            PRM_4_e = 0x4,
            PRM_8_e = 0x8,
            PRM_18_e = 0x18,
            PRM_1C_e = 0x1C,
        };

        /* 8047E628 */ int prm_get_swSave1() const;
        /* 8047E650 */ void prmZ_init();
        /* 8047E680 */ void prmX_init();
        /* 8047E6B0 */ const daObjMovebox::Hio_c::Attr_c& attr() const;
        /* 8047E6C8 */ void set_mtx();
        /* 8047E7B0 */ void init_mtx();
        /* 8047E7F4 */ void path_init();
        /* 8047E92C */ void path_save();
        /* 8047EBEC */ static void RideCallBack(dBgW*, fopAc_ac_c*, fopAc_ac_c*);
        /* 8047ED10 */ static fopAc_ac_c* PPCallBack(fopAc_ac_c*, fopAc_ac_c*, s16, dBgW_Base::PushPullLabel);
        /* 8047F11C */ void afl_sway();
        /* 8047F38C */ int check_to_walk();
        /* 8047F50C */ void clr_moment_cnt();
        /* 8047F530 */ bool chk_appear() const;
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

        /* 8047EB48 */ virtual int CreateHeap();
        /* 8047EE0C */ virtual int Create();
        /* 8048027C */ virtual int Execute(Mtx**);
        /* 80480728 */ virtual int Draw();
        /* 804808FC */ virtual int Delete();

        inline void mode_proc_call();
        inline int Mthd_Create();
        inline int Mthd_Delete();

        // some functions need an inlined version of `attr`, find better fix later
        const daObjMovebox::Hio_c::Attr_c& i_attr() const { return M_attr[mType]; }

        int prm_get_swSave() const { return daObj::PrmAbstract(this, PRM_8_e, PRM_8_e); }
        int prmZ_get_swSave2() const { return (u8)(mPrmZ >> 8); }
        int prm_get_dmy() const { return 0; }
        int prmZ_get_pathId() const { return mPrmZ & 0xFF; }
        u8 prm_get_answer() const { return daObj::PrmAbstract(this, PRM_4_e, PRM_1C_e); }
        int prm_get_type() const { return daObj::PrmAbstract(this, PRM_4_e, PRM_18_e); }

        int is_switch1() const { return fopAcM_isSwitch(this, prm_get_swSave1()) != 0; }
        int is_switch2() const { return fopAcM_isSwitch(this, prmZ_get_swSave2()) != 0; }

        void on_switch1() const { fopAcM_onSwitch(this, prm_get_swSave1()); }
        void on_switch2() const { fopAcM_onSwitch(this, prmZ_get_swSave2()); }
        void off_switch1() const { fopAcM_offSwitch(this, prm_get_swSave1()); }
        void off_switch2() const { fopAcM_offSwitch(this, prmZ_get_swSave2()); }

        static const s16 M_dir_base[4];
        static const char* const M_arcname[8];
        static const dCcD_SrcCyl M_cyl_src;
        static const daObjMovebox::Hio_c::Attr_c M_attr[8];

        /* 0x5A0 */ request_of_phase_process_class mPhase;
        /* 0x5A8 */ J3DModel* mpModel;
        /* 0x5AC */ int field_0x5ac;
        /* 0x5B0 */ dCcD_Stts mCcStts;
        /* 0x5EC */ dCcD_Cyl mCcCyl;
        /* 0x728 */ Bgc_c mBgc;
        /* 0x8AC */ int mType;
        /* 0x8B0 */ u16 mPrmZ;
        /* 0x8B2 */ u16 mPrmX;
        /* 0x8B4 */ dPath* mpPath;
        /* 0x8B8 */ s16 field_0x8b8;
        /* 0x8BC */ f32 field_0x8bc;
        /* 0x8C0 */ f32 field_0x8c0;
        /* 0x8C4 */ f32 field_0x8c4;
        /* 0x8C8 */ f32 field_0x8c8;
        /* 0x8CC */ f32 field_0x8cc;
        /* 0x8D0 */ f32 field_0x8d0;
        /* 0x8D4 */ f32 field_0x8d4;
        /* 0x8D8 */ f32 field_0x8d8;
        /* 0x8DC */ int field_0x8dc;
        /* 0x8E0 */ int field_0x8e0;
        /* 0x8E4 */ f32 field_0x8e4;
        /* 0x8E8 */ int field_0x8e8;
        /* 0x8EC */ dBgW::PushPullLabel mPPLabel;
        /* 0x8F0 */ s16 field_0x8f0[4];
        /* 0x8F8 */ s16 field_0x8f8;
        /* 0x8FA */ s16 field_0x8fa;
        /* 0x8FC */ s16 field_0x8fc;
        /* 0x8FE */ u8 field_0x8fe;
        /* 0x8FF */ s8 mReverb;
        /* 0x900 */ u8 field_0x900;
        /* 0x901 */ u8 field_0x901;
        /* 0x902 */ u8 field_0x902;
        /* 0x904 */ int field_0x904;
        /* 0x908 */ s8 field_0x908;
    };
};

STATIC_ASSERT(sizeof(daObjMovebox::Act_c) == 0x90C);

#endif /* D_A_OBJ_MOVEBOX_H */
