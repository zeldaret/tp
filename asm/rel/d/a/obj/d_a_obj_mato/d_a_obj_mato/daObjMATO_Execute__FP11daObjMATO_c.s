lbl_80C92630:
/* 80C92630  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C92634  7C 08 02 A6 */	mflr r0
/* 80C92638  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9263C  4B FF FC 71 */	bl execute__11daObjMATO_cFv
/* 80C92640  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C92644  7C 08 03 A6 */	mtlr r0
/* 80C92648  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9264C  4E 80 00 20 */	blr 
