lbl_802A1DFC:
/* 802A1DFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A1E00  7C 08 02 A6 */	mflr r0
/* 802A1E04  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A1E08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A1E0C  83 E3 00 64 */	lwz r31, 0x64(r3)
/* 802A1E10  48 00 00 10 */	b lbl_802A1E20
lbl_802A1E14:
/* 802A1E14  80 7F 00 00 */	lwz r3, 0(r31)
/* 802A1E18  48 00 07 81 */	bl stop__8JAISoundFv
/* 802A1E1C  83 FF 00 0C */	lwz r31, 0xc(r31)
lbl_802A1E20:
/* 802A1E20  28 1F 00 00 */	cmplwi r31, 0
/* 802A1E24  40 82 FF F0 */	bne lbl_802A1E14
/* 802A1E28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A1E2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A1E30  7C 08 03 A6 */	mtlr r0
/* 802A1E34  38 21 00 10 */	addi r1, r1, 0x10
/* 802A1E38  4E 80 00 20 */	blr 
