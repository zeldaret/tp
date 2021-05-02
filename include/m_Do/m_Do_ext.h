#ifndef M_DO_M_DO_EXT_H
#define M_DO_M_DO_EXT_H

#include "JSystem/J3DGraphAnimator/J3DAnimation.h"
#include "dolphin/types.h"

struct J3DModelData {};

struct J3DModel {
    /* 80327100 */ void initialize();
    /* 80327184 */ void entryModelData(J3DModelData*, u32, u32);
    /* 803275FC */ void newDifferedDisplayList(u32);
    /* 8032767C */ void lock();
    /* 803276B4 */ void unlock();
    /* 803279A0 */ void diff();
};

struct J3DMaterialTable;
struct J3DAnmTextureSRTKey {
    /* 8032B0C0 */ void searchUpdateMaterialID(J3DMaterialTable*);
};

struct J3DAnmTexPattern {
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

struct J3DAnmTransform {};

#pragma pack(push, 1)
class mDoExt_baseAnm {
public:
    /* 8000D320 */ void initPlay(s16, int, f32, s16, s16);
    /* 8000D428 */ void play();

private:
    J3DFrameCtrl frame_control;
};
#pragma pack(pop)

#pragma pack(push, 1)
class mDoExt_btkAnm {
public:
    mDoExt_btkAnm(void);
    /* 8000D63C */ void init(J3DMaterialTable*, J3DAnmTextureSRTKey*, int, int, f32, s16, s16);
    /* 8000D6D8 */ void entry(J3DMaterialTable*, f32);

private:
    mDoExt_baseAnm base_anm;
    u32 field_0x14;
};
#pragma pack(pop)

#pragma pack(push, 1)
class mDoExt_brkAnm {
public:
    mDoExt_brkAnm(void);
    /* 8000D70C */ void init(J3DMaterialTable*, J3DAnmTevRegKey*, int, int, f32, s16, s16);
    /* 8000D7A8 */ void entry(J3DMaterialTable*, f32);

private:
    mDoExt_baseAnm mDoExt_baseAnm;
    u32 field_0x14;
};
#pragma pack(pop)

#pragma pack(push, 1)
class mDoExt_bpkAnm {
public:
    mDoExt_bpkAnm(void);
    /* 8000D47C */ void init(J3DMaterialTable*, J3DAnmColor*, int, int, f32, s16, s16);
    /* 8000D518 */ void entry(J3DMaterialTable*, f32);

private:
    mDoExt_baseAnm mDoExt_baseAnm;
    u32 field_0x14;
};
#pragma pack(pop)

#pragma pack(push, 1)
class mDoExt_bckAnm {
public:
    mDoExt_bckAnm(void);
    /* 8000D7DC */ void init(J3DAnmTransform*, int, int, f32, s16, s16, bool);
    /* 8000D990 */ void changeBckOnly(J3DAnmTransform*);
    /* 8000D9CC */ void entry(J3DModelData*, f32);
    /* 8000D9E8 */ void entryJoint(J3DModelData*, u16, f32);

private:
    mDoExt_baseAnm base_anm;
    u8 field_0x14[4];
    u32 field_0x18;
};  // Size = 0x1C
#pragma pack(pop)

#pragma pack(push, 1)
class mDoExt_McaMorfCallBack1_c {
public:
private:
    void* vtable;
};
#pragma pack(pop)

#endif /* M_DO_M_DO_EXT_H */
