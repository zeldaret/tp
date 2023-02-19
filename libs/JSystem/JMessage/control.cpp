/**
 * JMessage/control.cpp
 * JMessage Controller
 */

#include "JSystem/JMessage/control.h"
#include "JSystem/JMessage/processor.h"

//
// External References:
//

extern "C" void reset__Q28JMessage10TProcessorFv();
extern "C" void getResource_groupID__Q28JMessage10TProcessorCFUs();
extern "C" void toMessageCode_messageID__Q28JMessage10TProcessorCFUlUlPb();
extern "C" void process_onCharacterEnd_normal___Q28JMessage10TProcessorFPQ28JMessage10TProcessor();
extern "C" void process__Q28JMessage18TSequenceProcessorFPCc();
extern "C" void process__Q28JMessage19TRenderingProcessorFPCc();
extern "C" void __dl__FPv();
extern "C" void _savegpr_28();
extern "C" void _restgpr_28();

//
// Declarations:
//

/* 802A7548-802A758C 2A1E88 0044+00 0/0 2/2 0/0 .text            __ct__Q28JMessage8TControlFv */
JMessage::TControl::TControl()
    : pSequenceProcessor_(NULL), pRenderingProcessor_(NULL), messageCode_(0xFFFF),
      field_0xe(0xFFFF), pResourceCache_(NULL), pEntry_(NULL), pMessageText_begin_(0),
      pszText_update_current_(NULL), field_0x20(0) {}

/* 802A758C-802A75D4 2A1ECC 0048+00 1/0 2/2 0/0 .text            __dt__Q28JMessage8TControlFv */
JMessage::TControl::~TControl() {}

/* 802A75D4-802A7634 2A1F14 0060+00 0/0 9/9 0/0 .text            reset__Q28JMessage8TControlFv */
void JMessage::TControl::reset() {
    pEntry_ = NULL;
    pMessageText_begin_ = 0;
    pszText_update_current_ = NULL;
    field_0x20 = 0;
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
#ifdef NONMATCHING
void JMessage::TControl::render() {
    if (isReady_render_()) {
        pRenderingProcessor_->setBegin_messageEntryText(pResourceCache_, pEntry_, field_0x20);
        pRenderingProcessor_->oStack_ = oStack_renderingProcessor_;
        pRenderingProcessor_->process(pszText_update_current_);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JMessage::TControl::render() {
    nofralloc
#include "asm/JSystem/JMessage/control/render__Q28JMessage8TControlFv.s"
}
#pragma pop
#endif

/* 802A77E8-802A78F4 2A2128 010C+00 0/0 1/1 0/0 .text setMessageCode__Q28JMessage8TControlFUsUs */
int JMessage::TControl::setMessageCode(u16 param_0, u16 param_1) {
    return setMessageCode_inReset_(getProcessor(), param_0, param_1);
}

/* 802A78F4-802A7A20 2A2234 012C+00 0/0 6/6 0/0 .text setMessageID__Q28JMessage8TControlFUlUlPb */
int JMessage::TControl::setMessageID(u32 param_0, u32 param_1, bool* param_2) {
    TProcessor* pProcessor = getProcessor();

    u32 code = pProcessor->toMessageCode_messageID(param_0, param_1, param_2);
    if (code == -1) {
        return 0;
    }

    return setMessageCode_inReset_(pProcessor, code >> 0x10, code & 0xFFFF);
}

/* 802A7A20-802A7AF8 2A2360 00D8+00 2/2 1/1 0/0 .text
 * setMessageCode_inSequence___Q28JMessage8TControlFPCQ28JMessage10TProcessorUsUs */
bool JMessage::TControl::setMessageCode_inSequence_(JMessage::TProcessor const* pProcessor,
                                                    u16 messageCode, u16 messageIndex) {
    pEntry_ = pProcessor->getMessageEntry_messageCode(messageCode, messageIndex);

    if (pEntry_ == NULL) {
        return false;
    }

    messageCode_ = messageCode;
    field_0xe = messageIndex;
    pResourceCache_ = pProcessor->getResourceCache();
    pMessageText_begin_ = pResourceCache_->getMessageText_messageEntry(pEntry_);
    field_0x20 = pMessageText_begin_;
    oStack_renderingProcessor_.clear();
    return true;
}
