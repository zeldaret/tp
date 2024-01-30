#ifndef JAUSEQDATABLOCKMGR_H
#define JAUSEQDATABLOCKMGR_H

#include "JSystem/JAudio2/JAISound.h"
#include "JSystem/JAudio2/JAISeqDataMgr.h"
#include "JSystem/JSupport/JSUList.h"

class JAISeqData;
class JAISeqDataUser;
class JKRArchive;

struct JAUSeqDataBlock {
    /* 802A68F4 */ JAUSeqDataBlock();

    /* 0x00 */ JSULink<JAUSeqDataBlock> field_0x0;
    /* 0x10 */ JAISoundID field_0x10;
    /* 0x14 */ JAISeqDataRegion field_0x14;
    /* 0x1C */ int field_0x1c;
};

class JAUSeqDataBlocks : public JSUList<JAUSeqDataBlock> {
public:
    /* 802A6928 */ u8* getSeqData(JAISoundID);
    /* 802A6974 */ JSULink<JAUSeqDataBlock>* seekFreeBlock(u32);
    /* 802A69D8 */ bool append(JSULink<JAUSeqDataBlock>*);
    /* 802A69F8 */ bool remove(JSULink<JAUSeqDataBlock>*);
    /* 802A6A18 */ bool hasFailedBlock(JAISoundID);
};

class JAUDynamicSeqDataBlocks {
public:
    /* 802A6A58 */ JAUDynamicSeqDataBlocks();
    /* 802A6AA0 */ void setSeqDataArchive(JKRArchive*);
    /* 802A6AA8 */ s32 getSeqData(JAISoundID, JAISeqDataUser*, JAISeqData*, bool);
    /* 802A6B8C */ bool appendDynamicSeqDataBlock(JAUSeqDataBlock*);
    /* 802A6C18 */ bool loadDynamicSeq(JAISoundID, bool, JAISeqDataUser*);
    /* 802A6D48 */ u32 releaseIdleDynamicSeqDataBlock(JAISeqDataUser*);
    /* 802A6E00 */ JAUSeqDataBlock* releaseIdleDynamicSeqDataBlock_(JAISeqDataUser*, u32);
    /* 802A6EDC */ void rearrangeLoadingSeqs_();

    JAUSeqDataBlocks const& getFreeBlocks() const { return mFreeBlocks; }
    JAUSeqDataBlocks const& getLoadedBlocks() const { return mLoadedBlocks; }
    JKRArchive* getSeqDataArchive() { return seqDataArchive_; }

    /* 0x00 */ JAUSeqDataBlocks mFreeBlocks;
    /* 0x0C */ JAUSeqDataBlocks field_0xc;
    /* 0x18 */ JAUSeqDataBlocks mLoadedBlocks;
    /* 0x24 */ JKRArchive* seqDataArchive_;
};

#endif /* JAUSEQDATABLOCKMGR_H */
