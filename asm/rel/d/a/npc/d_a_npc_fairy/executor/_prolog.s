lbl_809B1A20:
/* 809B1A20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B1A24  7C 08 02 A6 */	mflr r0
/* 809B1A28  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B1A2C  3C 60 80 9C */	lis r3, data_809B92D0@ha
/* 809B1A30  38 63 92 D0 */	addi r3, r3, data_809B92D0@l
/* 809B1A34  4B 8B 17 18 */	b ModuleConstructorsX
/* 809B1A38  4B 8B 16 50 */	b ModuleProlog
/* 809B1A3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B1A40  7C 08 03 A6 */	mtlr r0
/* 809B1A44  38 21 00 10 */	addi r1, r1, 0x10
/* 809B1A48  4E 80 00 20 */	blr 
