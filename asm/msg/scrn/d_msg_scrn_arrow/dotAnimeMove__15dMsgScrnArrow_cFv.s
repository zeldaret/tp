lbl_8023C010:
/* 8023C010  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8023C014  7C 08 02 A6 */	mflr r0
/* 8023C018  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023C01C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8023C020  7C 7F 1B 78 */	mr r31, r3
/* 8023C024  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8023C028  48 01 96 25 */	bl isVisible__13CPaneMgrAlphaFv
/* 8023C02C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8023C030  28 00 00 01 */	cmplwi r0, 1
/* 8023C034  40 82 00 0C */	bne lbl_8023C040
/* 8023C038  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8023C03C  48 01 95 CD */	bl hide__13CPaneMgrAlphaFv
lbl_8023C040:
/* 8023C040  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8023C044  48 01 96 09 */	bl isVisible__13CPaneMgrAlphaFv
/* 8023C048  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8023C04C  40 82 00 0C */	bne lbl_8023C058
/* 8023C050  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8023C054  48 01 95 75 */	bl show__13CPaneMgrAlphaFv
lbl_8023C058:
/* 8023C058  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8023C05C  C0 02 B1 9C */	lfs f0, lit_3761(r2)
/* 8023C060  EC 01 00 2A */	fadds f0, f1, f0
/* 8023C064  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8023C068  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8023C06C  A8 03 00 06 */	lha r0, 6(r3)
/* 8023C070  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 8023C074  C8 22 B1 A0 */	lfd f1, lit_3763(r2)
/* 8023C078  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8023C07C  90 61 00 0C */	stw r3, 0xc(r1)
/* 8023C080  3C 00 43 30 */	lis r0, 0x4330
/* 8023C084  90 01 00 08 */	stw r0, 8(r1)
/* 8023C088  C8 01 00 08 */	lfd f0, 8(r1)
/* 8023C08C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8023C090  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8023C094  4C 41 13 82 */	cror 2, 1, 2
/* 8023C098  40 82 00 1C */	bne lbl_8023C0B4
/* 8023C09C  90 61 00 0C */	stw r3, 0xc(r1)
/* 8023C0A0  90 01 00 08 */	stw r0, 8(r1)
/* 8023C0A4  C8 01 00 08 */	lfd f0, 8(r1)
/* 8023C0A8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8023C0AC  EC 02 00 28 */	fsubs f0, f2, f0
/* 8023C0B0  D0 1F 00 20 */	stfs f0, 0x20(r31)
lbl_8023C0B4:
/* 8023C0B4  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8023C0B8  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8023C0BC  D0 03 00 08 */	stfs f0, 8(r3)
/* 8023C0C0  80 7F 00 04 */	lwz r3, 4(r31)
/* 8023C0C4  48 0B D5 CD */	bl animation__9J2DScreenFv
/* 8023C0C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8023C0CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8023C0D0  7C 08 03 A6 */	mtlr r0
/* 8023C0D4  38 21 00 20 */	addi r1, r1, 0x20
/* 8023C0D8  4E 80 00 20 */	blr 
