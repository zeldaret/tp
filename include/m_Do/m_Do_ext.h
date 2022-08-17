#ifndef M_DO_M_DO_EXT_H
#define M_DO_M_DO_EXT_H

#include "JSystem/J3DGraphAnimator/J3DAnimation.h"
#include "JSystem/J3DGraphAnimator/J3DModel.h"
#include "JSystem/JKernel/JKRAssertHeap.h"
#include "JSystem/JKernel/JKRExpHeap.h"
#include "JSystem/JKernel/JKRSolidHeap.h"
#include "global.h"
#include "m_Do/m_Do_audio.h"

class mDoExt_baseAnm {
public:
    mDoExt_baseAnm() {}
    /* 8000D320 */ void initPlay(s16, int, f32, s16, s16);
    /* 8000D428 */ void play();

    void setPlaySpeed(f32 speed) { mFrameCtrl.setRate(speed); }
    f32 getFrame() { return mFrameCtrl.getFrame(); }
    f32 getEndFrame() { return mFrameCtrl.getEnd(); }
    void setFrame(f32 frame) { mFrameCtrl.setFrame(frame); }
    bool isStop() {
        bool stopped = true;
        if (!mFrameCtrl.checkState(1) && mFrameCtrl.getRate() != 0.0f) {
            stopped = false;
        }
        return stopped;
    }

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
    mDoExt_btkAnm() { mpAnm = 0; }
    /* 8000D63C */ int init(J3DMaterialTable*, J3DAnmTextureSRTKey*, int, int, f32, s16, s16);
    /* 8000D6D8 */ void entry(J3DMaterialTable*, f32);

    void entry(J3DModelData* data) { entry(data, getFrame()); }
    void entry(J3DModelData* data, f32 frame) { entry(&data->getMaterialTable(), frame); }
    int init(J3DModelData* data, J3DAnmTextureSRTKey* key, int param_2, int param_3, f32 param_4,
             s16 param_5, s16 param_6) {
        return init(&data->getMaterialTable(), key, param_2, param_3, param_4, param_5, param_6);
    }

    int remove(J3DModelData* data) { return data->removeTexMtxAnimator(mpAnm); }

private:
    /* 0x14 */ J3DAnmTextureSRTKey* mpAnm;
};  // Size: 0x18

STATIC_ASSERT(sizeof(mDoExt_btkAnm) == 0x18);

class mDoExt_brkAnm : public mDoExt_baseAnm {
public:
    mDoExt_brkAnm() { mpAnm = 0; }
    /* 8000D70C */ int init(J3DMaterialTable*, J3DAnmTevRegKey*, int, int, f32, s16, s16);
    /* 8000D7A8 */ void entry(J3DMaterialTable*, f32);

    void entry(J3DModelData* data) { entry(data, getFrame()); }
    void entry(J3DModelData* data, f32 frame) { entry(&data->getMaterialTable(), frame); }

    int init(J3DModelData* data, J3DAnmTevRegKey* anmKey, int param_2, int param_3, f32 param_4,
             s16 param_5, s16 param_6) {
        return init(&data->getMaterialTable(), anmKey, param_2, param_3, param_4, param_5, param_6);
    }

    int remove(J3DModelData* data) { return data->removeTevRegAnimator(mpAnm); }

private:
    /* 0x14 */ J3DAnmTevRegKey* mpAnm;
};  // Size: 0x18

STATIC_ASSERT(sizeof(mDoExt_brkAnm) == 0x18);

class mDoExt_bpkAnm : public mDoExt_baseAnm {
public:
    mDoExt_bpkAnm() { mpAnm = 0; }
    /* 8000D47C */ int init(J3DMaterialTable*, J3DAnmColor*, int, int, f32, s16, s16);
    /* 8000D518 */ void entry(J3DMaterialTable*, f32);

    void entry(J3DModelData* data) { entry(data, getFrame()); }
    void entry(J3DModelData* data, f32 frame) { entry(&data->getMaterialTable(), frame); }

    int init(J3DModelData* data, J3DAnmColor* anmColor, int param_2, int param_3, f32 param_4,
             s16 param_5, s16 param_6) {
        return init(&data->getMaterialTable(), anmColor, param_2, param_3, param_4, param_5,
                    param_6);
    }

    int remove(J3DModelData* data) { return data->removeMatColorAnimator(mpAnm); }

private:
    /* 0x14 */ J3DAnmColor* mpAnm;
};  // Size: 0x18

