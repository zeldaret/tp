#ifndef M_DO_M_DO_EXT_H
#define M_DO_M_DO_EXT_H

#include "JSystem/J3DGraphAnimator/J3DAnimation.h"
#include "JSystem/J3DGraphAnimator/J3DModel.h"
#include "SSystem/SComponent/c_sxyz.h"
#include "SSystem/SComponent/c_xyz.h"
#include "Z2AudioLib/Z2SoundObject.h"
#include "dolphin/gx/GXStruct.h"
#include "global.h"
#include "m_Do/m_Do_audio.h"
#include "m_Do/m_Do_mtx.h"

class JKRArchive;
class JKRAssertHeap;
class JKRExpHeap;
class JKRHeap;
class JKRSolidHeap;
struct ResTIMG;
class Z2Creature;

class mDoExt_baseAnm {
public:
    mDoExt_baseAnm() {}
    /* 8000D320 */ int initPlay(s16 i_frameMax, int i_attribute, f32 i_rate, s16 i_startF,
                                s16 i_endF);
    /* 8000D428 */ int play();

    J3DFrameCtrl* getFrameCtrl() { return &mFrameCtrl; }
    f32 getPlaySpeed() { return mFrameCtrl.getRate(); }
    void setPlaySpeed(f32 speed) { mFrameCtrl.setRate(speed); }
    f32 getFrame() { return mFrameCtrl.getFrame(); }
    f32 getEndFrame() { return mFrameCtrl.getEnd(); }
    void setFrame(f32 frame) { mFrameCtrl.setFrame(frame); }
    void setPlayMode(int i_mode) { mFrameCtrl.setAttribute(i_mode); }
    void setLoopFrame(f32 i_frame) { mFrameCtrl.setLoop(i_frame); }
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

    void* getBas() { return mBas; }

private:
    /* 0x28 */ void* mBas;
};

class mDoExt_btkAnm : public mDoExt_baseAnm {
public:
    mDoExt_btkAnm() { mpAnm = 0; }
    /* 8000D63C */ int init(J3DMaterialTable* i_matTable, J3DAnmTextureSRTKey* i_btk, int i_anmPlay,
                            int i_attribute, f32 i_rate, s16 i_start, s16 param_6);
    /* 8000D6D8 */ void entry(J3DMaterialTable* i_matTable, f32 i_frame);

    void entry(J3DModelData* i_modelData) { entry(i_modelData, getFrame()); }
    void entry(J3DModelData* i_modelData, f32 i_frame) {
        entry(&i_modelData->getMaterialTable(), i_frame);
    }
    int init(J3DModelData* i_modelData, J3DAnmTextureSRTKey* i_btk, int i_anmPlay, int i_attribute,
             f32 i_rate, s16 i_start, s16 param_6) {
        return init(&i_modelData->getMaterialTable(), i_btk, i_anmPlay, i_attribute, i_rate,
                    i_start, param_6);
    }

    int remove(J3DModelData* i_modelData) { return i_modelData->removeTexMtxAnimator(mpAnm); }
    void entryFrame() { entryFrame(getFrame()); }
    void entryFrame(f32 frame) { setFrame(frame); }

    J3DAnmTextureSRTKey* getBtkAnm() const { return mpAnm; }

private:
    /* 0x14 */ J3DAnmTextureSRTKey* mpAnm;
};  // Size: 0x18

STATIC_ASSERT(sizeof(mDoExt_btkAnm) == 0x18);

class mDoExt_brkAnm : public mDoExt_baseAnm {
public:
    mDoExt_brkAnm() { mpAnm = 0; }
    /* 8000D70C */ int init(J3DMaterialTable* i_matTable, J3DAnmTevRegKey* i_brk, int i_anmPlay,
                            int i_attribute, f32 i_rate, s16 i_start, s16 param_6);
    /* 8000D7A8 */ void entry(J3DMaterialTable* i_matTable, f32 i_frame);

    void entry(J3DModelData* i_modelData) { entry(i_modelData, getFrame()); }
    void entry(J3DModelData* i_modelData, f32 i_frame) {
        entry(&i_modelData->getMaterialTable(), i_frame);
    }

