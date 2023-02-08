lbl_8002ABCC:
/* 8002ABCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002ABD0  7C 08 02 A6 */	mflr r0
/* 8002ABD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002ABD8  48 01 5E E1 */	bl getNextData__28renderingPlusDoorAndCursor_cFPQ27dTres_c15typeGroupData_c
/* 8002ABDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002ABE0  7C 08 03 A6 */	mtlr r0
/* 8002ABE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8002ABE8  4E 80 00 20 */	blr 
