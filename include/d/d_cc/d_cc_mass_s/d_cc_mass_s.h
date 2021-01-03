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
    cCcD_DivideArea cccd_dividearea;
    u8 field_0x20[36];
    dCcMassS_Obj dccmasss_obj;
    u8 field_0x64[292];
    dCcMassS_Obj dccmasss_obj2;
    u8 field_0x1a8[32];
    cCcD_CylAttr cccd_cylattr;
    u8 field_0x200[2];
    u8 field_0x202;
    u8 field_0x203;
    float field_0x204;
    float field_0x208;
    float field_0x20c;
    float field_0x210;
    float field_0x214;
    float field_0x218;
    u8 field_0x21c[8];
    cCcD_CpsAttr cccd_cpsattr;
    cCcD_DivideInfo cccd_divideinfo;
};