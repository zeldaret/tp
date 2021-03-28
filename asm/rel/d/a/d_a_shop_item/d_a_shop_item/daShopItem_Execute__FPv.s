lbl_8059F3F4:
/* 8059F3F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059F3F8  7C 08 02 A6 */	mflr r0
/* 8059F3FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059F400  4B FF FA F5 */	bl _execute__12daShopItem_cFv
/* 8059F404  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8059F408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059F40C  7C 08 03 A6 */	mtlr r0
/* 8059F410  38 21 00 10 */	addi r1, r1, 0x10
/* 8059F414  4E 80 00 20 */	blr 
