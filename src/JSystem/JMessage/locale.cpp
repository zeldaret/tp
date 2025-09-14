#include "JSystem/JSystem.h" // IWYU pragma: keep

#include "JSystem/JMessage/locale.h"

/* 802A9528-802A958C 2A3E68 0064+00 0/0 1/0 0/0 .text
 * parseCharacter_ShiftJIS__Q28JMessage6localeFPPCc             */
int JMessage::locale::parseCharacter_ShiftJIS(const char** ppszText) {
    int c = *(u8*)*ppszText & 0xFF;
    (*ppszText)++;

    if (isLeadByte_ShiftJIS(c)) {
        c <<= 8;
        c |= *(u8*)*ppszText & 0xFF;
        (*ppszText)++;
    }

    return c;
}

/* 802A958C-802A968C 2A3ECC 0100+00 0/0 1/0 0/0 .text parseCharacter_UTF8__Q28JMessage6localeFPPCc
 */
int JMessage::locale::parseCharacter_UTF8(const char** ppszText) {
    int c = *(u8*)*ppszText & 0xFF;
    (*ppszText)++;

    if (c & 0x80) {
        if ((c & 0xE0) == 0xC0) {
            c &= 0x1F;
            c <<= 6;
            c |= (*(u8*)*ppszText & 0xFF) & 0x3F;
            (*ppszText)++;
        } else if ((c & 0xF0) == 0xE0) {
            c &= 0xF;
            c <<= 6;
            c |= (*(u8*)*ppszText & 0xFF) & 0x3F;
            (*ppszText)++;

            c <<= 6;
            c |= (*(u8*)*ppszText & 0xFF) & 0x3F;
            (*ppszText)++;
        } else if ((c & 0xF8) == 0xF0) {
            c &= 0x7;
            c <<= 6;
            c |= (*(u8*)*ppszText & 0xFF) & 0x3F;
            (*ppszText)++;

            c <<= 6;
            c |= (*(u8*)*ppszText & 0xFF) & 0x3F;
            (*ppszText)++;

            c <<= 6;
            c |= (*(u8*)*ppszText & 0xFF) & 0x3F;
            (*ppszText)++;
        } else {
            c = -1;
        }
    }

    return c;
}
