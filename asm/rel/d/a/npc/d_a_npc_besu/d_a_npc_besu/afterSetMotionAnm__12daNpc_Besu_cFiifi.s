lbl_805396C4:
/* 805396C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805396C8  7C 08 02 A6 */	mflr r0
/* 805396CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805396D0  88 03 0A 88 */	lbz r0, 0xa88(r3)
/* 805396D4  28 00 00 01 */	cmplwi r0, 1
/* 805396D8  40 82 00 0C */	bne lbl_805396E4
/* 805396DC  3C C0 80 54 */	lis r6, lit_4337@ha
/* 805396E0  C0 26 E8 44 */	lfs f1, lit_4337@l(r6)
lbl_805396E4:
/* 805396E4  4B FF FF 11 */	bl setCupAnm__12daNpc_Besu_cFiif
/* 805396E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805396EC  7C 08 03 A6 */	mtlr r0
/* 805396F0  38 21 00 10 */	addi r1, r1, 0x10
/* 805396F4  4E 80 00 20 */	blr 
