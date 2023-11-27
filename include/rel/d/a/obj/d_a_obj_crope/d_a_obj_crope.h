#ifndef D_A_OBJ_CROPE_H
#define D_A_OBJ_CROPE_H

#include "d/cc/d_cc_d.h"
#include "f_op/f_op_actor_mng.h"

class daObjCrope_c : public fopAc_ac_c {
public:
    /* 80BCCCD8 */ void createHeap();
    /* 80BCCD64 */ void create();
    /* 80BCD524 */ ~daObjCrope_c();
    /* 80BCD6C4 */ void setNormalRopePos();
    /* 80BCD9EC */ void setRideRopePos();
    /* 80BCE4FC */ void execute();
    /* 80BCE9BC */ void draw();

    cXyz* getRopeStartPos() { return mLineMat.getPos(0); }
    cXyz* getRopeEndPos() { return &mLineMat.getPos(0)[99]; }
    cXyz* getRopeVec() { return &mRopeVec; }
    cXyz& getPlayerNearPos() { return mPlayerNearPos; }
    void onOutFlg() { mOutFlg = true; }
    void setFrontJoint(int i_jointNo) { mFrontJoint = i_jointNo; }
    void setBackJoint(int i_jointNo) { mBackJoint = i_jointNo; }
    
    f32 getStartRate(const cXyz* param_0) {
        return field_0x714 ? field_0x724 * (param_0->x - getRopeStartPos()->x) :
                             field_0x724 * (param_0->z - getRopeStartPos()->z);
    }

    void rideKeep() {
        setFrontJoint(-2);
        setBackJoint(-1);
    }

    /* 0x0568 */ request_of_phase_process_class mPhase;
    /* 0x0570 */ dCcD_Stts mCcStts;
    /* 0x05AC */ dCcD_Sph mCollider;
    /* 0x06E4 */ Mtx field_0x6e4;
    /* 0x0714 */ u8 field_0x714;
    /* 0x0715 */ u8 mOutFlg;
    /* 0x0716 */ u8 mCoCancelTimer;
    /* 0x0718 */ int mFrontJoint;
    /* 0x071C */ int mBackJoint;
    /* 0x0720 */ f32 field_0x720;
    /* 0x0724 */ f32 field_0x724;
    /* 0x0728 */ cXyz mRopeVec;
    /* 0x0734 */ cXyz mPlayerNearPos;
    /* 0x0740 */ cXyz field_0x740[98];
    /* 0x0BD8 */ cXyz field_0xbd8[98];
    /* 0x1070 */ mDoExt_3DlineMat1_c mLineMat;
};

#endif /* D_A_OBJ_CROPE_H */
