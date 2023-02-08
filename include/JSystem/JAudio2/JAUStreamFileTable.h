#ifndef JAUSTREAMFILETABLE_H
#define JAUSTREAMFILETABLE_H

#include "JSystem/JAudio2/JAISound.h"
#include "dolphin/types.h"

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
    
    /* 0x0 */ const BinaryStreamFileTable* mData;
};

struct JAIStreamDataMgr {
    /* 802A3AD8 */ ~JAIStreamDataMgr();
};

struct JAUStreamDataMgr_StreamFileTable : JAIStreamDataMgr {
    /* 802A74AC */ virtual int getStreamFileEntry(JAISoundID);
    /* 802A74E8 */ virtual ~JAUStreamDataMgr_StreamFileTable() {}

    /* 0x4 */ JAUStreamFileTable mStreamFileTable;
};

#endif /* JAUSTREAMFILETABLE_H */
