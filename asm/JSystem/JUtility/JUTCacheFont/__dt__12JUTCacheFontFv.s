lbl_802DD208:
/* 802DD208  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DD20C  7C 08 02 A6 */	mflr r0
/* 802DD210  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DD214  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DD218  93 C1 00 08 */	stw r30, 8(r1)
/* 802DD21C  7C 7E 1B 79 */	or. r30, r3, r3
/* 802DD220  7C 9F 23 78 */	mr r31, r4
/* 802DD224  41 82 00 5C */	beq lbl_802DD280
/* 802DD228  3C 80 80 3D */	lis r4, __vt__12JUTCacheFont@ha /* 0x803CC540@ha */
/* 802DD22C  38 04 C5 40 */	addi r0, r4, __vt__12JUTCacheFont@l /* 0x803CC540@l */
/* 802DD230  90 1E 00 00 */	stw r0, 0(r30)
/* 802DD234  88 1E 00 04 */	lbz r0, 4(r30)
/* 802DD238  28 00 00 00 */	cmplwi r0, 0
/* 802DD23C  41 82 00 28 */	beq lbl_802DD264
/* 802DD240  48 00 00 5D */	bl deleteMemBlocks_CacheFont__12JUTCacheFontFv
/* 802DD244  7F C3 F3 78 */	mr r3, r30
/* 802DD248  48 00 00 D9 */	bl initialize_state__12JUTCacheFontFv
/* 802DD24C  7F C3 F3 78 */	mr r3, r30
/* 802DD250  48 00 1E 3D */	bl deleteMemBlocks_ResFont__10JUTResFontFv
/* 802DD254  7F C3 F3 78 */	mr r3, r30
/* 802DD258  48 00 1E 59 */	bl initialize_state__10JUTResFontFv
/* 802DD25C  7F C3 F3 78 */	mr r3, r30
/* 802DD260  48 00 1A C5 */	bl initialize_state__7JUTFontFv
lbl_802DD264:
/* 802DD264  7F C3 F3 78 */	mr r3, r30
/* 802DD268  38 80 00 00 */	li r4, 0
/* 802DD26C  48 00 1D 95 */	bl __dt__10JUTResFontFv
/* 802DD270  7F E0 07 35 */	extsh. r0, r31
/* 802DD274  40 81 00 0C */	ble lbl_802DD280
/* 802DD278  7F C3 F3 78 */	mr r3, r30
/* 802DD27C  4B FF 1A C1 */	bl __dl__FPv
lbl_802DD280:
/* 802DD280  7F C3 F3 78 */	mr r3, r30
/* 802DD284  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DD288  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DD28C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DD290  7C 08 03 A6 */	mtlr r0
/* 802DD294  38 21 00 10 */	addi r1, r1, 0x10
/* 802DD298  4E 80 00 20 */	blr 
