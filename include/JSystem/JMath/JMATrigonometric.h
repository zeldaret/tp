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

    inline f32 sinDegree(f32 degree) {
        if (degree < 0.0f) {
            return -table[(u16)(-22.755556106567383f * degree) & 0x1fffU].first;
        } 
        return table[(u16)(22.755556106567383f * degree) & 0x1fffU].first;
    }

    inline f32 cosDegree(f32 degree) {
        if (degree < 0.0f) {
            degree = -degree;
        } 
        return table[(u16)(22.755556106567383f * degree) & 0x1fffU].second;
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

inline f32 JMASinDegree(f32 degree) {
    return JMath::sincosTable_.sinDegree(degree);
}

inline f32 JMACosDegree(f32 degree) {
    return JMath::sincosTable_.cosDegree(degree);
}

#endif /* JMATRIGONOMETRIC_H */
