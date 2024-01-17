#ifndef D_SAVE_D_SAVE_HIO_H
#define D_SAVE_D_SAVE_HIO_H

#include "global.h"

class dSvBit_childTransformHIO_c {
public:
    /* 8025C0A0 */ dSvBit_childTransformHIO_c();
    /* 8025C0D4 */ void init();

    /* 8025C2E4 */ virtual ~dSvBit_childTransformHIO_c() {}

private:
    /* 0x04 */ u8 field_0x4;
    /* 0x05 */ u8 WF[4];
    /* 0x09 */ u8 field_0x9[4];
};

class dSvBit_childDarknessHIO_c {
public:
    /* 8025C004 */ dSvBit_childDarknessHIO_c();
    /* 8025C038 */ void init();

    /* 8025C32C */ virtual ~dSvBit_childDarknessHIO_c() {}

private:
    /* 0x04 */ u8 field_0x4;
    /* 0x05 */ u8 TW[6];
    /* 0x0B */ u8 field_0xB[6];
};

class dSvBit_childOtherHIO_c {
public:
    /* 8025C13C */ dSvBit_childOtherHIO_c();
    /* 8025C178 */ void init();

    /* 8025C29C */ virtual ~dSvBit_childOtherHIO_c() {}

private:
    /* 0x04 */ u8 field_0x4;
    /* 0x05 */ u8 mDropNum;
    /* 0x06 */ u8 field_0x6;
    /* 0x07 */ u8 mLightVessel[4];
    /* 0x0B */ u8 field_0xb[4];
};

class dSvBit_childTbPerfectionHIO_c {
public:
    /* 8025BF68 */ dSvBit_childTbPerfectionHIO_c();
    /* 8025BF9C */ void init();

    /* 8025C374 */ virtual ~dSvBit_childTbPerfectionHIO_c() {}

private:
    /* 0x04 */ u8 field_0x4;
    /* 0x05 */ u8 field_0x5[0x40];
    /* 0x45 */ u8 field_0x45[0x40];
};

class dSvBit_childTreasureHIO_c {
public:
    /* 8025C874 */ virtual ~dSvBit_childTreasureHIO_c() {}
    void init() {
        mPerfectSave.init();
    }

private:
    /* 0x04 */ u8 field_0x4;
    /* 0x08 */ dSvBit_childTbPerfectionHIO_c mPerfectSave;
};

class dSvBit_childSwZoneHIO_c {
public:
    /* 8025BCB0 */ dSvBit_childSwZoneHIO_c();
    /* 8025BCE4 */ void init();

    /* 8025C524 */ virtual ~dSvBit_childSwZoneHIO_c() {}

private:
    /* 0x04 */ u8 field_0x4;
    /* 0x05 */ bool field_0x5[0x20];
    /* 0x25 */ bool field_0x25[0x20];
};

class dSvBit_childSwPerfectionHIO_c {
public:
    /* 8025BB78 */ dSvBit_childSwPerfectionHIO_c();
    /* 8025BBAC */ void init();

    /* 8025C5B4 */ virtual ~dSvBit_childSwPerfectionHIO_c() {}

private:
    /* 0x04 */ u8 field_0x4;
    /* 0x05 */ u8 field_0x5[0x80];
    /* 0x85 */ u8 field_0x85[0x80];
};

class dSvBit_childSwOneZoneHIO_c {
public:
    /* 8025BD10 */ dSvBit_childSwOneZoneHIO_c();
    /* 8025BD44 */ void init();

    /* 8025C4DC */ virtual ~dSvBit_childSwOneZoneHIO_c() {}

private:
    /* 0x04 */ u8 field_0x4;
    /* 0x05 */ bool field_0x5[0x10];
    /* 0x15 */ bool field_0x15[0x10];
};

class dSvBit_childSwDungeonHIO_c {
public:
    /* 8025BC14 */ dSvBit_childSwDungeonHIO_c();
    /* 8025BC48 */ void init();

    /* 8025C56C */ virtual ~dSvBit_childSwDungeonHIO_c() {}

private:
    /* 0x04 */ u8 field_0x4;
    /* 0x05 */ u8 field_0x5[0x40];
    /* 0x45 */ u8 field_0x45[0x40];
};

