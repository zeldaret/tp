#ifndef D_A_BOOMERANG_H
#define D_A_BOOMERANG_H

#include "JSystem/J2DGraph/J2DScreen.h"
#include "Z2AudioLib/Z2SoundObject.h"
#include "d/bg/d_bg_s_acch.h"
#include "d/particle/d_particle_copoly.h"
#include "dolphin/types.h"
#include "f_op/f_op_actor.h"

class daBoomerang_sight_c {
public:
    /* 8049E0B8 */ void createHeap();
    /* 8049E36C */ void initialize();
    /* 8049EB64 */ void playAnime(int, int);
    /* 8049EDA8 */ void initFrame(int);
    /* 8049EDE8 */ void copyNumData(int);
    /* 8049EEC8 */ void setSight(cXyz const*, int);
    /* 8049EF60 */ void draw();

    /* 804A278C */ virtual ~daBoomerang_sight_c();

private:
    /* 0x04 */ J2DScreen* field_0x4;
    /* 0x08 */ J2DPane* field_0x8;
    /* 0x0C */ J2DPane* field_0xc;
    /* 0x10 */ J2DPane* field_0x10;
    /* 0x14 */ J2DPane* field_0x14;
    /* 0x18 */ J2DAnmBase* field_0x18;
    /* 0x1C */ J2DAnmBase* field_0x1c;
    /* 0x20 */ J2DScreen* field_0x20;
    /* 0x24 */ J2DPane* field_0x24;
    /* 0x28 */ J2DPane* field_0x28;
    /* 0x2C */ J2DPane* field_0x2c;
    /* 0x30 */ J2DPane* field_0x30;
    /* 0x34 */ J2DAnmBase* field_0x34;
    /* 0x38 */ J2DAnmBase* field_0x38;
    /* 0x3C */ J2DScreen* field_0x3c;
    /* 0x40 */ J2DPane* field_0x40;
    /* 0x44 */ J2DPane* field_0x44;
    /* 0x48 */ J2DPane* field_0x48;
    /* 0x4C */ J2DPane* field_0x4c;
    /* 0x50 */ J2DAnmBase* field_0x50;
    /* 0x54 */ J2DAnmBase* field_0x54;
    /* 0x58 */ J2DAnmBase* field_0x58;
    /* 0x5C */ J2DAnmBase* field_0x5c;
    /* 0x60 */ bool mRedSight;
    /* 0x61 */ u8 mReserve;
    /* 0x62 */ u8 mAlpha[6];
    /* 0x68 */ f32 field_0x68[6];
    /* 0x80 */ f32 field_0x80[6];
    /* 0x98 */ f32 field_0x98[6];
    /* 0xB0 */ f32 field_0xb0[6];
    /* 0xC8 */ cXyz field_0xc8[6];
};  // Size: 0x110

struct daMirror_c;
class daAlink_c;

class daBoomerang_c : public fopAc_ac_c {
public:
    enum daBoomerang_FLG0 {
        /* 0x80 */ WIND_CATCH = 0x80,
    };

    /* 8049F280 */ void windModelCallBack();
    /* 8049F39C */ void draw();
    /* 8049F5F4 */ void lockLineCallback(fopAc_ac_c*);
    /* 8049F660 */ void moveLineCallback(fopAc_ac_c*);
    /* 8049F710 */ void pushLockList(int);
    /* 8049F818 */ void cancelLockActorBase(fopAc_ac_c*);
    /* 8049F874 */ void setAimActorBase(fopAc_ac_c*);
    /* 8049F8B0 */ void setLockActor(fopAc_ac_c*, int);
    /* 8049F9A4 */ void resetLockActor();
    /* 8049F9F0 */ void setRoomInfo();
    /* 8049FAA4 */ void setKeepMatrix();
    /* 8049FBAC */ void setMoveMatrix();
    /* 8049FCD0 */ void setRotAngle();
    /* 8049FD6C */ void setAimPos();
    /* 8049FE6C */ void checkBgHit(cXyz*, cXyz*);
    /* 804A006C */ void setEffectTraceMatrix(u32*, u16);
    /* 804A012C */ void setEffect();
    /* 804A0874 */ void procWait();
    /* 804A0F0C */ void procMove();
    /* 804A1814 */ void execute();
    /* 804A1BF4 */ ~daBoomerang_c();
    /* 804A1EE4 */ void createHeap();
    /* 804A2084 */ void create();
    /* 804A230C */ daBoomerang_c();

    void onStateFlg0(daBoomerang_FLG0 flag) { mStateFlg0 |= flag; }
    void onWindCatch() { onStateFlg0(WIND_CATCH); }
    bool checkForceDelete() const { return mForceDelete; }
    bool checkCharge() const { return true; }

private:
    /* 0x568 */ daMirror_c* field_0x568;
    /* 0x56C */ J3DModel* field_0x56c;
    /* 0x570 */ daAlink_c* field_0x570;
    /* 0x574 */ u8 field_0x574[0x1C];
    /* 0x590 */ J3DModel* field_0x590;
    /* 0x594 */ void* field_0x594;
    /* 0x598 */ daBoomerang_sight_c mSight;
    /* 0x6A8 */ int field_0x6a8;
    /* 0x6AC */ int field_0x6ac[5];
    /* 0x6C0 */ fopAc_ac_c* field_0x6c0[5];
    /* 0x6D4 */ u8 field_0x6d4[8];
    /* 0x6DC */ cXyz field_0x6dc[5];
    /* 0x718 */ u8 field_0x718[5];
    /* 0x720 */ Z2SoundObjSimple field_0x720;
    /* 0x740 */ dBgS_Acch field_0x740;
    /* 0x918 */ dPaPo_c field_0x918;
    /* 0x950 */ u8 field_0x950;
    /* 0x951 */ u8 field_0x951;
    /* 0x952 */ u8 field_0x952;
    /* 0x953 */ u8 field_0x953;
    /* 0x954 */ u8 field_0x954;
    /* 0x955 */ u8 field_0x955;
    /* 0x956 */ bool mForceDelete;
    /* 0x957 */ u8 field_0x957;
    /* 0x958 */ s16 field_0x958;
    /* 0x95A */ s16 field_0x95a;
    /* 0x95C */ s16 field_0x95c;
    /* 0x95E */ s16 field_0x95e;
    /* 0x960 */ s16 field_0x960;
    /* 0x962 */ s16 field_0x962;
    /* 0x964 */ u32 mStateFlg0;
};

#endif /* D_A_BOOMERANG_H */
