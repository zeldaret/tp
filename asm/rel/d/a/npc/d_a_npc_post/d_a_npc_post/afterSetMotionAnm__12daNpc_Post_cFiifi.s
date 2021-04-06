lbl_80AAA968:
/* 80AAA968  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AAA96C  7C 08 02 A6 */	mflr r0
/* 80AAA970  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AAA974  88 03 0A 88 */	lbz r0, 0xa88(r3)
/* 80AAA978  28 00 00 01 */	cmplwi r0, 1
/* 80AAA97C  40 82 00 0C */	bne lbl_80AAA988
/* 80AAA980  3C C0 80 AB */	lis r6, lit_4070@ha /* 0x80AAD2A0@ha */
/* 80AAA984  C0 26 D2 A0 */	lfs f1, lit_4070@l(r6)  /* 0x80AAD2A0@l */
lbl_80AAA988:
/* 80AAA988  4B FF FF 1D */	bl setFlagAnm__12daNpc_Post_cFiif
/* 80AAA98C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AAA990  7C 08 03 A6 */	mtlr r0
/* 80AAA994  38 21 00 10 */	addi r1, r1, 0x10
/* 80AAA998  4E 80 00 20 */	blr 
