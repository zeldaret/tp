#ifndef C_CC_D_H
#define C_CC_D_H

#include "SSystem/SComponent/c_m3d_g_aab.h"
#include "SSystem/SComponent/c_m3d_g_cps.h"
#include "SSystem/SComponent/c_m3d_g_cyl.h"
#include "SSystem/SComponent/c_m3d_g_sph.h"
#include "SSystem/SComponent/c_m3d_g_tri.h"
#include "dolphin/gx/GXTexture.h"
#include "dolphin/types.h"
#include "f_op/f_op_actor.h"

class cCcD_ShapeAttr {
public:
    struct Shape {};

    /* 8008556C */ virtual ~cCcD_ShapeAttr();
    /* 802649D8 */ virtual bool CrossAtTg(cCcD_ShapeAttr const&, cXyz*) const;
    /* 802649E0 */ virtual bool CrossCo(cCcD_ShapeAttr const&, f32*) const;
    /* 80084E38 */ virtual void GetCoCP() const;
    /* 80084E2C */ virtual void GetCoCP();
    /* 80263A64 */ virtual void getShapeAccess(cCcD_ShapeAttr::Shape*) const;

    static f32 m_virtual_center[3];

private:
    /* 0x00 */ cM3dGAab mAab;
};

class cCcD_SphAttr;
class cCcD_CylAttr;
class cCcD_TriAttr;
class cCcD_PntAttr;
class cCcD_AabAttr;

class cCcD_CpsAttr : public cCcD_ShapeAttr {
public:
    /* 80085450 */ virtual ~cCcD_CpsAttr();
    /* 80263DC0 */ virtual void CrossAtTg(cCcD_SphAttr const&, cXyz*) const;
    /* 80263E04 */ virtual void CrossAtTg(cCcD_TriAttr const&, cXyz*) const;
    /* 80084FE4 */ virtual void CrossAtTg(cCcD_ShapeAttr const&, cXyz*) const;
    /* 80084FDC */ virtual bool CrossAtTg(cCcD_PntAttr const&, cXyz*) const;
    /* 80084FD4 */ virtual bool CrossAtTg(cCcD_AabAttr const&, cXyz*) const;
    /* 80263D38 */ virtual void CrossAtTg(cCcD_CpsAttr const&, cXyz*) const;
    /* 80263D7C */ virtual void CrossAtTg(cCcD_CylAttr const&, cXyz*) const;
    /* 80263F24 */ virtual void CrossCo(cCcD_CylAttr const&, f32*) const;
    /* 80085024 */ virtual bool CrossCo(cCcD_TriAttr const&, f32*) const;
    /* 8008502C */ virtual bool CrossCo(cCcD_PntAttr const&, f32*) const;
    /* 8008501C */ virtual bool CrossCo(cCcD_AabAttr const&, f32*) const;
    /* 80263ED4 */ virtual void CrossCo(cCcD_CpsAttr const&, f32*) const;
    /* 80263F74 */ virtual void CrossCo(cCcD_SphAttr const&, f32*) const;
    /* 80085034 */ virtual void CrossCo(cCcD_ShapeAttr const&, f32*) const;
    /* 80263FC4 */ virtual void CalcAabBox();
    /* 80264014 */ virtual void GetNVec(cXyz const&, cXyz*) const;

private:
    /* 0x20 */ cM3dGCps mCps;
};

class cCcD_SphAttr : public cCcD_ShapeAttr {
public:
    /* 8008721C */ virtual ~cCcD_SphAttr();
    /* 80264538 */ virtual void CrossAtTg(cCcD_CylAttr const&, cXyz*) const;
    /* 802645C0 */ virtual void CrossAtTg(cCcD_TriAttr const&, cXyz*) const;
    /* 80084B4C */ virtual bool CrossAtTg(cCcD_AabAttr const&, cXyz*) const;
    /* 80084B54 */ virtual bool CrossAtTg(cCcD_PntAttr const&, cXyz*) const;
    /* 80084B5C */ virtual void CrossAtTg(cCcD_ShapeAttr const&, cXyz*) const;
    /* 802644EC */ virtual void CrossAtTg(cCcD_CpsAttr const&, cXyz*) const;
    /* 8026457C */ virtual void CrossAtTg(cCcD_SphAttr const&, cXyz*) const;
    /* 80264688 */ virtual void CrossCo(cCcD_CpsAttr const&, f32*) const;
    /* 80084B94 */ virtual bool CrossCo(cCcD_AabAttr const&, f32*) const;
    /* 80084B9C */ virtual bool CrossCo(cCcD_TriAttr const&, f32*) const;
    /* 80084BA4 */ virtual bool CrossCo(cCcD_PntAttr const&, f32*) const;
    /* 80084BAC */ virtual void CrossCo(cCcD_ShapeAttr const&, f32*) const;
    /* 80264644 */ virtual void CrossCo(cCcD_SphAttr const&, f32*) const;
    /* 802645F8 */ virtual void CrossCo(cCcD_CylAttr const&, f32*) const;
    /* 80084B44 */ virtual void GetCoCP() const;
    /* 80037A54 */ virtual void GetCoCP();
    /* 802646E0 */ virtual void CalcAabBox();
    /* 8026476C */ virtual void GetNVec(cXyz const&, cXyz*) const;
    /* 80264808 */ virtual void getShapeAccess(cCcD_ShapeAttr::Shape*) const;

private:
    /* 0x20 */ cM3dGSph mSph;
};  // Size = 0x30

