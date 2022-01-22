#ifndef D_D_DRAWLIST_H
#define D_D_DRAWLIST_H

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

struct mDoExt_3DlineMat_c {};

class mDoExt_3DlineMatSortPacket : public J3DPacket {
public:
    mDoExt_3DlineMatSortPacket();

    virtual void draw();
    virtual ~mDoExt_3DlineMatSortPacket();

private:
    /* 0x10 */ mDoExt_3DlineMat_c* mp3DlineMat;
};

class dDlst_FileInfo_c {
public:
    void draw(void);
    ~dDlst_FileInfo_c();

private:
};

class dDlst_peekZ_c {
public:
    dDlst_peekZ_c() { field_0x0 = 0; }
    /* 80056018 */ void newData(s16, s16, u32*);
    /* 80056080 */ void peekData();

    /* 0x0 */ u8 field_0x0;
    /* 0x2 */ u16 field_0x2;
    /* 0x4 */ u32* field_0x4;
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

    /* 0x0 */ void* field_0x0;  // vtable
    /* 0x4 */ u16 mCount;
    /* 0x6 */ u8 field_0x6[2];
};

class dDlst_shadowTri_c {
public:
    /* 80056270 */ ~dDlst_shadowTri_c();
    /* 80056344 */ dDlst_shadowTri_c();

    /* 0x0 */ cXyz mPos[3];
};

class dDlst_shadowRealPoly_c {
public:
    /* 800569A0 */ void getTri();
    /* 800569A8 */ s32 getTriMax();

    /* 0x0 */ dDlst_shadowPoly_c mShadowPoly;
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
    /* 800561F8 */ ~dDlst_shadowReal_c();
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
    /* 80055C74 */ void setReal(u32, s8, J3DModel*, cXyz*, f32, f32, dKy_tevstr_c*);
    /* 80055F1C */ void addReal(u32, J3DModel*);
    /* 80055F84 */ void setSimple(cXyz*, f32, f32, cXyz*, s16, f32, _GXTexObj*);
    /* 80055FE8 */ void setSimpleTex(ResTIMG const*);

    static u8 mSimpleTexObj[32];

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

class dDlst_window_c {
public:
    dDlst_window_c(void) {}
    ~dDlst_window_c() {}
    /* 80051AC0 */ void setViewPort(f32, f32, f32, f32, f32, f32);
    /* 80051ADC */ void setScissor(f32, f32, f32, f32);

private:
    /* 0x00 */ f32 mViewport;
    /* 0x04 */ f32 field_0x04;
    /* 0x08 */ f32 field_0x08;
    /* 0x0C */ f32 field_0x0C;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 mScissor;
    /* 0x1C */ f32 field_0x1c;
    /* 0x20 */ f32 field_0x20;
    /* 0x24 */ f32 field_0x24;
    /* 0x28 */ s8 mCameraID;
    /* 0x29 */ s8 mMode;
};

STATIC_ASSERT(sizeof(dDlst_window_c) == 0x2C);

struct view_port_class {};

struct view_class {
    /* 0x00 */ u8 field_0x0[0xD0];
    /* 0xD0 */ f32 field_0xd0;
};

class dDlst_base_c {
public:
    virtual void draw();
};

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
    /* 8005681C */ void wipeIn(f32, _GXColor&);
    /* 800568D8 */ void wipeIn(f32);
    /* 80056900 */ void calcWipe();

    void set2DOpa(dDlst_base_c* dlst) { set(field_0x1b4, field_0x1b8, dlst); }
    void set2DOpaTop(dDlst_base_c* dlst) { set(field_0xac, field_0xb0, dlst); }
    view_class* getView() { return mView; }
    J3DDrawBuffer* getOpaListFilter() { return mListFilter; }
    J3DDrawBuffer* getOpaListP0() { return mListP0; }
    void setXluDrawList(J3DDrawBuffer* buffer) { j3dSys.setDrawBuffer(buffer, XLU_BUFFER); }
    void setOpaDrawList(J3DDrawBuffer* buffer) { j3dSys.setDrawBuffer(buffer, OPA_BUFFER); }
    void setXluListSky() { setXluDrawList(mpXluListSky); }
    void setOpaListSky() { setOpaDrawList(mOpaListSky); }
    void setOpaList() { setOpaDrawList(mOpaList); }
    void setXluList() { setXluDrawList(mXluList); }
    void setXluListBG() { setXluDrawList(mXluListBG); }
    void setXluList2DScreen() { setXluDrawList(mList2DScreen); }

