#ifndef D_D_ATTENTION_H
#define D_D_ATTENTION_H

#include "SSystem/SComponent/c_angle.h"
#include "d/a/d_a_player.h"
#include "d/save/d_save.h"
#include "dolphin/types.h"
#include "m_Do/m_Do_ext.h"

struct J3DTransformInfo {};

/* class cSAngle {
private:
    s16 mAngle;

public:
    cSAngle() {}
    ~cSAngle();
    cSAngle(const cSAngle&);
    cSAngle(s16);
    cSAngle(float);
    s16 Val() const { return this->mAngle; }
    // void Set(s16 angle) { this->mAngle = angle; }
    void Val(const cSAngle&);
    void Val(s16);
    void Val(float);
    float Degree(void) const;
    float Radian(void) const;
    float Norm(void) const;
    s16 Abs(void) const;
    s16 Inv(void) const;
    float Sin(void) const;
    float Cos(void) const;
    cSAngle operator-(void) const;
    cSAngle operator+(const cSAngle&) const;
    cSAngle operator-(const cSAngle&) const;
    void operator+=(const cSAngle&);
    void operator-=(const cSAngle&);
    cSAngle operator+(short) const;
    cSAngle operator-(short) const;
    void operator+=(short);
    cSAngle operator*(float) const;
    void operator*=(float);
    bool operator<(const cSAngle& other) const { return mAngle < other.mAngle; }
    bool operator>(const cSAngle& other) const { return mAngle > other.mAngle; }
    operator s16(void) const { return mAngle; }
    void operator=(const cSAngle& other) { mAngle = other.mAngle; }
    static inline cSAngle getMaxNegative(void) { return cSAngle((s16)-0x8000); }
    inline void mirrorAtMaxNeg(void) { *this = cSAngle((s16)-0x8000) - *this; }
};

class cSGlobe {
private:
    float mRadius;
    cSAngle mAzimuth;      // original: V
    cSAngle mInclination;  // original: U

public:
    cSGlobe(const cSGlobe&);
    cSGlobe(float, short, short);
    cSGlobe(float, const cSAngle&, const cSAngle&);
    cSGlobe(const cXyz&);
    ~cSGlobe();
    cSGlobe& Formal(void);
    void Val(const cSGlobe&);
    void Val(float, short, short);
    void Val(float, const cSAngle&, const cSAngle&);
    void Val(const cXyz&);
    float R(void) const { return mRadius; }
    const cSAngle& V(void) const { return mAzimuth; }
    const cSAngle& U(void) const { return mInclination; }
    cXyz Xyz(void) const;
    //void Polar(cSPolar*) const;
    cXyz Norm(void) const;
    cSGlobe& Invert(void);
}; */

class dAttHint_c {
public:
    /* 800738B4 */ void getPId(void*);
    /* 800738CC */ void convPId(unsigned int);
    /* 800738FC */ void request(fopAc_ac_c*, int);
    /* 80073958 */ void init();
    /* 80073970 */ void proc();

private:
    u32 field_0x0;
    u32 field_0x4;
    u32 field_0x8;
};

class dAttCatch_c {
public:
    /* 8007398C */ void convPId(unsigned int);
    /* 800739BC */ void init();
    /* 800739DC */ void proc();
    /* 80073A08 */ void request(fopAc_ac_c*, u8, f32, f32, f32, s16, int);

private:
    void* field_0x0;
    u32 field_0x4;
    float field_0x8;
    u8 field_0xc;
    u8 field_0xd;
    u8 field_0xe;
    u8 field_0xf;
    void* field_0x10;
};

class dAttParam_c {
public:
    /* 80070038 */ dAttParam_c(s32);
    /* 80070110 */ ~dAttParam_c();

private:
    u8 field_0x0;
    u8 field_0x1;
    u8 field_0x2;
    u8 field_0x3;
    u8 field_0x4;
    u8 field_0x5;
    u8 field_0x6;
    u8 field_0x7;
    u8 field_0x8;
    u8 field_0x9;
    u8 field_0xa;
    u8 field_0xb;
    u8 field_0xc;
    u8 field_0xd;
    u8 field_0xe;
    u8 field_0xf;
    u8 field_0x10;
    u8 field_0x11;
    u8 field_0x12;
};

class dAttLook_c {
public:
    /* 80073CA4 */ void convPId(unsigned int);
    /* 80073CD4 */ void init();
    /* 80073CEC */ void proc();
    /* 80073D08 */ void request(fopAc_ac_c*, f32, f32, f32, s16, int);

private:
    u32 field_0x0;
    u32 field_0x4;
    float field_0x8;
};

#pragma pack(push, 1)
class dAttList_c {
public:
    /* 800304D0 */ ~dAttList_c();
    /* 8003050C */ dAttList_c();
    /* 80073864 */ void getActor();
    /* 80073898 */ void setActor(fopAc_ac_c*);

private:
    u8 field_0x0[8];
    cSAngle angle;
    u8 field_0xa[10];
};
#pragma pack(pop)

#pragma pack(push, 1)
class dAttDraw_c {
public:
    /* 8003054C */ ~dAttDraw_c();
    /* 800307F0 */ dAttDraw_c();
    /* 80072DD8 */ void setAnm(u8, f32);
    /* 80072FE8 */ void setAlphaAnm(u8, u8);
    /* 80073004 */ void alphaAnm();
    /* 800732B0 */ void draw(cXyz&, f32 (*)[4]);

