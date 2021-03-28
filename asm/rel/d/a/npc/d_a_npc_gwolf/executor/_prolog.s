lbl_809F2FC0:
/* 809F2FC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F2FC4  7C 08 02 A6 */	mflr r0
/* 809F2FC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F2FCC  3C 60 80 A0 */	lis r3, data_809F84E0@ha
/* 809F2FD0  38 63 84 E0 */	addi r3, r3, data_809F84E0@l
/* 809F2FD4  4B 87 01 78 */	b ModuleConstructorsX
/* 809F2FD8  4B 87 00 B0 */	b ModuleProlog
/* 809F2FDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F2FE0  7C 08 03 A6 */	mtlr r0
/* 809F2FE4  38 21 00 10 */	addi r1, r1, 0x10
/* 809F2FE8  4E 80 00 20 */	blr 
