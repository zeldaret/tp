#ifndef D_BG_D_BG_S_POLY_PASS_CHK_H
#define D_BG_D_BG_S_POLY_PASS_CHK_H

#include "dolphin/types.h"

class cBgS_PolyPassChk {
public:
    virtual ~cBgS_PolyPassChk();
};

class dBgS_PolyPassChk : public cBgS_PolyPassChk {
public:
    dBgS_PolyPassChk();
    virtual ~dBgS_PolyPassChk();

    bool ChkArrow() { return mArrow; }
    bool ChkBomb() { return mBomb; }
    bool ChkBoomerang() { return mBoomerang; }
    bool ChkCam() { return mCamera; }
    bool ChkHorse() { return mHorse; }
    bool ChkIronBall() { return mIronBall; }
    bool ChkLink() { return mLink; }
    bool ChkNoHorse();
    bool ChkObj() { return mObject; }
    bool ChkRope() { return mRope; }
    bool ChkStatue() { return mStatue; }
    bool ChkUnderwaterRoof() { return mUnderwaterRoof; }

    void ClrBomb();
    void ClrCam();
    void ClrIronBall();
    void ClrLink();
    void ClrObj();
    void ClrStatue();

    void SetArrow();
    void SetBomb();
    void SetBoomerang();
    void SetCam();
    void SetHorse();
    void SetIronBall();
    void SetLink();
    void SetObj();
    void SetPassChkInfo(dBgS_PolyPassChk& chk);
    void SetRope();
    void SetStatue();
    void SetUnderwaterRoof();

private:
    bool mObject;
    bool mCamera;
    bool mLink;
    bool mArrow;
    bool mBomb;
    bool mBoomerang;
    bool mRope;
    bool mUnderwaterRoof;
    bool mHorse;
    bool mStatue;
    bool mIronBall;
};

#endif /* D_BG_D_BG_S_POLY_PASS_CHK_H */