    int init(J3DModelData* i_modelData, J3DAnmTevRegKey* i_brk, int i_anmPlay, int i_attribute,
             f32 i_rate, s16 i_start, s16 param_6) {
        return init(&i_modelData->getMaterialTable(), i_brk, i_anmPlay, i_attribute, i_rate,
                    i_start, param_6);
    }

    int remove(J3DModelData* i_modelData) { return i_modelData->removeTevRegAnimator(mpAnm); }
    void entryFrame() { entryFrame(getFrame()); }
    void entryFrame(f32 frame) { setFrame(frame); }

    J3DAnmTevRegKey* getBrkAnm() const { return mpAnm; }

private:
    /* 0x14 */ J3DAnmTevRegKey* mpAnm;
};  // Size: 0x18

STATIC_ASSERT(sizeof(mDoExt_brkAnm) == 0x18);

class mDoExt_bpkAnm : public mDoExt_baseAnm {
public:
    mDoExt_bpkAnm() { mpAnm = 0; }
    /* 8000D47C */ int init(J3DMaterialTable* i_matTable, J3DAnmColor* i_bpk, int i_anmPlay,
                            int i_attribute, f32 i_rate, s16 i_start, s16 param_6);
    /* 8000D518 */ void entry(J3DMaterialTable* i_matTable, f32 i_frame);

    void entry(J3DModelData* i_modelData) { entry(i_modelData, getFrame()); }
    void entry(J3DModelData* i_modelData, f32 i_frame) {
        entry(&i_modelData->getMaterialTable(), i_frame);
    }

    int init(J3DModelData* i_modelData, J3DAnmColor* i_bpk, int i_anmPlay, int i_attribute,
             f32 i_rate, s16 i_start, s16 param_6) {
        return init(&i_modelData->getMaterialTable(), i_bpk, i_anmPlay, i_attribute, i_rate,
                    i_start, param_6);
    }

    int remove(J3DModelData* i_modelData) { return i_modelData->removeMatColorAnimator(mpAnm); }

private:
    /* 0x14 */ J3DAnmColor* mpAnm;
};  // Size: 0x18

STATIC_ASSERT(sizeof(mDoExt_bpkAnm) == 0x18);

class mDoExt_bckAnm : public mDoExt_baseAnm {
public:
    mDoExt_bckAnm() { mpMtxCalc = NULL; }
    /* 8000D7DC */ int init(J3DAnmTransform* i_bck, int i_play, int i_attr, f32 i_rate,
                            s16 i_startF, s16 i_endF, bool i_modify);
    /* 8000D990 */ void changeBckOnly(J3DAnmTransform* i_bck);
    /* 8000D9CC */ void entry(J3DModelData* i_modelData, f32 i_frame);
    /* 8000D9E8 */ void entryJoint(J3DModelData* i_modelData, u16 i_jntNo, f32 i_frame);

    void entry(J3DModelData* i_modelData) { entry(i_modelData, getFrame()); }
    J3DAnmTransform* getBckAnm() { return mAnm; }
    void removeJoint(J3DModelData* i_modelData, u16 i_idx) {
        J3DJoint* mpJnt = i_modelData->getJointNodePointer(i_idx);
        mpJnt->setMtxCalc(0);
    }

private:
    /* 0x14 */ J3DAnmTransform* mAnm;
    /* 0x18 */ J3DMtxCalc* mpMtxCalc;
};  // Size: 0x1C

STATIC_ASSERT(sizeof(mDoExt_bckAnm) == 0x1C);

class mDoExt_btpAnm : public mDoExt_baseAnm {
public:
    mDoExt_btpAnm() { mpAnm = NULL; }
    /* 8000D54C */ int init(J3DMaterialTable* i_matTable, J3DAnmTexPattern* i_btk, int i_anmPlay,
                            int i_attribute, f32 i_rate, s16 i_start, s16 param_6);
    /* 8000D5E8 */ void entry(J3DMaterialTable* i_matTable, s16 i_frame);

    void entry(J3DModelData* i_modelData) { entry(i_modelData, getFrame()); }
    void entry(J3DModelData* i_modelData, s16 i_frame) {
        entry(&i_modelData->getMaterialTable(), i_frame);
    }

    int init(J3DModelData* i_modelData, J3DAnmTexPattern* i_btk, int i_anmPlay, int i_attribute,
             f32 i_rate, s16 i_start, s16 param_6) {
        return init(&i_modelData->getMaterialTable(), i_btk, i_anmPlay, i_attribute, i_rate,
                    i_start, param_6);
    }

