lbl_806910C0:
/* 806910C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806910C4  7C 08 02 A6 */	mflr r0
/* 806910C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806910CC  3C 60 80 69 */	lis r3, data_8069467C@ha
/* 806910D0  38 63 46 7C */	addi r3, r3, data_8069467C@l
/* 806910D4  4B BD 20 78 */	b ModuleConstructorsX
/* 806910D8  4B BD 1F B0 */	b ModuleProlog
/* 806910DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806910E0  7C 08 03 A6 */	mtlr r0
/* 806910E4  38 21 00 10 */	addi r1, r1, 0x10
/* 806910E8  4E 80 00 20 */	blr 