    static u8 mWipeDlst[72];
    static u8 mWipeColor[4];
    static f32 mWipeRate;
    static f32 mWipeSpeed[1 + 1 /* padding */];

private:
    /* 0x00000 */ J3DDrawBuffer* mOpaListSky;
    /* 0x00004 */ J3DDrawBuffer* mpXluListSky;
    /* 0x00008 */ J3DDrawBuffer* mListP0;
    /* 0x0000C */ J3DDrawBuffer* mOpaListBG;
    /* 0x00010 */ J3DDrawBuffer* mXluListBG;
    /* 0x00014 */ J3DDrawBuffer* mOpaListDarkBG;
    /* 0x00018 */ J3DDrawBuffer* mXluListDarkBG;
    /* 0x0001C */ J3DDrawBuffer* mOpaList;
    /* 0x00020 */ J3DDrawBuffer* mXluList;
    /* 0x00024 */ J3DDrawBuffer* mOpaListDark;
    /* 0x00028 */ J3DDrawBuffer* mXluListDark;
    /* 0x0002C */ J3DDrawBuffer* mOpaListPacket;
    /* 0x00030 */ J3DDrawBuffer* mListFilter;
    /* 0x00034 */ J3DDrawBuffer* mOpaListItem3d;
    /* 0x00038 */ J3DDrawBuffer* mXluListItem3d;
    /* 0x0003C */ J3DDrawBuffer* mOpaListInvisible;
    /* 0x00040 */ J3DDrawBuffer* mXluListInvisible;
    /* 0x00044 */ J3DDrawBuffer* mListZxlu;
    /* 0x00048 */ J3DDrawBuffer* mList2DScreen;
    /* 0x0004C */ J3DDrawBuffer* mListMiddle;
    /* 0x00050 */ J3DDrawBuffer* mList3Dlast;
    /* 0x00054 */ dDlst_list_c** field_0x54;  // array?
    /* 0x00058 */ u8 field_0x58[0xC];
    /* 0x00064 */ dDlst_list_c* field_0x64;
    /* 0x00068 */ dDlst_list_c** field_0x68;
    /* 0x0006C */ dDlst_list_c** field_0x6c;  // array?
    /* 0x00070 */ u8 field_0x70[0x3C];
    /* 0x000AC */ dDlst_base_c** field_0xac;
    /* 0x000B0 */ dDlst_base_c** field_0xb0;
    /* 0x000B4 */ dDlst_list_c** field_0xb4;  // array?
    /* 0x000B8 */ u8 field_0xb8[0xFC];
    /* 0x001B4 */ dDlst_base_c** field_0x1b4;
    /* 0x001B8 */ dDlst_base_c** field_0x1b8;
    /* 0x001BC */ dDlst_list_c** field_0x1bc;  // array?
    /* 0x001C0 */ u8 field_0x1c0[0x7C];
    /* 0x0023C */ dDlst_list_c* field_0x23c;
    /* 0x00240 */ dDlst_list_c** field_0x240;
    /* 0x00244 */ dDlst_window_c* mWindow;
    /* 0x00248 */ view_port_class* mViewport;
    /* 0x0024C */ view_class* mView;
    /* 0x00250 */ u8 field_0x250[0xC];
    /* 0x0025C */ dDlst_shadowControl_c mShadowControl;
    /* 0x16154 */ mDoExt_3DlineMatSortPacket m3DLineMatSortPacket[3];
    /* 0x16190 */ dDlst_peekZ_c mPeekZ;
    /* 0x16198 */ u8 field_0x16198[8];  // might be part of peekZ
};                                      // Size: 0x161A0

STATIC_ASSERT(sizeof(dDlst_list_c) == 0x161A0);

#endif /* D_D_DRAWLIST_H */
