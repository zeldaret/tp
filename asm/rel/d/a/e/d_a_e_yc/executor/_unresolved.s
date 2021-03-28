lbl_807EFE38:
/* 807EFE38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807EFE3C  7C 08 02 A6 */	mflr r0
/* 807EFE40  90 01 00 14 */	stw r0, 0x14(r1)
/* 807EFE44  4B A7 32 4C */	b ModuleUnresolved
/* 807EFE48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807EFE4C  7C 08 03 A6 */	mtlr r0
/* 807EFE50  38 21 00 10 */	addi r1, r1, 0x10
/* 807EFE54  4E 80 00 20 */	blr 
