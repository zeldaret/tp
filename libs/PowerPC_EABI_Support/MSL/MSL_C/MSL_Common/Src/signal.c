#include "signal.h"
#include "abort_exit.h"
#include "critical_regions.h"

#define __std(ref) ref

/* 8044D878-8044D890 07A598 0018+00 1/1 0/0 0/0 .bss             signal_funcs */
__signal_func_ptr signal_funcs[6];

/* 8036881C-803688DC 36315C 00C0+00 0/0 1/1 0/0 .text            raise */
int raise(int sig) {
    __signal_func_ptr signal_func;

    if (sig < 1 || sig > 6) {
        return -1;
    }

    __begin_critical_region(stderr_access);
    signal_func = signal_funcs[sig - 1];

    if (signal_func != ((__std(__signal_func_ptr))1)) {
        signal_funcs[sig - 1] = ((__std(__signal_func_ptr))0);
    }

    __end_critical_region(stderr_access);

    if (signal_func == ((__std(__signal_func_ptr))1) ||
        (signal_func == ((__std(__signal_func_ptr))0) && sig == 1))
    {
        return 0;
    }

    if (signal_func == ((__std(__signal_func_ptr))0)) {
        exit(0);
    }

    (*signal_func)(sig);
    return 0;
}
