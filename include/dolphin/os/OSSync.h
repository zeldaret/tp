#ifndef OSSYNC_H
#define OSSYNC_H


#ifdef __cplusplus
extern "C" {
#endif

static void SystemCallVector(void);
void __OSInitSystemCall(void);

void __OSSystemCallVectorEnd(void);

#ifdef __cplusplus
};
#endif

#endif /* OSSYNC_H */
