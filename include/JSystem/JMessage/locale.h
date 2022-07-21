#ifndef JMESSAGE_LOCALE_H
#define JMESSAGE_LOCALE_H

#include "dolphin/types.h"

namespace JMessage {
struct locale {
    /* 802A9490 */ void parseCharacter_1Byte(char const**);
    /* 802A94A8 */ void parseCharacter_2Byte(char const**);
    /* 802A9528 */ void parseCharacter_ShiftJIS(char const**);
    /* 802A958C */ void parseCharacter_UTF8(char const**);
};
};  // namespace JMessage

#endif /* JMESSAGE_LOCALE_H */
