lbl_80C33AF4:
/* 80C33AF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C33AF8  7C 08 02 A6 */	mflr r0
/* 80C33AFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C33B00  4B FF E9 E5 */	bl Execute__12daObj_Kago_cFv
/* 80C33B04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C33B08  7C 08 03 A6 */	mtlr r0
/* 80C33B0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C33B10  4E 80 00 20 */	blr 
