lbl_80D4D798:
/* 80D4D798  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4D79C  7C 08 02 A6 */	mflr r0
/* 80D4D7A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4D7A4  4B 51 58 EC */	b ModuleUnresolved
/* 80D4D7A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4D7AC  7C 08 03 A6 */	mtlr r0
/* 80D4D7B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4D7B4  4E 80 00 20 */	blr 
