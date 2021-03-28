lbl_802F1730:
/* 802F1730  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F1734  7C 08 02 A6 */	mflr r0
/* 802F1738  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F173C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F1740  93 C1 00 08 */	stw r30, 8(r1)
/* 802F1744  7C 7E 1B 78 */	mr r30, r3
/* 802F1748  88 63 00 04 */	lbz r3, 4(r3)
/* 802F174C  48 06 D9 89 */	bl GXSetNumIndStages
/* 802F1750  3B E0 00 00 */	li r31, 0
/* 802F1754  48 00 00 20 */	b lbl_802F1774
lbl_802F1758:
/* 802F1758  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 802F175C  1C 60 00 1C */	mulli r3, r0, 0x1c
/* 802F1760  38 63 00 10 */	addi r3, r3, 0x10
/* 802F1764  7C 7E 1A 14 */	add r3, r30, r3
/* 802F1768  7F E4 FB 78 */	mr r4, r31
/* 802F176C  4B FF 89 2D */	bl load__12J2DIndTexMtxFUc
/* 802F1770  3B FF 00 01 */	addi r31, r31, 1
lbl_802F1774:
/* 802F1774  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 802F1778  88 1E 00 04 */	lbz r0, 4(r30)
/* 802F177C  7C 03 00 40 */	cmplw r3, r0
/* 802F1780  41 80 FF D8 */	blt lbl_802F1758
/* 802F1784  3B E0 00 00 */	li r31, 0
/* 802F1788  48 00 00 1C */	b lbl_802F17A4
lbl_802F178C:
/* 802F178C  57 E3 0D FC */	rlwinm r3, r31, 1, 0x17, 0x1e
/* 802F1790  38 63 00 64 */	addi r3, r3, 0x64
/* 802F1794  7C 7E 1A 14 */	add r3, r30, r3
/* 802F1798  7F E4 FB 78 */	mr r4, r31
/* 802F179C  4B FF 89 31 */	bl load__19J2DIndTexCoordScaleFUc
/* 802F17A0  3B FF 00 01 */	addi r31, r31, 1
lbl_802F17A4:
/* 802F17A4  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 802F17A8  88 1E 00 04 */	lbz r0, 4(r30)
/* 802F17AC  7C 03 00 40 */	cmplw r3, r0
/* 802F17B0  41 80 FF DC */	blt lbl_802F178C
/* 802F17B4  3B E0 00 00 */	li r31, 0
/* 802F17B8  48 00 00 1C */	b lbl_802F17D4
lbl_802F17BC:
/* 802F17BC  57 E3 0D FC */	rlwinm r3, r31, 1, 0x17, 0x1e
/* 802F17C0  38 63 00 05 */	addi r3, r3, 5
/* 802F17C4  7C 7E 1A 14 */	add r3, r30, r3
/* 802F17C8  7F E4 FB 78 */	mr r4, r31
/* 802F17CC  4B FF 89 31 */	bl load__14J2DIndTexOrderFUc
/* 802F17D0  3B FF 00 01 */	addi r31, r31, 1
lbl_802F17D4:
/* 802F17D4  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 802F17D8  88 1E 00 04 */	lbz r0, 4(r30)
/* 802F17DC  7C 03 00 40 */	cmplw r3, r0
/* 802F17E0  41 80 FF DC */	blt lbl_802F17BC
/* 802F17E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F17E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802F17EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F17F0  7C 08 03 A6 */	mtlr r0
/* 802F17F4  38 21 00 10 */	addi r1, r1, 0x10
/* 802F17F8  4E 80 00 20 */	blr 
