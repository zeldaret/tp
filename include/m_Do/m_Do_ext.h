#ifndef M_DO_M_DO_EXT_H
#define M_DO_M_DO_EXT_H

#include "JSystem/J3DGraphAnimator/J3DAnimation.h"
#include "JSystem/J3DGraphAnimator/J3DModel.h"
#include "JSystem/JKernel/JKRAssertHeap.h"
#include "JSystem/JKernel/JKRExpHeap.h"
#include "JSystem/JKernel/JKRSolidHeap.h"
#include "global.h"

class mDoExt_baseAnm {
public:
    mDoExt_baseAnm() {}
    /* 8000D320 */ void initPlay(s16, int, f32, s16, s16);
    /* 8000D428 */ void play();

    void setPlaySpeed(f32 speed) { mFrameCtrl.setRate(speed); }
    f32 getFrame() { return mFrameCtrl.getFrame(); }

private:
    /* 0x0 */ J3DFrameCtrl mFrameCtrl;
};  // Size: 0x14

class mDoExt_transAnmBas : public J3DAnmTransformKey {
public:
    mDoExt_transAnmBas(void* bas) { mBas = bas; }
    virtual ~mDoExt_transAnmBas();

private:
    /* 0x28 */ void* mBas;
};

class mDoExt_btkAnm : public mDoExt_baseAnm {
public:
    mDoExt_btkAnm(void) { mBtkAnm = 0; }
    /* 8000D63C */ void init(J3DMaterialTable*, J3DAnmTextureSRTKey*, int, int, f32, s16, s16);
    /* 8000D6D8 */ void entry(J3DMaterialTable*, f32);

    void entry(J3DModelData* data) { entry(data, getFrame()); }
    void entry(J3DModelData* data, f32 frame) { entry(&data->getMaterialTable(), frame); }
    void init(J3DModelData* data, J3DAnmTextureSRTKey* key, int param_2, int param_3, f32 param_4,
              s16 param_5, s16 param_6) {
        init(&data->getMaterialTable(), key, param_2, param_3, param_4, param_5, param_6);
    }

private:
    /* 0x14 */ u32 mBtkAnm;
};  // Size: 0x18

STATIC_ASSERT(sizeof(mDoExt_btkAnm) == 0x18);

class mDoExt_brkAnm : public mDoExt_baseAnm {
public:
    mDoExt_brkAnm(void) { mBrkAnm = 0; }
    /* 8000D70C */ void init(J3DMaterialTable*, J3DAnmTevRegKey*, int, int, f32, s16, s16);
    /* 8000D7A8 */ void entry(J3DMaterialTable*, f32);

private:
    /* 0x14 */ u32 mBrkAnm;
};  // Size: 0x18

STATIC_ASSERT(sizeof(mDoExt_brkAnm) == 0x18);

class mDoExt_bpkAnm : public mDoExt_baseAnm {
public:
    mDoExt_bpkAnm(void) { mBpkAnm = 0; }
    /* 8000D47C */ void init(J3DMaterialTable*, J3DAnmColor*, int, int, f32, s16, s16);
    /* 8000D518 */ void entry(J3DMaterialTable*, f32);

private:
    /* 0x14 */ u32 mBpkAnm;
};  // Size: 0x18

STATIC_ASSERT(sizeof(mDoExt_bpkAnm) == 0x18);

class mDoExt_bckAnm : public mDoExt_baseAnm {
public:
    mDoExt_bckAnm(void) { mAnm = 0; }
    /* 8000D7DC */ void init(J3DAnmTransform*, int, int, f32, s16, s16, bool);
    /* 8000D990 */ void changeBckOnly(J3DAnmTransform*);
    /* 8000D9CC */ void entry(J3DModelData*, f32);
    /* 8000D9E8 */ void entryJoint(J3DModelData*, u16, f32);

private:
    /* 0x14 */ u32 mBckAnm;
    /* 0x18 */ u32 mAnm;
};  // Size: 0x1C

STATIC_ASSERT(sizeof(mDoExt_bckAnm) == 0x1C);

class J3DTransformInfo;

class mDoExt_McaMorfCallBack1_c {
public:
    virtual void execute(u16, J3DTransformInfo*) = 0;
};

class mDoExt_AnmRatioPack {
public:
    /* 80140DF0 */ ~mDoExt_AnmRatioPack();
    /* 80140E2C */ mDoExt_AnmRatioPack();

