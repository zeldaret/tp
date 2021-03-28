lbl_80056770:
/* 80056770  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80056774  7C 08 02 A6 */	mflr r0
/* 80056778  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005677C  80 83 00 38 */	lwz r4, 0x38(r3)
/* 80056780  4B FF FF 91 */	bl drawXluDrawList__12dDlst_list_cFP13J3DDrawBuffer
/* 80056784  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80056788  7C 08 03 A6 */	mtlr r0
/* 8005678C  38 21 00 10 */	addi r1, r1, 0x10
/* 80056790  4E 80 00 20 */	blr 
