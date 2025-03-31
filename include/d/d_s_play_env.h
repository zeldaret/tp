#include "SSystem/SComponent/c_xyz.h"

class dScnPly_env_otherHIO_c {
public:
    /* 80259440 */ dScnPly_env_otherHIO_c();

    /* 8025AC0C */ virtual ~dScnPly_env_otherHIO_c() {}

    /* 0x4 */ f32 mShadowDensity;
    /* 0x8 */ u8 mLODBias;
    /* 0x9 */ u8 field_0x9;
    /* 0xA */ u8 mDispTransCylinder;
};

class dScnPly_env_debugHIO_c {
public:
    /* 80259468 */ dScnPly_env_debugHIO_c();

    /* 8025ABC4 */ virtual ~dScnPly_env_debugHIO_c() {}

private:
    /* 0x04 */ u8 field_0x4;
    /* 0x08 */ cXyz mBoxCullMinSize;
    /* 0x14 */ cXyz mBoxCullMaxSize;
    /* 0x20 */ cXyz mSphereCullCenter;
    /* 0x2C */ f32 mSphereCullRadius;
};
