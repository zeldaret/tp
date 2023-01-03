#ifndef MSL_COMMON_SRC_ABORT_EXIT_H
#define MSL_COMMON_SRC_ABORT_EXIT_H

#ifdef __cplusplus
extern "C" {
#endif

void exit(int status);
void abort(void);

extern void (*__stdio_exit)(void);

#ifdef __cplusplus
};
#endif

#endif /* MSL_COMMON_SRC_ABORT_EXIT_H */