STATIC_ASSERT(sizeof(mDoExt_bpkAnm) == 0x18);

class mDoExt_bckAnm : public mDoExt_baseAnm {
public:
    mDoExt_bckAnm() { mpMtxCalc = NULL; }
    /* 8000D7DC */ int init(J3DAnmTransform* i_bck, int i_play, int i_attr, f32 i_rate,
                            s16 i_startF, s16 i_endF, bool i_modify);
    /* 8000D990 */ void changeBckOnly(J3DAnmTransform*);
    /* 8000D9CC */ void entry(J3DModelData*, f32);
    /* 8000D9E8 */ void entryJoint(J3DModelData*, u16, f32);

    void entry(J3DModelData* data) { entry(data, getFrame()); }
    J3DAnmTransform* getBckAnm() { return mpAnm; }

private:
    /* 0x14 */ J3DAnmTransform* mpAnm;
    /* 0x18 */ J3DMtxCalc* mpMtxCalc;
};  // Size: 0x1C

STATIC_ASSERT(sizeof(mDoExt_bckAnm) == 0x1C);

class mDoExt_btpAnm : public mDoExt_baseAnm {
public:
    mDoExt_btpAnm() { mpAnm = NULL; }
    /* 8000D54C */ int init(J3DMaterialTable*, J3DAnmTexPattern*, int, int, f32, s16, s16);
    /* 8000D5E8 */ void entry(J3DMaterialTable*, s16);

    void entry(J3DModelData* data) { entry(data, getFrame()); }
    void entry(J3DModelData* data, s16 frame) { entry(&data->getMaterialTable(), frame); }

    int init(J3DModelData* data, J3DAnmTexPattern* anmPattern, int param_2, int param_3,
             f32 param_4, s16 param_5, s16 param_6) {
        return init(&data->getMaterialTable(), anmPattern, param_2, param_3, param_4, param_5,
                    param_6);
    }

    int remove(J3DModelData* data) { return data->removeTexNoAnimator(mpAnm); }

private:
    /* 0x14 */ J3DAnmTexPattern* mpAnm;
};

class mDoExt_blkAnm : public mDoExt_baseAnm {
public:
    /* 8000DA08 */ void init(J3DDeformData*, J3DAnmCluster*, int, int, f32, s16, s16);

private:
    /* 0x14 */ J3DAnmCluster* mpAnm;
};

class J3DTransformInfo;

class mDoExt_AnmRatioPack {
public:
    /* 80140DF0 */ ~mDoExt_AnmRatioPack();
    /* 80140E2C */ mDoExt_AnmRatioPack();

    void setRatio(f32 ratio) { mRatio = ratio; }
    J3DAnmTransform* getAnmTransform() { return mAnmTransform; }
    void setAnmTransform(J3DAnmTransform* anm) { mAnmTransform = anm; }

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

class mDoExt_zelAnime : public Z2SoundObjAnime {};

class mDoExt_McaMorfCallBack1_c {
public:
    virtual void execute(u16, J3DTransformInfo*) = 0;
};

class mDoExt_McaMorfCallBack2_c {};

class mDoExt_morf_c {
    // : public J3DMtxCalcNoAnm<J3DMtxCalcCalcTransformMaya, J3DMtxCalcJ3DSysInitMaya>
    // inheritance causing issues, fix later
public:
    /* 8000F950 */ mDoExt_morf_c();
    /* 8000FB7C */ void setMorf(f32);
    /* 8000FBC0 */ void frameUpdate();

    /* 8000FAE8 */ virtual ~mDoExt_morf_c();

    /* 0x04 */ J3DModel* mpModel;
    /* 0x08 */ J3DAnmTransform* mpAnm;
    /* 0x0C */ J3DFrameCtrl mFrameCtrl;
    /* 0x20 */ J3DTransformInfo** mpTransformInfo;
    /* 0x24 */ Quaternion* mpQuat;
    /* 0x28 */ f32 mCurMorf;
    /* 0x2C */ f32 mPrevMorf;
    /* 0x30 */ f32 mMorfStep;
    /* 0x34 */ f32 field_0x34;
};

class mDoExt_McaMorfSO : public mDoExt_morf_c {
public:
    /* 800107D0 */ mDoExt_McaMorfSO(J3DModelData*, mDoExt_McaMorfCallBack1_c*,
                                    mDoExt_McaMorfCallBack2_c*, J3DAnmTransform*, int, f32, int,
                                    int, Z2Creature*, u32, u32);
    /* 800108F0 */ void create(J3DModelData*, mDoExt_McaMorfCallBack1_c*,
                               mDoExt_McaMorfCallBack2_c*, J3DAnmTransform*, int, f32, int, int,
                               Z2Creature*, u32, u32);
    /* 80010E70 */ void setAnm(J3DAnmTransform*, int, f32, f32, f32, f32);
    /* 800110B0 */ void play(u32, s8);
    /* 80011154 */ void updateDL();
    /* 800111C0 */ void entryDL();
    /* 800111EC */ void modelCalc();
    /* 80011250 */ void getTransform(u16, J3DTransformInfo*);
    /* 80011310 */ void stopZelAnime();

