lbl_80D42228:
/* 80D42228  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4222C  7C 08 02 A6 */	mflr r0
/* 80D42230  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D42234  4B FF FC DD */	bl Execute__12daZrTuraRc_cFv
/* 80D42238  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4223C  7C 08 03 A6 */	mtlr r0
/* 80D42240  38 21 00 10 */	addi r1, r1, 0x10
/* 80D42244  4E 80 00 20 */	blr 
