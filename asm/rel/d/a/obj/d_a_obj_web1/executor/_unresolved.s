lbl_80D35318:
/* 80D35318  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3531C  7C 08 02 A6 */	mflr r0
/* 80D35320  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D35324  4B 52 DD 6C */	b ModuleUnresolved
/* 80D35328  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3532C  7C 08 03 A6 */	mtlr r0
/* 80D35330  38 21 00 10 */	addi r1, r1, 0x10
/* 80D35334  4E 80 00 20 */	blr 
