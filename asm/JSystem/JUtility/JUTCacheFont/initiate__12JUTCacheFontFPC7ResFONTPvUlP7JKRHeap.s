lbl_802DD4EC:
/* 802DD4EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DD4F0  7C 08 02 A6 */	mflr r0
/* 802DD4F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DD4F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DD4FC  7C 7F 1B 78 */	mr r31, r3
/* 802DD500  48 00 00 4D */	bl internal_initiate__12JUTCacheFontFPC7ResFONTPvUlP7JKRHeap
/* 802DD504  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802DD508  40 82 00 2C */	bne lbl_802DD534
/* 802DD50C  7F E3 FB 78 */	mr r3, r31
/* 802DD510  4B FF FD 8D */	bl deleteMemBlocks_CacheFont__12JUTCacheFontFv
/* 802DD514  7F E3 FB 78 */	mr r3, r31
/* 802DD518  48 00 1B 75 */	bl deleteMemBlocks_ResFont__10JUTResFontFv
/* 802DD51C  7F E3 FB 78 */	mr r3, r31
/* 802DD520  48 00 18 05 */	bl initialize_state__7JUTFontFv
/* 802DD524  38 00 00 00 */	li r0, 0
/* 802DD528  98 1F 00 04 */	stb r0, 4(r31)
/* 802DD52C  38 60 00 00 */	li r3, 0
/* 802DD530  48 00 00 08 */	b lbl_802DD538
lbl_802DD534:
/* 802DD534  38 60 00 01 */	li r3, 1
lbl_802DD538:
/* 802DD538  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DD53C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DD540  7C 08 03 A6 */	mtlr r0
/* 802DD544  38 21 00 10 */	addi r1, r1, 0x10
/* 802DD548  4E 80 00 20 */	blr 
