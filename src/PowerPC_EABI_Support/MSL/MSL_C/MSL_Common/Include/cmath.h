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
}  // namespace std

#endif
