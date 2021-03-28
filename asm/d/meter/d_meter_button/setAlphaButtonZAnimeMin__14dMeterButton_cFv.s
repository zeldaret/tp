lbl_80207444:
/* 80207444  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80207448  7C 08 02 A6 */	mflr r0
/* 8020744C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80207450  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80207454  7C 7F 1B 78 */	mr r31, r3
/* 80207458  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8020745C  48 04 E3 CD */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80207460  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 80207464  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80207468  41 82 00 58 */	beq lbl_802074C0
/* 8020746C  A8 1F 04 8A */	lha r0, 0x48a(r31)
/* 80207470  2C 00 00 00 */	cmpwi r0, 0
/* 80207474  40 82 00 0C */	bne lbl_80207480
/* 80207478  38 00 00 1E */	li r0, 0x1e
/* 8020747C  B0 1F 04 8A */	sth r0, 0x48a(r31)
lbl_80207480:
/* 80207480  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80207484  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 80207488  48 04 E3 49 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8020748C  38 00 00 00 */	li r0, 0
/* 80207490  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80207494  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80207498  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 8020749C  48 04 E3 8D */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802074A0  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 802074A4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802074A8  40 82 00 18 */	bne lbl_802074C0
/* 802074AC  7F E3 FB 78 */	mr r3, r31
/* 802074B0  38 80 00 03 */	li r4, 3
/* 802074B4  48 00 34 99 */	bl hide_button__14dMeterButton_cFUc
/* 802074B8  38 00 00 00 */	li r0, 0
/* 802074BC  98 1F 04 C3 */	stb r0, 0x4c3(r31)
lbl_802074C0:
/* 802074C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802074C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802074C8  7C 08 03 A6 */	mtlr r0
/* 802074CC  38 21 00 10 */	addi r1, r1, 0x10
/* 802074D0  4E 80 00 20 */	blr 
