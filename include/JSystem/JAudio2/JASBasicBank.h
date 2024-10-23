#ifndef JASBASICBANK_H
#define JASBASICBANK_H

#include "JSystem/JAudio2/JASBank.h"
#include "JSystem/JAudio2/JASBasicInst.h"
#include "JSystem/JKernel/JKRHeap.h"

class JASBasicBank : public JASBank {
public:
    /* 80297D78 */ JASBasicBank();
    /* 80297DA4 */ void newInstTable(u8, JKRHeap*);
    /* 80297E00 */ bool getInstParam(int, int, int, JASInstParam*) const;
    /* 80297E68 */ void setInst(int, JASInst*);
    /* 80297E80 */ JASInst* getInst(int) const;
    /* 80297F0C */ ~JASBasicBank() {}
    /* 80297F68 */ u32 getType() const { return 'BSIC'; }

    /* 0x8 */ JASInst** mInstTable;
    /* 0xC */ u8 mInstNumMax;
};

#endif /* JASBASICBANK_H */
