lbl_80CFB63C:
/* 80CFB63C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFB640  7C 08 02 A6 */	mflr r0
/* 80CFB644  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFB648  4B FF D8 89 */	bl execute__14daObjSwChain_cFv
/* 80CFB64C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFB650  7C 08 03 A6 */	mtlr r0
/* 80CFB654  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFB658  4E 80 00 20 */	blr 
