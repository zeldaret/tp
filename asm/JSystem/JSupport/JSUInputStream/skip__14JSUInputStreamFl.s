lbl_802DC2F0:
/* 802DC2F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DC2F4  7C 08 02 A6 */	mflr r0
/* 802DC2F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DC2FC  39 61 00 20 */	addi r11, r1, 0x20
/* 802DC300  48 08 5E DD */	bl _savegpr_29
/* 802DC304  7C 7D 1B 78 */	mr r29, r3
/* 802DC308  7C 9E 23 78 */	mr r30, r4
/* 802DC30C  3B E0 00 00 */	li r31, 0
/* 802DC310  48 00 00 3C */	b lbl_802DC34C
lbl_802DC314:
/* 802DC314  7F A3 EB 78 */	mr r3, r29
/* 802DC318  38 81 00 08 */	addi r4, r1, 8
/* 802DC31C  38 A0 00 01 */	li r5, 1
/* 802DC320  81 9D 00 00 */	lwz r12, 0(r29)
/* 802DC324  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802DC328  7D 89 03 A6 */	mtctr r12
/* 802DC32C  4E 80 04 21 */	bctrl 
/* 802DC330  28 03 00 01 */	cmplwi r3, 1
/* 802DC334  41 82 00 14 */	beq lbl_802DC348
/* 802DC338  88 1D 00 04 */	lbz r0, 4(r29)
/* 802DC33C  60 00 00 01 */	ori r0, r0, 1
/* 802DC340  98 1D 00 04 */	stb r0, 4(r29)
/* 802DC344  48 00 00 10 */	b lbl_802DC354
lbl_802DC348:
/* 802DC348  3B FF 00 01 */	addi r31, r31, 1
lbl_802DC34C:
/* 802DC34C  7C 1F F0 00 */	cmpw r31, r30
/* 802DC350  41 80 FF C4 */	blt lbl_802DC314
lbl_802DC354:
/* 802DC354  7F E3 FB 78 */	mr r3, r31
/* 802DC358  39 61 00 20 */	addi r11, r1, 0x20
/* 802DC35C  48 08 5E CD */	bl _restgpr_29
/* 802DC360  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DC364  7C 08 03 A6 */	mtlr r0
/* 802DC368  38 21 00 20 */	addi r1, r1, 0x20
/* 802DC36C  4E 80 00 20 */	blr 
