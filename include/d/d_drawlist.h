#ifndef D_D_DRAWLIST_H
#define D_D_DRAWLIST_H

#include "JSystem/J2DGraph/J2DPicture.h"
#include "JSystem/J2DGraph/J2DScreen.h"
#include "JSystem/J3DGraphAnimator/J3DModel.h"
#include "JSystem/J3DGraphBase/J3DDrawBuffer.h"
#include "JSystem/J3DGraphBase/J3DPacket.h"
#include "SSystem/SComponent/c_m3d_g_pla.h"
#include "SSystem/SComponent/c_xyz.h"
#include "d/kankyo/d_kankyo.h"
#include "dolphin/gx/GX.h"
#include "dolphin/mtx/mtx44.h"
#include "dolphin/mtx/mtxvec.h"
#include "dolphin/types.h"
#include "f_op/f_op_view.h"

class cM_rnd_c {
public:
    /* 80053CDC */ void init(int, int, int);
    /* 80053CEC */ f32 get();
    /* 80053DE0 */ f32 getF(f32);
    /* 80053E18 */ f32 getFX(f32);
    /* 80053E60 */ f32 getValue(f32, f32);

    /* 0x0 */ int seed0;
    /* 0x4 */ int seed1;
    /* 0x8 */ int seed2;
};

class dDlst_base_c {
public:
    dDlst_base_c() {}
    virtual void draw();
};

class dDlst_effectLine_c : public dDlst_base_c {
public:
    /* 80053E9C */ virtual void draw();
    /* 800541F4 */ void update(cXyz&, _GXColor&, u16, u16, u16, u16, f32, f32, f32, f32);

private:
    /* 0x04 */ cM_rnd_c mRnd;
    /* 0x10 */ cXyz field_0x10;
    /* 0x1C */ GXColor mLineColor;
    /* 0x20 */ u16 field_0x20;
    /* 0x22 */ u16 field_0x22;
    /* 0x24 */ u16 field_0x24;
    /* 0x26 */ u16 field_0x26;
    /* 0x28 */ f32 field_0x28;
    /* 0x2C */ f32 field_0x2c;
    /* 0x30 */ f32 field_0x30;
    /* 0x34 */ f32 field_0x34;
};  // Size: 0x38

class dDlst_FileInfo_c : public dDlst_base_c {
public:
    dDlst_FileInfo_c() {}
    virtual void draw();
    virtual ~dDlst_FileInfo_c();  // inlined

    /* 0x04 */ J2DScreen* Scr;
    /* 0x08 */ JUTFont* mFont;
    /* 0x0C */ J2DPane* mBasePane;
    /* 0x10 */ J2DPane* field_0x10;
};

class dDlst_2D_c : public dDlst_base_c {
public:
    /* 80053A00 */ dDlst_2D_c(ResTIMG* image, s16 posX, s16 posY, s16 width, s16 height, u8 alpha);
    /* 80053A9C */ virtual void draw();

    void setAlpha(u8 alpha) { mAlpha = alpha; }
    J2DPicture* getPicture() { return &mpPicture; }

private:
    /* 0x004 */ u8 field_0x4;
    /* 0x008 */ J2DPicture mpPicture;
    /* 0x158 */ s16 mPosX;
    /* 0x15A */ s16 mPosY;
    /* 0x15C */ s16 mSizeX;
    /* 0x15E */ s16 mSizeY;
    /* 0x160 */ u8 mAlpha;
};

class dDlst_2DT2_c : public dDlst_base_c {
public:
    /* 80052354 */ virtual void draw();
    /* 80052B00 */ dDlst_2DT2_c();
    /* 80052B4C */ void init(ResTIMG*, f32, f32, f32, f32, u8, u8, u8, f32, f32);

    /* 0x04 */ GXTexObj mTexObj;
    /* 0x24 */ f32 field_0x24;
    /* 0x28 */ f32 field_0x28;
    /* 0x2C */ f32 field_0x2c;
    /* 0x30 */ f32 field_0x30;
    /* 0x34 */ f32 mScaleX;
    /* 0x38 */ f32 mScaleY;
    /* 0x3C */ GXColor field_0x3c;
    /* 0x40 */ GXColor field_0x40;
    /* 0x44 */ u8 field_0x44;
    /* 0x45 */ u8 field_0x45;
    /* 0x46 */ u8 field_0x46;
};  // Size: 0x48

class dDlst_peekZ_c {
public:
    struct dDlst_peekZ_entry {
        /* 0x0 */ s16 x;
        /* 0x2 */ s16 y;
        /* 0x4 */ u32* dst;
    };

