#include "JSystem/JAudio2/JAUStreamFileTable.h"
#include "dolphin/os.h"

/* 802A7420-802A742C 2A1D60 000C+00 0/0 1/1 0/0 .text            __ct__18JAUStreamFileTableFv */
JAUStreamFileTable::JAUStreamFileTable() {
    mData = NULL;
}

/* 802A742C-802A7478 2A1D6C 004C+00 0/0 1/1 0/0 .text            init__18JAUStreamFileTableFPCv */
void JAUStreamFileTable::init(void const* data) {
    if (data == NULL) {
        mData = NULL;
        return;
    }
    const BinaryStreamFileTable* binaryTable = (const BinaryStreamFileTable*)data;
    const char* ident = binaryTable->mIdentifier;
    if (ident[0] == 'b' && ident[1] == 's' && ident[2] == 'f' && ident[3] == 't') {
        mData = binaryTable;
    }
}

/* 802A7478-802A7484 2A1DB8 000C+00 0/0 1/1 0/0 .text getNumFiles__18JAUStreamFileTableCFv */
int JAUStreamFileTable::getNumFiles() const {
    return mData->mNumFiles;
}

/* 802A7484-802A74AC 2A1DC4 0028+00 1/1 1/1 0/0 .text getFilePath__18JAUStreamFileTableCFi */
const char* JAUStreamFileTable::getFilePath(int index) const {
    if (mData == NULL) {
        return 0;
    }
    ASSERT(index >= 0);
    ASSERT(index < getNumFiles());
    char* data = (char*)mData;
    return (char*)(data + *(int*)(data + 8 + (index * sizeof(s32))));
}

/* 802A74AC-802A74E8 2A1DEC 003C+00 1/0 0/0 0/0 .text
 * getStreamFileEntry__32JAUStreamDataMgr_StreamFileTableF10JAISoundID */
s32 JAUStreamDataMgr_StreamFileTable::getStreamFileEntry(JAISoundID soundId) {
    const char* filePath = getFilePath(soundId.mId.mAdvancedId.mShortId);
    if (filePath == NULL) {
        return -1;
    }
    return DVDConvertPathToEntrynum(filePath);
}