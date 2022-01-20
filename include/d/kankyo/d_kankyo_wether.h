#ifndef D_KANKYO_D_KANKYO_WETHER_H
#define D_KANKYO_D_KANKYO_WETHER_H

#include "JSystem/J3DGraphBase/J3DPacket.h"
#include "SSystem/SComponent/c_sxyz.h"
#include "SSystem/SComponent/c_xyz.h"
#include "dolphin/types.h"

void dKyw_wether_draw();
void dKyw_wether_delete();
void dKyw_wether_move_draw2();
void dKyw_wether_draw2();
void dKyw_wether_delete2();
void dKyw_wether_init2();
static void dKyw_wind_init();
static void dKyw_pntwind_init();
f32 dKyw_get_wind_pow();
static void squal_proc();

class dKankyo_sun_Packet : public J3DPacket {
public:
    virtual void draw();
    virtual ~dKankyo_sun_Packet();

    /* 0x10 */ cXyz field_0x10[2];
    /* 0x28 */ u8 field_0x28;
    /* 0x29 */ u8 field_0x29;
    /* 0x2C */ u8* mpResMoon;
    /* 0x30 */ u8* mpResMoon_A;
    /* 0x34 */ u8* mpResMoon_A_A00;
    /* 0x38 */ u8* mpResMoon_A_A01;
    /* 0x3C */ u8* mpResMoon_A_A02;
    /* 0x40 */ u8* mpResMoon_A_A03;
    /* 0x44 */ int field_0x44;
    /* 0x48 */ int field_0x48;
    /* 0x4C */ int field_0x4c;
    /* 0x50 */ int field_0x50;
    /* 0x54 */ int field_0x54;
    /* 0x58 */ int field_0x58;
    /* 0x5C */ f32 field_0x5c;
    /* 0x60 */ f32 field_0x60;
    /* 0x64 */ f32 field_0x64;
    /* 0x68 */ f32 field_0x68;
    /* 0x6C */ f32 field_0x6c;
    /* 0x70 */ GXColor mColor;
    /* 0x74 */ u8 field_0x74[4];
};  // Size: 0x78

class dKankyo_sunlenz_Packet : public J3DPacket {
public:
    virtual void draw();
    virtual ~dKankyo_sunlenz_Packet();

    /* 0x10 */ GXColor field_0x10;
    /* 0x14 */ u8* mpResBall;
    /* 0x18 */ u8 field_0x18[4];
    /* 0x1C */ u8* mpResRing_A;
    /* 0x20 */ u8* mpResLenz;
    /* 0x24 */ cXyz field_0x24[8];
    /* 0x84 */ u8 field_0x84[8];
    /* 0x8C */ f32 field_0x8c;
    /* 0x90 */ f32 field_0x90;
    /* 0x94 */ u8 field_0x94[4];
    /* 0x98 */ f32 field_0x98;
    /* 0x9C */ u8 field_0x9c[2];
    /* 0x9E */ u8 field_0x9e;
};  // Size: 0xA0

struct RAIN_EFF {
    /* 80056CD0 */ ~RAIN_EFF();
    /* 80056D0C */ RAIN_EFF();

    /* 0x00 */ u8 field_0x0[4];
    /* 0x04 */ cXyz field_0x04;
    /* 0x10 */ cXyz field_0x10;
    /* 0x1C */ u8 field_0x1c[0x1c];
};  // Size: 0x38

class dKankyo_rain_Packet : public J3DPacket {
public:
    virtual void draw();
    virtual ~dKankyo_rain_Packet();

private:
    /* 0x0010 */ u8* field_0x10;
    /* 0x0014 */ u8 field_0x14[4];
    /* 0x0018 */ RAIN_EFF field_0x18[250];
    /* 0x36C8 */ u8 field_0x36c8[0x50];
};  // Size: 0x3718

struct SNOW_EFF {
    /* 80056D58 */ ~SNOW_EFF();
    /* 80056D94 */ SNOW_EFF();

    /* 0x00 */ u8 field_0x0[4];
    /* 0x04 */ cXyz field_0x04;
    /* 0x10 */ cXyz field_0x10;
    /* 0x1C */ u8 field_0x1c[0x1c];
};  // Size: 0x38

class dKankyo_snow_Packet : public J3DPacket {
public:
    virtual void draw();
    virtual ~dKankyo_snow_Packet();

private:
    /* 0x10 */ u8* field_0x10;
    /* 0x14 */ SNOW_EFF field_0x14[500];
};

struct STAR_EFF {
    /* 80056DC8 */ ~STAR_EFF();
    /* 80056E04 */ STAR_EFF();

    /* 0x00 */ u8 field_0x0[4];
    /* 0x04 */ cXyz field_0x04;
    /* 0x10 */ cXyz field_0x10;
    /* 0x1C */ u8 field_0x1c[0x18];
};  // Size: 0x34

class dKankyo_star_Packet : public J3DPacket {
public:
    virtual void draw();
    virtual ~dKankyo_star_Packet();

private:
    /* 0x10 */ u8* field_0x10;
    /* 0x14 */ STAR_EFF field_0x14[1];
};

struct HOUSI_EFF {
    /* 80056EA8 */ ~HOUSI_EFF();
    /* 80056EE4 */ HOUSI_EFF();

