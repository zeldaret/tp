#ifndef D_COM_D_COM_STATIC_H
#define D_COM_D_COM_STATIC_H

#include "dolphin/types.h"
#include "f_op/f_op_actor.h"

class daSus_c {
public:
    class data_c {
    public:
        /* 80030F14 */ void set(s8, cXyz const&, cXyz const&, u8, u8, u8);
        /* 80030FBC */ void reset();
        /* 80030FCC */ void isSwitch();
        /* 800310C8 */ void check(fopAc_ac_c*);
        /* 80031038 */ void check(cXyz const&);
        /* 80031150 */ void execute();
        /* 80031F28 */ ~data_c();
        /* 80031F64 */ data_c();
    };

    class room_c {
    public:
        /* 80031190 */ void add(daSus_c::data_c*);
        /* 800311FC */ void reset();
        /* 80031EE4 */ room_c();
    };

    /* 80031248 */ void newData(s8, cXyz const&, cXyz const&, u8, u8, u8);
    /* 800313BC */ void reset();
    /* 800314D4 */ void check(fopAc_ac_c*);
    /* 80031434 */ static bool check(s8, cXyz const&);
    /* 800315A4 */ static void execute();

    static u8 mData[1152];
    static u8 mRoom[256];
};

#endif /* D_COM_D_COM_STATIC_H */
