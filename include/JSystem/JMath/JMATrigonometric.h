#ifndef JMATRIGONOMETRIC_H
#define JMATRIGONOMETRIC_H

#include "dolphin/types.h"

namespace std {
template <typename A1, typename B1>
struct pair {
    A1 a1;
    B1 b1;
    pair() {
        a1 = A1();
        b1 = B1();
    }
};
}  // namespace std

struct TSinCosTable {
    std::pair<f32, f32> table[0x2000];
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

#endif /* JMATRIGONOMETRIC_H */