class cCcD_CylAttr : public cCcD_ShapeAttr {
public:
    /* 800854E0 */ virtual ~cCcD_CylAttr();
    /* 8026420C */ virtual void CrossAtTg(cCcD_SphAttr const&, cXyz*) const;
    /* 802641C8 */ virtual void CrossAtTg(cCcD_CylAttr const&, cXyz*) const;
    /* 80084CC8 */ virtual bool CrossAtTg(cCcD_AabAttr const&, cXyz*) const;
    /* 80264250 */ virtual void CrossAtTg(cCcD_TriAttr const&, cXyz*) const;
    /* 80084CD0 */ virtual bool CrossAtTg(cCcD_PntAttr const&, cXyz*) const;
    /* 80084CD8 */ virtual void CrossAtTg(cCcD_ShapeAttr const&, cXyz*) const;
    /* 8026417C */ virtual void CrossAtTg(cCcD_CpsAttr const&, cXyz*) const;
    /* 80264288 */ virtual void CrossCo(cCcD_CylAttr const&, f32*) const;
    /* 80264310 */ virtual void CrossCo(cCcD_CpsAttr const&, f32*) const;
    /* 80084D10 */ virtual bool CrossCo(cCcD_AabAttr const&, f32*) const;
    /* 80084D18 */ virtual bool CrossCo(cCcD_TriAttr const&, f32*) const;
    /* 80084D20 */ virtual bool CrossCo(cCcD_PntAttr const&, f32*) const;
    /* 80084D28 */ virtual void CrossCo(cCcD_ShapeAttr const&, f32*) const;
    /* 802642CC */ virtual void CrossCo(cCcD_SphAttr const&, f32*) const;
    /* 80084CC0 */ virtual void GetCoCP() const;
    /* 80037A4C */ virtual void GetCoCP();
    /* 80264368 */ virtual void CalcAabBox();
    /* 802643D0 */ virtual void GetNVec(cXyz const&, cXyz*) const;
    /* 802644B8 */ virtual void getShapeAccess(cCcD_ShapeAttr::Shape*) const;

private:
    /* 0x20 */ cM3dGCyl mCyl;
};  // Size = 0x34

class cCcD_TriAttr {
    /* 80084E44 */ bool CrossAtTg(cCcD_AabAttr const&, cXyz*) const;
    /* 80263A88 */ void CrossAtTg(cCcD_CpsAttr const&, cXyz*) const;
    /* 80263BCC */ void CrossAtTg(cCcD_TriAttr const&, cXyz*) const;
    /* 80084E4C */ bool CrossAtTg(cCcD_PntAttr const&, cXyz*) const;
    /* 80263B90 */ void CrossAtTg(cCcD_SphAttr const&, cXyz*) const;
    /* 80084E54 */ void CrossAtTg(cCcD_ShapeAttr const&, cXyz*) const;
    /* 80263B58 */ void CrossAtTg(cCcD_CylAttr const&, cXyz*) const;
    /* 80084E9C */ bool CrossCo(cCcD_AabAttr const&, f32*) const;
    /* 80084EBC */ void CrossCo(cCcD_ShapeAttr const&, f32*) const;
    /* 80084EA4 */ bool CrossCo(cCcD_TriAttr const&, f32*) const;
    /* 80084E8C */ bool CrossCo(cCcD_SphAttr const&, f32*) const;
    /* 80084EAC */ bool CrossCo(cCcD_CpsAttr const&, f32*) const;
    /* 80084E94 */ bool CrossCo(cCcD_CylAttr const&, f32*) const;
    /* 80084EB4 */ bool CrossCo(cCcD_PntAttr const&, f32*) const;
    /* 80263C04 */ void CalcAabBox();
    /* 80263C9C */ void GetNVec(cXyz const&, cXyz*) const;
    /* 80264938 */ ~cCcD_TriAttr();
};

class cCcD_DivideInfo {
public:
    /* 80263358 */ void Set(u32, u32, u32);
    /* 80263368 */ void Chk(cCcD_DivideInfo const&) const;

private:
    /* 0x00 */ u32 field_0x0;
    /* 0x04 */ u32 field_0x4;
    /* 0x08 */ u32 field_0x8;
    /* 0x0C */ void* vtable;
};

