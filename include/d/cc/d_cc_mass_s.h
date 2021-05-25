#ifndef D_CC_D_CC_MASS_S_H
#define D_CC_D_CC_MASS_S_H

#include "SSystem/SComponent/c_cc_d.h"
#include "dolphin/types.h"

class dCcMassS_Obj {
public:
    dCcMassS_Obj();
    ~dCcMassS_Obj();

private:
    u8 field_0x0[12];
    cCcD_DivideInfo cccd_divideinfo;
    void* vtable;
}; // Size = 0x20

STATIC_ASSERT(0x20 == sizeof(dCcMassS_Obj));

class dCcMassS_Mng {
public:
    dCcMassS_Mng(void);
    ~dCcMassS_Mng();

public: // TODO: offsets/padding sizes are messed up!
    /* 0x0000 */ cCcD_DivideArea cccd_dividearea;
    /* 0x0040 */ u8 field_0x40[4]; // might be part of divide area?
    /* 0x0044 */ dCcMassS_Obj dccmasss_obj;
    /* 0x0064 */ u8 field_0x64[278+20-0x24];
    /* 0x0188 */ dCcMassS_Obj dccmasss_obj2;
    /* 0x01A8 */ u8 field_0x1a8[32];
    /* 0x01C8 */ cCcD_CylAttr cccd_cylattr;
    /* 0x0200 */ u8 field_0x200[2];
    /* 0x0202 */ u8 field_0x202;
    /* 0x0203 */ u8 field_0x203;
    /* 0x0204 */ float cam_x_pos;
    /* 0x0208 */ float cam_y_pos;
    /* 0x020C */ float cam_z_pos;
    /* 0x0210 */ float field_0x210;
    /* 0x0214 */ float field_0x214;
    /* 0x0218 */ float field_0x218;
    /* 0x021C */ u8 field_0x21c[8];
    /* 0x0224 */ cCcD_CpsAttr cccd_cpsattr;
    /* 0x0288 */ cCcD_DivideInfo cccd_divideinfo;
};

#endif /* D_CC_D_CC_MASS_S_H */
