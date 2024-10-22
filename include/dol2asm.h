#ifndef DOL2ASM
#define DOL2ASM

// this helps remove useless error from the linter when using vscode.
#ifdef __MWERKS__

#ifdef __cplusplus
#define SECTION_INIT extern "C" __declspec(section ".init")
#define SECTION_RODATA __declspec(section ".rodata")
#define SECTION_DATA __declspec(section ".data")
#define SECTION_SDATA __declspec(section ".sdata")
#define SECTION_SDATA2 __declspec(section ".sdata2")
#define SECTION_BSS __declspec(section ".data")
#define SECTION_SBSS __declspec(section ".sdata")
#define SECTION_SBSS2 __declspec(section ".sdata2")
#define SECTION_CTORS extern "C" __declspec(section ".ctors")
#define SECTION_DTORS extern "C" __declspec(section ".dtors")
#define SECTION_EXTAB extern "C" __declspec(section "extab_")
#define SECTION_EXTABINDEX extern "C" __declspec(section "extabindex_")
#define SECTION_DEAD extern "C" __declspec(section ".dead")
#define SECTION_CTORS10 __declspec(section ".ctors$10")
#define SECTION_CTORS15 __declspec(section ".ctors$15")
#define SECTION_DTORS10 __declspec(section ".dtors$10")
#define SECTION_DTORS15 __declspec(section ".dtors$15")
#define COMPILER_STRIP_GATE(NAME, VALUE) SECTION_DEAD void* const cg_##NAME = (void*)(VALUE)
#define REGISTER_CTORS(ADDR, FUNCTION) SECTION_CTORS void* const _ctors_##ADDR = (void*)(FUNCTION);
#else
#define SECTION_INIT __declspec(section ".init")
#define SECTION_RODATA __declspec(section ".rodata")
#define SECTION_DATA __declspec(section ".data")
#define SECTION_SDATA __declspec(section ".sdata")
#define SECTION_SDATA2 __declspec(section ".sdata2")
#define SECTION_BSS __declspec(section ".data")
#define SECTION_SBSS __declspec(section ".sdata")
#define SECTION_SBSS2 __declspec(section ".sdata2")
#define SECTION_CTORS __declspec(section ".ctors")
#define SECTION_DTORS __declspec(section ".dtors")
#define SECTION_EXTAB __declspec(section "extab_")
#define SECTION_EXTABINDEX __declspec(section "extabindex_")
#define SECTION_DEAD __declspec(section ".dead")
#define SECTION_CTORS10 __declspec(section ".ctors$10")
#define SECTION_CTORS15 __declspec(section ".ctors$15")
#define SECTION_DTORS10 __declspec(section ".dtors$10")
#define SECTION_DTORS15 __declspec(section ".dtors$15")
#define COMPILER_STRIP_GATE(NAME, VALUE) SECTION_DEAD void* const cg_##NAME = (void*)(VALUE)
#define REGISTER_CTORS(ADDR, FUNCTION) SECTION_CTORS void* const _ctors_##ADDR = (void*)(FUNCTION);
#endif

#else
#define SECTION_INIT
#define SECTION_RODATA
#define SECTION_DATA
#define SECTION_SDATA
#define SECTION_SDATA2
#define SECTION_BSS
#define SECTION_SBSS
#define SECTION_SBSS2
#define SECTION_CTORS
#define SECTION_DTORS
#define SECTION_EXTAB
#define SECTION_EXTABINDEX
#define SECTION_DEAD
#define SECTION_CTORS10
#define SECTION_CTORS15
#define SECTION_DTORS10
#define SECTION_DTORS15
#define COMPILER_STRIP_GATE(...)
#define REGISTER_CTORS(...)

// vscode doesn't like asm and nofralloc very much
#define asm
#define nofralloc
#endif

// floating-point constants
// TODO: move to different header
#define _HUGE_ENUF 1e+300
#define INFINITY ((float)(_HUGE_ENUF * _HUGE_ENUF))
#define HUGE_VAL ((double)INFINITY)
#define HUGE_VALL ((long double)INFINITY)

#define DOUBLE_INF HUGE_VAL

#pragma section ".dead"
#pragma section ".ctors$10"
#pragma section ".ctors$15"
#pragma section ".dtors$10"
#pragma section ".dtors$15"

#endif /* DOL2ASM */
