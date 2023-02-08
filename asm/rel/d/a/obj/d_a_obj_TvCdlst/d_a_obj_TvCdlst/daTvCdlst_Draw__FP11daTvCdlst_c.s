lbl_80B9F730:
/* 80B9F730  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9F734  7C 08 02 A6 */	mflr r0
/* 80B9F738  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9F73C  4B FF FE F9 */	bl Draw__11daTvCdlst_cFv
/* 80B9F740  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9F744  7C 08 03 A6 */	mtlr r0
/* 80B9F748  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9F74C  4E 80 00 20 */	blr 
