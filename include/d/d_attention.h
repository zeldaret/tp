#ifndef D_D_ATTENTION_H
#define D_D_ATTENTION_H

#include "SSystem/SComponent/c_angle.h"
#include "d/a/d_a_player.h"
#include "d/save/d_save.h"
#include "dolphin/types.h"
#include "m_Do/m_Do_ext.h"

class dAttHint_c {
public:
    dAttHint_c() {}
    /* 800738B4 */ void getPId(void*);
    /* 800738CC */ void convPId(unsigned int);
    /* 800738FC */ void request(fopAc_ac_c*, int);
    /* 80073958 */ void init();
    /* 80073970 */ void proc();

private:
    /* 0x0 */ u32 mHintActorID;
    /* 0x4 */ u32 mPriority;
    /* 0x8 */ u32 field_0x8;
};

class dAttCatch_c {
public:
    dAttCatch_c() {}
    s32 convPId(unsigned int);
    void init();
    void proc();
    void request(fopAc_ac_c*, u8, f32, f32, f32, s16, int);

    s32 getCatghTarget() { return convPId(mCatghTargetID); }
    u8 getChangeItem() { return mChangeItem; }

private:
    /* 0x00 */ void* field_0x0;
    /* 0x04 */ f32 field_0x4;
    /* 0x08 */ f32 field_0x8;
    /* 0x0C */ u8 field_0xc;
    /* 0x0D */ u8 field_0xd;
    /* 0x0E */ u8 field_0xe;
    /* 0x0F */ u8 field_0xf;
    /* 0x10 */ u32 mCatghTargetID;
    /* 0x14 */ u8 mChangeItem;
};  // Size: 0x18

class dAttParam_c {
public:
    dAttParam_c() {}
    /* 80070038 */ dAttParam_c(s32);

private:
    /* 0x00 */ u16 field_0x0;
    /* 0x04 */ f32 field_0x4;
    /* 0x08 */ f32 field_0x8;
    /* 0x0C */ f32 field_0xc;
    /* 0x10 */ f32 mDangerBGMDistance;
    /* 0x14 */ f32 mBGMDistMargin;
    /* 0x18 */ f32 mSWModeDisable;
    /* 0x1C */ f32 mSelCursorScaleX;
    /* 0x20 */ f32 mSelCursorScaleY;
    /* 0x24 */ f32 mAttnCursorScaleX;
    /* 0x28 */ f32 mAttnCursorScaleY;
    /* 0x2C */ f32 mSelCursorOffsetY;
    /* 0x30 */ f32 mAttnCursorOffsetY;
    /* 0x34 */ u8 mAttnCursorAppearFrames;
    /* 0x35 */ u8 mAttnCursorDisappearFrames;

public:
    /* 80070110 */ virtual ~dAttParam_c();
    /* 0x38 vtable */

private:
    /* 0x3C */ f32 mSelCursorAnmSpeed;
    /* 0x40 */ f32 mAttnCursorAnmSpeed; 
    /* 0x44 */ u32 mDispPosX;
    /* 0x48 */ u32 mDispPosY;
};  // Size = 0x4C

class dAttLook_c {
public:
    /* 80073CA4 */ void convPId(unsigned int);
    /* 80073CD4 */ void init();
    /* 80073CEC */ void proc();
    /* 80073D08 */ void request(fopAc_ac_c*, f32, f32, f32, s16, int);

private:
    u32 field_0x0;
    u32 field_0x4;
    f32 field_0x8;
    u32 mLookTargetID;
};  // Size: 0x10

class dAttList_c {
public:
    /* 800304D0 */ ~dAttList_c() {}
    /* 8003050C */ dAttList_c() {}
    /* 80073864 */ void getActor();
    /* 80073898 */ void setActor(fopAc_ac_c*);

private:
    /* 0x00 */ f32 mWeight;
    /* 0x04 */ f32 mDistance;
    /* 0x08 */ cSAngle mAngle;
    /* 0x0C */ u32 mType;
    /* 0x10 */ u32 mActorID;
};  // Size: 0x14

class dAttDraw_c {
public:
    /* 8003054C */ ~dAttDraw_c() {}
    /* 800307F0 */ dAttDraw_c() {}
    /* 80072DD8 */ void setAnm(u8, f32);
    /* 80072FE8 */ void setAlphaAnm(u8, u8);
    /* 80073004 */ void alphaAnm();
    /* 800732B0 */ void draw(cXyz&, f32 (*)[4]);

