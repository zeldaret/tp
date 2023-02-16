lbl_802AA1B0:
/* 802AA1B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AA1B4  7C 08 02 A6 */	mflr r0
/* 802AA1B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AA1BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802AA1C0  7C 7F 1B 78 */	mr r31, r3
/* 802AA1C4  38 7F 00 04 */	addi r3, r31, 4
/* 802AA1C8  4B FF 63 AD */	bl calc__8JAISeMgrFv
/* 802AA1CC  80 7F 08 0C */	lwz r3, 0x80c(r31)
/* 802AA1D0  3C 03 00 01 */	addis r0, r3, 1
/* 802AA1D4  28 00 FF FF */	cmplwi r0, 0xffff
/* 802AA1D8  41 82 00 74 */	beq lbl_802AA24C
/* 802AA1DC  90 61 00 08 */	stw r3, 8(r1)
/* 802AA1E0  7F E3 FB 78 */	mr r3, r31
/* 802AA1E4  38 81 00 08 */	addi r4, r1, 8
/* 802AA1E8  48 00 08 DD */	bl isPlayingSoundID__10Z2SoundMgrF10JAISoundID
/* 802AA1EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802AA1F0  40 82 00 5C */	bne lbl_802AA24C
/* 802AA1F4  80 6D 86 00 */	lwz r3, __OSReport_disable-0x18(r13)
/* 802AA1F8  88 03 00 1D */	lbz r0, 0x1d(r3)
/* 802AA1FC  28 00 00 00 */	cmplwi r0, 0
/* 802AA200  41 82 00 44 */	beq lbl_802AA244
/* 802AA204  80 6D 86 04 */	lwz r3, __OSReport_disable-0x14(r13)
/* 802AA208  C0 03 00 74 */	lfs f0, 0x74(r3)
/* 802AA20C  38 00 00 03 */	li r0, 3
/* 802AA210  90 03 00 80 */	stw r0, 0x80(r3)
/* 802AA214  C0 62 BE 38 */	lfs f3, lit_3688(r2)
/* 802AA218  EC 43 00 28 */	fsubs f2, f3, f0
/* 802AA21C  80 03 00 80 */	lwz r0, 0x80(r3)
/* 802AA220  C8 22 BE 48 */	lfd f1, lit_3909(r2)
/* 802AA224  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AA228  3C 00 43 30 */	lis r0, 0x4330
/* 802AA22C  90 01 00 10 */	stw r0, 0x10(r1)
/* 802AA230  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802AA234  EC 00 08 28 */	fsubs f0, f0, f1
/* 802AA238  EC 02 00 24 */	fdivs f0, f2, f0
/* 802AA23C  D0 03 00 78 */	stfs f0, 0x78(r3)
/* 802AA240  D0 63 00 7C */	stfs f3, 0x7c(r3)
lbl_802AA244:
/* 802AA244  38 00 FF FF */	li r0, -1
/* 802AA248  90 1F 08 0C */	stw r0, 0x80c(r31)
lbl_802AA24C:
/* 802AA24C  38 7F 07 28 */	addi r3, r31, 0x728
/* 802AA250  4B FF 7A 41 */	bl calc__9JAISeqMgrFv
/* 802AA254  38 7F 07 9C */	addi r3, r31, 0x79c
/* 802AA258  4B FF 9C 65 */	bl calc__12JAIStreamMgrFv
/* 802AA25C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802AA260  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AA264  7C 08 03 A6 */	mtlr r0
/* 802AA268  38 21 00 20 */	addi r1, r1, 0x20
/* 802AA26C  4E 80 00 20 */	blr 
