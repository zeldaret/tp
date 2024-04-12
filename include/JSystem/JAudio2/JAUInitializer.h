#ifndef JAUINITIALIZER_H
#define JAUINITIALIZER_H

#include "dolphin/types.h"

class JKRSolidHeap;

/**
 * @ingroup jsystem-jaudio
 * 
 */
class JAU_JASInitializer {
public:
    /* 802A4AD0 */ JAU_JASInitializer();
    /* 802A4B28 */ void initJASystem(JKRSolidHeap*);

    /* 0x00 */ u32 field_0x00;
    /* 0x04 */ u32 field_0x04;
    /* 0x08 */ int field_0x08;
    /* 0x0C */ int field_0x0c;
    /* 0x10 */ int field_0x10;
    /* 0x14 */ int field_0x14;
    /* 0x18 */ int field_0x18;
    /* 0x1C */ int field_0x1c;
    /* 0x20 */ int field_0x20;
    /* 0x24 */ int field_0x24;
    /* 0x28 */ int field_0x28;
    /* 0x2C */ f32 field_0x2c;
    /* 0x30 */ char* field_0x30;
};

/**
 * @ingroup jsystem-jaudio
 * 
 */
class JAU_JAIInitializer {
public:
    /* 802A4D3C */ JAU_JAIInitializer();
    /* 802A4D60 */ void initJAInterface();

    int field_0x0;
    int field_0x4;
    int field_0x8;
    int field_0xc;
};

#endif /* JAUINITIALIZER_H */