    dDlst_peekZ_c() { mCount = 0; }
    /* 80056018 */ int newData(s16, s16, u32*);
    /* 80056080 */ void peekData();

    /* 0x0 */ u8 mCount;
    /* 0x4 */ dDlst_peekZ_entry mEntries[0x40];
};

class dDlst_shadowSimple_c {
public:
    /* 8005520C */ void draw();
    /* 800553EC */ void set(cXyz*, f32, f32, cXyz*, s16, f32, _GXTexObj*);
    /* 8005638C */ dDlst_shadowSimple_c();

    /* 0x00 */ u8 mAlpha;
    /* 0x04 */ _GXTexObj* mpTexObj;
    /* 0x08 */ Mtx mVolumeMtx;
    /* 0x38 */ Mtx mMtx;
};  // Size: 0x68

struct cBgD_Vtx_t {};

class dDlst_shadowPoly_c {
public:
    /* 80054288 */ void set(cBgD_Vtx_t*, u16, u16, u16, cM3dGPla*);
    /* 800543B4 */ void draw();

    virtual void getTri() = 0;
    virtual s32 getTriMax() = 0;

    /* 0x4 */ u16 mCount;
    /* 0x6 */ u8 field_0x6[2];
};

class dDlst_shadowTri_c {
public:
    /* 80056270 */ ~dDlst_shadowTri_c();
    /* 80056344 */ dDlst_shadowTri_c();

    /* 0x0 */ cXyz mPos[3];
};

class dDlst_shadowRealPoly_c : public dDlst_shadowPoly_c {
public:
    /* 800569A0 */ virtual void getTri();
    /* 800569A8 */ virtual s32 getTriMax();

    /* 0x8 */ dDlst_shadowTri_c mShadowTri[256];
};

class dDlst_shadowReal_c {
public:
    /* 800544F0 */ void reset();
    /* 80054500 */ void imageDraw(f32 (*)[4]);
    /* 800545D4 */ void draw();
    /* 80054BD0 */ void setShadowRealMtx(cXyz*, cXyz*, f32, f32, f32, dKy_tevstr_c*);
    /* 80055028 */ void set(u32, J3DModel*, cXyz*, f32, f32, dKy_tevstr_c*, f32, f32);
    /* 800551D4 */ bool add(J3DModel*);
    /* 800561F8 */ ~dDlst_shadowReal_c() {}
    /* 800562D0 */ dDlst_shadowReal_c();

private:
    /* 0x0000 */ u8 mState;
    /* 0x0001 */ u8 field_0x1;
    /* 0x0002 */ u8 mModelNum;
    /* 0x0003 */ u8 field_0x3;
    /* 0x0004 */ u32 mKey;
    /* 0x0008 */ Mtx mViewMtx;
    /* 0x0038 */ Mtx44 mRenderProjMtx;
    /* 0x0078 */ Mtx mReceiverProjMtx;
    /* 0x00A8 */ dDlst_shadowRealPoly_c mShadowRealPoly;
    /* 0x24B0 */ J3DModel* mpModels[38];
    /* 0x2548 */ f32 mCameraZ;
    /* 0x254C */ dDlst_shadowReal_c* mZsortPre;
    /* 0x2550 */ dDlst_shadowReal_c* mZsortNext;
};  // Size: 0x2554

class dDlst_shadowControl_c {
public:
    dDlst_shadowControl_c() { field_0x0 = 0; }
    /* 80055684 */ void init();
    /* 80055768 */ void reset();
    /* 800557C8 */ void imageDraw(f32 (*)[4]);
    /* 80055A14 */ void draw(f32 (*)[4]);
    /* 80055C74 */ int setReal(u32, s8, J3DModel*, cXyz*, f32, f32, dKy_tevstr_c*);
    /* 80055F1C */ void addReal(u32, J3DModel*);
    /* 80055F84 */ int setSimple(cXyz*, f32, f32, cXyz*, s16, f32, _GXTexObj*);
    /* 80055FE8 */ static void setSimpleTex(ResTIMG const*);

    static GXTexObj* getSimpleTex() { return &mSimpleTexObj; }

    static GXTexObj mSimpleTexObj;

private:
    /* 0x00000 */ u8 field_0x0;
    /* 0x00001 */ u8 mRealNum;
    /* 0x00002 */ u8 mSimpleNum;
    /* 0x00004 */ dDlst_shadowReal_c* field_0x4;
    /* 0x00008 */ dDlst_shadowReal_c* field_0x8;
    /* 0x0000C */ dDlst_shadowSimple_c mSimple[128];
    /* 0x0340C */ int mNextID;
    /* 0x03410 */ dDlst_shadowReal_c mReal[8];
    /* 0x15EB0 */ _GXTexObj field_0x15eb0[2];
    /* 0x15EF0 */ void* field_0x15ef0;
    /* 0x15EF4 */ void* field_0x15ef4;
};

