#ifndef JUTDIRECTFILE_H
#define JUTDIRECTFILE_H

#include "dolphin/types.h"

struct JUTDirectFile {
    /* 802E8730 */ void fetch32byte();
    /* 802E87F8 */ JUTDirectFile();
    /* 802E881C */ ~JUTDirectFile();
    /* 802E8860 */ bool fopen(char const*);
    /* 802E88FC */ bool fclose();
    /* 802E8958 */ int fgets(void*, int);
};

#endif /* JUTDIRECTFILE_H */
