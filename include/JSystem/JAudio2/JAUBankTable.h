#ifndef JAUBANKTABLE_H
#define JAUBANKTABLE_H

#include "JSystem/JSupport/JSUList.h"
#include "dolphin/types.h"

template <typename T>
struct JASPtrTable {
    T* get(u32 value) const {
        if (value >= mLength) {
            return NULL;
        }
        return mTable[value];
    }
    T** mTable;
    u32 mLength;
};

struct JASBank;
struct JAUBankTable {
    /* 802A4AA0 */ /*virtual*/ JASBank* getBank(u32) const;
    /* 0x0 */ void* vtable;
    /* 0x4 */ JASPtrTable<JASBank> mBankPtrTable;
};

struct JAUBankTableDictionary : JSUList<JAUBankTable> {
    /* 802A4A80 */ void appendBankTable(JSULink<JAUBankTable>*);
};

#endif /* JAUBANKTABLE_H */
