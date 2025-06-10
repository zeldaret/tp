/**
 * JMessage/control.cpp
 * JMessage Controller
 */

#include "JSystem/JMessage/control.h"

/* 802A7548-802A758C 2A1E88 0044+00 0/0 2/2 0/0 .text            __ct__Q28JMessage8TControlFv */
JMessage::TControl::TControl()
    : pSequenceProcessor_(NULL),
      pRenderingProcessor_(NULL),
      uMessageGroupID_(0xFFFF),
      uMessageID_(0xFFFF),
      pResourceCache_(NULL),
      pEntry_(NULL),
      pMessageText_begin_(NULL),
      pszText_update_current_(NULL),
      pMessageText_current_(NULL)
      {}

/* 802A758C-802A75D4 2A1ECC 0048+00 1/0 2/2 0/0 .text            __dt__Q28JMessage8TControlFv */
JMessage::TControl::~TControl() {}

/* 802A75D4-802A7634 2A1F14 0060+00 0/0 9/9 0/0 .text            reset__Q28JMessage8TControlFv */
void JMessage::TControl::reset() {
    pEntry_ = NULL;
    pMessageText_begin_ = NULL;
    pszText_update_current_ = NULL;
    pMessageText_current_ = NULL;
    oStack_renderingProcessor_.clear();

    if (pSequenceProcessor_ != NULL) {
        pSequenceProcessor_->reset();
    }

    if (pRenderingProcessor_ != NULL) {
        pRenderingProcessor_->reset();
    }
}

/* 802A7634-802A76BC 2A1F74 0088+00 0/0 4/4 0/0 .text            update__Q28JMessage8TControlFv */
int JMessage::TControl::update() {
    if (!isReady_update_()) {
        return 0;
    }

    pszText_update_current_ = pSequenceProcessor_->process(NULL);
    if (pszText_update_current_ == NULL) {
        pMessageText_begin_ = 0;
        return 0;
    }

    return 1;
}

/* 802A76BC-802A77E8 2A1FFC 012C+00 0/0 5/5 0/0 .text            render__Q28JMessage8TControlFv */
void JMessage::TControl::render() {
    if (isReady_render_()) {
        pRenderingProcessor_->setBegin_messageEntryText(pResourceCache_, pEntry_, pMessageText_current_);
        pRenderingProcessor_->oStack_ = oStack_renderingProcessor_;
        pRenderingProcessor_->process(pszText_update_current_);
    }
}

/* 802A77E8-802A78F4 2A2128 010C+00 0/0 1/1 0/0 .text setMessageCode__Q28JMessage8TControlFUsUs */
int JMessage::TControl::setMessageCode(u16 u16GroupID, u16 u16Index) {
    TProcessor* pProcessor = getProcessor();
    JUT_ASSERT(120, pProcessor!=0);
    return setMessageCode_inReset_(pProcessor, u16GroupID, u16Index);
}

/* 802A78F4-802A7A20 2A2234 012C+00 0/0 6/6 0/0 .text setMessageID__Q28JMessage8TControlFUlUlPb */
int JMessage::TControl::setMessageID(u32 uMsgID, u32 param_1, bool* pbValid) {
    TProcessor* pProcessor = getProcessor();
    JUT_ASSERT(132, pProcessor!=0);

    u32 uCode = pProcessor->toMessageCode_messageID(uMsgID, param_1, pbValid);
    if (uCode == 0xFFFFFFFF) {
        return 0;
    }

    return setMessageCode_inReset_(pProcessor, uCode >> 16, uCode & 0xFFFF);
}

/* 802A7A20-802A7AF8 2A2360 00D8+00 2/2 1/1 0/0 .text
 * setMessageCode_inSequence___Q28JMessage8TControlFPCQ28JMessage10TProcessorUsUs */
bool JMessage::TControl::setMessageCode_inSequence_(JMessage::TProcessor const* pProcessor, u16 u16GroupID, u16 u16Index) {
    pEntry_ = pProcessor->getMessageEntry_messageCode(u16GroupID, u16Index);
    if (pEntry_ == NULL) {
        return false;
    }

    uMessageGroupID_ = u16GroupID;
    uMessageID_ = u16Index;
    
    pResourceCache_ = pProcessor->getResourceCache();
    JUT_ASSERT(155, pResourceCache_!=0);

    pMessageText_begin_ = pResourceCache_->getMessageText_messageEntry(pEntry_);
    pMessageText_current_ = pMessageText_begin_;
    oStack_renderingProcessor_.clear();
    return true;
}
