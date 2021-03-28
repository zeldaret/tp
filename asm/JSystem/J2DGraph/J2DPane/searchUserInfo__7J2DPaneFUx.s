lbl_802F7388:
/* 802F7388  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F738C  7C 08 02 A6 */	mflr r0
/* 802F7390  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F7394  39 61 00 20 */	addi r11, r1, 0x20
/* 802F7398  48 06 AE 45 */	bl _savegpr_29
/* 802F739C  7C BE 2B 78 */	mr r30, r5
/* 802F73A0  7C DD 33 78 */	mr r29, r6
/* 802F73A4  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802F73A8  80 83 00 1C */	lwz r4, 0x1c(r3)
/* 802F73AC  7F A4 22 78 */	xor r4, r29, r4
/* 802F73B0  7F C0 02 78 */	xor r0, r30, r0
/* 802F73B4  7C 80 03 79 */	or. r0, r4, r0
/* 802F73B8  40 82 00 08 */	bne lbl_802F73C0
/* 802F73BC  48 00 00 5C */	b lbl_802F7418
lbl_802F73C0:
/* 802F73C0  83 E3 00 DC */	lwz r31, 0xdc(r3)
/* 802F73C4  28 1F 00 00 */	cmplwi r31, 0
/* 802F73C8  41 82 00 44 */	beq lbl_802F740C
/* 802F73CC  3B FF FF F4 */	addi r31, r31, -12
/* 802F73D0  48 00 00 3C */	b lbl_802F740C
lbl_802F73D4:
/* 802F73D4  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802F73D8  7F A6 EB 78 */	mr r6, r29
/* 802F73DC  7F C5 F3 78 */	mr r5, r30
/* 802F73E0  81 83 00 00 */	lwz r12, 0(r3)
/* 802F73E4  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 802F73E8  7D 89 03 A6 */	mtctr r12
/* 802F73EC  4E 80 04 21 */	bctrl 
/* 802F73F0  28 03 00 00 */	cmplwi r3, 0
/* 802F73F4  41 82 00 08 */	beq lbl_802F73FC
/* 802F73F8  48 00 00 20 */	b lbl_802F7418
lbl_802F73FC:
/* 802F73FC  83 FF 00 18 */	lwz r31, 0x18(r31)
/* 802F7400  28 1F 00 00 */	cmplwi r31, 0
/* 802F7404  41 82 00 08 */	beq lbl_802F740C
/* 802F7408  3B FF FF F4 */	addi r31, r31, -12
lbl_802F740C:
/* 802F740C  28 1F 00 00 */	cmplwi r31, 0
/* 802F7410  40 82 FF C4 */	bne lbl_802F73D4
/* 802F7414  38 60 00 00 */	li r3, 0
lbl_802F7418:
/* 802F7418  39 61 00 20 */	addi r11, r1, 0x20
/* 802F741C  48 06 AE 0D */	bl _restgpr_29
/* 802F7420  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F7424  7C 08 03 A6 */	mtlr r0
/* 802F7428  38 21 00 20 */	addi r1, r1, 0x20
/* 802F742C  4E 80 00 20 */	blr 