    /* 80010888 */ virtual ~mDoExt_McaMorfSO();
    /* 80010B68 */ virtual void calc();

    J3DModel* getModel() { return mpModel; }
    void offMorfNone() { mMorfNone = false; }
    void onMorfNone() { mMorfNone = true; }

private:
    /* 0x38 */ mDoExt_McaMorfCallBack1_c* mpCallback1;
    /* 0x3C */ mDoExt_McaMorfCallBack2_c* mpCallback2;
    /* 0x40 */ cXyz mTranslateScale;
    /* 0x4C */ Z2Creature* mpSound;
    /* 0x50 */ void* mpBas;
    /* 0x54 */ bool mTranslate;
    /* 0x55 */ bool mMorfNone;
};

class mDoExt_McaMorf : public mDoExt_morf_c {
public:
    /* 8000FC4C */ mDoExt_McaMorf(J3DModelData*, mDoExt_McaMorfCallBack1_c*,
                                  mDoExt_McaMorfCallBack2_c*, J3DAnmTransform*, int, f32, int, int,
                                  int, void*, u32, u32);
    /* 8000FD94 */ void create(J3DModelData*, mDoExt_McaMorfCallBack1_c*,
                               mDoExt_McaMorfCallBack2_c*, J3DAnmTransform*, int, f32, int, int,
                               int, void*, u32, u32);
    /* 8001037C */ void setAnm(J3DAnmTransform*, int, f32, f32, f32, f32, void*);
    /* 800105C8 */ void play(Vec*, u32, s8);
    /* 80010680 */ void entryDL();
    /* 800106AC */ void modelCalc();
    /* 80010710 */ void getTransform(u16, J3DTransformInfo*);

    /* 8000FD10 */ virtual ~mDoExt_McaMorf();
    /* 80010074 */ virtual void calc();

private:
    /* 0x38 */ mDoExt_McaMorfCallBack1_c* mpCallback1;
    /* 0x3C */ mDoExt_McaMorfCallBack2_c* mpCallback2;
    /* 0x40 */ cXyz mTranslateScale;
    /* 0x4C */ mDoExt_zelAnime* mpSound;
    /* 0x50 */ bool field_0x50;
    /* 0x51 */ bool field_0x51;
    /* 0x52 */ bool field_0x52;
};

class mDoExt_McaMorf2 : public mDoExt_morf_c {
public:
    /* 80011348 */ mDoExt_McaMorf2(J3DModelData*, mDoExt_McaMorfCallBack1_c*,
                                   mDoExt_McaMorfCallBack2_c*, J3DAnmTransform*, J3DAnmTransform*,
                                   int, f32, int, int, Z2Creature*, u32, u32);
    /* 80011464 */ void create(J3DModelData*, mDoExt_McaMorfCallBack1_c*,
                               mDoExt_McaMorfCallBack2_c*, J3DAnmTransform*, J3DAnmTransform*, int,
                               f32, int, int, Z2Creature*, u32, u32);
    /* 800116B4 */ void ERROR_EXIT();
    /* 80011D70 */ void setAnm(J3DAnmTransform*, J3DAnmTransform*, f32, int, f32, f32, f32, f32);
    /* 80011FCC */ void setAnmRate(f32);
    /* 800120A0 */ void play(u32, s8);
    /* 80012144 */ void entryDL();
    /* 80012170 */ void modelCalc();
    /* 800121E8 */ void stopZelAnime();

    /* 800113FC */ virtual ~mDoExt_McaMorf2();
    /* 800116F4 */ virtual void calc();

private:
    /* 0x38 */ mDoExt_McaMorfCallBack1_c* mpCallback1;
    /* 0x3C */ mDoExt_McaMorfCallBack2_c* mpCallback2;
    /* 0x40 */ J3DAnmTransform* field_0x40;
    /* 0x44 */ f32 field_0x44;
    /* 0x48 */ Z2Creature* mpSound;
    /* 0x4C */ void* mpBas;
};

class mDoExt_MtxCalcOldFrame {
public:
    /* 8000F848 */ void initOldFrameMorf(f32, u16, u16);
    /* 8000F8CC */ void decOldFrameMorfCounter();

