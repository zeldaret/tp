lbl_80D61140:
/* 80D61140  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D61144  7C 08 02 A6 */	mflr r0
/* 80D61148  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D6114C  4B FF FE D9 */	bl Draw__16daTag_ShopItem_cFv
/* 80D61150  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D61154  7C 08 03 A6 */	mtlr r0
/* 80D61158  38 21 00 10 */	addi r1, r1, 0x10
/* 80D6115C  4E 80 00 20 */	blr 
