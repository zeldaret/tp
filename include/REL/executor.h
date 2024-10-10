#ifndef REL_EXECUTOR_H
#define REL_EXECUTOR_H

#ifdef __cplusplus
extern "C" {
#endif

extern void _prolog();
extern void _epilog();
extern void _unresolved();

typedef void (*VoidFunc)(void);
extern const VoidFunc _ctors[];
extern const VoidFunc _dtors[];

extern void ModuleProlog(void);
extern void ModuleEpilog(void);
extern void ModuleUnresolved(void);
extern void ModuleConstructorsX(const VoidFunc* ctors);
extern void ModuleDestructorsX(const VoidFunc* dtors);

#ifdef __cplusplus
}
#endif

#endif /* REL_EXECUTOR_H */
