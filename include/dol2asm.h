#ifndef DOL2ASM
#define DOL2ASM

// this helps remove useless error from the linter when using vscode.
#ifndef IN_VSCODE_EDITOR
#define SECTION_INIT extern "C" __declspec(section ".init")
#define SECTION_RODATA extern "C" __declspec(section ".rodata")
#define SECTION_DATA extern "C" __declspec(section ".data")
#define SECTION_SDATA extern "C" __declspec(section ".sdata")
#define SECTION_SDATA2 extern "C" __declspec(section ".sdata2")
#define SECTION_BSS extern "C" __declspec(section ".data")
#define SECTION_SBSS extern "C" __declspec(section ".sdata")
#define SECTION_SBSS2 extern "C" __declspec(section ".sdata2")
#define SECTION_CTORS extern "C" __declspec(section ".ctors")
#define SECTION_DTORS extern "C" __declspec(section ".dtors")
#define SECTION_EXTAB extern "C" __declspec(section "extab_")
#define SECTION_EXTABINDEX extern "C" __declspec(section "extabindex_")
#define SECTION_DEAD extern "C" __declspec(section ".dead")
#define SECTION_CTORS10 __declspec(section ".ctors$10")
#define SECTION_CTORS15 __declspec(section ".ctors$15")
#define SECTION_DTORS10 __declspec(section ".dtors$10")
#define SECTION_DTORS15 __declspec(section ".dtors$15")
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

// vscode doesn't like asm and nofralloc very much
#define asm
#define nofralloc
#endif

// floating-point constants
// TODO: move to different header
#define _HUGE_ENUF 1e+300
#define INFINITY ((float)(_HUGE_ENUF * _HUGE_ENUF))
#define HUGE_VAL ((double)INFINITY)
#define HUGE_VALF ((float)INFINITY)
#define HUGE_VALL ((long double)INFINITY)

#define FLOAT_INF HUGE_VALF
#define DOUBLE_INF HUGE_VAL

#pragma section ".ctors$10"
#pragma section ".ctors$15"
#pragma section ".dtors$10"
#pragma section ".dtors$15"

#endif /* DOL2ASM */
