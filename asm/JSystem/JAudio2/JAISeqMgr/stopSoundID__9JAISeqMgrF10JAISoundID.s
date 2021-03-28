lbl_802A1E8C:
/* 802A1E8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A1E90  7C 08 02 A6 */	mflr r0
/* 802A1E94  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A1E98  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802A1E9C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802A1EA0  7C 9E 23 78 */	mr r30, r4
/* 802A1EA4  80 84 00 00 */	lwz r4, 0(r4)
/* 802A1EA8  3C 04 00 01 */	addis r0, r4, 1
/* 802A1EAC  28 00 FF FF */	cmplwi r0, 0xffff
/* 802A1EB0  41 82 00 34 */	beq lbl_802A1EE4
/* 802A1EB4  83 E3 00 64 */	lwz r31, 0x64(r3)
/* 802A1EB8  48 00 00 24 */	b lbl_802A1EDC
lbl_802A1EBC:
/* 802A1EBC  80 7F 00 00 */	lwz r3, 0(r31)
/* 802A1EC0  80 83 00 18 */	lwz r4, 0x18(r3)
/* 802A1EC4  90 81 00 08 */	stw r4, 8(r1)
/* 802A1EC8  80 1E 00 00 */	lwz r0, 0(r30)
/* 802A1ECC  7C 04 00 40 */	cmplw r4, r0
/* 802A1ED0  40 82 00 08 */	bne lbl_802A1ED8
/* 802A1ED4  48 00 06 C5 */	bl stop__8JAISoundFv
lbl_802A1ED8:
/* 802A1ED8  83 FF 00 0C */	lwz r31, 0xc(r31)
lbl_802A1EDC:
/* 802A1EDC  28 1F 00 00 */	cmplwi r31, 0
/* 802A1EE0  40 82 FF DC */	bne lbl_802A1EBC
lbl_802A1EE4:
/* 802A1EE4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802A1EE8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802A1EEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A1EF0  7C 08 03 A6 */	mtlr r0
/* 802A1EF4  38 21 00 20 */	addi r1, r1, 0x20
/* 802A1EF8  4E 80 00 20 */	blr 
