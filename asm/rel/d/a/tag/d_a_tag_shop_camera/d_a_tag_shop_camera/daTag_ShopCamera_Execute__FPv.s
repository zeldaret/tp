lbl_80D609D0:
/* 80D609D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D609D4  7C 08 02 A6 */	mflr r0
/* 80D609D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D609DC  4B FF FF 29 */	bl Execute__18daTag_ShopCamera_cFv
/* 80D609E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D609E4  7C 08 03 A6 */	mtlr r0
/* 80D609E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D609EC  4E 80 00 20 */	blr 