class dSvBit_childSwitchHIO_c {
public:
    /* 8025C970 */ virtual ~dSvBit_childSwitchHIO_c() {}
    void init() {
        field_0x8.init();
        field_0x110.init();
        field_0x198.init();
        field_0x1e0.init();
    }

private:
    /* 0x004 */ u8 field_0x4;
    /* 0x008 */ dSvBit_childSwPerfectionHIO_c field_0x8;
    /* 0x110 */ dSvBit_childSwDungeonHIO_c field_0x110;
    /* 0x198 */ dSvBit_childSwZoneHIO_c field_0x198;
    /* 0x1E0 */ dSvBit_childSwOneZoneHIO_c field_0x1e0;
};

class dSvBit_childItZoneHIO_c {
public:
    /* 8025BEA8 */ dSvBit_childItZoneHIO_c();
    /* 8025BEDC */ void init();

    /* 8025C404 */ virtual ~dSvBit_childItZoneHIO_c() {}

private:
    /* 0x04 */ u8 field_0x4;
    /* 0x05 */ u8 field_0x5[0x20];
    /* 0x25 */ u8 field_0x25[0x20];
};

class dSvBit_childItPerfectionHIO_c {
public:
    /* 8025BD70 */ dSvBit_childItPerfectionHIO_c();
    /* 8025BDA4 */ void init();

    /* 8025C494 */ virtual ~dSvBit_childItPerfectionHIO_c() {}

private:
    /* 0x04 */ u8 field_0x4;
    /* 0x05 */ u8 field_0x5[0x20];
    /* 0x25 */ u8 field_0x25[0x20];
};

class dSvBit_childItOneZoneHIO_c {
public:
    /* 8025BF08 */ dSvBit_childItOneZoneHIO_c();
    /* 8025BF3C */ void init();

    /* 8025C3BC */ virtual ~dSvBit_childItOneZoneHIO_c() {}

private:
    /* 0x04 */ u8 field_0x4;
    /* 0x05 */ u8 field_0x5[0x10];
    /* 0x15 */ u8 field_0x15[0x10];
};

class dSvBit_childItDungeonHIO_c {
public:
    /* 8025BE0C */ dSvBit_childItDungeonHIO_c();
    /* 8025BE40 */ void init();

    /* 8025C44C */ virtual ~dSvBit_childItDungeonHIO_c() {}

private:
    /* 0x04 */ u8 field_0x4;
    /* 0x05 */ u8 field_0x5[0x80];
    /* 0x85 */ u8 field_0x85[0x80];
};

class dSvBit_childItemHIO_c {
public:
    /* 8025C8D4 */ virtual ~dSvBit_childItemHIO_c() {}
    void init() {
        mFullSave.init();
        mDungeonSave.init();
        mZoneSave.init();
        mOneZoneSave.init();
    }

private:
    /* 0x004 */ u8 field_0x4;
    /* 0x008 */ dSvBit_childItPerfectionHIO_c mFullSave;
    /* 0x050 */ dSvBit_childItDungeonHIO_c mDungeonSave;
    /* 0x158 */ dSvBit_childItZoneHIO_c mZoneSave;
    /* 0x1A0 */ dSvBit_childItOneZoneHIO_c mOneZoneSave;
};

class dSvBit_HIO_c {
public:
    /* 8025C1F8 */ void init();

    /* 8025C6FC */ virtual ~dSvBit_HIO_c() {}

    /* 0x004 */ s8 field_0x4;
    /* 0x008 */ dSvBit_childSwitchHIO_c mSwitch;
    /* 0x210 */ dSvBit_childItemHIO_c mItem;
    /* 0x3D8 */ dSvBit_childTreasureHIO_c mTreasure;
    /* 0x468 */ dSvBit_childDarknessHIO_c mDarkness;
    /* 0x47C */ dSvBit_childTransformHIO_c mTransform;
    /* 0x48C */ dSvBit_childOtherHIO_c mOther;
    /* 0x49C */ u8 mTransformFlag;
    /* 0x49D */ u8 field_0x49d;
};

STATIC_ASSERT(sizeof(dSvBit_HIO_c) == 0x4A0);

extern dSvBit_HIO_c g_save_bit_HIO;

#endif /* D_SAVE_D_SAVE_HIO_H */
