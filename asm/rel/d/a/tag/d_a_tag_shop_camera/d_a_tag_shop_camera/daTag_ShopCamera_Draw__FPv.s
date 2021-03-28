lbl_80D609F0:
/* 80D609F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D609F4  7C 08 02 A6 */	mflr r0
/* 80D609F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D609FC  4B FF FF 11 */	bl Draw__18daTag_ShopCamera_cFv
/* 80D60A00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D60A04  7C 08 03 A6 */	mtlr r0
/* 80D60A08  38 21 00 10 */	addi r1, r1, 0x10
/* 80D60A0C  4E 80 00 20 */	blr 
