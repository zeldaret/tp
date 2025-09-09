#ifndef D_A_OBJ_BEMOS_H
#define D_A_OBJ_BEMOS_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_movebg_actor.h"
#include "d/d_bg_w_base.h"
#include "d/d_cc_d.h"
#include "m_Do/m_Do_ext.h"

/**
 * @ingroup actors-objects
 * @class daObjBm_c
 * @brief Beamos (Movable Object)
 *
 * @details
 *
 */
class daObjBm_c : public dBgS_MoveBgActor {
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

    u32 getSwNo3() { return fopAcM_GetParamBit(this, 16,8); }
    u32 getMoveType() { return fopAcM_GetParamBit(this, 24, 4); }
    s16 getHeadJoint() { return mHeadJntNo; }
    s16 getBigGearJoint() { return mBigGearJntNo; }
    s16 getSmallGear0Joint() { return mSmallGear0JntNo; }
    s16 getSmallGear1Joint() { return mSmallGear1JntNo; }
    s16 getSmallGear2Joint() { return mSmallGear2JntNo; }
    s8 getSwNo() { return fopAcM_GetParamBit(this,8,8);}
    s8 getSwNo2() { return fopAcM_GetParamBit(this,0,8);}
    
    /* 80BAE36C */ void PPCallBack(fopAc_ac_c*, fopAc_ac_c*, s16, dBgW_Base::PushPullLabel);
    /* 80BAE5FC */ void initBaseMtx();
    /* 80BAE68C */ void setBaseMtx();
    /* 80BAE778 */ int Create();
    /* 80BAEADC */ int CreateHeap();
    /* 80BAEFD8 */ void create1st();
    /* 80BAF09C */ int Execute(Mtx**);
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
// private:
    /* 0x05A0 */ u8 field_0x5a0[0x8];
    /* 0x05A8 */ J3DModel* mpModel;
    /* 0x05AC */ mDoExt_brkAnm* mpBrkAnm;
    /* 0x05B0 */ mDoExt_baseAnm* mpBaseAnm;
    /* 0x05B4 */ J3DModel* mpModel2;
    /* 0x05B8 */ u8 field_0x5b8[0xa];
    /* 0x05C4 */ J3DModel* mpModel3;
    /* 0x05C8 */ mDoExt_baseAnm* mpBaseAnm2;
    /* 0x05CC */ u8 field_0x5cc[0x7e4 - 0x5cc];
    /* 0x07E4 */ dCcD_Stts mStts;
    /* 0x0820 */ dCcD_Sph mSph;
    /* 0x0958 */ dCcD_Cps mCps;
    /* 0x0A9c */ dCcD_Cyl mCyl[4];
    /* 0x0F8C */ s16 mHeadJntNo;
    /* 0x0F8E */ s16 mBigGearJntNo;
    /* 0x0F90 */ s16 mSmallGear0JntNo;
    /* 0x0F92 */ s16 mSmallGear1JntNo;
    /* 0x0F94 */ s16 mSmallGear2JntNo;
    /* 0x0F96 */ s16 field_0xf96;
    /* 0x0F96 */ s16 field_0xf98;
    /* 0x0F9A */ s16 field_0xf9a;
    /* 0x0F9C */ s16 field_0xf9c;
    /* 0x0F9E */ s16 field_0xf9e;
    /* 0x0FA0 */ s16 field_0xfa0;
    /* 0x0FA2 */ s16 field_0xfa2;
    /* 0x0FA4 */ s16 field_0xfa4;
    /* 0x0FA6 */ s16 field_0xfa6;
    /* 0x0FA8 */ u8 field_0xfa8[0xfb4 - 0xfa8];
    /* 0x0FB4 */ J3DMaterial* mpMaterial;
    /* 0x0FB8 */ cXyz field_0xfb8;
    /* 0x0FC4 */ csXyz field_0xfc4;
    /* 0x0FCA */ u8 field_0xfca[2];
    /* 0x0FCC */ u32 field_0xfcc;
    /* 0x0FD0 */ u8 field_0xfd0[0xff0 - 0xfd0];
    /* 0x0FF0 */ f32 field_0xff0;
    /* 0x0FF4 */ u8 field_0xff4[3];
    /* 0x0FF7 */ u8 field_0xff7;
    /* 0x0FF8 */ f32 field_0xff8;
    /* 0x0FFC */ f32 field_0xffc;
    /* 0x1000 */ f32 field_0x1000;
    /* 0x1004 */ u8 field_0x1004[0x100c - 0x1004];
    /* 0x100C */ f32 field_0x100c;
    /* 0x1010 */ u8 field_0x1010[0x1038 - 0x1010];
    /* 0x1038 */ u8 field_0x1038;
    /* 0x1039 */ u8 field_0x1039;
    /* 0x103A */ u8 field_0x103a[0x10a0 - 0x103a];
    /* 0x10A0 */ cXyz field_0x10a0;
    /* 0x10AC */ u8 field_0x10ac[0x10c0 - 0x10ac];
    /* 0x10C0 */ int field_0x10c0;
    /* 0x10C4 */ s16 field_0x10c4[4];
    /* 0x10D4 */ u8 field_0x10cc[0x10d2 - 0x10cc];
    /* 0x10D2 */ u8 field_0x10d2;
    /* 0x10D3 */ u8 field_0x10d3;
    /* 0x10D4 */ u8 field_0x10d4[0x10e8 - 0x10d4];
    /* 0x10E8 */ f32 field_0x10e8;
    /* 0x10EC */ f32 field_0x10ec;
    /* 0x10F0 */ u8 field_0x10f0[0x1258 - 0x10f0];
};

STATIC_ASSERT(sizeof(daObjBm_c) == 0x1258);


#endif /* D_A_OBJ_BEMOS_H */
