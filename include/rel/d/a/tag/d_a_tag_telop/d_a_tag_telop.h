#ifndef D_A_TAG_TELOP_H
#define D_A_TAG_TELOP_H

#include "d/com/d_com_inf_game.h"
#include "dolphin/types.h"

class daTag_Telop_c : public fopAc_ac_c {
public:
    daTag_Telop_c() {}
    ~daTag_Telop_c() {}

    int create();
    void execute();

    u16 getMessageNo() { return orig.angle.z; }

private:
    /* 0x568 */ u16 mMessageNo;
    /* 0x56C */ int mMessageStatus;
};

#endif /* D_A_TAG_TELOP_H */
