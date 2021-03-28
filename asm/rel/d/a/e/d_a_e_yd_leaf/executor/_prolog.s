lbl_807F7DA0:
/* 807F7DA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807F7DA4  7C 08 02 A6 */	mflr r0
/* 807F7DA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F7DAC  3C 60 80 80 */	lis r3, data_807F81E0@ha
/* 807F7DB0  38 63 81 E0 */	addi r3, r3, data_807F81E0@l
/* 807F7DB4  4B A6 B3 98 */	b ModuleConstructorsX
/* 807F7DB8  4B A6 B2 D0 */	b ModuleProlog
/* 807F7DBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F7DC0  7C 08 03 A6 */	mtlr r0
/* 807F7DC4  38 21 00 10 */	addi r1, r1, 0x10
/* 807F7DC8  4E 80 00 20 */	blr 
