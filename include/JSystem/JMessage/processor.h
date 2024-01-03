#ifndef JMESSAGE_PROCESSOR_H
#define JMESSAGE_PROCESSOR_H

#include "JSystem/JMessage/resource.h"

namespace JMessage {
struct TResource;
struct TResourceContainer;

struct TReference {
    TReference() { pcResource_ = NULL; }

    /* 802A7AF8 */ virtual ~TReference();
    /* 802A7B40 */ virtual const char* do_word(u32) const;

    int on_parseCharacter(const char** string) const { return pcResource_->parseCharacter(string); }
    const char* on_word(u32 param_0) const { return do_word(param_0); }

    TResource* getResource_groupID(u16 groupID) const {
        if (pcResource_ == NULL) {
            return NULL;
        }

        return pcResource_->getResource_groupID(groupID);
    }

    TResourceContainer* getResourceContainer() const { return pcResource_; }
    void setResourceContainer(TResourceContainer* container) { pcResource_ = container; }

    /* 0x4 */ TResourceContainer* pcResource_;
};

struct TProcessor {
    TProcessor(const TReference* reference)
        : pReference_(reference), pResourceCache_(NULL), pszCurrent_(NULL) {}

    typedef bool (*pfnProcess_func)(TProcessor*);

    struct TStack_ {
        TStack_() { clear(); }

        bool empty() const { return upsz_ == 0; }
        bool IsPushable() const { return size() < max_size(); }

        void clear() { upsz_ = 0; }
        u32 max_size() const { return 4; }
        u32 size() const { return upsz_; }

        const char* top() const { return stack[upsz_ - 1]; }

        void push(const char* string) {
            stack[upsz_] = string;
            upsz_++;
        }

        void pop() { upsz_--; }

        /* 0x0 */ u32 upsz_;  // stack size
        /* 0x4 */ const char* stack[4];
    };  // Size: 0x14

    struct TProcess_ {
        TProcess_() { reset_normal(); }

        void reset_normal() { pfnProcess_CharacterEnd = process_onCharacterEnd_normal_; }
        void reset_select() { pfnProcess_CharacterEnd = process_onCharacterEnd_select_; }

        /* 0x0 */ pfnProcess_func pfnProcess_CharacterEnd;
        struct {
            /* 0x0 */ const char* (*pfn)(TProcessor*);
            /* 0x4 */ const char* pcBase;
            /* 0x8 */ const void* pOffset;
            /* 0xC */ u32 uRest;
        }
        /* 0x4 */ rData;
    };  // Size: 0x14

    /* 802A7B90 */ void reset();
    /* 802A7BF8 */ void stack_pushCurrent(char const*);
    /* 802A7C30 */ void stack_popCurrent();
    /* 802A7C54 */ const TResource* getResource_groupID(u16) const;
    /* 802A7CD4 */ u32 toMessageCode_messageID(u32, u32, bool*) const;
    /* 802A7E38 */ void on_select_begin(char const* (*)(JMessage::TProcessor*), void const*,
                                        char const*, u32);
    /* 802A7EDC */ void on_select_end();
    /* 802A7F34 */ void on_select_separate();
    /* 802A7FE4 */ void on_tag_();
    /* 802A8090 */  // void do_tag_(u32, void const*, u32);
    /* 802A81EC */ bool process_character_();
    /* 802A828C */ static bool process_onCharacterEnd_normal_(JMessage::TProcessor*);
    /* 802A82F4 */ static bool process_onCharacterEnd_select_(JMessage::TProcessor*);
    /* 802A833C */ static const char* process_onSelect_limited_(JMessage::TProcessor*);
    /* 802A8358 */ static const char* process_onSelect_(JMessage::TProcessor*);
    /* 802A8C24 */ const char* on_message(u32) const;
    /* 802A8C44 */ const char* getMessageText_messageCode(u32) const;

