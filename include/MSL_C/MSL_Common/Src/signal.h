#ifndef MSL_COMMON_SRC_SIGNAL_H
#define MSL_COMMON_SRC_SIGNAL_H

#ifdef __cplusplus
extern "C" {
#endif

typedef void (*__signal_func_ptr)(int);

int raise(int sig);

#ifdef __cplusplus
}
#endif

#endif /* MSL_COMMON_SRC_SIGNAL_H */
