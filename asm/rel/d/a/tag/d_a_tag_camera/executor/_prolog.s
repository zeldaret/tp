lbl_80489A20:
/* 80489A20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80489A24  7C 08 02 A6 */	mflr r0
/* 80489A28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80489A2C  3C 60 80 49 */	lis r3, data_8048A588@ha
/* 80489A30  38 63 A5 88 */	addi r3, r3, data_8048A588@l
/* 80489A34  4B DD 97 18 */	b ModuleConstructorsX
/* 80489A38  4B DD 96 50 */	b ModuleProlog
/* 80489A3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80489A40  7C 08 03 A6 */	mtlr r0
/* 80489A44  38 21 00 10 */	addi r1, r1, 0x10
/* 80489A48  4E 80 00 20 */	blr 
