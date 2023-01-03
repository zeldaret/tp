#include "MSL_C/MSL_Common/Src/string.h"

#define K1 0x80808080
#define K2 0xFEFEFEFF

/* 80368BE4-80368C00 363524 001C+00 0/0 28/28 8/8 .text            strlen */
size_t strlen(const char* str) {
    size_t len = -1;
    unsigned char* p = (unsigned char*)str - 1;

    do {
        len++;
    } while (*++p);

    return len;
}

/* 80368B2C-80368BE4 36346C 00B8+00 0/0 131/131 13/13 .text            strcpy */
char* strcpy(char* dst, const char* src) {
    register unsigned char *destb, *fromb;
    register unsigned long w, t, align;

    fromb = (unsigned char*)src;
    destb = (unsigned char*)dst;

    if ((align = ((int)fromb & 3)) != ((int)destb & 3)) {
        goto bytecopy;
    }

    if (align) {
        if ((*destb = *fromb) == 0) {
            return dst;
        }

        for (align = 3 - align; align; align--) {
            if ((*(++destb) = *(++fromb)) == 0) {
                return dst;
            }
        }
        ++destb;
        ++fromb;
    }

    w = *((int*)(fromb));

    t = w + K2;

    t &= K1;
    if (t) {
        goto bytecopy;
    }
    --((int*)(destb));

    do {
        *(++((int*)(destb))) = w;
        w = *(++((int*)(fromb)));

        t = w + K2;
        t &= K1;
        if (t) {
            goto adjust;
        }
    } while (1);

adjust:
    ++((int*)(destb));

bytecopy:
    if ((*destb = *fromb) == 0) {
        return dst;
    }

    do {
        if ((*(++destb) = *(++fromb)) == 0) {
            return dst;
        }
    } while (1);

    return dst;
}

/* 80368AE8-80368B2C 363428 0044+00 0/0 9/9 1/1 .text            strncpy */
char* strncpy(char* dst, const char* src, size_t n) {
    const unsigned char* p = (const unsigned char*)src - 1;
    unsigned char* q = (unsigned char*)dst - 1;

    n++;
    while (--n) {
        if (!(*++q = *++p)) {
            while (--n) {
                *++q = 0;
            }
            break;
        }
    }

    return dst;
}

/* 80368ABC-80368AE8 3633FC 002C+00 0/0 20/20 8/8 .text            strcat */
char* strcat(char* dst, const char* src) {
    const unsigned char* p = (unsigned char*)src - 1;
    unsigned char* q = (unsigned char*)dst - 1;

    while (*++q) {
    }

    q--;

    while (*++q = *++p) {
    }

    return dst;
}

/* 80368994-80368ABC 3632D4 0128+00 0/0 155/155 279/279 .text            strcmp */
int strcmp(const char* str1, const char* str2) {
    register unsigned char* left = (unsigned char*)str1;
    register unsigned char* right = (unsigned char*)str2;
    unsigned long align, l1, r1, x;

    l1 = *left;
    r1 = *right;
    if (l1 - r1) {
        return l1 - r1;
    }

    if ((align = ((int)left & 3)) != ((int)right & 3)) {
        goto bytecopy;
    }

    if (align) {
        if (l1 == 0) {
            return 0;
        }
        for (align = 3 - align; align; align--) {
            l1 = *(++left);
            r1 = *(++right);
            if (l1 - r1) {
                return l1 - r1;
            }
            if (l1 == 0) {
                return 0;
            }
        }
        left++;
        right++;
    }

    l1 = *(int*)left;
    r1 = *(int*)right;
    x = l1 + K2;
    if (x & K1) {
        goto adjust;
    }

    while (l1 == r1) {
        l1 = *(++((int*)(left)));
        r1 = *(++((int*)(right)));
        x = l1 + K2;
        if (x & K1) {
            goto adjust;
        }
    }

    if (l1 > r1) {
        return 1;
    }
    return -1;

adjust:
    l1 = *left;
    r1 = *right;
    if (l1 - r1) {
        return l1 - r1;
    }

bytecopy:
    if (l1 == 0) {
        return 0;
    }

    do {
        l1 = *(++left);
        r1 = *(++right);
        if (l1 - r1) {
            return l1 - r1;
        }
        if (l1 == 0) {
            return 0;
        }
    } while (1);
}

/* 80368954-80368994 363294 0040+00 0/0 6/6 0/0 .text            strncmp */
int strncmp(const char* str1, const char* str2, size_t n) {
    const unsigned char* p1 = (unsigned char*)str1 - 1;
    const unsigned char* p2 = (unsigned char*)str2 - 1;
    unsigned long c1, c2;

    n++;
    while (--n) {
        if ((c1 = *++p1) != (c2 = *++p2)) {
            return c1 - c2;
        } else if (c1 == 0) {
            break;
        }
    }

    return 0;
}

/* 80368924-80368954 363264 0030+00 0/0 3/3 0/0 .text            strchr */
char* strchr(const char* str, int c) {
    const unsigned char* p = (unsigned char*)str - 1;
    unsigned long chr = (c & 0xFF);

    unsigned long ch;
    while (ch = *++p) {
        if (ch == chr) {
            return (char*)p;
        }
    }

    return chr ? NULL : (char*)p;
}

/* 803688DC-80368924 36321C 0048+00 0/0 1/1 0/0 .text            strrchr */
char* strrchr(const char* str, int c) {
    const unsigned char* p = (unsigned char*)str - 1;
    const unsigned char* q = NULL;
    unsigned long chr = (c & 0xFF);

    unsigned long ch;
    while (ch = *++p) {
        if (ch == chr) {
            q = p;
        }
    }

    if (q != NULL) {
        return (char*)q;
    }

    return chr ? NULL : (char*)p;
}
