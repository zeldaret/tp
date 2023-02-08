lbl_802BEBDC:
/* 802BEBDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BEBE0  7C 08 02 A6 */	mflr r0
/* 802BEBE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BEBE8  4B FF F3 C9 */	bl init__14Z2SoundObjBaseFP3VecUc
/* 802BEBEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BEBF0  7C 08 03 A6 */	mtlr r0
/* 802BEBF4  38 21 00 10 */	addi r1, r1, 0x10
/* 802BEBF8  4E 80 00 20 */	blr 
