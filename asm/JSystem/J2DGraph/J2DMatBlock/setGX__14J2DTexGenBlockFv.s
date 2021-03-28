lbl_802EB570:
/* 802EB570  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802EB574  7C 08 02 A6 */	mflr r0
/* 802EB578  90 01 00 24 */	stw r0, 0x24(r1)
/* 802EB57C  39 61 00 20 */	addi r11, r1, 0x20
/* 802EB580  48 07 6C 5D */	bl _savegpr_29
/* 802EB584  7C 7D 1B 78 */	mr r29, r3
/* 802EB588  80 03 00 00 */	lwz r0, 0(r3)
/* 802EB58C  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 802EB590  48 07 08 6D */	bl GXSetNumTexGens
/* 802EB594  3B C0 00 00 */	li r30, 0
/* 802EB598  3B E0 00 00 */	li r31, 0
/* 802EB59C  48 00 00 2C */	b lbl_802EB5C8
lbl_802EB5A0:
/* 802EB5A0  7C DD FA 14 */	add r6, r29, r31
/* 802EB5A4  7F C3 F3 78 */	mr r3, r30
/* 802EB5A8  88 86 00 04 */	lbz r4, 4(r6)
/* 802EB5AC  88 A6 00 05 */	lbz r5, 5(r6)
/* 802EB5B0  88 C6 00 06 */	lbz r6, 6(r6)
/* 802EB5B4  38 E0 00 00 */	li r7, 0
/* 802EB5B8  39 00 00 7D */	li r8, 0x7d
/* 802EB5BC  48 07 05 C1 */	bl GXSetTexCoordGen2
/* 802EB5C0  3B DE 00 01 */	addi r30, r30, 1
/* 802EB5C4  3B FF 00 04 */	addi r31, r31, 4
lbl_802EB5C8:
/* 802EB5C8  80 1D 00 00 */	lwz r0, 0(r29)
/* 802EB5CC  7C 1E 00 40 */	cmplw r30, r0
/* 802EB5D0  41 80 FF D0 */	blt lbl_802EB5A0
/* 802EB5D4  3B C0 00 00 */	li r30, 0
/* 802EB5D8  48 00 00 24 */	b lbl_802EB5FC
lbl_802EB5DC:
/* 802EB5DC  57 C4 06 3E */	clrlwi r4, r30, 0x18
/* 802EB5E0  57 C3 15 BA */	rlwinm r3, r30, 2, 0x16, 0x1d
/* 802EB5E4  38 03 00 24 */	addi r0, r3, 0x24
/* 802EB5E8  7C 7D 00 2E */	lwzx r3, r29, r0
/* 802EB5EC  28 03 00 00 */	cmplwi r3, 0
/* 802EB5F0  41 82 00 08 */	beq lbl_802EB5F8
/* 802EB5F4  4B FF E6 9D */	bl load__9J2DTexMtxFUl
lbl_802EB5F8:
/* 802EB5F8  3B DE 00 01 */	addi r30, r30, 1
lbl_802EB5FC:
/* 802EB5FC  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802EB600  28 00 00 08 */	cmplwi r0, 8
/* 802EB604  41 80 FF D8 */	blt lbl_802EB5DC
/* 802EB608  39 61 00 20 */	addi r11, r1, 0x20
/* 802EB60C  48 07 6C 1D */	bl _restgpr_29
/* 802EB610  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802EB614  7C 08 03 A6 */	mtlr r0
/* 802EB618  38 21 00 20 */	addi r1, r1, 0x20
/* 802EB61C  4E 80 00 20 */	blr 
