lbl_802F1840:
/* 802F1840  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F1844  7C 08 02 A6 */	mflr r0
/* 802F1848  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F184C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F1850  7C 7F 1B 78 */	mr r31, r3
/* 802F1854  A0 03 00 00 */	lhz r0, 0(r3)
/* 802F1858  54 03 DF 7E */	rlwinm r3, r0, 0x1b, 0x1d, 0x1f
/* 802F185C  88 9F 00 02 */	lbz r4, 2(r31)
/* 802F1860  54 05 EF BE */	rlwinm r5, r0, 0x1d, 0x1e, 0x1f
/* 802F1864  54 06 07 7E */	clrlwi r6, r0, 0x1d
/* 802F1868  88 FF 00 03 */	lbz r7, 3(r31)
/* 802F186C  48 06 DD B9 */	bl GXSetAlphaCompare
/* 802F1870  88 7F 00 04 */	lbz r3, 4(r31)
/* 802F1874  88 9F 00 05 */	lbz r4, 5(r31)
/* 802F1878  88 BF 00 06 */	lbz r5, 6(r31)
/* 802F187C  88 DF 00 07 */	lbz r6, 7(r31)
/* 802F1880  48 06 E3 71 */	bl GXSetBlendMode
/* 802F1884  88 7F 00 08 */	lbz r3, 8(r31)
/* 802F1888  48 06 E5 51 */	bl GXSetDither
/* 802F188C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F1890  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F1894  7C 08 03 A6 */	mtlr r0
/* 802F1898  38 21 00 10 */	addi r1, r1, 0x10
/* 802F189C  4E 80 00 20 */	blr 
