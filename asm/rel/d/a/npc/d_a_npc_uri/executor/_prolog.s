lbl_80B266C0:
/* 80B266C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B266C4  7C 08 02 A6 */	mflr r0
/* 80B266C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B266CC  3C 60 80 B3 */	lis r3, data_80B2CE00@ha
/* 80B266D0  38 63 CE 00 */	addi r3, r3, data_80B2CE00@l
/* 80B266D4  4B 73 CA 78 */	b ModuleConstructorsX
/* 80B266D8  4B 73 C9 B0 */	b ModuleProlog
/* 80B266DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B266E0  7C 08 03 A6 */	mtlr r0
/* 80B266E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B266E8  4E 80 00 20 */	blr 
