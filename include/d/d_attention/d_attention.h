#ifndef __D_ATTENTION_H_
#define __D_ATTENTION_H_

#include "SComponent/c_angle/c_angle.h"
#include "SComponent/c_xyz/c_xyz.h"
#include "global.h"
#include "m_Do/m_Do_ext/m_Do_ext.h"

class dAttHint_c {
public:
private:
    u32 field_0x0;
    u32 field_0x4;
    u32 field_0x8;
};

class dAttCatch_c {
public:
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
private:
    u32 field_0x0;
    u32 field_0x4;
    float field_0x8;
};

class dAttList_c {
public:
private:
    u8 field_0x0[8];
    cSAngle angle;
    u8 field_0xa[10];
};

class dAttDraw_c {
    u8 field_0x0;
    u8 field_0x1;
    u8 field_0x2;
    u8 field_0x3;
    u8 field_0x4;
    u8 field_0x5;
    u8 field_0x6;
    u8 field_0x7;
    mDoExt_bckAnm bckAnm;
    u8 field_0x24[28];
    mDoExt_bpkAnm bpkAnm;
    u8 field_0x58[24];
    mDoExt_brkAnm brkAnm;
    u8 field_0x88[24];
    mDoExt_brkAnm brkAnm2;
    u8 field_0xb8[24];
    mDoExt_btkAnm btkAnm;
    u8 field_0xe8[24];
    mDoExt_bckAnm bckAnm2;
    mDoExt_bpkAnm bpkAnm2;
    mDoExt_brkAnm brkAnm3;
    mDoExt_btkAnm btkAnm2;
};

class dAttDraw_CallBack_c {
    mDoExt_McaMorfCallBack1_c mDoExt_McaMorfCallback;
};

class dAttention_c {
public:
private:
    u8 field_0x0[4];
    u32 field_0x4;
    dAttDraw_CallBack_c dattdraw_callback;
    u8 field_0xc[4];
    u32 field_0x10;
    u8 field_0x14[8];
    cXyz field_0x1c;
    dAttDraw_c attention_draw;
    u8 field_0x18c[396];
    int field_0x318;
    cXyz field_0x31c;
    u8 field_0x328[12];
    u32 field_0x334;
    dAttList_c attention_list1;
    u8 field_0x34c[140];
    int* field_0x3d8;
    int* field_0x3dc;
    dAttList_c attention_list2;
    u8 field_0x3f4[60];
    int* field_0x430;
    int field_0x434;
    dAttList_c attention_list3;
    u8 field_0x44c[60];
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
    dAttParam_c attention_param;
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
    u8 field_0x4f0;
};

#endif