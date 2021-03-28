lbl_8049F63C:
/* 8049F63C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049F640  7C 08 02 A6 */	mflr r0
/* 8049F644  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049F648  7C A4 2B 78 */	mr r4, r5
/* 8049F64C  4B FF FF A9 */	bl lockLineCallback__13daBoomerang_cFP10fopAc_ac_c
/* 8049F650  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049F654  7C 08 03 A6 */	mtlr r0
/* 8049F658  38 21 00 10 */	addi r1, r1, 0x10
/* 8049F65C  4E 80 00 20 */	blr 
