#ifndef PROCESSOR_H
#define PROCESSOR_H

#include "SSystem/SComponent/c_xyz.h"
#include "dolphin/types.h"

namespace JMessage {
struct TProcessor {
    /* 802A7B48 */ ~TProcessor();
    /* 802A7B90 */ void reset();
    /* 802A7BF8 */ void stack_pushCurrent(char const*);
    /* 802A7C30 */ void stack_popCurrent();
    /* 802A7C54 */ void getResource_groupID(u16) const;
    /* 802A7CD4 */ void toMessageCode_messageID(u32, u32, bool*) const;
    /* 802A7E38 */ void on_select_begin(char const* (*)(JMessage::TProcessor*), void const*,
                                        char const*, u32);
    /* 802A7EDC */ void on_select_end();
    /* 802A7F34 */ void on_select_separate();
    /* 802A7FC0 */ void do_reset();
    /* 802A7FC4 */ void do_begin(void const*, char const*);
    /* 802A7FC8 */ void do_end();
    /* 802A7FCC */ void do_character(int);
    /* 802A7FD0 */ bool do_tag(u32, void const*, u32);
    /* 802A7FD8 */ void do_select_begin(u32);
    /* 802A7FDC */ void do_select_end();
    /* 802A7FE0 */ void do_select_separate();
    /* 802A7FE4 */ void on_tag_();
    /* 802A8084 */ void do_resetStatus_(char const*);
    /* 802A8088 */ bool do_setBegin_isReady_() const;
    /* 802A8090 */ void do_tag_(u32, void const*, u32);
    /* 802A81EC */ void process_character_();
    /* 802A828C */ void process_onCharacterEnd_normal_(JMessage::TProcessor*);
    /* 802A82F4 */ void process_onCharacterEnd_select_(JMessage::TProcessor*);
    /* 802A833C */ void process_onSelect_limited_(JMessage::TProcessor*);
    /* 802A8358 */ void process_onSelect_(JMessage::TProcessor*);
    /* 802A8C24 */ void on_message(u32) const;
    /* 802A8C44 */ void getMessageText_messageCode(u32) const;
};

struct TReference {
    /* 802A7AF8 */ ~TReference();
    /* 802A7B40 */ bool do_word(u32) const;
};

struct TControl;

struct TSequenceProcessor {
    /* 802A8374 */ TSequenceProcessor(JMessage::TReference const*, JMessage::TControl*);
    /* 802A83B8 */ ~TSequenceProcessor();
    /* 802A8418 */ void process(char const*);
    /* 802A85A4 */ void on_isReady();
    /* 802A85D0 */ void on_jump_register(void const* (*)(JMessage::TSequenceProcessor const*), u32);
    /* 802A85E4 */ void on_jump_isReady();
    /* 802A8610 */ void on_jump(void const*, char const*);
    /* 802A8690 */ void
    on_branch_register(void const* (*)(JMessage::TSequenceProcessor const*, u32), void const*, u32);
    /* 802A86A0 */ void on_branch_query(u32);
    /* 802A86D4 */ void on_branch_queryResult();
    /* 802A8700 */ void on_branch(void const*, char const*);
    /* 802A8780 */ bool do_isReady();
    /* 802A8788 */ bool do_jump_isReady();
    /* 802A8790 */ void do_jump(void const*, char const*);
    /* 802A8794 */ void do_branch_query(u32);
    /* 802A8798 */ s32 do_branch_queryResult();
    /* 802A87A0 */ void do_branch(void const*, char const*);
    /* 802A87A4 */ void do_resetStatus_(char const*);
    /* 802A87C0 */ void do_setBegin_isReady_() const;
    /* 802A87D0 */ void do_begin_(void const*, char const*);
    /* 802A87D4 */ void do_end_();
    /* 802A87E0 */ void do_tag_(u32, void const*, u32);
    /* 802A892C */ void process_setMessageIndex_reserved_(u16);
    /* 802A8944 */ void process_setMessageCode_(JMessage::TSequenceProcessor const*, u16, u16);
    /* 802A89B8 */ void process_onJump_limited_(JMessage::TSequenceProcessor const*);
    /* 802A89EC */ void process_onJump_(JMessage::TSequenceProcessor const*);
    /* 802A8A18 */ void process_onBranch_limited_(JMessage::TSequenceProcessor const*, u32);
    /* 802A8A50 */ void process_onBranch_(JMessage::TSequenceProcessor const*, u32);
};

struct TRenderingProcessor {
    /* 802A8A84 */ TRenderingProcessor(JMessage::TReference const*);
    /* 802A8AC0 */ ~TRenderingProcessor();
    /* 802A8B20 */ void process(char const*);
    /* 802A8BA4 */ void do_begin_(void const*, char const*);
    /* 802A8BA8 */ void do_end_();
    /* 802A8BAC */ void do_tag_(u32, void const*, u32);
};
};  // namespace JMessage

struct jmessage_tReference {
    /* 80228B04 */ jmessage_tReference();
    /* 80229034 */ void pageSend();
    /* 80229168 */ void selectMessage();
    /* 802294A8 */ void inputNumber();
    /* 802297E4 */ void shiftCharCountBuffer();
    /* 80229810 */ void resetCharCountBuffer();
    /* 8022994C */ void isLightEnd();
    /* 80238C78 */ void setActorPos(cXyz);
};

struct jmessage_tControl;
struct jmessage_tSequenceProcessor {
    /* 8022B558 */ jmessage_tSequenceProcessor(jmessage_tReference const*, jmessage_tControl*);
};

struct jmessage_tRenderingProcessor {
    /* 8022CCB0 */ jmessage_tRenderingProcessor(jmessage_tReference const*);
    /* 8022E12C */ void resetRendering();
};

#endif /* PROCESSOR_H */
