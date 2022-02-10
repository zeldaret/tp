#ifndef D_D_TRESURE_H
#define D_D_TRESURE_H

#include "dolphin/mtx/mtxvec.h"
#include "dolphin/types.h"

class dTres_c {
public:
    struct data_s {
        /* 0x00 */ u8 mNo;
        /* 0x01 */ s8 mRoomNo;
        /* 0x02 */ u8 mStatus;
        /* 0x03 */ u8 mArg1;
        /* 0x04 */ Vec mPos;
        /* 0x10 */ u8 mSwBit;
        /* 0x11 */ u8 mType;
        /* 0x12 */ u8 mArg2;
        /* 0x13 */ u8 mAngleY;
    };

    class typeGroupData_c {
    public:
        data_s* getDataPointer() { return &mData; }
        void setNextDataPointer(typeGroupData_c* data) { mNextData = data; }
        void setTypeGroupNo(u8 no) { mTypeGroupNo = no; }

        /* 0x00 */ data_s mData;
        /* 0x14 */ typeGroupData_c* mNextData;
        /* 0x18 */ u8 mTypeGroupNo;
    };  // Size: 0x1C

    struct list_class {
        /* 0x0 */ int field_0x0;
        /* 0x4 */ typeGroupData_c* field_0x4;
        /* 0x8 */ u8 field_0x8;
    };

    /* 8009BBD8 */ static int createWork();
    /* 8009BC18 */ static void create();
    /* 8009BC60 */ void remove();
    /* 8009BC6C */ static void reset();
    /* 8009BCB4 */ static void addData(dTres_c::list_class*, s8);
    /* 8009BE28 */ static void checkTreasureBox(dTres_c::data_s*);
    /* 8009C168 */ void onStatus(u8, int, int);
    /* 8009C1F0 */ void offStatus(u8, int, int);
    /* 8009C27C */ void getBossIconFloorNo(int*);
    /* 8009C360 */ void getFirstData(u8);
    /* 8009C39C */ void getNextData(dTres_c::typeGroupData_c*);
    /* 8009C3B4 */ void getNextData(dTres_c::typeGroupData_c const*);
    /* 8009C3CC */ void setPosition(int, u8, Vec const*, int);
    /* 8009C49C */ void getTypeGroupNoToType(u8);
    /* 8009C4B0 */ static u8 getTypeToTypeGroupNo(u8);

    static u8 const typeToTypeGroup[34];
    static list_class mTypeGroupListAll[17];
    static typeGroupData_c* mTypeGroupData;
    static u16 mNum;
};

#endif /* D_D_TRESURE_H */
