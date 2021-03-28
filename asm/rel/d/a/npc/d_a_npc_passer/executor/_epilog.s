lbl_80AA2BCC:
/* 80AA2BCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA2BD0  7C 08 02 A6 */	mflr r0
/* 80AA2BD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA2BD8  4B 7C 04 B4 */	b ModuleEpilog
/* 80AA2BDC  3C 60 80 AA */	lis r3, data_80AA6988@ha
/* 80AA2BE0  38 63 69 88 */	addi r3, r3, data_80AA6988@l
/* 80AA2BE4  4B 7C 05 AC */	b ModuleDestructorsX
/* 80AA2BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA2BEC  7C 08 03 A6 */	mtlr r0
/* 80AA2BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA2BF4  4E 80 00 20 */	blr 
