lbl_802DDCE4:
/* 802DDCE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DDCE8  7C 08 02 A6 */	mflr r0
/* 802DDCEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DDCF0  39 61 00 20 */	addi r11, r1, 0x20
/* 802DDCF4  48 08 44 E9 */	bl _savegpr_29
/* 802DDCF8  7C 7D 1B 78 */	mr r29, r3
/* 802DDCFC  90 81 00 08 */	stw r4, 8(r1)
/* 802DDD00  7C BE 2B 78 */	mr r30, r5
/* 802DDD04  38 81 00 08 */	addi r4, r1, 8
/* 802DDD08  38 A0 00 00 */	li r5, 0
/* 802DDD0C  48 00 00 8D */	bl loadCache_char_subroutine__12JUTCacheFontFPib
/* 802DDD10  7C 7F 1B 79 */	or. r31, r3, r3
/* 802DDD14  41 82 00 6C */	beq lbl_802DDD80
/* 802DDD18  A0 BF 00 0C */	lhz r5, 0xc(r31)
/* 802DDD1C  80 81 00 08 */	lwz r4, 8(r1)
/* 802DDD20  A0 7F 00 16 */	lhz r3, 0x16(r31)
/* 802DDD24  7C 04 1B D6 */	divw r0, r4, r3
/* 802DDD28  7C 00 19 D6 */	mullw r0, r0, r3
/* 802DDD2C  7C 00 20 50 */	subf r0, r0, r4
/* 802DDD30  7C 05 01 D6 */	mullw r0, r5, r0
/* 802DDD34  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 802DDD38  A0 9F 00 0E */	lhz r4, 0xe(r31)
/* 802DDD3C  80 61 00 08 */	lwz r3, 8(r1)
/* 802DDD40  A0 1F 00 16 */	lhz r0, 0x16(r31)
/* 802DDD44  7C 03 03 D6 */	divw r0, r3, r0
/* 802DDD48  7C 04 01 D6 */	mullw r0, r4, r0
/* 802DDD4C  90 1D 00 20 */	stw r0, 0x20(r29)
/* 802DDD50  38 7F 00 20 */	addi r3, r31, 0x20
/* 802DDD54  7F C4 F3 78 */	mr r4, r30
/* 802DDD58  48 08 06 BD */	bl GXLoadTexObj
/* 802DDD5C  80 1D 00 8C */	lwz r0, 0x8c(r29)
/* 802DDD60  2C 00 00 01 */	cmpwi r0, 1
/* 802DDD64  40 82 00 1C */	bne lbl_802DDD80
/* 802DDD68  7F A3 EB 78 */	mr r3, r29
/* 802DDD6C  7F E4 FB 78 */	mr r4, r31
/* 802DDD70  48 00 01 F9 */	bl unlink__12JUTCacheFontFPQ212JUTCacheFont15TGlyphCacheInfo
/* 802DDD74  7F A3 EB 78 */	mr r3, r29
/* 802DDD78  7F E4 FB 78 */	mr r4, r31
/* 802DDD7C  48 00 02 31 */	bl prepend__12JUTCacheFontFPQ212JUTCacheFont15TGlyphCacheInfo
lbl_802DDD80:
/* 802DDD80  39 61 00 20 */	addi r11, r1, 0x20
/* 802DDD84  48 08 44 A5 */	bl _restgpr_29
/* 802DDD88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DDD8C  7C 08 03 A6 */	mtlr r0
/* 802DDD90  38 21 00 20 */	addi r1, r1, 0x20
/* 802DDD94  4E 80 00 20 */	blr 
