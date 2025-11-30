#ifndef D_A_SUSPEND_H
#define D_A_SUSPEND_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-unsorted
 * @class daSus_c
 * @brief Suspend
 *
 * @details
 *
 */
class daSus_c : public fopAc_ac_c {
public:
    class data_c {
    public:
        /* 80030F14 */ void set(s8, cXyz const&, cXyz const&, u8, u8, u8);
        /* 80030FBC */ data_c* reset();
        /* 80030FCC */ u8 isSwitch();
        /* 800310C8 */ u8 check(fopAc_ac_c*);
        /* 80031038 */ bool check(cXyz const&);
        /* 80031150 */ void execute();
        /* 80031F28 */ ~data_c() {}
        /* 80031F64 */ data_c() { reset(); }

        void setNext(data_c* i_next) { mpNext = i_next; }
        data_c* getNext() { return mpNext; }
        u8 getType() { return mType; }
        bool isUsed() { return mRoomNo < 0; }
        s8 getRoomNo() { return mRoomNo; }

        /* 0x00 */ s8 mRoomNo;
        /* 0x01 */ bool field_0x1;
        /* 0x02 */ u8 field_0x2;
        /* 0x03 */ u8 field_0x3;
        /* 0x04 */ u8 mType;
        /* 0x08 */ cXyz field_0x8;
        /* 0x14 */ cXyz field_0x14;
        /* 0x20 */ data_c* mpNext;
    };  // Size: 0x24

    class room_c {
    public:
        /* 80031190 */ void add(daSus_c::data_c*);
        /* 800311FC */ void reset();
        /* 80031EE4 */ room_c() { init(); }
        void init() { mpData = NULL; }

        /* 0x0 */ data_c* mpData;
    };  // Size: 0x4

    /* 80031248 */ static int newData(s8, cXyz const&, cXyz const&, u8, u8, u8);
    /* 800313BC */ static void reset();
    /* 800314D4 */ static void check(fopAc_ac_c*);
    /* 80031434 */ static bool check(s8 i_roomNo, cXyz const& i_pos);
    /* 800315A4 */ static void execute();
    /* 804D5118 */ int create();

    static void reset(int roomNo) {
        mRoom[roomNo].reset();
    }

    u32 getScale() { return fopAcM_GetParam(this) >> 0x1E; }
    u8 getArg1() { return (fopAcM_GetParam(this) >> 9) & 1; }
    u8 getArg0() { return (fopAcM_GetParam(this) >> 8) & 1; }
    u8 getSw() { return fopAcM_GetParam(this) & 0xFF; }
    u8 getRoom() { return fopAcM_GetParam(this) >> 10; }

    static data_c mData[0x20];
    static room_c mRoom[0x40];
    static s16 mSetTop;
};

#endif /* D_A_SUSPEND_H */
