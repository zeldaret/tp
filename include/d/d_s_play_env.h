#include "JSystem/JHostIO/JORReflexible.h"
#include "SSystem/SComponent/c_xyz.h"

class dScnPly_env_otherHIO_c : public JORReflexible {
public:
    /* 80259440 */ dScnPly_env_otherHIO_c();

    /* 8025AC0C */ virtual ~dScnPly_env_otherHIO_c() {}
    void genMessage(JORMContext*);

    /* 0x04 */ f32 mShadowDensity;
    /* 0x08 */ u8 mLODBias;
    /* 0x09 */ u8 field_0x9;
    /* 0x0A */ u8 mDispTransCylinder;
    #ifdef DEBUG
    /* 0x0B */ u8 field_0xb[0x46 - 0xb];
    /* 0x46 */ u8 field_0x46;
    /* 0x47 */ u8 field_0x47[0x4f - 0x47];
    #endif
};

class dScnPly_env_debugHIO_c : public JORReflexible {
public:
    /* 80259468 */ dScnPly_env_debugHIO_c();

    /* 8025ABC4 */ virtual ~dScnPly_env_debugHIO_c() {}
    void genMessage(JORMContext*);

    /* 0x04 */ u8 field_0x4;
    /* 0x08 */ cXyz mBoxCullMinSize;
    /* 0x14 */ cXyz mBoxCullMaxSize;
    /* 0x20 */ cXyz mSphereCullCenter;
    /* 0x2C */ f32 mSphereCullRadius;
};
