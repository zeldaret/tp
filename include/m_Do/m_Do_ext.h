#ifndef M_DO_M_DO_EXT_H
#define M_DO_M_DO_EXT_H

#include "JSystem/J3DGraphAnimator/J3DAnimation.h"
#include "JSystem/J3DGraphAnimator/J3DModel.h"
#include "JSystem/JKernel/JKRExpHeap.h"
#include "JSystem/JKernel/JKRSolidHeap.h"
#include "global.h"

struct J3DMaterialTable;
struct J3DAnmTextureSRTKey {
    /* 80329E5C */ J3DAnmTextureSRTKey();
    /* 8032B0C0 */ void searchUpdateMaterialID(J3DMaterialTable*);
};

struct J3DAnmTexPattern {
    /* 8032AED8 */ J3DAnmTexPattern();
    /* 8032AF50 */ void getTexNo(u16, u16*) const;
    /* 8032B004 */ void searchUpdateMaterialID(J3DMaterialTable*);
};

struct J3DAnmTevRegKey {
    /* 8032B780 */ void searchUpdateMaterialID(J3DMaterialTable*);
};

struct J3DAnmColor {
    /* 8032A8A4 */ void searchUpdateMaterialID(J3DMaterialTable*);
};

struct J3DMaterialTable {
    /* 8032FAF4 */ void entryMatColorAnimator(J3DAnmColor*);
    /* 8032FBC8 */ void entryTexNoAnimator(J3DAnmTexPattern*);
    /* 8032FCC4 */ void entryTexMtxAnimator(J3DAnmTextureSRTKey*);
    /* 8032FE70 */ void entryTevRegAnimator(J3DAnmTevRegKey*);
};

struct J3DAnmTransform {
    /* 8003B93C */ ~J3DAnmTransform();
    /* 8003C77C */ bool getKind() const;
    /* 80328E40 */ J3DAnmTransform(s16, f32*, s16*, f32*);
};

class mDoExt_baseAnm {
public:
    mDoExt_baseAnm() {}
    /* 8000D320 */ void initPlay(s16, int, f32, s16, s16);
    /* 8000D428 */ void play();

private:
    J3DFrameCtrl frame_control;
};

class mDoExt_btkAnm {
public:
    mDoExt_btkAnm(void) {
        field_0x14 = 0;
    }
    /* 8000D63C */ void init(J3DMaterialTable*, J3DAnmTextureSRTKey*, int, int, f32, s16, s16);
    /* 8000D6D8 */ void entry(J3DMaterialTable*, f32);

private:
    mDoExt_baseAnm base_anm;
    u32 field_0x14;
};

STATIC_ASSERT(sizeof(mDoExt_btkAnm) == 0x18);

class mDoExt_brkAnm {
public:
    mDoExt_brkAnm(void) {
        field_0x14 = 0;
    }
    /* 8000D70C */ void init(J3DMaterialTable*, J3DAnmTevRegKey*, int, int, f32, s16, s16);
    /* 8000D7A8 */ void entry(J3DMaterialTable*, f32);

private:
    mDoExt_baseAnm mDoExt_baseAnm;
    u32 field_0x14;
};

STATIC_ASSERT(sizeof(mDoExt_brkAnm) == 0x18);

class mDoExt_bpkAnm {
public:
    mDoExt_bpkAnm(void) {
        field_0x14 = 0;
    }
    /* 8000D47C */ void init(J3DMaterialTable*, J3DAnmColor*, int, int, f32, s16, s16);
    /* 8000D518 */ void entry(J3DMaterialTable*, f32);

private:
    mDoExt_baseAnm mDoExt_baseAnm;
    u32 field_0x14;
};

STATIC_ASSERT(sizeof(mDoExt_bpkAnm) == 0x18);

class mDoExt_bckAnm {
public:
    mDoExt_bckAnm(void) {
        field_0x18 = 0;
    }
    /* 8000D7DC */ void init(J3DAnmTransform*, int, int, f32, s16, s16, bool);
    /* 8000D990 */ void changeBckOnly(J3DAnmTransform*);
    /* 8000D9CC */ void entry(J3DModelData*, f32);
    /* 8000D9E8 */ void entryJoint(J3DModelData*, u16, f32);

private:
    mDoExt_baseAnm base_anm;
    u8 field_0x14[4];
    u32 field_0x18;
}; // Size = 0x1C

STATIC_ASSERT(sizeof(mDoExt_bckAnm) == 0x1C);

class J3DTransformInfo;

class mDoExt_McaMorfCallBack1_c {
public:
private:
    /*void* vtable;*/
    virtual void execute(u16, J3DTransformInfo*) = 0;
};

class mDoExt_AnmRatioPack {
public:
    /* 80140DF0 */ ~mDoExt_AnmRatioPack();
    /* 80140E2C */ mDoExt_AnmRatioPack();

private:
    /* 0x0 */ float mRatio;
    /* 0x4 */ J3DAnmTransform* mAnmTransform;
};  // Size = 0x8

JKRSolidHeap* mDoExt_createSolidHeapFromGame(u32, u32);
void mDoExt_destroySolidHeap(JKRSolidHeap*);
u32 mDoExt_adjustSolidHeap(JKRSolidHeap*);
void mDoExt_restoreCurrentHeap();
JKRHeap* mDoExt_getGameHeap();
void mDoExt_destroySolidHeap(JKRSolidHeap*);
JKRHeap* mDoExt_setCurrentHeap(JKRHeap*);

#endif /* M_DO_M_DO_EXT_H */
