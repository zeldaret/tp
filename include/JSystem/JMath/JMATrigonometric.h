#ifndef JMATRIGONOMETRIC_H
#define JMATRIGONOMETRIC_H

#include "dolphin/types.h"
#include "MSL_C/utility.h"

struct TSinCosTable {
    std::pair<f32, f32> table[0x2000];

    f32 sinShort(s16 v) const { return table[static_cast<u16>(v) >> 3].first; }
    f32 cosShort(s16 v) const { return table[static_cast<u16>(v) >> 3].second; }

    inline f32 sinLap(f32 v) {
        if (v < 0.0f) {
            return -table[(u16)(-8192.0f * v) & 0x1fff].first;
        }
        return table[(u16)(8192.0f * v) & 0x1fff].first;
    }
};

struct TAtanTable {
    f32 table[1025];
    u8 pad[0x1C];
};

struct TAsinAcosTable {
    f32 table[1025];
    u8 pad[0x1C];
};

namespace JMath {
extern TSinCosTable sincosTable_;
extern TAtanTable atanTable_;
extern TAsinAcosTable asinAcosTable_;
};  // namespace JMath

inline f32 JMASCosShort(s16 v) {
    return JMath::sincosTable_.cosShort(v);
}
inline f32 JMASinShort(s16 v) {
    return JMath::sincosTable_.sinShort(v);
}

inline f32 JMASCos(s16 v) {
    return JMASCosShort(v);
}
inline f32 JMASSin(s16 v) {
    return JMASinShort(v);
}

inline f32 JMASinLap(f32 v) {
    return JMath::sincosTable_.sinLap(v);
}

#endif /* JMATRIGONOMETRIC_H */
