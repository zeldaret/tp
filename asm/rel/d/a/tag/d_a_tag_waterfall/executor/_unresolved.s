lbl_80D64598:
/* 80D64598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D6459C  7C 08 02 A6 */	mflr r0
/* 80D645A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D645A4  4B 4F EA EC */	b ModuleUnresolved
/* 80D645A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D645AC  7C 08 03 A6 */	mtlr r0
/* 80D645B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D645B4  4E 80 00 20 */	blr 