class dDlst_window_c : public view_port_class {
public:
    dDlst_window_c() {}
    ~dDlst_window_c() {}
    /* 80051AC0 */ void setViewPort(f32, f32, f32, f32, f32, f32);
    /* 80051ADC */ void setScissor(f32, f32, f32, f32);

    void setCameraID(int id) { mCameraID = id; }
    s8 getCameraID() { return mCameraID; }
    void setMode(int mode) { mMode = mode; }
    f32 getViewPort() { return mXOrig; }

private:
    /* 0x28 */ s8 mCameraID;
    /* 0x29 */ s8 mMode;
};

STATIC_ASSERT(sizeof(dDlst_window_c) == 0x2C);

extern u8 mWipe__12dDlst_list_c;  // Wipe

struct view_port_class;
struct view_class;

class dDlst_list_c {
public:
    /* 800560F0 */ dDlst_list_c();
    /* 80056390 */ void init();
    /* 8005648C */ ~dDlst_list_c();
    /* 80056538 */ void reset();
    /* 800565EC */ void entryZSortXluDrawList(J3DDrawBuffer*, J3DPacket*, cXyz&);
    /* 800566D4 */ void drawOpaDrawList(J3DDrawBuffer*);
    /* 80056710 */ void drawXluDrawList(J3DDrawBuffer*);
    /* 8005674C */ void drawOpaListItem3d();
    /* 80056770 */ void drawXluListItem3d();
    /* 80056794 */ int set(dDlst_base_c**&, dDlst_base_c**&, dDlst_base_c*);
    /* 800567C4 */ void draw(dDlst_base_c**, dDlst_base_c**);
    /* 8005681C */ static void wipeIn(f32 i_wipeSpeed, GXColor& i_wipeColor);
    /* 800568D8 */ static void wipeIn(f32 i_wipeSpeed);
    /* 80056900 */ void calcWipe();

    enum DrawBuffer {
        /* 0x00 */ DB_OPA_LIST_SKY,
        /* 0x01 */ DB_XLU_LIST_SKY,
        /* 0x02 */ DB_LIST_P0,
        /* 0x03 */ DB_OPA_LIST_BG,
        /* 0x04 */ DB_XLU_LIST_BG,
        /* 0x05 */ DB_OPA_LIST_DARK_BG,
        /* 0x06 */ DB_XLU_LIST_DARK_BG,
        /* 0x07 */ DB_OPA_LIST,
        /* 0x08 */ DB_XLU_LIST,
        /* 0x09 */ DB_OPA_LIST_DARK,
        /* 0x0A */ DB_XLU_LIST_DARK,
        /* 0x0B */ DB_OPA_LIST_PACKET,
        /* 0x0C */ DB_LIST_FILTER,
        /* 0x0D */ DB_OPA_LIST_ITEM3D,
        /* 0x0E */ DB_XLU_LIST_ITEM3D,
        /* 0x0F */ DB_OPA_LIST_INVISIBLE,
        /* 0x10 */ DB_XLU_LIST_INVISIBLE,
        /* 0x11 */ DB_LIST_Z_XLU,
        /* 0x12 */ DB_LIST_2D_SCREEN,
        /* 0x13 */ DB_LIST_MIDDLE,
        /* 0x14 */ DB_LIST_3D_LAST,
    };

