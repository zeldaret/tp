lbl_8057CFE0:
/* 8057CFE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057CFE4  7C 08 02 A6 */	mflr r0
/* 8057CFE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057CFEC  3C 60 80 58 */	lis r3, data_8057F55C@ha
/* 8057CFF0  38 63 F5 5C */	addi r3, r3, data_8057F55C@l
/* 8057CFF4  4B CE 61 58 */	b ModuleConstructorsX
/* 8057CFF8  4B CE 60 90 */	b ModuleProlog
/* 8057CFFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057D000  7C 08 03 A6 */	mtlr r0
/* 8057D004  38 21 00 10 */	addi r1, r1, 0x10
/* 8057D008  4E 80 00 20 */	blr 
