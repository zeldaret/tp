#ifndef JAUSECTIONHEAP_H
#define JAUSECTIONHEAP_H

#include "JSystem/JAudio2/JAISeqDataMgr.h"
#include "JSystem/JAudio2/JASGadget.h"
#include "JSystem/JAudio2/JAUBankTable.h"
#include "JSystem/JAudio2/JAUSeqDataBlockMgr.h"
#include "JSystem/JKernel/JKRDisposer.h"
#include "MSL_C/bitset.h"

class JAISeqData;
class JAISeqDataUser;
class JAIStreamDataMgr;
class JAUDisposer_;
class JAUSectionHeap;
class JAUSeqDataMgr_SeqCollection;
class JKRArchive;
class JKRSolidHeap;

class JAUSection /* : public JKRDisposer, JSULink<JAUSection> */ {
public:
    struct TSectionData {
        /* 802A4EE8 */ TSectionData();
        /* 802A4F68 */ void resetRegisteredBankTables();
        /* 802A4FE4 */ void resetRegisteredWaveBankTables();

        /* 0x00 */ JAUDynamicSeqDataBlocks field_0x00;
        /* 0x28 */ JSUList<JAUSeqDataBlock> field_0x28;
        /* 0x34 */ std::bitset<255> field_0x34;
        /* 0x54 */ std::bitset<255> field_0x54;
        /* 0x74 */ JAUBankTableDictionary field_0x74;
        /* 0x80 */ int field_0x80;
        /* 0x84 */ int field_0x84;
        /* 0x88 */ int field_0x88;
        /* 0x8C */ JSUList<JAUDisposer_> field_0x8c;
        /* 0x98 */ s32 field_0x98;
        /* 0x9C */ int field_0x9c;
        /* 0xA0 */ int field_0xa0;
    };

    /* 802A5060 */ JAUSection(JAUSectionHeap*, u32, s32);
    /* 802A50F8 */ void finishBuild();
    /* 802A5160 */ void dispose();
    /* 802A51E4 */ void newSoundTable(void const*, u32, bool);
    /* 802A52A0 */ void newSoundNameTable(void const*, u32, bool);
    /* 802A535C */ void newStreamFileTable(void const*, bool);
    /* 802A5500 */ void newSeSeqCollection(void const*, u32);
    /* 802A5598 */ void newStaticSeqDataBlock_(JAISoundID, u32);
    /* 802A56C8 */ void newStaticSeqData(JAISoundID, void const*, u32);
    /* 802A5730 */ void newStaticSeqData(JAISoundID);
    /* 802A57F0 */ void newCopy(void const*, u32, s32);
    /* 802A5854 */ void newWaveBank(u32, void const*);
    /* 802A5948 */ void loadWaveArc(u32, u32);
    /* 802A5A50 */ void newBank(void const*, u32);
    /* 802A5B84 */ void newVoiceBank(u32, u32);
    /* 802A5CAC */ void beginNewBankTable(u32, u32);
    /* 802A5D9C */ void endNewBankTable();
    /* 802A6468 */ ~JAUSection();

    bool isBuilding() { return field_0x2c; }
    //bool isOpen() { return this == sectionHeap_->getOpenSection(); }
    JAUSectionHeap* asSectionHeap() { return (JAUSection*)sectionHeap_ == this ? sectionHeap_ : NULL; }

    /* 0x00 */ JKRDisposer base1;
    /* 0x18 */ JSULink<JAUSection> base2;
    /* 0x28 */ u32 field_0x28;
    /* 0x2C */ bool field_0x2c;
    /* 0x30 */ JAUSectionHeap* sectionHeap_;
    /* 0x34 */ int field_0x34;
    /* 0x38 */ TSectionData mSectionData;
};

class JAUSectionHeap /* : public JAUSection, JASGlobalInstance<JAUSectionHeap>, JAISeqDataMgr */ {
public:
    struct TSectionHeapData {
        /* 802A5DF4 */ TSectionHeapData();

        /* 0x000 */ JAUWaveBankTable field_0x000;
        /* 0x404 */ JAISeqDataUser* seqDataUser;
        /* 0x408 */ JAUDynamicSeqDataBlocks field_0x408;
        /* 0x430 */ JAUSeqDataMgr_SeqCollection* field_0x430;
        /* 0x434 */ JAIStreamDataMgr* field_0x434;
        /* 0x438 */ int field_0x438;
        /* 0x43C */ int field_0x43c;
    };

    /* 802A5E60 */ void setSeqDataArchive(JKRArchive*);
    /* 802A5EC0 */ void loadDynamicSeq(JAISoundID, bool);
    /* 802A5EF8 */ void releaseIdleDynamicSeqDataBlock();
    /* 802A5FE0 */ JAUSectionHeap(JKRSolidHeap*, bool, s32);
    /* 802A6094 */ JAUSection* getOpenSection();
    /* 802A60A0 */ void setSeqDataUser(JAISeqDataUser*);
    /* 802A60AC */ void newDynamicSeqBlock(u32);
    /* 802A61D0 */ int getSeqData(JAISoundID, JAISeqData*);
    /* 802A6270 */ int releaseSeqData();
    /* 802A6278 */ ~JAUSectionHeap();

    /* 0x00 */ JAUSection base1;
    /* 0xDC */ u8 base2[0xE0 - 0xDC]; // JAISeqDataMgr
    /* 0xE0 */ JKRSolidHeap* mHeap;
    /* 0xE4 */ int field_0xe4;
    /* 0xE8 */ JSUList<JAUSection> mSectionList;
    /* 0xF4 */ TSectionHeapData field_0xf4;
};

JAUSectionHeap* JAUNewSectionHeap(bool);

#endif /* JAUSECTIONHEAP_H */
