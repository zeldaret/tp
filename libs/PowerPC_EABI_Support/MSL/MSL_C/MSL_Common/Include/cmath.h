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

/* float abs(float num) {
    return ::fabsf(num);
} */
}  // namespace std

#endif
