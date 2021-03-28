lbl_80B75098:
/* 80B75098  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7509C  7C 08 02 A6 */	mflr r0
/* 80B750A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B750A4  4B 6E DF EC */	b ModuleUnresolved
/* 80B750A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B750AC  7C 08 03 A6 */	mtlr r0
/* 80B750B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B750B4  4E 80 00 20 */	blr 