    /* 802A7B48 */ virtual ~TProcessor();
    /* 802A7FC0 */ virtual void do_reset();
    /* 802A7FC4 */ virtual void do_begin(void const*, char const*);
    /* 802A7FC8 */ virtual void do_end();
    /* 802A7FCC */ virtual void do_character(int);
    /* 802A7FD0 */ virtual bool do_tag(u32, void const*, u32);
    /* 802A7FD8 */ virtual void do_select_begin(u32);
    /* 802A7FDC */ virtual void do_select_end();
    /* 802A7FE0 */ virtual void do_select_separate();
    /* 802A8084 */ virtual void do_resetStatus_(char const*);
    /* 802A8088 */ virtual bool do_setBegin_isReady_() const;
    virtual void do_begin_(void const*, char const*) = 0;
    virtual void do_end_() = 0;
    virtual void do_tag_(u32, void const*, u32) = 0;

    void on_resetStatus_(const char* param_0) {
        pszCurrent_ = param_0;
        oStack_.clear();
        oProcess_.reset_normal();
        do_resetStatus_(param_0);
    }

    void on_begin(const void* entry, const char* param_1) {
        do_begin_(entry, param_1);
        do_begin(entry, param_1);
    }

    void on_end() {
        do_end_();
        do_end();
    }

    void on_tag(u32 param_0, const void* param_1, u32 param_2) {
        if (!do_tag(param_0, param_1, param_2)) {
            do_tag_(param_0, param_1, param_2);
        }
    }

    const char* on_word(u32 param_0) const { return pReference_->on_word(param_0); }

    int on_parseCharacter(const char** string) const {
        return pReference_->on_parseCharacter(string);
    }
    void on_character(int character) { do_character(character); }

    const char* on_message_limited(u16 messageIndex) const {
        return pResourceCache_->getMessageText_messageIndex(messageIndex);
    }

    int setBegin_messageEntryText(const TResource* resource, const void* entry,
                                  const char* param_2) {
        pResourceCache_ = resource;
        on_resetStatus_(param_2);
        on_begin(entry, param_2);
        return 1;
    }

    int setBegin_messageEntryText(const TProcessor* processor, const void* entry,
                                  const char* param_2) {
        setBegin_messageEntryText(processor->getResourceCache(), entry, param_2);
        return 1;
    }

    void* getMessageEntry_messageCode(u16 messageCode, u16 messageIndex) const {
        const TResource* pResource = getResource_groupID(messageCode);

        if (pResource == NULL) {
            return NULL;
        }

        return pResource->getMessageEntry_messageIndex(messageIndex);
    }

    const char* getMessageText_messageCode(u16 messageCode, u16 messageIndex) const {
        void* pEntry = getMessageEntry_messageCode(messageCode, messageIndex);

        if (pEntry == NULL) {
            return NULL;
        }

        return pResourceCache_->getMessageText_messageEntry(pEntry);
    }

    void stack_pushCurrent_(const char* string) {
        oStack_.push(getCurrent());
        pszCurrent_ = string;
    }

    void stack_popCurrent_() {
        pszCurrent_ = oStack_.top();
        oStack_.pop();
    }

    bool stack_isPushable() const { return oStack_.IsPushable(); }

    const TResource* getResourceCache() const { return pResourceCache_; }
    const char* getCurrent() const { return pszCurrent_; }
    const TReference* getReference() const { return pReference_; }

    const TResource* getResource_groupID_uncached(u16 groupID) const {
        return pReference_->getResource_groupID(groupID);
    }

    bool isResourceCache_groupID(u16 groupID) const {
        return pResourceCache_ != NULL && groupID == pResourceCache_->getGroupID();
    }

    TResourceContainer* getResourceContainer() const {
        if (pReference_ == NULL) {
            return NULL;
        }

        return pReference_->getResourceContainer();
    }

    void setResourceCache(TResource* cache) { pResourceCache_ = cache; }
    void resetResourceCache() { setResourceCache(NULL); }

    /* 0x04 */ const TReference* pReference_;
    /* 0x08 */ const TResource* pResourceCache_;
    /* 0x0C */ const char* pszCurrent_;
    /* 0x10 */ TStack_ oStack_;
    /* 0x24 */ TProcess_ oProcess_;
};

struct TControl;

struct TSequenceProcessor : public TProcessor {
    typedef const void* (*branchPfn)(const TSequenceProcessor*, u32);
    typedef const void* (*jumpPfn)(const TSequenceProcessor*);

    struct TProcess_ {
        TProcess_() { reset(); }

        void reset() {}

