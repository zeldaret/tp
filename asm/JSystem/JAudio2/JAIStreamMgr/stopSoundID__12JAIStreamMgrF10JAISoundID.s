lbl_802A40B8:
/* 802A40B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A40BC  7C 08 02 A6 */	mflr r0
/* 802A40C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A40C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802A40C8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802A40CC  7C 9E 23 78 */	mr r30, r4
/* 802A40D0  83 E3 00 58 */	lwz r31, 0x58(r3)
/* 802A40D4  48 00 00 24 */	b lbl_802A40F8
lbl_802A40D8:
/* 802A40D8  80 7F 00 00 */	lwz r3, 0(r31)
/* 802A40DC  80 83 00 18 */	lwz r4, 0x18(r3)
/* 802A40E0  90 81 00 08 */	stw r4, 8(r1)
/* 802A40E4  80 1E 00 00 */	lwz r0, 0(r30)
/* 802A40E8  7C 04 00 40 */	cmplw r4, r0
/* 802A40EC  40 82 00 08 */	bne lbl_802A40F4
/* 802A40F0  4B FF E4 A9 */	bl stop__8JAISoundFv
lbl_802A40F4:
/* 802A40F4  83 FF 00 0C */	lwz r31, 0xc(r31)
lbl_802A40F8:
/* 802A40F8  28 1F 00 00 */	cmplwi r31, 0
/* 802A40FC  40 82 FF DC */	bne lbl_802A40D8
/* 802A4100  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802A4104  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802A4108  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A410C  7C 08 03 A6 */	mtlr r0
/* 802A4110  38 21 00 20 */	addi r1, r1, 0x20
/* 802A4114  4E 80 00 20 */	blr 
