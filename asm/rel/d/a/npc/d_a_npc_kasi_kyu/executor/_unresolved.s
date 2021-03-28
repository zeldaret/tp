lbl_80A21938:
/* 80A21938  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A2193C  7C 08 02 A6 */	mflr r0
/* 80A21940  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A21944  4B 84 17 4C */	b ModuleUnresolved
/* 80A21948  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A2194C  7C 08 03 A6 */	mtlr r0
/* 80A21950  38 21 00 10 */	addi r1, r1, 0x10
/* 80A21954  4E 80 00 20 */	blr 
