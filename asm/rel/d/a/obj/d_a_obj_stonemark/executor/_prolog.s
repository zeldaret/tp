lbl_80599FA0:
/* 80599FA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80599FA4  7C 08 02 A6 */	mflr r0
/* 80599FA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80599FAC  3C 60 80 5A */	lis r3, data_8059A3E0@ha
/* 80599FB0  38 63 A3 E0 */	addi r3, r3, data_8059A3E0@l
/* 80599FB4  4B CC 91 98 */	b ModuleConstructorsX
/* 80599FB8  4B CC 90 D0 */	b ModuleProlog
/* 80599FBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80599FC0  7C 08 03 A6 */	mtlr r0
/* 80599FC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80599FC8  4E 80 00 20 */	blr 
