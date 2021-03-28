lbl_80D079B8:
/* 80D079B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D079BC  7C 08 02 A6 */	mflr r0
/* 80D079C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D079C4  4B 55 B6 CC */	b ModuleUnresolved
/* 80D079C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D079CC  7C 08 03 A6 */	mtlr r0
/* 80D079D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D079D4  4E 80 00 20 */	blr 
