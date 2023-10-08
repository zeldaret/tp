#ifndef D_A_ARROW_H
#define D_A_ARROW_H

#include "d/a/d_a_player.h"
#include "d/d_procname.h"
#include "d/cc/d_cc_d.h"
#include "d/bg/d_bg_s_lin_chk.h"
#include "d/particle/d_particle.h"
#include "f_op/f_op_actor_mng.h"

class daArrow_c : public fopAc_ac_c {
public:
    /* 80499C6C */ void createHeap();
    /* 80499D8C */ void atHitCallBack(dCcD_GObjInf*, fopAc_ac_c*, dCcD_GObjInf*);
    /* 80499FBC */ void decAlphaBlur();
    /* 8049A04C */ void setBlur();
    /* 8049A110 */ void setLightArrowHitMark(cXyz const*);
    /* 8049A1EC */ void setLightChargeEffect(int);
    /* 8049A370 */ void setArrowWaterNextPos(cXyz*, cXyz*);
    /* 8049A76C */ void setArrowAt(f32);
    /* 8049A9CC */ void arrowShooting();
    /* 8049AC84 */ void setBombArrowExplode(cXyz*);
    /* 8049ACE0 */ void setRoomInfo();
    /* 8049AD74 */ void clearNearActorData();
    /* 8049AD94 */ void getVibAngle();
    /* 8049AE64 */ void setNormalMatrix();
    /* 8049AF18 */ void setSmokePos();
    /* 8049AFEC */ void setKeepMatrix();
    /* 8049B120 */ void setStopActorMatrix();
    /* 8049B214 */ void setBombMoveEffect();
    /* 8049B370 */ void checkReget();
    /* 8049B45C */ void procWait();
    /* 8049B764 */ void procMove();
    /* 8049C700 */ void procReturnInit(int);
    /* 8049C874 */ void procReturn();
    /* 8049CB70 */ void procBGStop();
    /* 8049CC60 */ void procActorStop();
    /* 8049CCCC */ void procActorControllStop();
    /* 8049CCF0 */ void procSlingHitInit(cXyz*, dCcD_GObjInf*);
    /* 8049CE50 */ void procSlingHit();
    /* 8049CEA0 */ void execute();
    /* 8049D0CC */ void draw();
    /* 8049D440 */ void create();
    /* 8049D98C */ ~daArrow_c();

    void setBombArrowExplode() { field_0x950 = 0; }
    bool checkBombArrow() const { return mIsBombArrow == true; }

    static fopAc_ac_c* makeArrow(fopAc_ac_c* i_player, u16 param_1) {
        return (fopAc_ac_c*)fopAcM_fastCreate(PROC_ARROW,
                                              param_1 << 8,
                                              &i_player->current.pos,
                                              fopAcM_GetRoomNo(i_player),
                                              NULL,
                                              NULL,
                                              -1,
                                              NULL,
                                              NULL);
    }

    /* 0x568 */ J3DModel* field_0x568;
    /* 0x56C */ dBgS_ArrowLinChk field_0x56c;
    /* 0x5DC */ dBgS_ObjLinChk field_0x5dc;
    /* 0x64C */ dCcD_Stts field_0x64c;
    /* 0x688 */ dCcD_Cps field_0x688;
    /* 0x7CC */ dCcD_Sph field_0x7cc;
    /* 0x904 */ Z2SoundObjArrow field_0x904;
    /* 0x93C */ bool mIsBombArrow;
    /* 0x93D */ u8 field_0x93d[0x948 - 0x93D];
    /* 0x948 */ u8 mReverb;
    /* 0x949 */ u8 field_0x949[0x950 - 0x949];
    /* 0x950 */ u16 field_0x950;
    /* 0x952 */ s16 field_0x952;
    /* 0x954 */ s16 field_0x954;
    /* 0x956 */ u16 field_0x956;
    /* 0x958 */ csXyz field_0x958;
    /* 0x960 */ int field_0x960;
    /* 0x964 */ u32 field_0x964;
    /* 0x968 */ u32 field_0x968;
    /* 0x96C */ u8 field_0x96c[0x994 - 0x96C];
    /* 0x994 */ u32 mHitAcID;
    /* 0x998 */ f32 field_0x998;
    /* 0x99C */ f32 field_0x99c;
    /* 0x9A0 */ f32 mOutLengthRate;
    /* 0x9A4 */ f32 mFlyMax;
    /* 0x9A8 */ cXyz field_0x9a8;
    /* 0x9B4 */ cXyz field_0x9b4;
    /* 0x9C0 */ cXyz mStartPos;
    /* 0x9CC */ cXyz field_0x9cc;
    /* 0x9D8 */ cXyz field_0x9d8;
    /* 0x9E4 */ cXyz field_0x9e4;
    /* 0x9F0 */ cXyz mSmokePos;
    /* 0x9FC */ cXyz field_0x9fc;
    /* 0xA08 */ daPy_actorKeep_c field_0xa08;
    /* 0xA10 */ dPa_hermiteEcallBack_c field_0xa10;
    /* 0xA28 */ void (daArrow_c::*mProcFunc)();
};

#endif /* D_A_ARROW_H */
