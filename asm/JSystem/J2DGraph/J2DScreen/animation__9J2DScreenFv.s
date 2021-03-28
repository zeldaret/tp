lbl_802F9690:
/* 802F9690  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F9694  7C 08 02 A6 */	mflr r0
/* 802F9698  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F969C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F96A0  93 C1 00 08 */	stw r30, 8(r1)
/* 802F96A4  7C 7E 1B 78 */	mr r30, r3
/* 802F96A8  80 83 00 F8 */	lwz r4, 0xf8(r3)
/* 802F96AC  81 83 00 00 */	lwz r12, 0(r3)
/* 802F96B0  81 8C 00 90 */	lwz r12, 0x90(r12)
/* 802F96B4  7D 89 03 A6 */	mtctr r12
/* 802F96B8  4E 80 04 21 */	bctrl 
/* 802F96BC  3B E0 00 00 */	li r31, 0
/* 802F96C0  48 00 00 1C */	b lbl_802F96DC
lbl_802F96C4:
/* 802F96C4  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 802F96C8  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 802F96CC  1C 00 00 88 */	mulli r0, r0, 0x88
/* 802F96D0  7C 63 02 14 */	add r3, r3, r0
/* 802F96D4  4B FF 15 A5 */	bl animation__11J2DMaterialFv
/* 802F96D8  3B FF 00 01 */	addi r31, r31, 1
lbl_802F96DC:
/* 802F96DC  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 802F96E0  A0 1E 01 02 */	lhz r0, 0x102(r30)
/* 802F96E4  7C 03 00 40 */	cmplw r3, r0
/* 802F96E8  41 80 FF DC */	blt lbl_802F96C4
/* 802F96EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F96F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802F96F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F96F8  7C 08 03 A6 */	mtlr r0
/* 802F96FC  38 21 00 10 */	addi r1, r1, 0x10
/* 802F9700  4E 80 00 20 */	blr 
