lbl_80D52580:
/* 80D52580  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D52584  7C 08 02 A6 */	mflr r0
/* 80D52588  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5258C  3C 60 80 D5 */	lis r3, data_80D557A0@ha
/* 80D52590  38 63 57 A0 */	addi r3, r3, data_80D557A0@l
/* 80D52594  4B 51 0B B8 */	b ModuleConstructorsX
/* 80D52598  4B 51 0A F0 */	b ModuleProlog
/* 80D5259C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D525A0  7C 08 03 A6 */	mtlr r0
/* 80D525A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D525A8  4E 80 00 20 */	blr 
