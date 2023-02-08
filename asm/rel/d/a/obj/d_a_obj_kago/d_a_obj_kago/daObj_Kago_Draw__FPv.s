lbl_80C33B14:
/* 80C33B14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C33B18  7C 08 02 A6 */	mflr r0
/* 80C33B1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C33B20  4B FF F7 B1 */	bl Draw__12daObj_Kago_cFv
/* 80C33B24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C33B28  7C 08 03 A6 */	mtlr r0
/* 80C33B2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C33B30  4E 80 00 20 */	blr 
