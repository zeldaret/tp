#ifndef JAUSEQDATABLOCKMGR_H
#define JAUSEQDATABLOCKMGR_H

#include "JSystem/JAudio2/JAISound.h"
#include "JSystem/JSupport/JSUList.h"

class JAISeqData;
class JAISeqDataUser;
class JKRArchive;

struct JAUSeqDataBlock {
    /* 802A68F4 */ JAUSeqDataBlock();
};

class JAUSeqDataBlocks {
public:
    /* 802A6928 */ void getSeqData(JAISoundID);
    /* 802A6974 */ void seekFreeBlock(u32);
    /* 802A69D8 */ void append(JSULink<JAUSeqDataBlock>*);
    /* 802A69F8 */ void remove(JSULink<JAUSeqDataBlock>*);
    /* 802A6A18 */ void hasFailedBlock(JAISoundID);

    /* 0x00 */ JSUList<JAUSeqDataBlock> field_0x0;
};

class JAUDynamicSeqDataBlocks {
public:
    /* 802A6A58 */ JAUDynamicSeqDataBlocks();
    /* 802A6AA0 */ void setSeqDataArchive(JKRArchive*);
    /* 802A6AA8 */ void getSeqData(JAISoundID, JAISeqDataUser*, JAISeqData*, bool);
    /* 802A6B8C */ void appendDynamicSeqDataBlock(JAUSeqDataBlock*);
    /* 802A6C18 */ void loadDynamicSeq(JAISoundID, bool, JAISeqDataUser*);
    /* 802A6D48 */ void releaseIdleDynamicSeqDataBlock(JAISeqDataUser*);
    /* 802A6E00 */ void releaseIdleDynamicSeqDataBlock_(JAISeqDataUser*, u32);
    /* 802A6EDC */ void rearrangeLoadingSeqs_();

    /* 0x00 */ JAUSeqDataBlocks field_0x0;
    /* 0x0C */ JAUSeqDataBlocks field_0xc;
    /* 0x18 */ JAUSeqDataBlocks field_0x18;
    /* 0x24 */ JKRArchive* seqDataArchive_;
};

#endif /* JAUSEQDATABLOCKMGR_H */
