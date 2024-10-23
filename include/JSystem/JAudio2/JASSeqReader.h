#ifndef JASSEQREADER_H
#define JASSEQREADER_H

#include "dolphin/types.h"

/**
 * @ingroup jsystem-jaudio
 * 
 */
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
        field_0x04 = field_0x00 + param_1;
    }

    void jump(void* param_1) {
        field_0x04 = (u8*)param_1;
    }

    u32 get24(int param_0) {
        return (*(u32*)(field_0x00 + param_0 - 1)) & 0xffffff;
    }

    u32* getBase() { return (u32*)field_0x00; }
    void* getAddr(u32 param_0) { return field_0x00 + param_0; }
    u8 getByte(u32 param_0) { return *(field_0x00 + param_0); }
    u16 get16(u32 param_0) { return *(u16*)(field_0x00 + param_0); }
    u32 get32(u32 param_0) { return *(u32*)(field_0x00 + param_0); }
    u8* getCur() { return field_0x04; }
    u32 readByte() { return *field_0x04++; }
    u32 read16() {
        u16* tmp = (u16*)field_0x04;
        field_0x04 += 2;
        return *tmp;
    }
    u32 read24() {
        field_0x04--;
        u32* tmp = (u32*)field_0x04;
        field_0x04 += 4;
        return *tmp & 0x00ffffff;
    }
    u16 getLoopCount() const { return field_0x08 == 0 ? 0 : field_0x2c[field_0x08 - 1]; }

    /* 0x00 */ u8* field_0x00;
    /* 0x04 */ u8* field_0x04;
    /* 0x08 */ u32 field_0x08;
    /* 0x0C */ u16* field_0x0c[8];
    /* 0x2C */ u16 field_0x2c[8];
};

#endif /* JASSEQREADER_H */