    int remove(J3DModelData* i_modelData) { return i_modelData->removeTexNoAnimator(mpAnm); }

private:
    /* 0x14 */ J3DAnmTexPattern* mpAnm;
};

class mDoExt_blkAnm : public mDoExt_baseAnm {
public:
    /* 8000DA08 */ int init(J3DDeformData* i_deformData, J3DAnmCluster* i_blk, int i_anmPlay,
                            int i_attribute, f32 i_rate, s16 i_start, s16 param_6);

    J3DAnmCluster* getBlkAnm() { return mpAnm; }

private:
    /* 0x14 */ J3DAnmCluster* mpAnm;
};

class J3DTransformInfo;

class mDoExt_AnmRatioPack {
public:
    /* 80140DF0 */ ~mDoExt_AnmRatioPack();
    /* 80140E2C */ mDoExt_AnmRatioPack();

    void setRatio(f32 ratio) { mRatio = ratio; }
    f32 getRatio() { return mRatio; }
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

    void setJoint(J3DModel* i_model, u16 param_1, u8 param_2) {
        field_0x10 = i_model;
        field_0x14 = param_1;
        field_0x16 = param_2;
    }

private:
    /* 0x10 */ J3DModel* field_0x10;
    /* 0x14 */ u16 field_0x14;
    /* 0x16 */ u8 field_0x16;
};  // Size: 0x18

class mDoExt_invisibleModel {
public:
    /* 8000E53C */ int create(J3DModel* i_model, u8 param_1);
    /* 8000E6C8 */ void entryJoint(cXyz*);
    /* 8000E7C0 */ void entryDL(cXyz*);

    /* 0x0 */ J3DModel* mModel;
    /* 0x4 */ mDoExt_invJntPacket* mpPackets;
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
    /* 8000FB7C */ void setMorf(f32 i_morf);
    /* 8000FBC0 */ void frameUpdate();

    /* 8000FAE8 */ virtual ~mDoExt_morf_c();

    void setPlaySpeed(f32 speed) { mFrameCtrl.setRate(speed); }
    void setFrame(f32 frame) { mFrameCtrl.setFrame((s16)frame); }
    f32 getPlaySpeed() { return mFrameCtrl.getRate(); }
    f32 getFrame() { return mFrameCtrl.getFrame(); }
    u8 getPlayMode() { return mFrameCtrl.getAttribute(); }
    bool isLoop() { return mFrameCtrl.checkState(2); }
    f32 getEndFrame() { return mFrameCtrl.getEnd(); }
    BOOL checkFrame(f32 frame) { return mFrameCtrl.checkPass(frame); }
    J3DAnmTransform* getAnm() { return mpAnm; }
    void changeAnm(J3DAnmTransform* anm) { mpAnm = anm; }

    bool isStop() {
        bool stopped = true;
        if (!mFrameCtrl.checkState(1) && mFrameCtrl.getRate() != 0.0f) {
            stopped = false;
        }
        return stopped;
    }

    /* 0x04 */ J3DModel* mpModel;
    /* 0x08 */ J3DAnmTransform* mpAnm;
    /* 0x0C */ J3DFrameCtrl mFrameCtrl;
    /* 0x20 */ J3DTransformInfo* mpTransformInfo;
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
    /* 800108F0 */ int create(J3DModelData*, mDoExt_McaMorfCallBack1_c*, mDoExt_McaMorfCallBack2_c*,
                              J3DAnmTransform*, int, f32, int, int, Z2Creature*, u32, u32);
    /* 80010E70 */ void setAnm(J3DAnmTransform* i_anm, int i_attr, f32 i_morf, f32 i_rate, f32 i_start, f32 i_end);
    /* 800110B0 */ int play(u32, s8);
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

