#ifndef JAUSECTIONHEAP_H
#define JAUSECTIONHEAP_H

#include "JSystem/JAudio2/JAISeqDataMgr.h"
#include "JSystem/JAudio2/JASGadget.h"
#include "JSystem/JAudio2/JAUBankTable.h"
#include "JSystem/JAudio2/JAUSeqDataBlockMgr.h"
#include "JSystem/JKernel/JKRDisposer.h"
#include "bitset.h"

class JAISeqData;
class JAISeqDataMgr;
class JAISeqDataUser;
class JAIStreamDataMgr;
class JASVoiceBank;
class JAUBankTableLink;
class JAUDisposer_;
class JAUSectionHeap;
class JAUSoundTable;
class JAUSoundNameTable;
class JKRArchive;
class JKRSolidHeap;

class JAUSection /* : public JKRDisposer, protected JSULink<JAUSection> */ {
public:
    struct TSectionData {
        /* 802A4EE8 */ TSectionData();
        /* 802A4F68 */ void resetRegisteredBankTables();
        /* 802A4FE4 */ void resetRegisteredWaveBankTables();

        /* 0x00 */ JAUDynamicSeqDataBlocks field_0x00;
        /* 0x28 */ JSUList<JAUSeqDataBlock> field_0x28;
        /* 0x34 */ std::bitset<255> registeredWaveBankTables;
        /* 0x54 */ std::bitset<255> registeredBankTables;
        /* 0x74 */ JAUBankTableDictionary field_0x74;
        /* 0x80 */ JAISeqDataMgr* field_0x80;
        /* 0x84 */ const void* mBstDst;
        /* 0x88 */ const void* mBstnDst;
        /* 0x8C */ JSUList<JAUDisposer_> field_0x8c;
        /* 0x98 */ s32 field_0x98;
        /* 0x9C */ int field_0x9c;
        /* 0xA0 */ int field_0xa0;
    };

    /* 802A5060 */ JAUSection(JAUSectionHeap*, u32, s32);
    /* 802A50F8 */ void finishBuild();
    /* 802A5160 */ /* virtual */ void dispose();
    /* 802A51E4 */ JAUSoundTable* newSoundTable(void const*, u32, bool);
    /* 802A52A0 */ JAUSoundNameTable* newSoundNameTable(void const*, u32, bool);
    /* 802A535C */ JAIStreamDataMgr* newStreamFileTable(void const*, bool);
    /* 802A5500 */ JAISeqDataMgr* newSeSeqCollection(void const*, u32);
    /* 802A5598 */ u8* newStaticSeqDataBlock_(JAISoundID, u32);
    /* 802A56C8 */ bool newStaticSeqData(JAISoundID, void const*, u32);
    /* 802A5730 */ bool newStaticSeqData(JAISoundID);
    /* 802A57F0 */ void* newCopy(void const*, u32, s32);
    /* 802A5854 */ JASWaveBank* newWaveBank(u32, void const*);
    /* 802A5948 */ bool loadWaveArc(u32, u32);
    /* 802A5A50 */ JASBank* newBank(void const*, u32);
    /* 802A5B84 */ JASVoiceBank* newVoiceBank(u32, u32);
    /* 802A5CAC */ bool beginNewBankTable(u32, u32);
    /* 802A5D9C */ JAUBankTable* endNewBankTable();
    /* 802A6468 */ /* virtual */ ~JAUSection();

    bool isBuilding() { return field_0x2c; }
    bool isOpen();
    JAUSectionHeap* asSectionHeap() { return (JAUSection*)sectionHeap_ == this ? sectionHeap_ : NULL; }
    JKRHeap* getHeap_();

    /* 0x00 */ JKRDisposer base1;
    /* 0x18 */ JSULink<JAUSection> base2;
    /* 0x28 */ u32 field_0x28;
    /* 0x2C */ bool field_0x2c;
    /* 0x30 */ JAUSectionHeap* sectionHeap_;
    /* 0x34 */ JAUBankTableLink* buildingBankTable_;
    /* 0x38 */ TSectionData data_;
};

class JAUSectionHeap /* : public JAUSection, JASGlobalInstance<JAUSectionHeap>, JAISeqDataMgr */ {
public:
    struct TSectionHeapData {
        /* 802A5DF4 */ TSectionHeapData();

        /* 0x000 */ JAUWaveBankTable waveBankTable;
        /* 0x404 */ JAISeqDataUser* seqDataUser;
        /* 0x408 */ JAUDynamicSeqDataBlocks seqDataBlocks;
        /* 0x430 */ JAISeqDataMgr* seSeqDataMgr_;
        /* 0x434 */ JAIStreamDataMgr* streamDataMgr_;
        /* 0x438 */ JAUSoundTable* soundTable;
        /* 0x43C */ JAUSoundNameTable* soundNameTable;
    };

    /* 802A5E60 */ void setSeqDataArchive(JKRArchive*);
    /* 802A5EC0 */ bool loadDynamicSeq(JAISoundID, bool);
    /* 802A5EF8 */ void releaseIdleDynamicSeqDataBlock();
    /* 802A5FE0 */ JAUSectionHeap(JKRSolidHeap*, bool, s32);
    /* 802A6094 */ JAUSection* getOpenSection();
    /* 802A60A0 */ bool setSeqDataUser(JAISeqDataUser*);
    /* 802A60AC */ bool newDynamicSeqBlock(u32);
    /* 802A61D0 */ s32 getSeqData(JAISoundID, JAISeqData*);
    /* 802A6270 */ int releaseSeqData();
    /* 802A6278 */ ~JAUSectionHeap();

    TSectionHeapData const& getSectionHeapData() const { return sectionHeapData_; }
    JAUWaveBankTable& getWaveBankTable() { return sectionHeapData_.waveBankTable; }
    JKRHeap* getHeap() {
        if (getOpenSection()->isBuilding() != 0) {
            return mHeap;
        } 
        return NULL;
    }

    /* 0x00 */ JAUSection base1;
    /* 0xDC */ u8 base2[0xE0 - 0xDC]; // JAISeqDataMgr
    /* 0xE0 */ JKRHeap* mHeap;
    /* 0xE4 */ int field_0xe4;
    /* 0xE8 */ JSUList<JAUSection> mSectionList;
    /* 0xF4 */ TSectionHeapData sectionHeapData_;
};

inline JKRHeap* JAUSection::getHeap_() { return sectionHeap_->mHeap; }
inline bool JAUSection::isOpen() { return this == sectionHeap_->getOpenSection(); }

JAUSectionHeap* JAUNewSectionHeap(bool);

#endif /* JAUSECTIONHEAP_H */
