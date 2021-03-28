lbl_80594FC0:
/* 80594FC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80594FC4  7C 08 02 A6 */	mflr r0
/* 80594FC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80594FCC  3C 60 80 59 */	lis r3, data_80595CAC@ha
/* 80594FD0  38 63 5C AC */	addi r3, r3, data_80595CAC@l
/* 80594FD4  4B CC E1 78 */	b ModuleConstructorsX
/* 80594FD8  4B CC E0 B0 */	b ModuleProlog
/* 80594FDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80594FE0  7C 08 03 A6 */	mtlr r0
/* 80594FE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80594FE8  4E 80 00 20 */	blr 
