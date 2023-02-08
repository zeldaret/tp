lbl_8073DAE4:
/* 8073DAE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8073DAE8  7C 08 02 A6 */	mflr r0
/* 8073DAEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8073DAF0  48 00 39 39 */	bl create__8daE_PH_cFv
/* 8073DAF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8073DAF8  7C 08 03 A6 */	mtlr r0
/* 8073DAFC  38 21 00 10 */	addi r1, r1, 0x10
/* 8073DB00  4E 80 00 20 */	blr 