    f32 getOldFrameRate() { return mOldFrameRate; }

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

struct mDoExt_MtxCalcAnmBlendTblOld {
    /* 8000F4B0 */ void calc();
    /* 80014EB0 */ ~mDoExt_MtxCalcAnmBlendTblOld();
};

struct mDoExt_MtxCalcAnmBlendTbl {
    /* 8000F26C */ void calc();
    /* 800D00BC */ void getAnm(int);
    /* 80014F3C */ ~mDoExt_MtxCalcAnmBlendTbl();
};

struct mDoExt_3Dline_c {
    /* 800123D0 */ void init(u16, int, int);
    /* 800126BC */ mDoExt_3Dline_c();
};

struct mDoExt_3DlineMat_c {};

class mDoExt_3DlineMatSortPacket : public J3DPacket {
public:
    mDoExt_3DlineMatSortPacket();

    /* 80014738 */ void setMat(mDoExt_3DlineMat_c*);
    virtual void draw();
    virtual ~mDoExt_3DlineMatSortPacket();

private:
    /* 0x10 */ mDoExt_3DlineMat_c* mp3DlineMat;
};

class dKy_tevstr_c;
struct mDoExt_3DlineMat1_c {
    /* 80013360 */ void init(u16, u16, ResTIMG*, int);
    /* 800134F8 */ void setMaterial();
    /* 800135D0 */ void draw();
    /* 80013FB0 */ void update(int, _GXColor&, dKy_tevstr_c*);
    /* 8001373C */ void update(int, f32, _GXColor&, u16, dKy_tevstr_c*);
    /* 80014E7C */ bool getMaterialID();
};

struct mDoExt_3DlineMat0_c {
    /* 800125E0 */ void init(u16, u16, int);
    /* 800126C0 */ void setMaterial();
    /* 80012774 */ void draw();
    /* 80012874 */ void update(int, f32, _GXColor&, u16, dKy_tevstr_c*);
    /* 80012E3C */ void update(int, _GXColor&, dKy_tevstr_c*);
    /* 80014E84 */ bool getMaterialID();
};

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
JKRExpHeap* mDoExt_getDbPrintHeap();
JKRExpHeap* mDoExt_createDbPrintHeap(u32 param_0, JKRHeap* param_1);
JKRAssertHeap* mDoExt_createAssertHeap(JKRHeap* param_0);
JKRExpHeap* mDoExt_createCommandHeap(u32 param_0, JKRHeap* param_1);
JKRExpHeap* mDoExt_createArchiveHeap(u32 param_0, JKRHeap* param_1);
JKRExpHeap* mDoExt_createJ2dHeap(u32 param_0, JKRHeap* param_1);
JKRExpHeap* mDoExt_createZeldaHeap(u32 param_0, JKRHeap* param_1);
JKRExpHeap* mDoExt_createGameHeap(u32 param_0, JKRHeap* param_1);
JKRSolidHeap* mDoExt_createSolidHeapToCurrent(JKRHeap**, u32, JKRHeap*, u32);
JKRSolidHeap* mDoExt_createSolidHeapToCurrent(u32, JKRHeap*, u32);
JKRSolidHeap* mDoExt_createSolidHeapFromGameToCurrent(u32, u32);
JKRSolidHeap* mDoExt_createSolidHeapFromGameToCurrent(JKRHeap**, u32, u32);
u32 mDoExt_adjustSolidHeapToSystem(JKRSolidHeap* pHeap);
JKRHeap* mDoExt_getCurrentHeap();
void mDoExt_removeMesgFont();
void mDoExt_modelUpdateDL(J3DModel*);
J3DModel* mDoExt_J3DModel__create(J3DModelData*, u32, u32);
void mDoExt_setAraCacheSize(u32 param_0);

struct JUTFont;
JUTFont* mDoExt_getMesgFont();
JUTFont* mDoExt_getSubFont();
JUTFont* mDoExt_getRubyFont();
void mDoExt_removeSubFont();

extern JKRExpHeap* zeldaHeap;
extern JKRExpHeap* gameHeap;
extern JKRExpHeap* archiveHeap;
extern JKRExpHeap* commandHeap;

#endif /* M_DO_M_DO_EXT_H */
