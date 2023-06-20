#ifndef JASSEQREADER_H
#define JASSEQREADER_H

#include "dolphin/types.h"

class JASSeqReader {
public:
    /* 80296108 */ void init();
    /* 80296148 */ void init(void*);
    /* 8029618C */ bool call(u32);
    /* 802961CC */ bool loopStart(u32);
    /* 80296210 */ bool loopEnd();
    /* 8029627C */ bool ret();
    /* 802962B0 */ int readMidiValue();

    void jump(u32 param_1) {
        field_0x04 = (u8*)field_0x00 + param_1;
    }

    void jump(void* param_1) {
        field_0x04 = (u8*)param_1;
    }

    u32 get24(int param_0) {
        return (*(u32*)((int)field_0x00 + param_0 - 1)) & 0xffffff;
    }

    u32* getBase() { return field_0x00; }
    u8* getCur() { return field_0x04; }

    u8 readByte() {
        u8* tmp = field_0x04;
        field_0x04 += 1;
        return *tmp;
    }

    /* 0x00 */ u32* field_0x00;
    /* 0x04 */ u8* field_0x04;
    /* 0x08 */ u32 field_0x08;
    /* 0x0C */ u16* field_0x0c[8];
    /* 0x2C */ u16 field_0x2c[8];
};

#endif /* JASSEQREADER_H */
