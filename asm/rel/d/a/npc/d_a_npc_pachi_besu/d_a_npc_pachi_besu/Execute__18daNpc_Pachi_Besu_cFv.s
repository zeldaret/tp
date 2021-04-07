lbl_80A9363C:
/* 80A9363C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A93640  7C 08 02 A6 */	mflr r0
/* 80A93644  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A93648  4B 6B 4E E5 */	bl execute__8daNpcT_cFv
/* 80A9364C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A93650  7C 08 03 A6 */	mtlr r0
/* 80A93654  38 21 00 10 */	addi r1, r1, 0x10
/* 80A93658  4E 80 00 20 */	blr 
