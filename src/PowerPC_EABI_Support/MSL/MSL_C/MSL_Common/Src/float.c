#include "float.h"

/* 80450AE0-80450AE4 000560 0004+00 0/0 204/204 1060/1060 .sdata           __float_nan */
unsigned long __float_nan[] = {0x7FFFFFFF};

/* 80450AE4-80450AE8 000564 0004+00 0/0 1/1 0/0 .sdata           __float_huge */
unsigned long __float_huge[] = {0x7F800000};

/* 80450AE8-80450AEC 000568 0004+00 0/0 18/18 14/14 .sdata           __float_max */
unsigned long __float_max[] = {0x7F7FFFFF};

/* 80450AEC-80450AF0 00056C 0004+00 0/0 28/28 0/0 .sdata           __float_epsilon */
unsigned long __float_epsilon[] = {0x34000000};