#ifndef D_ATTENTION_H_
#define D_ATTENTION_H_

#include "SComponent/c_angle.h"
#include "SComponent/c_xyz.h"
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

#pragma pack(push, 1)
class dAttList_c {
public:
private:
    u8 field_0x0[8];
    cSAngle angle;
    u8 field_0xa[10];
};
#pragma pack(pop)

#pragma pack(push, 1)
class dAttDraw_c {
    u8 field_0x0;
    u8 field_0x1;
    u8 field_0x2;
    u8 field_0x3;
    u8 field_0x4;
    u8 field_0x5;
    u8 field_0x6;
    u8 field_0x7;
    /* 0x008 */ mDoExt_bckAnm bckAnm[2];
    /* 0x040 */ mDoExt_bpkAnm bpkAnm[2];
    /* 0x070 */ mDoExt_brkAnm brkAnm[2];
    /* 0x0A0 */ mDoExt_brkAnm brkAnm2[2];
    /* 0x0D0 */ mDoExt_btkAnm btkAnm[2];
    /* 0x100 */ mDoExt_bckAnm bckAnm2;
    /* 0x11C */ mDoExt_bpkAnm bpkAnm2;
    /* 0x134 */ mDoExt_brkAnm brkAnm3;
    /* 0x14C */ mDoExt_btkAnm btkAnm2;
    /* 0x164 */ u8 field_0x164[0xC];
    /* 0x170 */ u8 field_0x170;
    /* 0x171 */ u8 field_0x171;
    /* 0x172 */ u8 field_0x172;
    /* 0x173 */ u8 field_0x173;
    /* 0x174 */ u8 field_0x174;
    /* 0x175 */ u8 field_0x175; 
};
#pragma pack(pop)

class dAttDraw_CallBack_c {
    mDoExt_McaMorfCallBack1_c mDoExt_McaMorfCallback;
};

class dAttention_c {
public:
private:
    u8 field_0x0[4];
    u32 field_0x4;
    dAttDraw_CallBack_c dattdraw_callback;
    u32 field_0xc;
    u32 field_0x10;
    u8 field_0x14[8];
    cXyz field_0x1c;
    /* 0x028 */ dAttDraw_c attention_draw[2];
    int field_0x318;
    cXyz field_0x31c;
    u8 field_0x328[12];
    u32 field_0x334;
    /* 0x0338 */ dAttList_c attention_list1[8];
    int* field_0x3d8;
    int* field_0x3dc;
    /* 0x03E0 */ dAttList_c attention_list2[4];
    int* field_0x430;
    int field_0x434;
    /* 0x0438 */  dAttList_c attention_list3[4];
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
    /* 0x04D0 */ dAttParam_c attention_param;
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
    u8 field_0x4f0[0x18];
    /* 0x0508 */ void* vtable;
};

#endif