lbl_805795C0:
/* 805795C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805795C4  7C 08 02 A6 */	mflr r0
/* 805795C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805795CC  3C 60 80 58 */	lis r3, data_8057B358@ha
/* 805795D0  38 63 B3 58 */	addi r3, r3, data_8057B358@l
/* 805795D4  4B CE 9B 78 */	b ModuleConstructorsX
/* 805795D8  4B CE 9A B0 */	b ModuleProlog
/* 805795DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805795E0  7C 08 03 A6 */	mtlr r0
/* 805795E4  38 21 00 10 */	addi r1, r1, 0x10
/* 805795E8  4E 80 00 20 */	blr 
