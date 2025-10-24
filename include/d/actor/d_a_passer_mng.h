#ifndef D_A_PASSER_MNG_H
#define D_A_PASSER_MNG_H

#include "SSystem/SComponent/c_lib.h"
#include "f_op/f_op_actor_mng.h"

class dPath;
class daPasserMng_Hio_c;
class daPasserMng_Attr_c;

/**
 * @ingroup actors-unsorted
 * @class daPasserMng_c
 * @brief Hylian Passerby Manager?
 *
 * @details
 *
*/

class daPasserMng_c : public fopAc_ac_c {
public:
    inline daPasserMng_c();
    /* 80D45738 */ int execute();
    /* 80D4597C */ int getPasserParam();
    /* 80D45E14 */ inline int getLuggageParamHigh(u32);
    /* 80D46768 */ int create();
    /* 80D467C0 */ void create_init();

    inline int getLuggageParamLow(u32);
    inline u8 getDetailLevel();
    inline bool checkOverlapping(int, u8);
    inline daPasserMng_Attr_c& attr() const;
    inline u8 getGroupNo();
    inline u8 getPathID();
    inline u8 getMaxNum();
    inline int getChildNum();
    inline int getDayOfWeek();
    inline int getTime();
    inline int getTimeHour();
    inline int getTimeMinute();
    inline u8 getEndTime();
    inline u8 getStartTime();
    inline u8 getIntervalTime();
    inline ~daPasserMng_c();

    struct Group {
        u8 field_0x00;
        int field_0x04[0];
    };
    static Group* mGroupTbl[4];

    #if DEBUG
    static daPasserMng_Attr_c const M_attr;
    static daPasserMng_Hio_c M_hio;
    #endif
private:
    /* 0x568 */ fpc_ProcID* childProcIds;
    /* 0x56C */ dPath* mPath;
    /* 0x570 */ int startTime;
    /* 0x574 */ int endTime;
    /* 0x578 */ int intervalTime;
    /* 0x57C */ int mTime;
    /* 0x580 */ int dayOfWeek;
    /* 0x584 */ int currentChildIndex;
    /* 0x588 */ s16 npcId;
    /* 0x58A */ s16 field_0x58a[5];
    /* 0x594 */ s16 field_0x594;
    /* 0x596 */ u8 field_0x596;
    /* 0x597 */ u8 field_0x597;
};

STATIC_ASSERT(sizeof(daPasserMng_c) == 0x598);

#endif /* D_A_PASSER_MNG_H */
