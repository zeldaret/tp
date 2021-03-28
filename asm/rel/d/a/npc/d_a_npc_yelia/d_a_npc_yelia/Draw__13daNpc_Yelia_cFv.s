lbl_80B4DC74:
/* 80B4DC74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B4DC78  7C 08 02 A6 */	mflr r0
/* 80B4DC7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B4DC80  39 61 00 20 */	addi r11, r1, 0x20
/* 80B4DC84  4B 81 45 58 */	b _savegpr_29
/* 80B4DC88  7C 7D 1B 78 */	mr r29, r3
/* 80B4DC8C  83 C3 09 6C */	lwz r30, 0x96c(r3)
/* 80B4DC90  28 1E 00 00 */	cmplwi r30, 0
/* 80B4DC94  41 82 00 30 */	beq lbl_80B4DCC4
/* 80B4DC98  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80B4DC9C  80 84 00 04 */	lwz r4, 4(r4)
/* 80B4DCA0  83 E4 00 04 */	lwz r31, 4(r4)
/* 80B4DCA4  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80B4DCA8  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B4DCAC  7D 89 03 A6 */	mtctr r12
/* 80B4DCB0  4E 80 04 21 */	bctrl 
/* 80B4DCB4  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80B4DCB8  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 80B4DCBC  7C 64 00 2E */	lwzx r3, r4, r0
/* 80B4DCC0  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_80B4DCC4:
/* 80B4DCC4  7F A3 EB 78 */	mr r3, r29
/* 80B4DCC8  38 80 00 00 */	li r4, 0
/* 80B4DCCC  38 A0 00 00 */	li r5, 0
/* 80B4DCD0  C0 3D 0D E8 */	lfs f1, 0xde8(r29)
/* 80B4DCD4  38 C0 00 00 */	li r6, 0
/* 80B4DCD8  3C E0 80 B5 */	lis r7, lit_4538@ha
/* 80B4DCDC  C0 47 23 8C */	lfs f2, lit_4538@l(r7)
/* 80B4DCE0  38 E0 00 00 */	li r7, 0
/* 80B4DCE4  39 00 00 00 */	li r8, 0
/* 80B4DCE8  39 20 00 00 */	li r9, 0
/* 80B4DCEC  4B 5F AB 80 */	b draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 80B4DCF0  39 61 00 20 */	addi r11, r1, 0x20
/* 80B4DCF4  4B 81 45 34 */	b _restgpr_29
/* 80B4DCF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B4DCFC  7C 08 03 A6 */	mtlr r0
/* 80B4DD00  38 21 00 20 */	addi r1, r1, 0x20
/* 80B4DD04  4E 80 00 20 */	blr 
