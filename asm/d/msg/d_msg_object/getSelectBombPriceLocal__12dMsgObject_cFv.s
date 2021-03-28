lbl_8023768C:
/* 8023768C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80237690  7C 08 02 A6 */	mflr r0
/* 80237694  90 01 00 24 */	stw r0, 0x24(r1)
/* 80237698  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8023769C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802376A0  7C 7E 1B 78 */	mr r30, r3
/* 802376A4  48 00 0D 9D */	bl getSelectCursorPos__12dMsgObject_cFv
/* 802376A8  88 1E 01 93 */	lbz r0, 0x193(r30)
/* 802376AC  28 00 00 00 */	cmplwi r0, 0
/* 802376B0  41 82 00 14 */	beq lbl_802376C4
/* 802376B4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 802376B8  7C 7E 02 14 */	add r3, r30, r0
/* 802376BC  88 03 01 90 */	lbz r0, 0x190(r3)
/* 802376C0  48 00 00 08 */	b lbl_802376C8
lbl_802376C4:
/* 802376C4  7C 60 1B 78 */	mr r0, r3
lbl_802376C8:
/* 802376C8  7F C3 F3 78 */	mr r3, r30
/* 802376CC  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 802376D0  7C 9E 02 14 */	add r4, r30, r0
/* 802376D4  A0 04 01 82 */	lhz r0, 0x182(r4)
/* 802376D8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 802376DC  4B FF FE C1 */	bl getBombBuyPriceLocal__12dMsgObject_cFUc
/* 802376E0  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 802376E4  7F C3 F3 78 */	mr r3, r30
/* 802376E8  4B FF FD E9 */	bl getSelectBombNum__12dMsgObject_cFv
/* 802376EC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 802376F0  7C 00 F9 D6 */	mullw r0, r0, r31
/* 802376F4  C8 22 B1 20 */	lfd f1, lit_4965(r2)
/* 802376F8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802376FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80237700  3C 00 43 30 */	lis r0, 0x4330
/* 80237704  90 01 00 08 */	stw r0, 8(r1)
/* 80237708  C8 01 00 08 */	lfd f0, 8(r1)
/* 8023770C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80237710  C0 02 B1 28 */	lfs f0, lit_5044(r2)
/* 80237714  EC 01 00 24 */	fdivs f0, f1, f0
/* 80237718  FC 00 00 1E */	fctiwz f0, f0
/* 8023771C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80237720  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80237724  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80237728  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8023772C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80237730  7C 08 03 A6 */	mtlr r0
/* 80237734  38 21 00 20 */	addi r1, r1, 0x20
/* 80237738  4E 80 00 20 */	blr 
