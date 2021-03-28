lbl_806D0924:
/* 806D0924  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D0928  7C 08 02 A6 */	mflr r0
/* 806D092C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D0930  4B FF F9 4D */	bl create__8daE_GI_cFv
/* 806D0934  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D0938  7C 08 03 A6 */	mtlr r0
/* 806D093C  38 21 00 10 */	addi r1, r1, 0x10
/* 806D0940  4E 80 00 20 */	blr 
