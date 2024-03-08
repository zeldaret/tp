#ifndef D_A_SPINNER_H
#define D_A_SPINNER_H

#include "d/com/d_com_inf_game.h"
#include "d/d_path.h"
#include "d/particle/d_particle_copoly.h"
#include "f_op/f_op_actor_mng.h"

class daSpinner_c : public fopAc_ac_c {
public:
    /* 804D198C */ int createHeap();
    /* 804D1A70 */ int create();
    /* 804D1FD0 */ ~daSpinner_c();
    /* 804D21E0 */ void setRoomInfo();
    /* 804D2278 */ void setMatrix();
    /* 804D2320 */ void setEffect();
    /* 804D25F4 */ int posMove();
    /* 804D3090 */ void setReflectAngle();
    /* 804D3174 */ void setWallHit(s16, u32);
    /* 804D34B0 */ void setAnm();
    /* 804D3618 */ int setNextPathNum();
    /* 804D3694 */ Vec* getPathNextPos();
    /* 804D36F4 */ int checkLineWallHit(cXyz*, cXyz*);
    /* 804D3774 */ int checkPathMove();
    /* 804D3D60 */ void setSpreadEffect();
    /* 804D3F14 */ void clearSpreadEffect();
    /* 804D3F8C */ int execute();
    /* 804D4BB4 */ int draw();

    void onPathForceRemove() { mPathForceRemove = true; }

    dPath* checkPathMoveNow() { return mpPathMove; }

    static u32 getWaitArg() { return 0; }

    int getDeleteFlg() const { return mDeleteFlg; }

    bool checkSpinnerTagEnd() const { return mSpinnerTag == 5; }
    bool checkSpinnerTagIntoIncRot() const { return mSpinnerTag == 4; }
    bool checkSpinnerTagInto() const { return mSpinnerTag == 3; }
    bool checkGroundHit() { return mAcch.ChkGroundHit(); }

    u8 getButtonJump() const { return mButtonJump; }
    u8 getJumpFlg() const { return mJumpFlg; }

    void setMove(f32 speedF, s16 param_1) {
        fopAcM_SetParam(this, 1);
        speedF = speedF;
        field_0xa7a = param_1;
        mCyl.OnAtSetBit();
    }

    void clearPathMove() { mpPathMove = NULL; }

    void setSpinnerTag(const cXyz& param_0) {
        if (!mSpinnerTag) {
            mSpinnerTag = 1;
        }

        clearPathMove();
        field_0xaa4 = param_0;
    }

    void offSpinnerTag() {
        if (mSpinnerTag != 0) {
            mSpinnerTag = 5;
        }
    }

    bool reflectAccept() {
        bool accept = false;
        if (!mBck.isStop() && mSpinnerTag == 0) {
            accept = true;
        }

        return accept;
    }

    MtxP getModelMtx() { return mpModel->getBaseTRMtx(); }

    s16 getAngleY() { return shape_angle.y + field_0xa7e; }

    void forceDelete() { mDeleteFlg = 1; }

private:
    /* 0x568 */ J3DModel* mpModel;
    /* 0x56C */ mDoExt_bckAnm mBck;
    /* 0x588 */ J3DAnmTransform* field_0x588;
    /* 0x58C */ dBgS_AcchCir mAcchCir[3];
    /* 0x64C */ dBgS_Acch mAcch;
    /* 0x824 */ dBgS_LinkLinChk mLinChk;
    /* 0x894 */ dPaPo_c field_0x894;
    /* 0x8CC */ Z2SoundObjSimple field_0x8cc;
    /* 0x8EC */ dCcD_Stts mStts;
    /* 0x928 */ dCcD_Cyl mCyl;
    /* 0xA64 */ dPath* mpPathMove;
    /* 0xA68 */ dPath* field_0xa68;
    /* 0xA6C */ u8 field_0xa6c;
    /* 0xA6D */ u8 mJumpFlg;
    /* 0xA6E */ s8 field_0xa6e;
    /* 0xA6F */ u8 mSpinnerTag;
    /* 0xA70 */ u8 mButtonJump;
    /* 0xA71 */ u8 mDeleteFlg;
    /* 0xA72 */ u8 field_0xa72;
    /* 0xA73 */ s8 field_0xa73;
    /* 0xA74 */ u8 field_0xa74;
    /* 0xA75 */ u8 field_0xa75;
    /* 0xA76 */ u8 field_0xa76;
    /* 0xA77 */ u8 mPathForceRemove;
    /* 0xA78 */ u8 field_0xa78;
    /* 0xA79 */ u8 field_0xa79;
    /* 0xA7A */ s16 field_0xa7a;
    /* 0xA7C */ s16 field_0xa7c;
    /* 0xA7E */ s16 field_0xa7e;
    /* 0xA80 */ s16 field_0xa80;
    /* 0xA82 */ s16 field_0xa82;
    /* 0xA84 */ f32 field_0xa84;
    /* 0xA88 */ f32 field_0xa88;
    /* 0xA8C */ u32 field_0xa8c[2];
    /* 0xA94 */ u32 field_0xa94;
    /* 0xA98 */ cXyz field_0xa98;
    /* 0xAA4 */ cXyz field_0xaa4;
    /* 0xAB0 */ cXyz field_0xab0;
};

#endif /* D_A_SPINNER_H */
