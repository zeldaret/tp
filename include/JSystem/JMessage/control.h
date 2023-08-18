#ifndef JMESSAGE_CONTROL_H
#define JMESSAGE_CONTROL_H

#include "JSystem/JMessage/processor.h"
#include "dolphin/types.h"

namespace JMessage {
struct TControl {
    /* 802A7548 */ TControl();
    /* 802A758C */ virtual ~TControl();

    /* 802A75D4 */ void reset();
    /* 802A7634 */ int update();
    /* 802A76BC */ void render();
    /* 802A77E8 */ int setMessageCode(u16, u16);
    /* 802A78F4 */ int setMessageID(u32, u32, bool*);
    /* 802A7A20 */ bool setMessageCode_inSequence_(JMessage::TProcessor const*, u16, u16);

    bool isReady_update_() const { return pMessageText_begin_ != 0 && pSequenceProcessor_ != NULL; }
    bool isReady_render_() const { return field_0x20 != 0 && pRenderingProcessor_ != NULL; }

    TProcessor* getProcessor() const {
        return pSequenceProcessor_ != NULL ? (TProcessor*)pSequenceProcessor_ :
                                             (TProcessor*)pRenderingProcessor_;
    }

    int setMessageCode_inReset_(TProcessor* pProcessor, u16 param_1, u16 param_2) {
        if (!setMessageCode_inSequence_(pProcessor, param_1, param_2)) {
            return 0;
        }

        if (isReady_update_()) {
            pSequenceProcessor_->setBegin_messageEntryText(pResourceCache_, pEntry_,
                                                           pMessageText_begin_);
        }

        return 1;
    }

    const char* getMessageText_begin() const { return pMessageText_begin_; }
    void* getMessageEntry() const { return pEntry_; }

    /* 0x04 */ TSequenceProcessor* pSequenceProcessor_;
    /* 0x08 */ TRenderingProcessor* pRenderingProcessor_;
    /* 0x0C */ u16 messageCode_;
    /* 0x0E */ u16 field_0xe;
    /* 0x10 */ const TResource* pResourceCache_;
    /* 0x14 */ void* pEntry_;
    /* 0x18 */ const char* pMessageText_begin_;
    /* 0x1C */ const char* pszText_update_current_;
    /* 0x20 */ const char* field_0x20;
    /* 0x24 */ TProcessor::TStack_ oStack_renderingProcessor_;
};
};  // namespace JMessage

struct jmessage_tControl : public JMessage::TControl {
    /* 802299EC */ jmessage_tControl();

    /* 80039B0C */ virtual ~jmessage_tControl();
};

#endif /* JMESSAGE_CONTROL_H */
