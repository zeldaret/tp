lbl_80BCD504:
/* 80BCD504  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCD508  7C 08 02 A6 */	mflr r0
/* 80BCD50C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCD510  4B FF F8 55 */	bl create__12daObjCrope_cFv
/* 80BCD514  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCD518  7C 08 03 A6 */	mtlr r0
/* 80BCD51C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCD520  4E 80 00 20 */	blr 
