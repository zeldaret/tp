#include "JSystem/JSystem.h" // IWYU pragma: keep

// don't include header until this "zero" mess is figured out
// #include "JSystem/JMath/JMATrigonometric.h"
#include <math>
#include "global.h"

static f32 dummy() {
    return 0.0f;
}

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

namespace JMath {
template<typename T>
struct TAngleConstant_;

template<>
struct TAngleConstant_<f32> {
    static f32 RADIAN_DEG180() { return M_PI;}
    static f32 RADIAN_DEG360() { return M_PI * 2; }
};

template<int N, typename T>
struct TSinCosTable {
    std::pair<T, T> table[1 << N];
    TSinCosTable() {
        init();
    }
    void init() {
        for (int i = 0; i < 1 << N; i++) {
            table[i].a1 = sin((i * f64(TAngleConstant_<f32>::RADIAN_DEG360())) / (1 << N));
            table[i].b1 = cos((i * f64(TAngleConstant_<f32>::RADIAN_DEG360())) / (1 << N));
        }
    }
};

inline f64 getConst2() {
    return 9.765625E-4;
}

template<int N, typename T>
struct TAtanTable {
    T table[N + 1];
    u8 pad[0x1C];
    TAtanTable() {
        init();
    }
    void init() {
        for (int i = 0; i < u32(N); i++) {
            table[i] = atan(getConst2() * i);
        }
        table[0] = 0.0f;
        table[N] = TAngleConstant_<f32>::RADIAN_DEG180() * 0.25f;  // 0.25 * PI
    }
};

template<int N, typename T>
struct TAsinAcosTable {
    T table[N + 1];
    u8 pad[0x1C];
    TAsinAcosTable() {
        init();
    }
    void init() {
        for (int i = 0; i < N; i++) {
            table[i] = asin(getConst2() * i);
        }
        table[0] = 0.0f;
        table[N] = TAngleConstant_<f32>::RADIAN_DEG180() * 0.25f;  // 0.25 * PI
    }
};

TSinCosTable<13, f32> sincosTable_ ATTRIBUTE_ALIGN(32);

TAtanTable<1024, f32> atanTable_ ATTRIBUTE_ALIGN(32);

TAsinAcosTable<1024, f32> asinAcosTable_ ATTRIBUTE_ALIGN(32);

}  // namespace JMath
