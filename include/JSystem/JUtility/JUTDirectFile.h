#ifndef JUTDIRECTFILE_H
#define JUTDIRECTFILE_H

#include "dolphin/dvd/dvd.h"

#define JUTDF_BUFSIZE (0x800)

struct JUTDirectFile {
    /* 802E8730 */ int fetch32byte();
    /* 802E87F8 */ JUTDirectFile();
    /* 802E881C */ ~JUTDirectFile();
    /* 802E8860 */ bool fopen(char const*);
    /* 802E88FC */ void fclose();
    /* 802E8958 */ int fgets(void*, int);

    /* 0x000 */ u8 mBuffer[0x820];
	/* 0x820 */ u8* mSectorStart;
	/* 0x824 */ u32 mToRead;
	/* 0x828 */ u32 mLength;
	/* 0x82C */ u32 mPos;
	/* 0x830 */ bool mIsOpen;
	/* 0x834 */ DVDFileInfo mFileInfo;
};

#endif /* JUTDIRECTFILE_H */
