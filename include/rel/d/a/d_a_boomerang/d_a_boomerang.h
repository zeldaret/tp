#ifndef D_A_BOOMERANG_H
#define D_A_BOOMERANG_H

#include "JSystem/J2DGraph/J2DScreen.h"
#include "Z2AudioLib/Z2SoundObject.h"
#include "d/bg/d_bg_s_acch.h"
#include "d/cc/d_cc_d.h"
#include "d/particle/d_particle_copoly.h"
#include "f_op/f_op_actor_mng.h"

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

    u8 getReserve() const { return mReserve; }

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
        /* 0x004 */ FLG0_UNK = 0x004,
        /* 0x800 */ FLG0_LOCK_DIST_CANCEL = 0x800,
        /* 0x080 */ WIND_CATCH = 0x80,
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
    void onForceDelete() { mForceDelete = true; }
    bool checkCharge() const { return true; }
    void setThrow() { fopAcM_SetParam(this, 1); }
    void setAimActor(fopAc_ac_c* i_actor) { (this->*mpSetAimActorFn)(i_actor); }
    void cancelLockActor(fopAc_ac_c* i_actor) { (this->*mpCancelLockActorFn)(i_actor); }
    u8 getLockReserve() const { return mSight.getReserve(); }
    bool getLockCntMax() { return mLockCnt >= 5; }
    void onLockDistanceCancel() { onStateFlg0(FLG0_LOCK_DIST_CANCEL); }

private:
    /* 0x568 */ J3DModel* field_0x568;
    /* 0x56C */ J3DModel* field_0x56c;
    /* 0x570 */ J3DAnmTextureSRTKey* m_windBtk;
    /* 0x574 */ mDoExt_bckAnm field_0x574;
    /* 0x590 */ J3DModel* field_0x590;
    /* 0x594 */ J3DAnmTextureSRTKey* m_waitEffBtk;
    /* 0x598 */ daBoomerang_sight_c mSight;
    /* 0x6A8 */ u32 field_0x6a8;
    /* 0x6AC */ u32 field_0x6ac[5];
    /* 0x6C0 */ fopAc_ac_c* field_0x6c0[5];
    /* 0x6D4 */ fopAc_ac_c* field_0x6d4;
    /* 0x6D8 */ u8 field_0x6d8[4];
    /* 0x6DC */ cXyz field_0x6dc[5];
    /* 0x718 */ u8 field_0x718[5];
    /* 0x720 */ Z2SoundObjSimple field_0x720;
    /* 0x740 */ dBgS_Acch field_0x740;
    /* 0x918 */ dPaPo_c field_0x918;
    /* 0x950 */ u8 mLockCnt;
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
    /* 0x968 */ u8 field_0x968[0x990 - 0x968];
    /* 0x990 */ cXyz field_0x990;
    /* 0x99C */ cXyz field_0x99c;
    /* 0x9A8 */ f32 field_0x9a8;
    /* 0x9AC */ cXyz field_0x9ac;
    /* 0x9B8 */ cXyz field_0x9b8;
    /* 0x9C4 */ cXyz field_0x9c4;
    /* 0x9D0 */ dCcD_Stts field_0x9d0;
    /* 0xA0C */ dCcD_Cps field_0xa0c;
    /* 0xB50 */ dCcD_Cyl field_0xb50;
    /* 0xC8C */ dBgS_BoomerangLinChk field_0xc8c;
    /* 0xCFC */ dBgS_ObjLinChk field_0xcfc;
    /* 0xD6C */ dBgS_ObjGndChk field_0xd6c;
    /* 0xDC0 */ int (daBoomerang_c::*mpProcFn)();
    /* 0xDCC */ void (daBoomerang_c::*mpSetAimActorFn)(fopAc_ac_c*);
    /* 0xDD8 */ void (daBoomerang_c::*mpCancelLockActorFn)(fopAc_ac_c*);
};  // Size: 0xDE4

#endif /* D_A_BOOMERANG_H */
