lbl_80D0BBA0:
/* 80D0BBA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0BBA4  7C 08 02 A6 */	mflr r0
/* 80D0BBA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0BBAC  3C 60 80 D1 */	lis r3, data_80D0C134@ha
/* 80D0BBB0  38 63 C1 34 */	addi r3, r3, data_80D0C134@l
/* 80D0BBB4  4B 55 75 98 */	b ModuleConstructorsX
/* 80D0BBB8  4B 55 74 D0 */	b ModuleProlog
/* 80D0BBBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0BBC0  7C 08 03 A6 */	mtlr r0
/* 80D0BBC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0BBC8  4E 80 00 20 */	blr 
