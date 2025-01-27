#ifndef JMESSAGE_RESOURCE_H
#define JMESSAGE_RESOURCE_H

#include "JSystem/JGadget/linklist.h"
#include "JSystem/JMessage/data.h"
#include "JSystem/JMessage/locale.h"
#include "JSystem/JStudio/JStudio/fvb-data.h"

namespace JMessage {

/**
 * @ingroup jsystem-jmessage
 * 
 */
struct TResource {
    TResource()
        : field_0x8(NULL), field_0xc(NULL), field_0x10(NULL), field_0x14(0), mMessageID(NULL) {}

    /* 802A8CDC */ u16 toMessageIndex_messageID(u32, u32, bool*) const;

    bool isContained_messageIndex(u16 messageIndex) const {
        return messageIndex < getMessageEntryNumber();
    }

    u16 getMessageEntrySize() const { return field_0xc.get_messageEntrySize(); }
    u16 getMessageEntryNumber() const { return field_0xc.get_messageEntryNumber(); }

    u16 getGroupID() const { return field_0xc.get_groupID(); }

    void* getMessageEntry_messageIndex(u16 messageIndex) const {
        if (!isContained_messageIndex(messageIndex)) {
            return NULL;
        }

        return field_0xc.getContent() + (messageIndex * getMessageEntrySize());
    }

    char* getMessageText_messageEntry(const void* pEntry) const {
        return field_0x10 + *(int*)pEntry;
    }

    const char* getMessageText_messageIndex(u16 messageIndex) const {
        void* pEntry = getMessageEntry_messageIndex(messageIndex);
        if (pEntry == NULL) {
            return NULL;
        }

        return getMessageText_messageEntry(pEntry);
    }

    void setData_header(const void* pData) {
        field_0x8.setRaw(pData);
    }
    JGadget::TLinkListNode ocObject_;
    /* 0x08 */ data::TParse_THeader field_0x8;
    /* 0x0C */ data::TParse_TBlock_info field_0xc;
    /* 0x10 */ char* field_0x10;
    /* 0x14 */ int field_0x14;
    /* 0x18 */ data::TParse_TBlock_messageID mMessageID;
};

/**
 * @ingroup jsystem-jmessage
 * 
 */
struct TResource_color {
    TResource_color() : field_0x0(NULL), field_0x4(NULL) {}
    void reset() { 
        field_0x0.setRaw(NULL);
        field_0x4.setRaw(NULL);
    }

    /* 0x0 */ data::TParse_THeader field_0x0;
    /* 0x4 */ data::TParse_TBlock_color field_0x4;
};  // Size: 0x8

/**
 * @ingroup jsystem-jmessage
 * 
 */
struct TResourceContainer {
    struct TCResource : public JGadget::TLinkList_factory<TResource, 0> {
        /* 802A8EC0 */ TCResource();
        /* 802A8F6C */ TResource* Get_groupID(u16);

        /* 802A8EF8 */ virtual ~TCResource();
        /* 802A8FFC */ virtual JMessage::TResource* Do_create();
        /* 802A9048 */ virtual void Do_destroy(JMessage::TResource*);

        // u8 field_0x0[0x10];
    };

    /* 802A906C */ TResourceContainer();
    /* 802A90B8 */ void setEncoding(u8);
    /* 802A90F0 */ void setEncoding_(u8);

    int parseCharacter(const char** string) const { return pfnParseCharacter_(string); }
    TResource* getResource_groupID(u16 groupID) { return resContainer_.Get_groupID(groupID); }
    TResource* getResource_groupID(u16 groupID) const { return getResource_groupID(groupID); }

    bool isEncodingSettable(u8 e) const { return mEncodingType == e || mEncodingType == 0; }
    const TCResource* getResourceContainer() const { return &resContainer_; }
    void destroyResource() {
        resContainer_.Clear_destroy();
    }
    void destroyResource_color() {
        resColor_.reset();
    }
    void destroyResource_all() {
        destroyResource();
        destroyResource_color();
    }

    static JMessage::locale::parseCharacter_function sapfnParseCharacter_[5];

    /* 0x00 */ u8 mEncodingType;
    /* 0x04 */ int (*pfnParseCharacter_)(const char** string);
    /* 0x08 */ TCResource resContainer_;
    /* 0x18 */ TResource_color resColor_;
};

/**
 * @ingroup jsystem-jmessage
 * 
 */
struct TParse : public JGadget::binary::TParse_header_block {
    /* 802A9130 */ TParse(JMessage::TResourceContainer*);

    /* 802A9158 */ virtual ~TParse();
    /* 802A91B8 */ virtual bool parseHeader_next(void const**, u32*, u32);
    /* 802A92F4 */ virtual bool parseBlock_next(void const**, u32*, u32);

    /* 0x4 */ TResourceContainer* pContainer_;
    /* 0x8 */ TResource* pResource_;
};
};  // namespace JMessage

#endif /* JMESSAGE_RESOURCE_H */
