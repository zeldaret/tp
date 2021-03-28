lbl_80528BD8:
/* 80528BD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80528BDC  7C 08 02 A6 */	mflr r0
/* 80528BE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80528BE4  4B D3 A4 AC */	b ModuleUnresolved
/* 80528BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80528BEC  7C 08 03 A6 */	mtlr r0
/* 80528BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80528BF4  4E 80 00 20 */	blr 
