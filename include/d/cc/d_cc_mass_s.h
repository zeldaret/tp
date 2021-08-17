#ifndef D_CC_D_CC_MASS_S_H
#define D_CC_D_CC_MASS_S_H

#include "SSystem/SComponent/c_cc_d.h"
#include "dolphin/types.h"

typedef void (*dCcMassS_ObjCallback)(fopAc_ac_c*, cXyz*, u32);

class dCcMassS_Obj {
private:
    /* 0x00 */ cCcD_Obj* mpObj;
    /* 0x04 */ u8 mPriority;
    /* 0x08 */ dCcMassS_ObjCallback mpCallback;
    /* 0x0C */ cCcD_DivideInfo mDivideInfo;
    /* 0x1C vtable */
public:
    dCcMassS_Obj();
    virtual ~dCcMassS_Obj() {}
    /* 800852E0 */ void Set(cCcD_Obj*, u8, void (*)(fopAc_ac_c*, cXyz*, u32));
    /* 800852F0 */ void Clear();
    cCcD_Obj* GetObj() { return mpObj; }
    u8 GetPriority() const { return mPriority; }
    dCcMassS_ObjCallback GetCallback() const { return mpCallback; }
    cCcD_DivideInfo& GetDivideInfo() { return mDivideInfo; }
};  // Size = 0x20

STATIC_ASSERT(0x20 == sizeof(dCcMassS_Obj));

class dCcMassS_HitInf {
private:
    /* 0x00 */ cCcD_Obj* mpArea;
    /* 0x04 */ cCcD_Obj* mpAtObj;
    /* 0x08 */ cCcD_Obj* mpCoObj;
    /* 0x0C */ f32 mCoHitLen;

public:
    /* 80085334 */ void ClearPointer();
    void SetAreaHitObj(cCcD_Obj* obj) { mpArea = obj; }
    void SetCoHitObj(cCcD_Obj* obj) { mpCoObj = obj; }
    void SetAtHitObj(cCcD_Obj* obj) { mpAtObj = obj; }
    void SetCoHitLen(f32 len) { mCoHitLen = len; }
};

class dCcMassS_Mng {
public:
    /* 0x0000 */ cCcD_DivideArea mDivideArea;
    /* 0x0040 */ s32 mMassObjCount;
    /* 0x0044 */ dCcMassS_Obj mMassObjs[10];
    /* 0x0184 */ s32 mMassAreaCount;
    /* 0x0188 */ dCcMassS_Obj mMassAreas[2];
    /* 0x01C8 */ cCcD_CylAttr mCylAttr;
    /* 0x0200 */ u8 field_0x200;
    /* 0x0200 */ u8 field_0x201;
    /* 0x0202 */ u8 field_0x202;
    /* 0x0203 */ u8 mResultCam;
    /* 0x0204 */ Vec mCamTopPos;
    /* 0x0210 */ f32 mCamTopDist;
    /* 0x0214 */ Vec mCamBottomPos;
    /* 0x0220 */ f32 mCamBottomDist;
    /* 0x0224 */ cCcD_CpsAttr mCpsAttr;
    /* 0x0264 */ cCcD_DivideInfo mDivideInfo;
    /* 0x0274 vtable */
public:
    dCcMassS_Mng(void);
    virtual ~dCcMassS_Mng() {}
    /* 800855E4 */ void Ct();
    /* 80085630 */ void SetAttr(f32, f32, u8, u8);
    /* 80085690 */ void Prepare();
    /* 800858AC */ u32 Chk(cXyz*, fopAc_ac_c**, dCcMassS_HitInf*);
    /* 80085CF0 */ void Clear();
    /* 80085D98 */ void Set(cCcD_Obj*, u8);
    /* 80085E6C */ void SetCam(cM3dGCps const&);
    /* 80085EB0 */ u8 GetResultCam() const;
    /* 80085EB8 */ void GetCamTopPos(Vec*);
};

STATIC_ASSERT(sizeof(dCcMassS_Mng) == 0x278);

#endif /* D_CC_D_CC_MASS_S_H */
