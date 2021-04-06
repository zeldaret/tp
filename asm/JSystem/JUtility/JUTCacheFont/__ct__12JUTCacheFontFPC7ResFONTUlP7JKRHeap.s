lbl_802DD188:
/* 802DD188  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DD18C  7C 08 02 A6 */	mflr r0
/* 802DD190  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DD194  39 61 00 20 */	addi r11, r1, 0x20
/* 802DD198  48 08 50 41 */	bl _savegpr_28
/* 802DD19C  7C 7C 1B 78 */	mr r28, r3
/* 802DD1A0  7C 9D 23 78 */	mr r29, r4
/* 802DD1A4  7C BE 2B 78 */	mr r30, r5
/* 802DD1A8  7C DF 33 78 */	mr r31, r6
/* 802DD1AC  48 00 1D 9D */	bl __ct__10JUTResFontFv
/* 802DD1B0  3C 60 80 3D */	lis r3, __vt__12JUTCacheFont@ha /* 0x803CC540@ha */
/* 802DD1B4  38 03 C5 40 */	addi r0, r3, __vt__12JUTCacheFont@l /* 0x803CC540@l */
/* 802DD1B8  90 1C 00 00 */	stw r0, 0(r28)
/* 802DD1BC  7F 83 E3 78 */	mr r3, r28
/* 802DD1C0  48 00 01 61 */	bl initialize_state__12JUTCacheFontFv
/* 802DD1C4  7F 83 E3 78 */	mr r3, r28
/* 802DD1C8  48 00 1E E9 */	bl initialize_state__10JUTResFontFv
/* 802DD1CC  7F 83 E3 78 */	mr r3, r28
/* 802DD1D0  48 00 1B 55 */	bl initialize_state__7JUTFontFv
/* 802DD1D4  7F 83 E3 78 */	mr r3, r28
/* 802DD1D8  7F A4 EB 78 */	mr r4, r29
/* 802DD1DC  38 A0 00 00 */	li r5, 0
/* 802DD1E0  7F C6 F3 78 */	mr r6, r30
/* 802DD1E4  7F E7 FB 78 */	mr r7, r31
/* 802DD1E8  48 00 03 05 */	bl initiate__12JUTCacheFontFPC7ResFONTPvUlP7JKRHeap
/* 802DD1EC  7F 83 E3 78 */	mr r3, r28
/* 802DD1F0  39 61 00 20 */	addi r11, r1, 0x20
/* 802DD1F4  48 08 50 31 */	bl _restgpr_28
/* 802DD1F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DD1FC  7C 08 03 A6 */	mtlr r0
/* 802DD200  38 21 00 20 */	addi r1, r1, 0x20
/* 802DD204  4E 80 00 20 */	blr 
