#ifndef JMESSAGE_CONTROL_H
#define JMESSAGE_CONTROL_H

#include "dolphin/types.h"
#include "JSystem/JMessage/processor.h"
#include "JSystem/JMessage/resource.h"

namespace JMessage {
struct TControl {
    /* 802A7548 */ TControl();
    /* 802A758C */ virtual ~TControl();

    /* 802A75D4 */ void reset();
    /* 802A7634 */ void update();
    /* 802A76BC */ void render();
    /* 802A77E8 */ void setMessageCode(u16, u16);
    /* 802A78F4 */ void setMessageID(u32, u32, bool*);
    /* 802A7A20 */ void setMessageCode_inSequence_(JMessage::TProcessor const*, u16, u16);

    /* 0x04 */ TSequenceProcessor* pSequenceProcessor_;
    /* 0x08 */ TRenderingProcessor* pRenderingProcessor_;
    /* 0x0C */ u16 messageCode_;
    /* 0x0E */ u16 field_0xe;
    /* 0x10 */ TResource* pResourceCache_;
    /* 0x14 */ void* pEntry_;
    /* 0x18 */ u32 pMessageText_begin_;
    /* 0x1C */ char* pszText_update_current_;
    /* 0x20 */ u32 field_0x20;
    /* 0x24 */ TProcessor::TStack_ oStack_renderingProcessor_;
};
};  // namespace JMessage

struct jmessage_tControl : public JMessage::TControl {
    /* 802299EC */ jmessage_tControl();

    /* 80039B0C */ virtual ~jmessage_tControl();
};

#endif /* JMESSAGE_CONTROL_H */
