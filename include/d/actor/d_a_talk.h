#ifndef D_A_TALK_H
#define D_A_TALK_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_msg_flow.h"

/**
 * @ingroup actors-unsorted
 * @class daTalk_c
 * @brief Talk (Unused?)
 *
 * @details
 *
 */
class daTalk_c : public fopAc_ac_c {
public:
    /* 80D66378 */ ~daTalk_c();
    /* 80D663E4 */ int create();
    /* 80D664AC */ int execute();
    /* 80D6665C */ int draw();
    /* 80D66664 */ void setStatus(u16);
    /* 80D66688 */ u16 getStatus();
    /* 80D666A8 */ u32 messageSet();

private:
    /* 0x568 */ dMsgFlow_c mMsgFlow;
    /* 0x5B4 */ u32 mMessageID;
};

STATIC_ASSERT(sizeof(daTalk_c) == 0x5B8);

#endif /* D_A_TALK_H */
