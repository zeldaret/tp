lbl_80D17A80:
/* 80D17A80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D17A84  7C 08 02 A6 */	mflr r0
/* 80D17A88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D17A8C  3C 60 80 D2 */	lis r3, data_80D18E84@ha
/* 80D17A90  38 63 8E 84 */	addi r3, r3, data_80D18E84@l
/* 80D17A94  4B 54 B6 B8 */	b ModuleConstructorsX
/* 80D17A98  4B 54 B5 F0 */	b ModuleProlog
/* 80D17A9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D17AA0  7C 08 03 A6 */	mtlr r0
/* 80D17AA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D17AA8  4E 80 00 20 */	blr 
