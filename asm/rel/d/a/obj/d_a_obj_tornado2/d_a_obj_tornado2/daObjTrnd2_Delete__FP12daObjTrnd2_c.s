lbl_80D1D370:
/* 80D1D370  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1D374  7C 08 02 A6 */	mflr r0
/* 80D1D378  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1D37C  4B FF FF 6D */	bl _delete__12daObjTrnd2_cFv
/* 80D1D380  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1D384  7C 08 03 A6 */	mtlr r0
/* 80D1D388  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1D38C  4E 80 00 20 */	blr 
