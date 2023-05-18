#ifndef D_A_CSTAF_H
#define D_A_CSTAF_H

#include "Z2AudioLib/Z2Creature.h"
#include "d/bg/d_bg_s_movebg_actor.h"
#include "d/com/d_com_inf_game.h"
#include "d/particle/d_particle_copoly.h"

class daCstaF_c : public dBgS_MoveBgActor {
public:
    /* 804DDB48 */ void checkCoverModel();
    /* 804DDBB4 */ void create();
    /* 804DE2F8 */ ~daCstaF_c();
    /* 804DE558 */ void setRoomInfo();
    /* 804DE5F0 */ void setMatrix();
    /* 804DE698 */ void posMove();
    /* 804DEB60 */ void setCollision();
    /* 804DEC14 */ void setAnime();
    /* 804DF0D8 */ void initBrk(u16);
    /* 804DF150 */ void initStopBrkBtk();
    /* 804DF1A4 */ void initStartBrkBtk();

    /* 804DD978 */ virtual int CreateHeap();
    /* 804DF37C */ virtual int Execute(f32 (**)[3][4]);
    /* 804DF6E4 */ virtual int Draw();

    cXyz& getBallPos() { return mBallPos; }

    static u8 const m_bckIdxTable[16];

private:
    /* 0x5A0 */ const char* mResName;
    /* 0x5A4 */ request_of_phase_process_class mPhase;
    /* 0x5AC */ J3DModel* field_0x5ac;
    /* 0x5B0 */ mDoExt_McaMorfSO* field_0x5b0;
    /* 0x5B4 */ J3DModel* field_0x5b4;
    /* 0x5B8 */ J3DAnmTextureSRTKey* m_coverBtk;
    /* 0x5BC */ J3DAnmTevRegKey* m_coverBrk;
    /* 0x5C0 */ mDoExt_btkAnm field_0x5c0;
    /* 0x5D8 */ mDoExt_brkAnm field_0x5d8;
    /* 0x5F0 */ dBgS_AcchCir mAcchCir[4];
    /* 0x6F0 */ dBgS_StatueAcch mAcch;
    /* 0x8C8 */ dCcD_Stts mCcStts;
    /* 0x904 */ dCcD_Cyl mCylCc;
    /* 0xA40 */ Z2Creature mSound;
    /* 0xAD0 */ dPaPo_c field_0xad0;
    /* 0xB08 */ s8 mReverb;
    /* 0xB09 */ u8 field_0xb09;
    /* 0xB0A */ u8 field_0xb0a;
    /* 0xB0B */ u8 field_0xb0b;
    /* 0xB0C */ u8 field_0xb0c;
    /* 0xB0D */ u8 mIsPlayerRide;
    /* 0xB0E */ u8 field_0xb0e;
    /* 0xB0F */ u8 field_0xb0f;
    /* 0xB10 */ u8 mCoverVanishFlg;
    /* 0xB12 */ s16 field_0xb12;
    /* 0xB14 */ u8 field_0xb14[4];
    /* 0xB18 */ u32 mShadowKey;
    /* 0xB1C */ f32 field_0xb1c;
    /* 0xB20 */ cXyz field_0xb20;
    /* 0xB2C */ cXyz mBallPos;
};

#endif /* D_A_CSTAF_H */
