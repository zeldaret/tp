lbl_80760BF8:
/* 80760BF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80760BFC  7C 08 02 A6 */	mflr r0
/* 80760C00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80760C04  4B FF F5 09 */	bl create__8daE_PZ_cFv
/* 80760C08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80760C0C  7C 08 03 A6 */	mtlr r0
/* 80760C10  38 21 00 10 */	addi r1, r1, 0x10
/* 80760C14  4E 80 00 20 */	blr 
