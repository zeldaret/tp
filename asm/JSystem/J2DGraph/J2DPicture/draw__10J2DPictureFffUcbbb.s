lbl_802FF448:
/* 802FF448  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FF44C  7C 08 02 A6 */	mflr r0
/* 802FF450  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FF454  54 88 06 3E */	clrlwi r8, r4, 0x18
/* 802FF458  88 03 01 08 */	lbz r0, 0x108(r3)
/* 802FF45C  7C 08 00 40 */	cmplw r8, r0
/* 802FF460  40 80 00 70 */	bge lbl_802FF4D0
/* 802FF464  54 80 15 BA */	rlwinm r0, r4, 2, 0x16, 0x1d
/* 802FF468  7C 83 02 14 */	add r4, r3, r0
/* 802FF46C  80 84 01 00 */	lwz r4, 0x100(r4)
/* 802FF470  28 04 00 00 */	cmplwi r4, 0
/* 802FF474  41 82 00 5C */	beq lbl_802FF4D0
/* 802FF478  80 84 00 20 */	lwz r4, 0x20(r4)
/* 802FF47C  A1 04 00 04 */	lhz r8, 4(r4)
/* 802FF480  A0 04 00 02 */	lhz r0, 2(r4)
/* 802FF484  C8 82 C8 70 */	lfd f4, lit_2021(r2)
/* 802FF488  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802FF48C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802FF490  3C 80 43 30 */	lis r4, 0x4330
/* 802FF494  90 81 00 08 */	stw r4, 8(r1)
/* 802FF498  C8 01 00 08 */	lfd f0, 8(r1)
/* 802FF49C  EC 60 20 28 */	fsubs f3, f0, f4
/* 802FF4A0  6D 00 80 00 */	xoris r0, r8, 0x8000
/* 802FF4A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FF4A8  90 81 00 10 */	stw r4, 0x10(r1)
/* 802FF4AC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802FF4B0  EC 80 20 28 */	fsubs f4, f0, f4
/* 802FF4B4  7C A4 2B 78 */	mr r4, r5
/* 802FF4B8  7C C5 33 78 */	mr r5, r6
/* 802FF4BC  7C E6 3B 78 */	mr r6, r7
/* 802FF4C0  81 83 00 00 */	lwz r12, 0(r3)
/* 802FF4C4  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 802FF4C8  7D 89 03 A6 */	mtctr r12
/* 802FF4CC  4E 80 04 21 */	bctrl 
lbl_802FF4D0:
/* 802FF4D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FF4D4  7C 08 03 A6 */	mtlr r0
/* 802FF4D8  38 21 00 20 */	addi r1, r1, 0x20
/* 802FF4DC  4E 80 00 20 */	blr 
