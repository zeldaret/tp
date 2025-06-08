#ifndef D_A_TAG_SCHEDULE_H
#define D_A_TAG_SCHEDULE_H

#include "f_op/f_op_actor_mng.h"

class daTagSchedule_c : public fopAc_ac_c {
public:
    int create() {
        fopAcM_SetupActor(this, daTagSchedule_c);
        return cPhs_COMPLEATE_e;
    }

    int getSeqNum() { return (fopAcM_GetParam(this) >> 6) & 0x3f; }
    u16 getStartTime() { return (fopAcM_GetParam(this) >> 12) & 0xff; }
    u8 getStartEnd() { return (fopAcM_GetParam(this) >> 20) & 0xff; }
    int getGroupID() { return fopAcM_GetParam(this) & 0x3f; }
    int getWeekNum() { return mWeekNum; }
    void setWeekNum(int weekNum) { mWeekNum = weekNum; }
    u8 getPathID() { return shape_angle.x & 0xff; }
    s16 getFlowNodeNum() { return shape_angle.z; }

    /* 0x568 */ int mWeekNum;
};

#endif /* D_A_TAG_SCHEDULE_H */
