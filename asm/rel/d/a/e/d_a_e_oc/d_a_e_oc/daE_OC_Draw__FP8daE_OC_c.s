lbl_8072C918:
/* 8072C918  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8072C91C  7C 08 02 A6 */	mflr r0
/* 8072C920  90 01 00 14 */	stw r0, 0x14(r1)
/* 8072C924  4B FF FE 11 */	bl draw__8daE_OC_cFv
/* 8072C928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8072C92C  7C 08 03 A6 */	mtlr r0
/* 8072C930  38 21 00 10 */	addi r1, r1, 0x10
/* 8072C934  4E 80 00 20 */	blr 
