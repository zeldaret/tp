#include "SComponent/c_cc_d/c_cc_d.h"
#include "global.h"

class dCcMassS_Obj {
public:
private:
    u8 field_0x0[12];
    cCcD_DivideInfo cccd_divideinfo;
    void* vtable;
};

class dCcMassS_Mng {
public:
private:
    /* 0x0000 */ cCcD_DivideArea cccd_dividearea;
    /* 0x0020 */ u8 field_0x20[36];
    /* 0x0044 */ dCcMassS_Obj dccmasss_obj;
    /* 0x0064 */ u8 field_0x64[292];
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