lbl_806635C0:
/* 806635C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806635C4  7C 08 02 A6 */	mflr r0
/* 806635C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806635CC  3C 60 80 66 */	lis r3, data_80667688@ha
/* 806635D0  38 63 76 88 */	addi r3, r3, data_80667688@l
/* 806635D4  4B BF FB 78 */	b ModuleConstructorsX
/* 806635D8  4B BF FA B0 */	b ModuleProlog
/* 806635DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806635E0  7C 08 03 A6 */	mtlr r0
/* 806635E4  38 21 00 10 */	addi r1, r1, 0x10
/* 806635E8  4E 80 00 20 */	blr 
