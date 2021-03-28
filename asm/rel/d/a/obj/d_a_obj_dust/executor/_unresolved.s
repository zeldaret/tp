lbl_80BE2298:
/* 80BE2298  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE229C  7C 08 02 A6 */	mflr r0
/* 80BE22A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE22A4  4B 68 0D EC */	b ModuleUnresolved
/* 80BE22A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE22AC  7C 08 03 A6 */	mtlr r0
/* 80BE22B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE22B4  4E 80 00 20 */	blr 
