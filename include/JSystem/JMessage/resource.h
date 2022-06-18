#ifndef RESOURCE_H
#define RESOURCE_H

#include "dolphin/types.h"
#include "JSystem/JGadget/linklist.h"
#include "JSystem/JStudio/JStudio/fvb-data.h"

namespace JMessage {
struct TResource : public JGadget::TLinkListNode {
    /* 802A8CDC */ void toMessageIndex_messageID(u32, u32, bool*) const;
};

struct TResourceContainer {
    struct TCResource {
        /* 802A8EC0 */ TCResource();
        /* 802A8EF8 */ ~TCResource();
        /* 802A8F6C */ void Get_groupID(u16);
        /* 802A8FFC */ void Do_create();
        /* 802A9048 */ void Do_destroy(JMessage::TResource*);
    };

    /* 802A906C */ TResourceContainer();
    /* 802A90B8 */ void setEncoding(u8);
    /* 802A90F0 */ void setEncoding_(u8);

    static void* sapfnParseCharacter_[5];
};

struct TParse {
    /* 802A9130 */ TParse(JMessage::TResourceContainer*);
    /* 802A9158 */ ~TParse();
    /* 802A91B8 */ void parseHeader_next(void const**, u32*, u32);
    /* 802A92F4 */ void parseBlock_next(void const**, u32*, u32);
};
};  // namespace JMessage

#endif /* RESOURCE_H */
