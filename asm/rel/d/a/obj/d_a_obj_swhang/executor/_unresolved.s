lbl_80CFB918:
/* 80CFB918  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFB91C  7C 08 02 A6 */	mflr r0
/* 80CFB920  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFB924  4B 56 77 6C */	b ModuleUnresolved
/* 80CFB928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFB92C  7C 08 03 A6 */	mtlr r0
/* 80CFB930  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFB934  4E 80 00 20 */	blr 