class cCcD_DivideArea {
public:
    /* 802633A8 */ void SetArea(cM3dGAab const&);
    /* 802634D4 */ void CalcDivideInfo(cCcD_DivideInfo*, cM3dGAab const&, u32);
    /* 802636A0 */ void CalcDivideInfoOverArea(cCcD_DivideInfo*, cM3dGAab const&);

private:
    cM3dGAab mAab;
    void* vtable;
};

struct cCcD_SrcObjTg {};

struct cCcD_SrcObjHitInf {};

struct cCcD_SrcObjAt {};

struct cCcD_SrcObj {};

class cCcD_GStts {
public:
    /* 800837B0 */ ~cCcD_GStts();

private:
    /* 0x00 */ void* vtable;
};  // Size = 0x4

class cCcD_Stts {
public:
    /* 801410A4 */ ~cCcD_Stts();
    /* 80263894 */ bool GetGStts() const;
    /* 8026389C */ bool GetGStts();
    /* 802638A4 */ void Init(int, int, void*, unsigned int);
    /* 80263904 */ void Ct();
    /* 80263934 */ void PlusCcMove(f32, f32, f32);
    /* 8026395C */ void ClrCcMove();
    /* 80263970 */ void PlusDmg(int);
    /* 80263984 */ void GetWeightF() const;
    /* 802649E8 */ void ClrAt();
    /* 802649EC */ void ClrTg();

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
public:
    /* 8008409C */ ~cCcD_ObjCommonBase();
    /* 802639B0 */ void ct();

private:
    /* 0x00 */ int mSPrm;
    /* 0x04 */ int mRPrm;
    /* 0x08 */ void* mHitObj;  // cCcD_Obj* type
    /* 0x0C */ void* vtable;
};

class cCcD_Obj;
#pragma pack(push, 1)
class cCcD_ObjAt : cCcD_ObjCommonBase {
public:
    /* 80084040 */ ~cCcD_ObjAt();
    /* 8026483C */ void SetHit(cCcD_Obj*);
    /* 8026484C */ void Set(cCcD_SrcObjAt const&);
    /* 80264868 */ void ClrHit();

private:
    /* 0x10 */ int mType;
    /* 0x14 */ u8 mAtp;
};
#pragma pack(pop)

class cCcD_ObjTg : cCcD_ObjCommonBase {
public:
    /* 80083FE4 */ ~cCcD_ObjTg();
    /* 80264880 */ void Set(cCcD_SrcObjTg const&);
    /* 80264894 */ void SetGrp(u32);
    /* 802648B0 */ void ClrHit();
    /* 802648C8 */ void SetHit(cCcD_Obj*);

private:
    /* 0x10 */ int mType;
};

class cCcD_ObjCo : cCcD_ObjCommonBase {
public:
    /* 80083F88 */ ~cCcD_ObjCo();
    /* 802648D8 */ void SetHit(cCcD_Obj*);
    /* 802648E8 */ void ClrHit();
    /* 80264900 */ void SetIGrp(u32);
    /* 8026491C */ void SetVsGrp(u32);
};

class cCcD_ObjHitInf {
public:
    /* 80083EC8 */ ~cCcD_ObjHitInf();
    /* 802639C4 */ void Set(cCcD_SrcObjHitInf const&);

private:
    /* 0x000 */ cCcD_ObjAt mObjAt;
    /* 0x015 */ u8 field_0x15[3];  // padding?
    /* 0x018 */ cCcD_ObjTg mObjTg;
    /* 0x02C */ cCcD_ObjCo mObjCo;
    /* 0x03C */ void* vtable;
};  // Size = 0x40

class cCcD_Obj : cCcD_ObjHitInf {
public:
    /* 80083DE0 */ ~cCcD_Obj();
    /* 800851A4 */ bool GetGObjInf() const;
    /* 800847C8 */ bool GetGObjInf();
    /* 80084BE8 */ bool GetShapeAttr() const;
    /* 80085130 */ bool GetShapeAttr();
    /* 80084BF0 */ void Draw(_GXColor const&);
    /* 80263A10 */ void ct();
    /* 80263A1C */ void Set(cCcD_SrcObj const&);
    void GetAc();

private:
    /* 0x040 */ int field_0x40;
    /* 0x044 */ cCcD_Stts* mStts;
    /* 0x048 */ cCcD_DivideInfo mDivideInfo;
};  // Size = 0x58

class cCcD_GObjInf : cCcD_Obj {
public:
    /* 80083CE8 */ ~cCcD_GObjInf();
    /* 800851A0 */ void GetGObjInf();
    /* 80084BE4 */ void GetGObjInf() const;
    /* 80085138 */ void ClrAtHit();
    /* 80085158 */ void ClrTgHit();
    /* 8008517C */ void ClrCoHit();
};

#endif /* C_CC_D_H */