    J3DModel* getModel() { return mpModel; }

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
    /* 800120A0 */ int play(u32, s8);
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
    J3DTransformInfo* getOldFrameTransInfo(int i) { return &mOldFrameTransInfo[i]; }
    u16 getOldFrameStartJoint() { return mOldFrameStartJoint; }
    Quaternion* getOldFrameQuaternion(int i_no) { return &mOldFrameQuaternion[i_no]; }

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

struct mDoExt_MtxCalcAnmBlendTblOld
    : public J3DMtxCalcNoAnm<J3DMtxCalcCalcTransformMaya, J3DMtxCalcJ3DSysInitMaya> {
    /* 80014EB0 */ virtual ~mDoExt_MtxCalcAnmBlendTblOld();
    /* 8000F4B0 */ virtual void calc();

    /* 0x4 */ int mNum;
    /* 0x8 */ mDoExt_AnmRatioPack* mAnmRatio;
};  // Size: 0xC

struct mDoExt_MtxCalcAnmBlendTbl : public mDoExt_MtxCalcAnmBlendTblOld {
    /* 800D00BC */ J3DAnmTransform* getAnm(int);

    /* 80014F3C */ virtual ~mDoExt_MtxCalcAnmBlendTbl();
    /* 8000F26C */ virtual void calc();

    /* 0xC */ mDoExt_MtxCalcOldFrame* mOldFrame;
};

class mDoExt_3Dline_c {
public:
    /* 800123D0 */ void init(u16, int, int);
    /* 800126BC */ mDoExt_3Dline_c();

    /* 0x00 */ cXyz* field_0x0;
    /* 0x04 */ void* field_0x4;
    /* 0x08 */ cXyz* field_0x8;
    /* 0x0C */ cXyz* field_0xc;
    /* 0x10 */ void* field_0x10;
    /* 0x14 */ void* field_0x14;
    /* 0x18 */ f32* field_0x18;
    /* 0x1C */ f32* field_0x1c;
};

class mDoExt_3DlineMat_c {
public:
    /* 0x0 */ void* field_0x0;
    /* 0x4 */ mDoExt_3DlineMat_c* field_0x4;
};

class mDoExt_3DlineMatSortPacket : public J3DPacket {
public:
    mDoExt_3DlineMatSortPacket() { mp3DlineMat = NULL; }

    void reset() { mp3DlineMat = NULL; }

    /* 80014738 */ void setMat(mDoExt_3DlineMat_c*);
    virtual void draw();
    virtual ~mDoExt_3DlineMatSortPacket();

private:
    /* 0x10 */ mDoExt_3DlineMat_c* mp3DlineMat;
};

class dKy_tevstr_c;
class mDoExt_3DlineMat1_c : public mDoExt_3DlineMat_c {
public:
    /* 80013360 */ void init(u16, u16, ResTIMG*, int);
    /* 800134F8 */ void setMaterial();
    /* 800135D0 */ void draw();
    /* 80013FB0 */ void update(int, GXColor&, dKy_tevstr_c*);
    /* 8001373C */ void update(int, f32, GXColor&, u16, dKy_tevstr_c*);
    /* 80014E7C */ int getMaterialID();

private:
    /* 0x08 */ GXTexObj field_0x8;
    /* 0x28 */ GXColor field_0x28;
    /* 0x2C */ dKy_tevstr_c* field_0x2c;
    /* 0x30 */ u16 field_0x30;
    /* 0x32 */ u16 field_0x32;
    /* 0x34 */ u16 field_0x34;
    /* 0x36 */ u8 field_0x36;
    /* 0x38 */ mDoExt_3Dline_c* field_0x38;
};

class mDoExt_3DlineMat0_c : public mDoExt_3DlineMat_c {
public:
    /* 800125E0 */ void init(u16, u16, int);
    /* 800126C0 */ void setMaterial();
    /* 80012774 */ void draw();
    /* 80012874 */ void update(int, f32, _GXColor&, u16, dKy_tevstr_c*);
    /* 80012E3C */ void update(int, _GXColor&, dKy_tevstr_c*);
    /* 80014E84 */ int getMaterialID();

private:
    /* 0x08 */ GXColor field_0x8;
    /* 0x0C */ dKy_tevstr_c* field_0xc;
    /* 0x10 */ u16 field_0x10;
    /* 0x12 */ u16 field_0x12;
    /* 0x14 */ u16 field_0x14;
    /* 0x16 */ u8 field_0x16;
    /* 0x18 */ mDoExt_3Dline_c* field_0x18;
};

class mDoExt_cubePacket : public J3DPacket {
public:
    mDoExt_cubePacket(cXyz& i_position, cXyz& i_size, csXyz& i_angle, const GXColor& i_color) {
        mPosition = i_position;
        mSize = i_size;
        mAngle = i_angle;
        mColor = i_color;
    }

