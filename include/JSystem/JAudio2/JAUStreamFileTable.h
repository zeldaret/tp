#ifndef JAUSTREAMFILETABLE_H
#define JAUSTREAMFILETABLE_H

#include "JSystem/JAudio2/JAIStreamDataMgr.h"

struct BinaryStreamFileTable {
    /* 0x0 */ char mIdentifier[4];
    /* 0x4 */ int mNumFiles;
    /* 0x8 */ int mFilePathOffsets[];
};

struct JAUStreamFileTable {
    /* 802A7420 */ JAUStreamFileTable();
    /* 802A742C */ void init(void const*);
    /* 802A7478 */ int getNumFiles() const;
    /* 802A7484 */ const char* getFilePath(int) const;

    bool isValid() { return mData; }

    /* 0x0 */ const BinaryStreamFileTable* mData;
};

struct JAUStreamDataMgr_StreamFileTable : public JAIStreamDataMgr, JAUStreamFileTable {
    /* 802A74AC */ virtual s32 getStreamFileEntry(JAISoundID);
    /* 802A74E8 */ virtual ~JAUStreamDataMgr_StreamFileTable() {}
};

#endif /* JAUSTREAMFILETABLE_H */
