lbl_80BCE99C:
/* 80BCE99C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCE9A0  7C 08 02 A6 */	mflr r0
/* 80BCE9A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCE9A8  4B FF FB 55 */	bl execute__12daObjCrope_cFv
/* 80BCE9AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCE9B0  7C 08 03 A6 */	mtlr r0
/* 80BCE9B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCE9B8  4E 80 00 20 */	blr 
