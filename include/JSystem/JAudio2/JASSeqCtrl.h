#ifndef JASSEQCTRL_H
#define JASSEQCTRL_H

#include "JSystem/JAudio2/JASSeqReader.h"

class JASTrack;
class JASSeqParser;

class JASSeqCtrl {
public:
    enum IntrType {
        INTRTYPE_VALUE_0,
        INTRTYPE_VALUE_1,
        INTRTYPE_VALUE_2,
        INTRTYPE_VALUE_3,
        INTRTYPE_VALUE_4,
        INTRTYPE_VALUE_5,
        INTRTYPE_VALUE_6,
    };

    /* 802938BC */ JASSeqCtrl();
    /* 80293924 */ void init();
    /* 80293980 */ void start(void*, u32);
    /* 802939C4 */ int tickProc(JASTrack*);
    /* 80293ABC */ void interrupt(JASSeqCtrl::IntrType);
    /* 80293AE0 */ void setIntrMask(u32);
    /* 80293AF0 */ void clrIntrMask(u32);
    /* 80293B00 */ int retIntr();
    /* 80293B28 */ int findIntr();
    /* 80293B78 */ void checkIntr();
    /* 80293BE8 */ void timerProcess();

    u32 get24(int param_0) {
        return mReader.get24(param_0);
    }

    /* 0x00 */ JASSeqReader mReader;
    /* 0x3c */ JASSeqParser* field_0x3c;
    /* 0x40 */ s32 field_0x40;
    /* 0x44 */ void* field_0x44;
    /* 0x48 */ u32 field_0x48;
    /* 0x4c */ u16 field_0x4c;
    /* 0x4e */ u16 field_0x4e;
    /* 0x50 */ u8 field_0x50;
    /* 0x51 */ u8 field_0x51;
    /* 0x52 */ u16 field_0x52;
    /* 0x54 */ u32 field_0x54;
    /* 0x58 */ u32 field_0x58;
    static JASSeqParser sDefaultParser;
};

#endif /* JASSEQCTRL_H */
