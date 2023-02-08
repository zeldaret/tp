lbl_80BD6854:
/* 80BD6854  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD6858  7C 08 02 A6 */	mflr r0
/* 80BD685C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD6860  4B FF FE B9 */	bl execute__14daObjCrystal_cFv
/* 80BD6864  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD6868  7C 08 03 A6 */	mtlr r0
/* 80BD686C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD6870  4E 80 00 20 */	blr 
