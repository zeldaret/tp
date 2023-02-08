lbl_80BBADD8:
/* 80BBADD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBADDC  7C 08 02 A6 */	mflr r0
/* 80BBADE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBADE4  4B FF FE DD */	bl execute__12daObjBombf_cFv
/* 80BBADE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBADEC  7C 08 03 A6 */	mtlr r0
/* 80BBADF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBADF4  4E 80 00 20 */	blr 