    void set2DOpa(dDlst_base_c* dlst) { set(mp2DOpaSet[0], mp2DOpaSet[1], dlst); }
    void set2DOpaTop(dDlst_base_c* dlst) { set(mp2DOpaTopSet[0], mp2DOpaTopSet[1], dlst); }
    void set2DXlu(dDlst_base_c* dlst) { set(mp2DXluSet[0], mp2DXluSet[1], dlst); }
    void setCopy2D(dDlst_base_c* dlst) { set(mpCopy2DSet[0], mpCopy2DSet[1], dlst); }
    view_class* getView() { return mView; }
    void setView(view_class* view) { mView = view; }
    void setWindow(dDlst_window_c* window) { mWindow = window; }
    void setViewport(view_port_class* port) { mViewport = port; }
    J3DDrawBuffer* getOpaListFilter() { return mDrawBuffers[DB_LIST_FILTER]; }
    J3DDrawBuffer* getOpaListP0() { return mDrawBuffers[DB_LIST_P0]; }
    J3DDrawBuffer* getOpaListPacket() { return mDrawBuffers[DB_OPA_LIST_PACKET]; }
    void setXluDrawList(J3DDrawBuffer* buffer) { j3dSys.setDrawBuffer(buffer, XLU_BUFFER); }
    void setOpaDrawList(J3DDrawBuffer* buffer) { j3dSys.setDrawBuffer(buffer, OPA_BUFFER); }
    void setXluListSky() { setXluDrawList(mDrawBuffers[DB_XLU_LIST_SKY]); }
    void setOpaListSky() { setOpaDrawList(mDrawBuffers[DB_OPA_LIST_SKY]); }
    void setXluListDark() { setXluDrawList(mDrawBuffers[DB_XLU_LIST_DARK]); }
    void setOpaListDark() { setOpaDrawList(mDrawBuffers[DB_OPA_LIST_DARK]); }
    void setOpaList() { setOpaDrawList(mDrawBuffers[DB_OPA_LIST]); }
    void setXluList() { setXluDrawList(mDrawBuffers[DB_XLU_LIST]); }
    void setOpaListItem3D() { setOpaDrawList(mDrawBuffers[DB_OPA_LIST_ITEM3D]); }
    void setXluListItem3D() { setXluDrawList(mDrawBuffers[DB_XLU_LIST_ITEM3D]); }
    void setXluListBG() { setXluDrawList(mDrawBuffers[DB_XLU_LIST_BG]); }
    void setOpaListBG() { setOpaDrawList(mDrawBuffers[DB_OPA_LIST_BG]); }
    void setOpaList3Dlast() { setOpaDrawList(mDrawBuffers[DB_LIST_3D_LAST]); }
    void setXluList3Dlast() { setXluDrawList(mDrawBuffers[DB_LIST_3D_LAST]); }
    void setXluList2DScreen() { setXluDrawList(mDrawBuffers[DB_LIST_2D_SCREEN]); }

    void peekZdata() { mPeekZ.peekData(); }
    void entryZSortListZxlu(J3DPacket* i_packet, cXyz& param_1) {
        entryZSortXluDrawList(mDrawBuffers[DB_LIST_Z_XLU], i_packet, param_1);
    }

    int setSimpleShadow(cXyz* param_0, f32 param_1, f32 param_2, cXyz* param_3, s16 param_4,
                        f32 param_5, _GXTexObj* param_6) {
        return mShadowControl.setSimple(param_0, param_1, param_2, param_3, param_4, param_5,
                                        param_6);
    }

    int setRealShadow(u32 param_0, s8 param_1, J3DModel* param_2, cXyz* param_3, f32 param_4,
                      f32 param_5, dKy_tevstr_c* param_6) {
        return mShadowControl.setReal(param_0, param_1, param_2, param_3, param_4, param_5,
                                      param_6);
    }

    void newPeekZdata(s16 param_0, s16 param_1, u32* param_2) {
        mPeekZ.newData(param_0, param_1, param_2);
    }

    static void offWipe() { mWipe = 0; }
    static f32 getWipeRate() { return mWipeRate; }

    static dDlst_2DT2_c mWipeDlst;
    static GXColor mWipeColor;
    static f32 mWipeRate;
    static f32 mWipeSpeed;
    static u8 mWipe;

private:
    /* 0x00000 */ J3DDrawBuffer* mDrawBuffers[21];
    /* 0x00054 */ dDlst_base_c** mpCopy2DDraw[4];
    /* 0x00064 */ dDlst_base_c** mpCopy2DSet[2];
    /* 0x0006C */ dDlst_base_c** mp2DOpaTopDraw[16];
    /* 0x000AC */ dDlst_base_c** mp2DOpaTopSet[2];
    /* 0x000B4 */ dDlst_base_c** mp2DOpaDraw[64];
    /* 0x001B4 */ dDlst_base_c** mp2DOpaSet[2];
    /* 0x001BC */ dDlst_base_c** mp2DXluDraw[32];
    /* 0x0023C */ dDlst_base_c** mp2DXluSet[2];
    /* 0x00244 */ dDlst_window_c* mWindow;
    /* 0x00248 */ view_port_class* mViewport;
    /* 0x0024C */ view_class* mView;
    /* 0x00250 */ u8 field_0x250[0xC];
    /* 0x0025C */ dDlst_shadowControl_c mShadowControl;
    /* 0x16154 */ mDoExt_3DlineMatSortPacket m3DLineMatSortPacket[3];
    /* 0x16190 */ dDlst_peekZ_c mPeekZ;
};  // Size: 0x16394

STATIC_ASSERT(sizeof(dDlst_list_c) == 0x16394);

#endif /* D_D_DRAWLIST_H */
