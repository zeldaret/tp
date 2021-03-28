lbl_807C113C:
/* 807C113C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807C1140  7C 08 02 A6 */	mflr r0
/* 807C1144  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C1148  4B FF FE DD */	bl execute__8daE_TT_cFv
/* 807C114C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807C1150  7C 08 03 A6 */	mtlr r0
/* 807C1154  38 21 00 10 */	addi r1, r1, 0x10
/* 807C1158  4E 80 00 20 */	blr 
