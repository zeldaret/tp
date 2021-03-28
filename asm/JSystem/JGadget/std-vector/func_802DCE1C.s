lbl_802DCE1C:
/* 802DCE1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DCE20  7C 08 02 A6 */	mflr r0
/* 802DCE24  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DCE28  39 61 00 20 */	addi r11, r1, 0x20
/* 802DCE2C  48 08 53 B1 */	bl _savegpr_29
/* 802DCE30  7C 7D 1B 78 */	mr r29, r3
/* 802DCE34  7C BE 2B 79 */	or. r30, r5, r5
/* 802DCE38  7C DF 33 78 */	mr r31, r6
/* 802DCE3C  41 82 00 38 */	beq lbl_802DCE74
/* 802DCE40  48 00 00 4D */	bl func_802DCE8C
/* 802DCE44  80 1D 00 08 */	lwz r0, 8(r29)
/* 802DCE48  7C 03 00 40 */	cmplw r3, r0
/* 802DCE4C  41 82 00 28 */	beq lbl_802DCE74
/* 802DCE50  80 1F 00 00 */	lwz r0, 0(r31)
/* 802DCE54  7F C9 03 A6 */	mtctr r30
/* 802DCE58  28 1E 00 00 */	cmplwi r30, 0
/* 802DCE5C  41 82 00 18 */	beq lbl_802DCE74
lbl_802DCE60:
/* 802DCE60  28 03 00 00 */	cmplwi r3, 0
/* 802DCE64  41 82 00 08 */	beq lbl_802DCE6C
/* 802DCE68  90 03 00 00 */	stw r0, 0(r3)
lbl_802DCE6C:
/* 802DCE6C  38 63 00 04 */	addi r3, r3, 4
/* 802DCE70  42 00 FF F0 */	bdnz lbl_802DCE60
lbl_802DCE74:
/* 802DCE74  39 61 00 20 */	addi r11, r1, 0x20
/* 802DCE78  48 08 53 B1 */	bl _restgpr_29
/* 802DCE7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DCE80  7C 08 03 A6 */	mtlr r0
/* 802DCE84  38 21 00 20 */	addi r1, r1, 0x20
/* 802DCE88  4E 80 00 20 */	blr 
