lbl_8057C98C:
/* 8057C98C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057C990  7C 08 02 A6 */	mflr r0
/* 8057C994  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057C998  4B CE 66 F4 */	b ModuleEpilog
/* 8057C99C  3C 60 80 58 */	lis r3, data_8057CAF4@ha
/* 8057C9A0  38 63 CA F4 */	addi r3, r3, data_8057CAF4@l
/* 8057C9A4  4B CE 67 EC */	b ModuleDestructorsX
/* 8057C9A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057C9AC  7C 08 03 A6 */	mtlr r0
/* 8057C9B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8057C9B4  4E 80 00 20 */	blr 
