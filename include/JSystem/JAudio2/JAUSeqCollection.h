#ifndef JAUSEQCOLLECTION_H
#define JAUSEQCOLLECTION_H

#include "JSystem/JAudio2/JAISeqDataMgr.h"

class JAISeqData;
class JAISeqDataRegion;

class JAUSeqCollection {
public:
    /* 802A66A0 */ JAUSeqCollection();
    /* 802A66AC */ void init(void const*);
    /* 802A66FC */ bool getSeqData(int, int, JAISeqData*);
    /* 802A6754 */ void getSeqDataRegion(JAISeqDataRegion*);

    bool isValid() { return field_0x8; }

    /* 0x00 */ u16 field_0x0;
    /* 0x04 */ const u32* field_0x4;
    /* 0x08 */ const void* field_0x8;
    /* 0x0C */ int field_0xc;
};

class JAUSeqDataMgr_SeqCollection : public JAISeqDataMgr, public JAUSeqCollection {
public:
    /* 802A677C */ JAUSeqDataMgr_SeqCollection();
    /* 802A67D0 */ bool setSeqDataUser(JAISeqDataUser*);
    /* 802A67DC */ int releaseSeqData();
    /* 802A683C */ s32 getSeqData(JAISoundID, JAISeqData*);
    /* 802A6894 */ ~JAUSeqDataMgr_SeqCollection();

    /* 0x14 */ JAISeqDataUser* user_;
};

#endif /* JAUSEQCOLLECTION_H */
