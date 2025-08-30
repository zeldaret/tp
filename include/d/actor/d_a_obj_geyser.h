#ifndef D_A_OBJ_GEYSER_H
#define D_A_OBJ_GEYSER_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_movebg_actor.h"
#include "d/d_cc_d.h"

/**
 * @ingroup actors-objects
 * @class daObjGeyser_c
 * @brief Geyser
 *
 * @details
 *
 */
class daObjGeyser_c : public dBgS_MoveBgActor {
public:
    /* 80BF6F18 */ void initBaseMtx();
    /* 80BF6F38 */ void setBaseMtx();
    /* 80BF7174 */ int create1st();
    /* 80BF744C */ void action();
    /* 80BF75B8 */ void actionOff2Init();
    /* 80BF75C4 */ void actionOff2();
    /* 80BF7838 */ void actionOnWait2Init();
    /* 80BF787C */ void actionOnWait2();
    /* 80BF7C54 */ void actionOn2Init();
    /* 80BF7CA0 */ void actionOn2();
    /* 80BF8158 */ void actionDisappearInit(u8);
    /* 80BF8178 */ void actionDisappear();
    /* 80BF823C */ void actionOffInit();
    /* 80BF8268 */ void actionOff();
    /* 80BF82D0 */ void actionOnWaitInit();
    /* 80BF8344 */ void actionOnWait();
    /* 80BF83E4 */ void actionOnInit();
    /* 80BF846C */ void actionOn();
    /* 80BF8584 */ void setPntWind();
    /* 80BF863C */ void cutPntWind();
    /* 80BF8660 */ void movePntWind();
    /* 80BF8914 */ void setEmitterPre00();
    /* 80BF89AC */ void setEmitterSrc00Sand();
    /* 80BF89B0 */ void setEmitterSrc01Smk();
    /* 80BF8A54 */ void stopEmitterPre00();
    /* 80BF8A80 */ void stopEmitterSrc00Sand();
    /* 80BF8AAC */ void stopEmitterSrc01Smk();
    /* 80BF8AD8 */ void setEmitterClm00();
    /* 80BF8B70 */ void setEmitterSmk01();
    /* 80BF8C08 */ void setEmitterSmk02();
    /* 80BF8CA0 */ void stopEmitterClm00();
    /* 80BF8CCC */ void stopEmitterSmk01();
    /* 80BF8CF8 */ void stopEmitterSmk02();

    /* 80BF70E0 */ virtual int CreateHeap();
    /* 80BF6F80 */ virtual int Create();
    /* 80BF7288 */ virtual int Execute(Mtx**);
    /* 80BF8870 */ virtual int Draw();
    /* 80BF8D24 */ virtual int Delete();

    u8 getType() { return (field_0x766 >> 8) & 0xF; }
    u8 getArg0() { return fopAcM_GetParamBit(this, 0, 8); }
    u8 getArg1() { return fopAcM_GetParamBit(this, 8, 8); }
    u8 getArg2() { return fopAcM_GetParamBit(this, 16, 8); }
    u8 getArg3() { return fopAcM_GetParamBit(this, 24, 8); }
    u8 getSwNo() { return 0xFF; }

private:
    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mpModel;
    /* 0x5AC */ dCcD_Stts mCcStts;
    /* 0x5E8 */ dCcD_Cps mCcCps;
    /* 0x72C */ u8 field_0x72C[0x730 - 0x72C];
    /* 0x730 */ f32 field_0x730;
    /* 0x734 */ u8 field_0x734[0x744 - 0x734];
    /* 0x744 */ cM3dGCpsS mCpsSrc;
    /* 0x760 */ u16 field_0x760;
    /* 0x762 */ u8 mAction;
    /* 0x763 */ u8 field_0x763;
    /* 0x764 */ u8 mIsPrmInit;
    /* 0x766 */ u16 field_0x766;
    /* 0x768 */ u16 field_0x768;
    /* 0x76C */ JPABaseEmitter* mpEmitterClm00;
    /* 0x770 */ JPABaseEmitter* mpEmitterSmk01;
    /* 0x774 */ JPABaseEmitter* mpEmitterSmk02;
    /* 0x778 */ JPABaseEmitter* mpEmitterPre00;
    /* 0x77C */ JPABaseEmitter* mpEmitterSrc00Sand;
    /* 0x780 */ JPABaseEmitter* mpEmitterSrc01Smk;
    /* 0x784 */ u8 field_0x784;
    /* 0x785 */ u8 field_0x785;
    /* 0x788 */ cXyz mParticleScale;
    /* 0x794 */ WIND_INFLUENCE mWind;
    /* 0x7C0 */ Mtx mMtx;
};

STATIC_ASSERT(sizeof(daObjGeyser_c) == 0x7f0);


#endif /* D_A_OBJ_GEYSER_H */
