#ifndef JAUBANKTABLE_H
#define JAUBANKTABLE_H

#include "JSystem/JAudio2/JASGadget.h"
#include "JSystem/JSupport/JSUList.h"

struct JASBank;
struct JAUBankTable {
    /* 802A4AA0 */ /*virtual*/ JASBank* getBank(u32) const;
    /* 0x0 */ void* vtable;
    /* 0x4 */ JASPtrTable<JASBank> mBankPtrTable;
};

struct JAUBankTableDictionary : JSUList<JAUBankTable> {
    /* 802A4A80 */ void appendBankTable(JSULink<JAUBankTable>*);
};

class JASWaveBank;
class JAUWaveBankTable : private JASPtrArray<JASWaveBank,255> {
public:
    JASWaveBank* getWaveBank(u32 index) { return get(index); }
    JASWaveBank* getWaveBank(u32 index) const { return get(index); }
    void registWaveBank(u32 index, JASWaveBank* bank) { set(index, bank); }
};

#endif /* JAUBANKTABLE_H */
