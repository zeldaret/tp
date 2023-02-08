#ifndef MSL_COMMON_SRC_ARITH_H
#define MSL_COMMON_SRC_ARITH_H

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    int quot;  /* quotient */
    int rem;   /* remainder */
} div_t;

div_t div(int numerator, int denominator);

#ifdef __cplusplus
}
#endif

#endif /* MSL_COMMON_SRC_ARITH_H */
