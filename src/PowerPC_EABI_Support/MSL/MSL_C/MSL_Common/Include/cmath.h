#ifndef STD_CMATH_H_
#define STD_CMATH_H_


namespace std {
/* float fabs(float num) {
    return ::fabsf(num);
} */

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