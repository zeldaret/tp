lbl_806D7FA0:
/* 806D7FA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D7FA4  7C 08 02 A6 */	mflr r0
/* 806D7FA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D7FAC  3C 60 80 6E */	lis r3, data_806DEE24@ha
/* 806D7FB0  38 63 EE 24 */	addi r3, r3, data_806DEE24@l
/* 806D7FB4  4B B8 B1 98 */	b ModuleConstructorsX
/* 806D7FB8  4B B8 B0 D0 */	b ModuleProlog
/* 806D7FBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D7FC0  7C 08 03 A6 */	mtlr r0
/* 806D7FC4  38 21 00 10 */	addi r1, r1, 0x10
/* 806D7FC8  4E 80 00 20 */	blr 
