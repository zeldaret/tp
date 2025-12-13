#include "float.h"

unsigned long __float_nan[] = {0x7FFFFFFF};

unsigned long __float_huge[] = {0x7F800000};

#if !__REVOLUTION_SDK__
unsigned long __float_max[] = {0x7F7FFFFF};

unsigned long __float_epsilon[] = {0x34000000};
#endif

#if DEBUG
unsigned long long __double_huge[] = {0x7ff0000000000000ULL};
#endif
