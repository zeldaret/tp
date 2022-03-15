#ifndef CONTROL_H
#define CONTROL_H

#include "dolphin/types.h"

namespace JMessage {
struct TProcessor;

struct TControl {
    /* 802A7548 */ TControl();
    /* 802A758C */ ~TControl();
    /* 802A75D4 */ void reset();
    /* 802A7634 */ void update();
    /* 802A76BC */ void render();
    /* 802A77E8 */ void setMessageCode(u16, u16);
    /* 802A78F4 */ void setMessageID(u32, u32, bool*);
    /* 802A7A20 */ void setMessageCode_inSequence_(JMessage::TProcessor const*, u16, u16);
};
};  // namespace JMessage

struct jmessage_tControl {};

#endif /* CONTROL_H */
