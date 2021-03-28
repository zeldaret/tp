lbl_80A83DA0:
/* 80A83DA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A83DA4  7C 08 02 A6 */	mflr r0
/* 80A83DA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A83DAC  3C 60 80 A9 */	lis r3, data_80A88420@ha
/* 80A83DB0  38 63 84 20 */	addi r3, r3, data_80A88420@l
/* 80A83DB4  4B 7D F3 98 */	b ModuleConstructorsX
/* 80A83DB8  4B 7D F2 D0 */	b ModuleProlog
/* 80A83DBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A83DC0  7C 08 03 A6 */	mtlr r0
/* 80A83DC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A83DC8  4E 80 00 20 */	blr 