    void setRatio(f32 ratio) { mRatio = ratio; }
    J3DAnmTransform* getAnmTransform() { return mAnmTransform; }

private:
    /* 0x0 */ f32 mRatio;
    /* 0x4 */ J3DAnmTransform* mAnmTransform;
};  // Size: 0x8

class mDoExt_invJntPacket : public J3DPacket {
public:
    /* 8000E654 */ mDoExt_invJntPacket();

    /* 80012220 */ virtual void draw();
    /* 8000E5F8 */ virtual ~mDoExt_invJntPacket();

private:
    /* 0x10 */ J3DModel* field_0x10;
    /* 0x14 */ u16 field_0x14;
    /* 0x16 */ u8 field_0x16;
};  // Size: 0x18

class mDoExt_invisibleModel {
public:
    /* 8000E53C */ void create(J3DModel*, u8);
    /* 8000E6C8 */ void entryJoint(cXyz*);
    /* 8000E7C0 */ void entryDL(cXyz*);

    /* 0x0 */ J3DModel* mModel;
    /* 0x4 */ mDoExt_invJntPacket* field_0x4;
};

class mDoExt_morf_c
    : public J3DMtxCalcNoAnm<J3DMtxCalcCalcTransformMaya, J3DMtxCalcJ3DSysInitMaya> {
public:
    /* 8000F950 */ mDoExt_morf_c();
    /* 8000FB7C */ void setMorf(f32);
    /* 8000FBC0 */ void frameUpdate();

    /* 8000FAE8 */ virtual ~mDoExt_morf_c();

private:
    /* 0x04 */ u32 field_0x4;
    /* 0x08 */ u32 mAnm;
    /* 0x0C */ J3DFrameCtrl mFrameCtrl;
    /* 0x20 */ u32 field_0x20;
    /* 0x24 */ u32 field_0x24;
};

class mDoExt_MtxCalcOldFrame {
public:
    /* 8000F848 */ void initOldFrameMorf(f32, u16, u16);
    /* 8000F8CC */ void decOldFrameMorfCounter();

private:
    /* 0x00 */ bool mOldFrameFlg;
    /* 0x04 */ f32 mOldFrameMorfCounter;
    /* 0x08 */ f32 field_0x8;
    /* 0x0C */ f32 mOldFrameRate;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ u16 mOldFrameStartJoint;
    /* 0x1A */ u16 mOldFrameEndJoint;
    /* 0x1C */ J3DTransformInfo* mOldFrameTransInfo;
    /* 0x20 */ Quaternion* mOldFrameQuaternion;
};  // Size: 0x24

JKRSolidHeap* mDoExt_createSolidHeapFromGame(u32, u32);
void mDoExt_destroySolidHeap(JKRSolidHeap*);
u32 mDoExt_adjustSolidHeap(JKRSolidHeap*);
void mDoExt_restoreCurrentHeap();
JKRExpHeap* mDoExt_getGameHeap();
void mDoExt_destroySolidHeap(JKRSolidHeap*);
JKRHeap* mDoExt_setCurrentHeap(JKRHeap*);
JKRExpHeap* mDoExt_getArchiveHeap();
JKRExpHeap* mDoExt_getArchiveHeapPtr();
void mDoExt_destroyExpHeap(JKRExpHeap*);
JKRAssertHeap* mDoExt_getAssertHeap();
JKRExpHeap* mDoExt_getCommandHeap();
JKRExpHeap* mDoExt_getZeldaHeap();
JKRExpHeap* mDoExt_getJ2dHeap();
JKRExpHeap* mDoExt_getHostIOHeap();
JKRSolidHeap* mDoExt_createSolidHeapToCurrent(JKRHeap**, u32, JKRHeap*, u32);
JKRSolidHeap* mDoExt_createSolidHeapToCurrent(u32, JKRHeap*, u32);
JKRSolidHeap* mDoExt_createSolidHeapFromGameToCurrent(u32, u32);
JKRSolidHeap* mDoExt_createSolidHeapFromGameToCurrent(JKRHeap**, u32, u32);
u32 mDoExt_adjustSolidHeapToSystem(JKRSolidHeap* pHeap);
JKRHeap* mDoExt_getCurrentHeap();
void mDoExt_removeMesgFont();
void mDoExt_modelUpdateDL(J3DModel*);
J3DModel* mDoExt_J3DModel__create(J3DModelData*, u32, u32);

struct JUTFont;
JUTFont* mDoExt_getMesgFont();

extern JKRExpHeap* zeldaHeap;
extern JKRExpHeap* gameHeap;
extern JKRExpHeap* archiveHeap;

#endif /* M_DO_M_DO_EXT_H */
