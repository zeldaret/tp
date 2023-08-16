#ifndef JMESSAGE_LOCALE_H
#define JMESSAGE_LOCALE_H


namespace JMessage {
struct locale {
    typedef int (*parseCharacter_function)(const char**);

    static bool isLeadByte_ShiftJIS(int c) {
        return c >= 0x81 && (c <= 0x9F || (c >= 0xE0 && c <= 0xFC));
    }

    /* 802A9490 */ static int parseCharacter_1Byte(char const**);
    /* 802A94A8 */ static int parseCharacter_2Byte(char const**);
    /* 802A9528 */ static int parseCharacter_ShiftJIS(char const**);
    /* 802A958C */ static int parseCharacter_UTF8(char const**);
};
};  // namespace JMessage

#endif /* JMESSAGE_LOCALE_H */
