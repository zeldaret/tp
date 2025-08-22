#ifndef STD_CMATH_H_
#define STD_CMATH_H_

namespace std {
template<typename T>
inline double fabs(T x) {
    return ::fabs(x);
}

inline float fabs(float num) {
    return ::fabsf(num);
}

inline float fabsf(float num) {
    return ::fabsf(num);
}

inline float sqrt(float x) {
    return ::sqrtf(x);
}

inline float abs(float x) {
    return ::fabsf(x);
}

inline float fmod(float x, float y) {
    return ::fmod(x, y);
}

inline float ceil(float num) {
    return ::ceilf(num);
}

inline float floor(float num) {
    return ::floorf(num);
}

inline float tan(float num) {
    return ::i_tanf(num);
}
}  // namespace std

#endif
