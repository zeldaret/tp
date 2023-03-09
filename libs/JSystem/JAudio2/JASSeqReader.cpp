/**
 * JASSeqReader.cpp
 * 
 */

#include "JSystem/JAudio2/JASSeqReader.h"
#include "dol2asm.h"
#include "dolphin/types.h"


extern "C" void loopEnd__12JASSeqReaderFv();

/* 80296108-80296148 290A48 0040+00 0/0 2/2 0/0 .text            init__12JASSeqReaderFv */
void JASSeqReader::init() {
    field_0x00 = 0;
    field_0x04 = 0;
    field_0x08 = 0;

    for (int i = 0; i < 8; i++) {
        field_0x0c[i] = 0;
        field_0x2c[i] = 0;
    }
}

/* 80296148-8029618C 290A88 0044+00 0/0 1/1 0/0 .text            init__12JASSeqReaderFPv */
void JASSeqReader::init(void* param_0) {
    field_0x00 = (u32*)param_0;
    field_0x04 = (u8*)field_0x00;
    field_0x08 = 0;

    for (int i = 0; i < 8; i++) {
        field_0x0c[i] = 0;
        field_0x2c[i] = 0;
    }
    
}

/* 8029618C-802961CC 290ACC 0040+00 0/0 3/3 0/0 .text            call__12JASSeqReaderFUl */
bool JASSeqReader::call(u32 param_0) {
    if (8 <= field_0x08) {
        return false;
    }

    u16* tmp2 = (u16*)field_0x04;
    u32 tmp = field_0x08;

    field_0x08++;
    field_0x0c[tmp] = tmp2;
    field_0x04 = (u8*)((int)field_0x00 + param_0);

    return true;
}

/* 802961CC-80296210 290B0C 0044+00 0/0 1/1 0/0 .text            loopStart__12JASSeqReaderFUl */
bool JASSeqReader::loopStart(u32 param_0) {
    if (8 <= field_0x08) {
        return false;
    }

    field_0x0c[field_0x08] = (u16*)field_0x04;
    
    u32 tmp = field_0x08;
    field_0x08 = tmp+1;
    field_0x2c[tmp] = param_0;

    return true;
}


/* 80296210-8029627C 290B50 006C+00 0/0 1/1 0/0 .text            loopEnd__12JASSeqReaderFv */
#ifdef NONMATCHING
// not sure. field_0x0c is typed wrong maybe?
int JASSeqReader::loopEnd() {
    if (field_0x08 == 0) {
        return false;
    }

    u16 tmp = (u16)field_0x0c[field_0x08];

    if (tmp != 0) {
        tmp--;
    }

    if (!tmp) {
        field_0x08--;
        return true;
    }

    field_0x0c[field_0x08] = (u16*)tmp;
    field_0x04 = (u8*)field_0x0c[field_0x08-1];
    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool JASSeqReader::loopEnd() {
    nofralloc
#include "asm/JSystem/JAudio2/JASSeqReader/loopEnd__12JASSeqReaderFv.s"
}
#pragma pop
#endif

/* 8029627C-802962B0 290BBC 0034+00 0/0 2/2 0/0 .text            ret__12JASSeqReaderFv */
bool JASSeqReader::ret() {
    u32 tmp = field_0x08;

    if (tmp == 0) {
        return false;
    }

    tmp--;
    field_0x08 = tmp;
    field_0x04 = (u8*)field_0x0c[tmp];

    return true;
}

/* 802962B0-8029631C 290BF0 006C+00 0/0 2/2 0/0 .text            readMidiValue__12JASSeqReaderFv */
int JASSeqReader::readMidiValue() {
    int byte = readByte();

    if (!(byte & 0x80)) {
        return byte;
    }

    byte &= 0x7f;

    int i = 0;

    while (true) {
        if (2 < i) {
            return 0;
        }

        u8 newByte = readByte();
        
        byte = byte << 7;
        byte |= newByte & 0x7f;

        if (!(newByte & 0x80)) {
            break;
        }

        i++;
    }

    return byte;
}