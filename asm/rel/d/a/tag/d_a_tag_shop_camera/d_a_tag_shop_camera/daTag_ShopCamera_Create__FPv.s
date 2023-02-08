lbl_80D60990:
/* 80D60990  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D60994  7C 08 02 A6 */	mflr r0
/* 80D60998  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D6099C  4B FF FE FD */	bl create__18daTag_ShopCamera_cFv
/* 80D609A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D609A4  7C 08 03 A6 */	mtlr r0
/* 80D609A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D609AC  4E 80 00 20 */	blr 
