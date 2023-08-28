#ifndef JASTRACKPORT_H
#define JASTRACKPORT_H

#include "dolphin/types.h"

class JASTrackPort {
public:
    /* 8029354C */ void init();
    /* 8029357C */ u16 readImport(u32);
    /* 802935A0 */ u16 readExport(u32);
    /* 802935C4 */ void writeImport(u32, u16);
    /* 802935E8 */ void writeExport(u32, u16);
    /* 8029360C */ u32 checkImport(u32) const;
    /* 80293628 */ u32 checkExport(u32) const;

    u16 field_0x0;
    u16 field_0x2;
    u16 field_0x4[16];
};

#endif /* JASTRACKPORT_H */
