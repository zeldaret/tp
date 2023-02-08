lbl_80AC8404:
/* 80AC8404  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC8408  7C 08 02 A6 */	mflr r0
/* 80AC840C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC8410  4B FF F1 D9 */	bl create__12daNpc_seiC_cFv
/* 80AC8414  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC8418  7C 08 03 A6 */	mtlr r0
/* 80AC841C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC8420  4E 80 00 20 */	blr 
