lbl_80C25FA0:
/* 80C25FA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C25FA4  7C 08 02 A6 */	mflr r0
/* 80C25FA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C25FAC  3C 60 80 C2 */	lis r3, data_80C26880@ha
/* 80C25FB0  38 63 68 80 */	addi r3, r3, data_80C26880@l
/* 80C25FB4  4B 63 D1 98 */	b ModuleConstructorsX
/* 80C25FB8  4B 63 D0 D0 */	b ModuleProlog
/* 80C25FBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C25FC0  7C 08 03 A6 */	mtlr r0
/* 80C25FC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C25FC8  4E 80 00 20 */	blr 
