lbl_80040AB8:
/* 80040AB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80040ABC  7C 08 02 A6 */	mflr r0
/* 80040AC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80040AC4  7C 83 23 78 */	mr r3, r4
/* 80040AC8  48 05 B8 D5 */	bl getNextData__7dTres_cFPQ27dTres_c15typeGroupData_c
/* 80040ACC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80040AD0  7C 08 03 A6 */	mtlr r0
/* 80040AD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80040AD8  4E 80 00 20 */	blr 