        union {
            struct {
                /* 0x0 */ branchPfn branchFn;
                /* 0x4 */ const void* pTarget;
                /* 0x8 */ u32 uTarget;
            } branch_process;
            struct {
                /* 0x0 */ jumpPfn jumpFn;
                /* 0x4 */ u32 u32Target;
            } jump_process;
        }
        /* 0x0 */ process;
    };

    enum SeqStatus {
        STATUS_READY,
        STATUS_ONE,
        STATUS_NORMAL,
        STATUS_JUMP,
        STATUS_BRANCH,
    };

    /* 802A8374 */ TSequenceProcessor(JMessage::TReference const*, JMessage::TControl*);
    /* 802A8418 */ const char* process(char const*);
    /* 802A85A4 */ bool on_isReady();
    /* 802A85D0 */ void on_jump_register(void const* (*)(JMessage::TSequenceProcessor const*), u32);
    /* 802A85E4 */ bool on_jump_isReady();
    /* 802A8610 */ void on_jump(void const*, char const*);
    /* 802A8690 */ void
    on_branch_register(void const* (*)(JMessage::TSequenceProcessor const*, u32), void const*, u32);
    /* 802A86A0 */ void on_branch_query(u32);
    /* 802A86D4 */ u32 on_branch_queryResult();
    /* 802A8700 */ void on_branch(void const*, char const*);
    /* 802A892C */ static void process_setMessageIndex_reserved_(u16);
    /* 802A8944 */ static void* process_setMessageCode_(JMessage::TSequenceProcessor const*, u16,
                                                        u16);
    /* 802A89B8 */ static const void* process_onJump_limited_(JMessage::TSequenceProcessor const*);
    /* 802A89EC */ static const void* process_onJump_(JMessage::TSequenceProcessor const*);
    /* 802A8A18 */ static const void* process_onBranch_limited_(JMessage::TSequenceProcessor const*,
                                                                u32);
    /* 802A8A50 */ static const void* process_onBranch_(JMessage::TSequenceProcessor const*, u32);

    /* 802A83B8 */ virtual ~TSequenceProcessor();
    /* 802A87A4 */ virtual void do_resetStatus_(char const*);
    /* 802A87C0 */ virtual bool do_setBegin_isReady_() const;
    /* 802A87D0 */ virtual void do_begin_(void const*, char const*);
    /* 802A87D4 */ virtual void do_end_();
    /* 802A87E0 */ virtual void do_tag_(u32, void const*, u32);
    /* 802A8780 */ virtual bool do_isReady();
    /* 802A8788 */ virtual bool do_jump_isReady();
    /* 802A8790 */ virtual void do_jump(void const*, char const*);
    /* 802A8794 */ virtual void do_branch_query(u32);
    /* 802A8798 */ virtual s32 do_branch_queryResult();
    /* 802A87A0 */ virtual void do_branch(void const*, char const*);

    TControl* getControl() const { return pControl_; }

    static const void* process_setMessageIndex_(const TSequenceProcessor* pProcessor, u16 param_1) {
        return process_setMessageCode_(pProcessor, pProcessor->getResourceCache()->getGroupID(),
                                       param_1);
    }

    static const void* process_setMessageCode_(const TSequenceProcessor* pProcessor, u32 param_1) {
        return process_setMessageCode_(pProcessor, param_1 >> 0x10, param_1 & 0xFFFF);
    }

    /* 0x38 */ TControl* pControl_;
    /* 0x3C */ SeqStatus eStatus_;
    /* 0x40 */ TProcess_ oProcess2_;
};

struct TRenderingProcessor : public TProcessor {
    /* 802A8A84 */ TRenderingProcessor(JMessage::TReference const*);
    /* 802A8B20 */ int process(char const*);

    /* 802A8AC0 */ virtual ~TRenderingProcessor();
    /* 802A8BA4 */ virtual void do_begin_(void const*, char const*);
    /* 802A8BA8 */ virtual void do_end_();
    /* 802A8BAC */ virtual void do_tag_(u32, void const*, u32);

    bool process_messageEntryText(TProcessor *param_0,void const*param_1,const char *param_2) {
        int rv = TProcessor::setBegin_messageEntryText(param_0, param_1, param_2);
        if (rv != 0) {
            process(NULL);
        }
        return rv != 0;
    }
};
};  // namespace JMessage

#endif /* JMESSAGE_PROCESSOR_H */