    /* 0x00 */ u8 field_0x0;
    /* 0x04 */ cXyz field_0x04;
    /* 0x10 */ cXyz field_0x10;
    /* 0x1C */ cXyz field_0x1c;
    /* 0x28 */ u8 field_0x28[0x28];
};  // Size: 0x50

class dKankyo_housi_Packet : public J3DPacket {
public:
    virtual void draw();
    virtual ~dKankyo_housi_Packet();

    /* 0x0010 */ cXyz field_0x10;
    /* 0x001C */ u8* mpResTex;
    /* 0x0020 */ HOUSI_EFF field_0x18[300];
    /* 0x5DE0 */ u8 field_0x5de0[8];
    /* 0x5DE8 */ f32 field_0x5de8;
    /* 0x5DEC */ u8 field_0x5dec[4];
};  // Size: 0x5DF0

struct CLOUD_EFF {
    /* 80056E38 */ ~CLOUD_EFF();
    /* 80056E74 */ CLOUD_EFF();

    /* 0x00 */ u8 field_0x0;
    /* 0x04 */ cXyz field_0x04;
    /* 0x10 */ cXyz field_0x10;
    /* 0x1C */ cXyz field_0x1c;
    /* 0x28 */ u8 field_0x28[0x10];
};  // Size: 0x38

class dKankyo_cloud_Packet : public J3DPacket {
public:
    virtual void draw();
    virtual ~dKankyo_cloud_Packet();

    /* 0x10 */ u8* mpResTex;
    /* 0x14 */ int field_0x14;
    /* 0x18 */ CLOUD_EFF field_0x18[50];
};  // Size: 0xB08

struct VRKUMO_EFF {
    /* 80056F18 */ ~VRKUMO_EFF();
    /* 80056F54 */ VRKUMO_EFF();

    /* 0x00 */ u8 field_0x0[4];
    /* 0x04 */ cXyz field_0x04;
    /* 0x10 */ cXyz field_0x10;
    /* 0x1C */ u8 field_0x1c[0x10];
};  // Size: 0x2C

class dKankyo_vrkumo_Packet : public J3DPacket {
public:
    virtual void draw();
    virtual ~dKankyo_vrkumo_Packet();

private:
    /* 0x0010 */ GXColor field_0x10;
    /* 0x0014 */ u8* mpResCloudtx_01;
    /* 0x0018 */ u8* mpResCloudtx_02;
    /* 0x001C */ u8* mpResCloudtx_03;
    /* 0x0020 */ VRKUMO_EFF field_0x20[100];
    /* 0x1150 */ f32 field_0x1150;
    /* 0x1154 */ f32 field_0x1154;
};  // Size: 0x1158

// might be fake
class dKankyo_shstar_Packet : public J3DPacket {};

struct EF_ODOUR_EFF {
    /* 80056F8C */ ~EF_ODOUR_EFF();
    /* 80056FC8 */ EF_ODOUR_EFF();

    /* 0x00 */ u8 field_0x0[4];
    /* 0x04 */ cXyz field_0x04;
    /* 0x10 */ cXyz field_0x10;
    /* 0x1C */ u8 field_0x1c[0x14];
};  // Size: 0x30

class dKankyo_odour_Packet : public J3DPacket {
public:
    virtual void draw();
    virtual ~dKankyo_odour_Packet();

    /* 0x00010 */ u8* mpResTex;
    /* 0x00014 */ EF_ODOUR_EFF field_0x18[2000];
    /* 0x17714 */ u8 field_0x17714[0x14];
};  // Size: 0x17728

struct EF_MUD_EFF {
    /* 80056FFC */ ~EF_MUD_EFF();
    /* 80057038 */ EF_MUD_EFF();

    /* 0x00 */ u8 field_0x0[4];
    /* 0x04 */ cXyz field_0x04;
    /* 0x10 */ cXyz field_0x10;
    /* 0x1C */ cXyz field_0x1c;
    /* 0x28 */ u8 field_0x28[0x20];
};  // Size: 0x48

class dKankyo_mud_Packet : public J3DPacket {
public:
    virtual void draw();
    virtual ~dKankyo_mud_Packet();

    /* 0x0010 */ int field_0x10;
    /* 0x0014 */ u8* field_0x14;
    /* 0x0018 */ EF_MUD_EFF field_0x18[100];
    /* 0x13C8 */ u8 field_0x13c8[8];
};

struct EF_EVIL_EFF {
    /* 8005706C */ ~EF_EVIL_EFF();
    /* 800570A8 */ EF_EVIL_EFF();

    /* 0x00 */ u8 field_0x0[4];
    /* 0x04 */ cXyz field_0x04;
    /* 0x10 */ cXyz field_0x10;
    /* 0x1C */ csXyz field_0x1c;
    /* 0x22 */ u8 field_0x22[0x22];
};  // Size: 0x44

class dKankyo_evil_Packet : public J3DPacket {
public:
    virtual void draw();
    virtual ~dKankyo_evil_Packet();

    /* 0x00010 */ int field_0x10;
    /* 0x00014 */ u8* field_0x14;
    /* 0x00018 */ u8 field_0x18[4];
    /* 0x0001C */ EF_EVIL_EFF field_0x1c[2000];
    /* 0x2135C */ u8 field_0x2135c[8];
};

#endif /* D_KANKYO_D_KANKYO_WETHER_H */
