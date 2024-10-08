//
// object-id
//

#include "JSystem/JStudio/JStudio/object-id.h"

/* 80288988-80288A78 2832C8 00F0+00 0/0 3/3 0/0 .text
 * isEqual__Q37JStudio6object7TIDDataFRCQ37JStudio6object7TIDDataRCQ37JStudio6object7TIDData */
bool JStudio::object::TIDData::isEqual(JStudio::object::TIDData const& a,
                                       JStudio::object::TIDData const& b) {
    if (a.getIDSize() != b.getIDSize()) {
        return false;
    }

    u32 bytesRemaining = a.mID_size;
    const void* aStr = a.getID();
    u32* aStr32 = (u32*)aStr;
    const void* bStr = b.getID();
    u32* bStr32 = (u32*)bStr;
    if (aStr == bStr) {
        // they point to the same id
        return true;
    }

    for (bytesRemaining; bytesRemaining >= 4; bytesRemaining -= 4, aStr32++, bStr32++) {
        if (*aStr32 != *bStr32) {
            return false;
        }
    }

    u8* aStrBytes = (u8*)aStr32;
    u8* bStrBytes = (u8*)bStr32;
    switch (bytesRemaining) {
    case 3:
        if (*aStrBytes != *bStrBytes) {
            return false;
        }
        aStrBytes++;
        bStrBytes++;
    case 2:
        if (*aStrBytes != *bStrBytes) {
            return false;
        }
        aStrBytes++;
        bStrBytes++;
    case 1:
        if (*aStrBytes != *bStrBytes) {
            return false;
        }
    }

    return true;
}