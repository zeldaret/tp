lbl_802DF0DC:
/* 802DF0DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DF0E0  7C 08 02 A6 */	mflr r0
/* 802DF0E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DF0E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DF0EC  7C 7F 1B 78 */	mr r31, r3
/* 802DF0F0  48 00 00 4D */	bl protected_initiate__10JUTResFontFPC7ResFONTP7JKRHeap
/* 802DF0F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802DF0F8  40 82 00 2C */	bne lbl_802DF124
/* 802DF0FC  7F E3 FB 78 */	mr r3, r31
/* 802DF100  4B FF FF 8D */	bl deleteMemBlocks_ResFont__10JUTResFontFv
/* 802DF104  7F E3 FB 78 */	mr r3, r31
/* 802DF108  4B FF FF A9 */	bl initialize_state__10JUTResFontFv
/* 802DF10C  7F E3 FB 78 */	mr r3, r31
/* 802DF110  4B FF FC 15 */	bl initialize_state__7JUTFontFv
/* 802DF114  38 00 00 00 */	li r0, 0
/* 802DF118  98 1F 00 04 */	stb r0, 4(r31)
/* 802DF11C  38 60 00 00 */	li r3, 0
/* 802DF120  48 00 00 08 */	b lbl_802DF128
lbl_802DF124:
/* 802DF124  38 60 00 01 */	li r3, 1
lbl_802DF128:
/* 802DF128  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DF12C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DF130  7C 08 03 A6 */	mtlr r0
/* 802DF134  38 21 00 10 */	addi r1, r1, 0x10
/* 802DF138  4E 80 00 20 */	blr 
