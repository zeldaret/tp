lbl_802DEF94:
/* 802DEF94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DEF98  7C 08 02 A6 */	mflr r0
/* 802DEF9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DEFA0  39 61 00 20 */	addi r11, r1, 0x20
/* 802DEFA4  48 08 32 39 */	bl _savegpr_29
/* 802DEFA8  7C 7D 1B 78 */	mr r29, r3
/* 802DEFAC  7C 9E 23 78 */	mr r30, r4
/* 802DEFB0  7C BF 2B 78 */	mr r31, r5
/* 802DEFB4  4B FF FD 45 */	bl __ct__7JUTFontFv
/* 802DEFB8  3C 60 80 3D */	lis r3, __vt__10JUTResFont@ha
/* 802DEFBC  38 03 C5 A0 */	addi r0, r3, __vt__10JUTResFont@l
/* 802DEFC0  90 1D 00 00 */	stw r0, 0(r29)
/* 802DEFC4  7F A3 EB 78 */	mr r3, r29
/* 802DEFC8  48 00 00 E9 */	bl initialize_state__10JUTResFontFv
/* 802DEFCC  7F A3 EB 78 */	mr r3, r29
/* 802DEFD0  4B FF FD 55 */	bl initialize_state__7JUTFontFv
/* 802DEFD4  7F A3 EB 78 */	mr r3, r29
/* 802DEFD8  7F C4 F3 78 */	mr r4, r30
/* 802DEFDC  7F E5 FB 78 */	mr r5, r31
/* 802DEFE0  48 00 00 FD */	bl initiate__10JUTResFontFPC7ResFONTP7JKRHeap
/* 802DEFE4  7F A3 EB 78 */	mr r3, r29
/* 802DEFE8  39 61 00 20 */	addi r11, r1, 0x20
/* 802DEFEC  48 08 32 3D */	bl _restgpr_29
/* 802DEFF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DEFF4  7C 08 03 A6 */	mtlr r0
/* 802DEFF8  38 21 00 20 */	addi r1, r1, 0x20
/* 802DEFFC  4E 80 00 20 */	blr 