    u8 field_0x0;
    u8 field_0x1;
    u8 field_0x2;
    u8 field_0x3;
    u8 field_0x4;
    u8 field_0x5;
    u8 field_0x6;
    u8 field_0x7;
    /* 0x008 */ mDoExt_bckAnm bckAnm[2];
    /* 0x040 */ mDoExt_bpkAnm bpkAnm[2];
    /* 0x070 */ mDoExt_brkAnm brkAnm[2];
    /* 0x0A0 */ mDoExt_brkAnm brkAnm2[2];
    /* 0x0D0 */ mDoExt_btkAnm btkAnm[2];
    /* 0x100 */ mDoExt_bckAnm bckAnm2;
    /* 0x11C */ mDoExt_bpkAnm bpkAnm2;
    /* 0x134 */ mDoExt_brkAnm brkAnm3;
    /* 0x14C */ mDoExt_btkAnm btkAnm2;
    /* 0x164 */ u8 field_0x164[0xC];
    /* 0x170 */ u8 field_0x170;
    /* 0x171 */ u8 field_0x171;
    /* 0x172 */ u8 field_0x172;
    /* 0x173 */ u8 field_0x173;
    /* 0x174 */ u8 field_0x174;
    /* 0x175 */ u8 field_0x175;
};
#pragma pack(pop)

class dAttDraw_CallBack_c {
public:
    /* 80070178 */ void execute(u16, J3DTransformInfo*);

    mDoExt_McaMorfCallBack1_c mDoExt_McaMorfCallback;
};

class dAttention_c {
public:
    /* 80070198 */ dAttention_c(fopAc_ac_c*, u32);
    /* 80070774 */ ~dAttention_c();
    /* 80070844 */ void GetLockonList(s32);
    /* 80070880 */ void getActionBtnB();
    /* 80070974 */ void getActionBtnXY();
    /* 80070A70 */ void chkAttMask(u32, u32);
    /* 80070E90 */ void calcWeight(int, fopAc_ac_c*, f32, s16, s16, u32*);
    /* 800710C0 */ void setList(int, fopAc_ac_c*, f32, f32, cSAngle, u32);
    /* 80071240 */ void initList(u32);
    /* 800713CC */ void makeList();
    /* 80071424 */ void setOwnerAttentionPos();
    /* 80071488 */ void SelectAttention(fopAc_ac_c*);
    /* 800716B8 */ void sortList();
    /* 800718A4 */ void stockAttention();
    /* 80071960 */ void nextAttention();
    /* 80071A68 */ void freeAttention();
    /* 80071A98 */ void chaseAttention();
    /* 80071CC0 */ void EnemyDistance(fopAc_ac_c*);
    /* 80071DEC */ void runSoundProc();
    /* 80071E84 */ void runDrawProc();
    /* 800720F4 */ void runDebugDisp();
    /* 800720F8 */ void checkButton();
    /* 800722A0 */ void triggerProc();
    /* 800722EC */ void lostCheck();
    /* 80072344 */ void judgementStatus4Hold();
    /* 800725F0 */ void judgementStatus4Switch();
    /* 80072924 */ void Run();
    /* 80072BD4 */ void Draw();
    /* 80072D80 */ void lockSoundStart(u32);
    /* 8007353C */ void LockonTarget(s32);
    /* 800735DC */ void LockonReleaseDistanse();
    /* 800736CC */ void LockonTargetPId(s32);
    /* 80073734 */ void ActionTarget(s32);
    /* 8007378C */ void CheckObjectTarget(s32);
    /* 800737E4 */ void LockonTruth();
    /* 80073838 */ void checkDistance(cXyz*, s16, cXyz*, f32, f32, f32, f32);

    static u8 loc_type_tbl[12];
    static u8 act_type_tbl[20];
    static u8 dist_table[6552];
    static u32 loc_type_num;
    static u32 act_type_num;
    static u32 chk_type_tbl;
    static u32 chk_type_num;

private:
    u8 field_0x0[4];
    u32 field_0x4;
    dAttDraw_CallBack_c dattdraw_callback;
    u32 field_0xc;
    u32 field_0x10;
    u8 field_0x14[8];
    cXyz field_0x1c;
    /* 0x028 */ dAttDraw_c attention_draw[2];
    int field_0x318;
    cXyz field_0x31c;
    u8 field_0x328[12];
    u32 field_0x334;
    /* 0x0338 */ dAttList_c attention_list1[8];
    int* field_0x3d8;
    int* field_0x3dc;
    /* 0x03E0 */ dAttList_c attention_list2[4];
    int* field_0x430;
    int field_0x434;
    /* 0x0438 */ dAttList_c attention_list3[4];
    int* field_0x488;
    int field_0x48c;
    dAttHint_c attention_hint;
    dAttCatch_c attention_catch;
    u8 field_0x4b0[4];
    dAttLook_c attention_look;
    u8 field_0x4c0;
    u8 field_0x4c1;
    u8 field_0x4c2;
    u8 field_0x4c3;
    int* field_0x4c4;
    u8 field_0x4c8;
    u8 field_0x4c9;
    u8 field_0x4ca;
    u8 field_0x4cb;
    u8 field_0x4cc;
    u8 field_0x4cd;
    u8 field_0x4ce;
    u8 field_0x4cf;
    /* 0x04D0 */ dAttParam_c attention_param;
    u8 field_0x4e3;
    u8 field_0x4e4;
    u8 field_0x4e5;
    int* field_0x4e6;
    u8 field_0x4ea;
    u8 field_0x4eb;
    u8 field_0x4ec;
    u8 field_0x4ed;
    u8 field_0x4ee;
    u8 field_0x4ef;
    u8 field_0x4f0[0x18];
    /* 0x0508 */ void* vtable;
};

#endif /* D_D_ATTENTION_H */
