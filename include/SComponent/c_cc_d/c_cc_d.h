#ifndef C_CC_D_H_
#define C_CC_D_H_

#include "SComponent/c_m3d_g_aab.h"
#include "SComponent/c_m3d_g_cps.h"
#include "SComponent/c_m3d_g_cyl.h"
#include "SComponent/c_m3d_g_sph.h"
#include "f/f_op/f_op_actor.h"

class cCcD_ShapeAttr {
public:
private:
    /* 0x00 */ cM3dGAab cm3dgaab;
    /* 0x1C */ void* vtable;
};

class cCcD_CpsAttr {
private:
    /* 0x00 */ cCcD_ShapeAttr cccd_shapeattr;
    /* 0x20 */ cM3dGCps cm3dgcps;
};

class cCcD_SphAttr {
public:
private:
    /* 0x00 */ cCcD_ShapeAttr cccd_shapeattr;
    /* 0x20 */ cM3dGSph cm3dgsph;
};  // Size = 0x30

class cCcD_CylAttr {
private:
    /* 0x00 */ cCcD_ShapeAttr cccd_shapeattr;
    /* 0x20 */ cM3dGCyl cm3dgcyl;
};  // Size = 0x34

class cCcD_DivideInfo {
public:
private:
    /* 0x00 */ u32 field_0x0;
    /* 0x04 */ u32 field_0x4;
    /* 0x08 */ u32 field_0x8;
    /* 0x0C */ void* vtable;
};

class cCcD_DivideArea {
public:
private:
    cM3dGAab mCM3dGAab;
    void* vtable;
};

class cCcD_GStts {
public:
private:
    /* 0x00 */ void* vtable;
};  // Size = 0x4

class cCcD_Stts {
public:
private:
    /* 0x00 */ cXyz field_0x00;
    /* 0x0C */ fopAc_ac_c* mActor;
    /* 0x10 */ int mApid;
    /* 0x14 */ u8 mWeight;
    /* 0x15 */ u8 field_0x15;
    /* 0x16 */ u8 mTg;
    /* 0x18 */ void* vtable;
};  // Size = 0x1C

class cCcD_ObjCommonBase {
private:
    /* 0x00 */ int mSPrm;
    /* 0x04 */ int mRPrm;
    /* 0x08 */ void* mHitObj;  // cCcD_Obj* type
    /* 0x0C */ void* vtable;
};

#pragma pack(push, 1)
class cCcD_ObjAt : cCcD_ObjCommonBase {
private:
    /* 0x10 */ int mType;
    /* 0x14 */ u8 mAtp;
};
#pragma pack(pop)

class cCcD_ObjTg : cCcD_ObjCommonBase {
private:
    /* 0x10 */ int mType;
};

class cCcD_ObjCo : cCcD_ObjCommonBase {};

class cCcD_ObjHitInf {
private:
    /* 0x000 */ cCcD_ObjAt mObjAt;
    /* 0x015 */ u8 field_0x15[3];  // padding?
    /* 0x018 */ cCcD_ObjTg mObjTg;
    /* 0x02C */ cCcD_ObjCo mObjCo;
    /* 0x03C */ void* vtable;
};  // Size = 0x40

class cCcD_Obj : cCcD_ObjHitInf {
public:
private:
    /* 0x040 */ int field_0x40;
    /* 0x044 */ cCcD_Stts* mStts;
    /* 0x048 */ cCcD_DivideInfo mDivideInfo;
};  // Size = 0x58

class cCcD_GObjInf : cCcD_Obj {};

#endif
