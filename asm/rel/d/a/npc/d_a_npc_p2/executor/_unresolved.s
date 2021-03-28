lbl_80A92BD8:
/* 80A92BD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A92BDC  7C 08 02 A6 */	mflr r0
/* 80A92BE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A92BE4  4B 7D 04 AC */	b ModuleUnresolved
/* 80A92BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A92BEC  7C 08 03 A6 */	mtlr r0
/* 80A92BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A92BF4  4E 80 00 20 */	blr 