    virtual void draw();
    virtual ~mDoExt_cubePacket() {}

    /* 0x10 */ cXyz mPosition;
    /* 0x1C */ cXyz mSize;
    /* 0x28 */ csXyz mAngle;
    /* 0x2E */ GXColor mColor;
};

class mDoExt_cylinderPacket : public J3DPacket {
public:
    mDoExt_cylinderPacket(cXyz& i_position, f32 i_radius, f32 i_height, const GXColor& i_color,
                          u8 param_4) {
        mPosition = i_position;
        mRadius = i_radius;
        mHeight = i_height;
        mColor = i_color;
        field_0x28 = param_4;
    }

    virtual void draw();
    virtual ~mDoExt_cylinderPacket() {}

    /* 0x10 */ cXyz mPosition;
    /* 0x1C */ f32 mRadius;
    /* 0x20 */ f32 mHeight;
    /* 0x24 */ GXColor mColor;
    /* 0x28 */ u8 field_0x28;
};

JKRSolidHeap* mDoExt_createSolidHeapFromGame(u32 i_size, u32 i_alignment);
void mDoExt_destroySolidHeap(JKRSolidHeap* i_heap);
u32 mDoExt_adjustSolidHeap(JKRSolidHeap* i_heap);
void mDoExt_restoreCurrentHeap();
JKRExpHeap* mDoExt_getGameHeap();
void mDoExt_destroySolidHeap(JKRSolidHeap* i_heap);
JKRHeap* mDoExt_setCurrentHeap(JKRHeap* i_heap);
JKRExpHeap* mDoExt_getArchiveHeap();
JKRExpHeap* mDoExt_getArchiveHeapPtr();
void mDoExt_destroyExpHeap(JKRExpHeap* i_heap);
JKRAssertHeap* mDoExt_getAssertHeap();
JKRExpHeap* mDoExt_getCommandHeap();
JKRExpHeap* mDoExt_getZeldaHeap();
JKRExpHeap* mDoExt_getJ2dHeap();
JKRExpHeap* mDoExt_getHostIOHeap();
JKRExpHeap* mDoExt_getDbPrintHeap();
JKRExpHeap* mDoExt_createDbPrintHeap(u32 heapSize, JKRHeap* i_heap);
JKRAssertHeap* mDoExt_createAssertHeap(JKRHeap* i_heap);
JKRExpHeap* mDoExt_createCommandHeap(u32 heapSize, JKRHeap* i_heap);
JKRExpHeap* mDoExt_createArchiveHeap(u32 heapSize, JKRHeap* i_heap);
JKRExpHeap* mDoExt_createJ2dHeap(u32 heapSize, JKRHeap* i_heap);
JKRExpHeap* mDoExt_createZeldaHeap(u32 heapSize, JKRHeap* i_heap);
JKRExpHeap* mDoExt_createGameHeap(u32 heapSize, JKRHeap* i_heap);
JKRSolidHeap* mDoExt_createSolidHeapToCurrent(JKRHeap** o_heap, u32 i_size, JKRHeap* i_parent,
                                              u32 i_alignment);
JKRSolidHeap* mDoExt_createSolidHeapToCurrent(u32 i_size, JKRHeap* i_parent, u32 i_alignment);
JKRSolidHeap* mDoExt_createSolidHeapFromGameToCurrent(u32 i_size, u32 i_alignment);
JKRSolidHeap* mDoExt_createSolidHeapFromGameToCurrent(JKRHeap** o_heap, u32 i_size,
                                                      u32 i_alignment);
u32 mDoExt_adjustSolidHeapToSystem(JKRSolidHeap* i_heap);
JKRHeap* mDoExt_getCurrentHeap();
void mDoExt_removeMesgFont();
void mDoExt_modelUpdate(J3DModel* i_model);
void mDoExt_modelUpdateDL(J3DModel* i_model);
J3DModel* mDoExt_J3DModel__create(J3DModelData* i_modelData, u32 param_1, u32 param_2);
void mDoExt_setAraCacheSize(u32 size);
int mDoExt_resIDToIndex(JKRArchive* p_archive, u16 id);
void mDoExt_modelEntryDL(J3DModel* i_model);
void mDoExt_setupStageTexture(J3DModelData* i_modelData);
OSThread* mDoExt_GetCurrentRunningThread();

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
