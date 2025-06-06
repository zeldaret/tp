/**
 * c_counter.cpp
 *
 */

#include "SSystem/SComponent/c_counter.h"

/* ############################################################################################## */
/* 80430CD8-80430CE8 000C+04 s=1 e=12 z=22  None .bss       g_Counter */
counter_class g_Counter;

/* 80265E1C-80265E64 0048+00 s=0 e=1 z=0  None .text      cCt_Counter__Fi */
void cCt_Counter(int resetCounter1) {
    if (resetCounter1 == 1) {
        g_Counter.mCounter1 = 0;
    } else {
        g_Counter.mCounter1++;
    }

    g_Counter.mCounter0++;
}