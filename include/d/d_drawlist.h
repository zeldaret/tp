#ifndef D_D_DRAWLIST_H
#define D_D_DRAWLIST_H

#include "JSystem/J3DGraphBase/J3DPacket.h"
#include "SSystem/SComponent/c_xyz.h"
#include "dolphin/gx/GXTexture.h"
#include "dolphin/mtx/mtx44.h"
#include "dolphin/mtx/mtxvec.h"
#include "dolphin/types.h"

class dDlst_FileInfo_c {
public:
    void draw(void);
    ~dDlst_FileInfo_c();

private:
};

#pragma pack(push, 1)
class dDlst_peekZ_c {
public:
    /* 80056018 */ void newData(s16, s16, u32*);
    /* 80056080 */ void peekData();

    u8 unk[7];
};  // actual size unknown!!!
#pragma pack(pop)

class dDlst_window_c {
public:
    dDlst_window_c(void) {}
    ~dDlst_window_c() {}
    /* 80051AC0 */ void setViewPort(f32, f32, f32, f32, f32, f32);
    /* 80051ADC */ void setScissor(f32, f32, f32, f32);

private:
    float view_port1;
    float view_port2;
    float view_port3;
    float view_port4;
    float view_port5;
    float view_port6;
    float scissor1;
    float scissor2;
    float scissor3;
    float scissor4;
    int camera_id;
};

STATIC_ASSERT(sizeof(dDlst_window_c) == 0x2C);

class dDlst_base_c {
public:
    virtual void temp();  // temp to build OK, remove later
    virtual void draw();
};

#pragma pack(push, 1)
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
    /* 80056794 */ void set(dDlst_base_c**&, dDlst_base_c**&, dDlst_base_c*);
    /* 800567C4 */ void draw(dDlst_base_c**, dDlst_base_c**);
    /* 8005681C */ void wipeIn(f32, _GXColor&);
    /* 800568D8 */ void wipeIn(f32);
    /* 80056900 */ void calcWipe();

    static u8 mWipeDlst[72];
    static u8 mWipeColor[4];
    static f32 mWipeRate;
    static f32 mWipeSpeed[1 + 1 /* padding */];

    // private:
    /* 0x00000 */ u8 field_0x00[0x1C];
    /* 0x0001C */ J3DPacket* mpPacket;
    /* 0x00020 */ u8 field_0x20[0x16170];
    /* 0x16180 */ dDlst_peekZ_c dlstPeekZ;
    /* 0x16184 */ u8 unk_0x16194[0x1F];
};  // Size: 0x161A0
#pragma pack(pop)

#endif /* D_D_DRAWLIST_H */
