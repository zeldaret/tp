#ifndef C_BG_S_CHK_H
#define C_BG_S_CHK_H

#include "dolphin/mtx/vec.h"

struct cBgD_Vtx_t : public Vec {};

class cBgS_GrpPassChk {
public:
    virtual ~cBgS_GrpPassChk();
};

class cBgS_PolyPassChk;

class cBgS_Chk {
private:
    /* 0x0 */ cBgS_PolyPassChk* mPolyPassChk;
    /* 0x4 */ cBgS_GrpPassChk* mGrpPassChk;
    /* 0x8 */ u32 mActorPid;
    /* 0xC */ u8 unk_0x0C;
    /* 0x10 */  // __vtable__

public:
    cBgS_Chk();
    void SetExtChk(cBgS_Chk&);
    bool ChkSameActorPid(unsigned int) const;

    void setActorPid(u32 pid) { mActorPid = pid; }
    u32 GetActorPid() const { return mActorPid; }
    void SetPolyPassChk(cBgS_PolyPassChk* p_chk) { mPolyPassChk = p_chk; }
    void SetGrpPassChk(cBgS_GrpPassChk* p_chk) { mGrpPassChk = p_chk; }
    cBgS_PolyPassChk* GetPolyPassChk() const { return mPolyPassChk; }
    cBgS_GrpPassChk* GetGrpPassChk() const { return mGrpPassChk; }

    virtual ~cBgS_Chk(void);
};  // Size: 0x14

#endif /* C_BG_S_CHK_H */
