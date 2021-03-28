lbl_80D39DC0:
/* 80D39DC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D39DC4  7C 08 02 A6 */	mflr r0
/* 80D39DC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D39DCC  3C 60 80 D4 */	lis r3, data_80D3B630@ha
/* 80D39DD0  38 63 B6 30 */	addi r3, r3, data_80D3B630@l
/* 80D39DD4  4B 52 93 78 */	b ModuleConstructorsX
/* 80D39DD8  4B 52 92 B0 */	b ModuleProlog
/* 80D39DDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D39DE0  7C 08 03 A6 */	mtlr r0
/* 80D39DE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D39DE8  4E 80 00 20 */	blr 