    /* 0x000 */ J3DModel* mModel[2];
    /* 0x008 */ mDoExt_bckAnm bckAnm[2];
    /* 0x040 */ mDoExt_bpkAnm bpkAnm[2];
    /* 0x070 */ mDoExt_brkAnm brkAnm[2];
    /* 0x0A0 */ mDoExt_brkAnm brkAnm2[2];
    /* 0x0D0 */ mDoExt_btkAnm btkAnm[2];
    /* 0x100 */ mDoExt_bckAnm bckAnm2;
    /* 0x11C */ mDoExt_bpkAnm bpkAnm2;
    /* 0x134 */ mDoExt_brkAnm brkAnm3;
    /* 0x14C */ mDoExt_btkAnm btkAnm2;
    /* 0x164 */ cXyz field_0x164;
    /* 0x170 */ u8 field_0x170;
    /* 0x171 */ u8 field_0x171;
    /* 0x172 */ u8 field_0x172;
    /* 0x173 */ u8 field_0x173;
    /* 0x174 */ u8 field_0x174;
    /* 0x175 */ u8 field_0x175;
};

STATIC_ASSERT(sizeof(dAttDraw_c) == 0x178);

class dAttDraw_CallBack_c : public mDoExt_McaMorfCallBack1_c {
public:
    /* 80070178 */ virtual void execute(u16, J3DTransformInfo*);
};

struct dist_entry {
    f32 field_0x0;
    f32 field_0x4;
    f32 field_0x8;
    f32 field_0xc;
    f32 field_0x10;
    f32 field_0x14;
    u32 field_0x18;
};  // Size: 0x1C

class dAttention_c {
public:
    dAttention_c() {}
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
    /* 800737E4 */ bool LockonTruth();
    /* 80073838 */ void checkDistance(cXyz*, s16, cXyz*, f32, f32, f32, f32);
    /* 8016E424 */ void LockEdge();
    /* 80182994 */ void GetCheckObjectCount();
    /* 80182AD0 */ void keepLock(int);
    /* 8014B010 */ void getDistTable(int);

    dAttCatch_c& getCatghTarget() { return mCatghTarget; }
    u8 getCatchChgItem() { return mCatghTarget.getChangeItem(); }
    BOOL chkFlag(u32 flag) { return mFlags & flag; }
    s8 Lockon() {
        /* s32 chk = true;
        if (!LockonTruth() && !chkFlag(0x20000000)) {
            chk = false;
        }
        return chk; */

        return !LockonTruth() && !chkFlag(0x20000000);
    }

    static u8 loc_type_tbl[12];
    static u8 act_type_tbl[20];
    static dist_entry dist_table[234];
    static u32 loc_type_num;
    static u32 act_type_num;
    static u32 chk_type_tbl;
    static u32 chk_type_num;

public:
    /* 0x000 */ fopAc_ac_c* mpPlayer;
    /* 0x004 */ u32 mLockTargetID;
    /* 0x008 */ dAttDraw_CallBack_c mpDrawCallback;
    /* 0x00C */ u32 field_0xc;
    /* 0x010 */ u32 field_0x10;
    /* 0x014 */ u8 field_0x14[4];
    /* 0x018 */ JKRSolidHeap* heap;
    /* 0x01C */ cXyz field_0x1c;
    /* 0x028 */ dAttDraw_c draw[2];
    /* 0x318 */ int field_0x318;
    /* 0x31C */ cXyz field_0x31c;
    /* 0x328 */ u8 field_0x328;
    /* 0x329 */ u8 field_0x329;
    /* 0x32A */ u8 field_0x32a;
    /* 0x32B */ u8 field_0x32b;
    /* 0x32C */ u8 field_0x32c;
    /* 0x32D */ u8 field_0x32d;
    /* 0x32E */ u8 field_0x32e;
    /* 0x32F */ u8 field_0x32f;
    /* 0x330 */ u8 field_0x330;
    /* 0x331 */ u8 field_0x331;
    /* 0x332 */ u8 field_0x332;
    /* 0x333 */ u8 field_0x333;
    /* 0x334 */ u32 mFlags;
    /* 0x338 */ dAttList_c mLockOnList[8];
    /* 0x3D8 */ int mLockonCount;
    /* 0x3DC */ int mLockOnOffset;
    /* 0x3E0 */ dAttList_c mActionList[4];
    /* 0x430 */ int mActionCount;
    /* 0x434 */ int mActionOffset;
    /* 0x438 */ dAttList_c field_0x438[4];
    /* 0x488 */ int mCheckObjectCount;
    /* 0x48C */ int field_0x48c;
    /* 0x490 */ dAttHint_c mZHintTarget;
    /* 0x49C */ dAttCatch_c mCatghTarget;
    /* 0x4B4 */ dAttLook_c mLookTarget;
    /* 0x4C4 */ int field_0x4c4;
    /* 0x4C8 */ u8 field_0x4c8;
    /* 0x4C9 */ u8 field_0x4c9;
    /* 0x4CA */ u8 field_0x4ca;
    /* 0x4CB */ u8 field_0x4cb;
    /* 0x4CC */ u8 field_0x4cc;
    /* 0x4CD */ u8 field_0x4cd;
    /* 0x4CE */ u8 field_0x4ce;
    /* 0x4CF */ u8 field_0x4cf;
    /* 0x4D0 */ dAttParam_c mAttParam;
};  // Size: 0x51C

STATIC_ASSERT(sizeof(dAttention_c) == 0x51C);

#endif /* D_D_ATTENTION_H */
