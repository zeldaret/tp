lbl_80A73DB8:
/* 80A73DB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A73DBC  7C 08 02 A6 */	mflr r0
/* 80A73DC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A73DC4  4B 7E F2 CC */	b ModuleUnresolved
/* 80A73DC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A73DCC  7C 08 03 A6 */	mtlr r0
/* 80A73DD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A73DD4  4E 80 00 20 */	blr 
