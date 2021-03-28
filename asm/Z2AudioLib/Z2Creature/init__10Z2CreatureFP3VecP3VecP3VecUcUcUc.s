lbl_802C05B0:
/* 802C05B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C05B4  7C 08 02 A6 */	mflr r0
/* 802C05B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C05BC  39 61 00 20 */	addi r11, r1, 0x20
/* 802C05C0  48 0A 1C 1D */	bl _savegpr_29
/* 802C05C4  7C 7D 1B 78 */	mr r29, r3
/* 802C05C8  7C DE 33 78 */	mr r30, r6
/* 802C05CC  7D 3F 4B 78 */	mr r31, r9
/* 802C05D0  7C E6 3B 78 */	mr r6, r7
/* 802C05D4  7D 07 43 78 */	mr r7, r8
/* 802C05D8  4B FF FF 59 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 802C05DC  28 1E 00 00 */	cmplwi r30, 0
/* 802C05E0  41 82 00 20 */	beq lbl_802C0600
/* 802C05E4  38 7D 00 70 */	addi r3, r29, 0x70
/* 802C05E8  7F C4 F3 78 */	mr r4, r30
/* 802C05EC  7F E5 FB 78 */	mr r5, r31
/* 802C05F0  81 9D 00 80 */	lwz r12, 0x80(r29)
/* 802C05F4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802C05F8  7D 89 03 A6 */	mtctr r12
/* 802C05FC  4E 80 04 21 */	bctrl 
lbl_802C0600:
/* 802C0600  39 61 00 20 */	addi r11, r1, 0x20
/* 802C0604  48 0A 1C 25 */	bl _restgpr_29
/* 802C0608  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C060C  7C 08 03 A6 */	mtlr r0
/* 802C0610  38 21 00 20 */	addi r1, r1, 0x20
/* 802C0614  4E 80 00 20 */	blr 
