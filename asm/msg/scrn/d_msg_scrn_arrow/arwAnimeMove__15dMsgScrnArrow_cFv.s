lbl_8023BE90:
/* 8023BE90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8023BE94  7C 08 02 A6 */	mflr r0
/* 8023BE98  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023BE9C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8023BEA0  7C 7F 1B 78 */	mr r31, r3
/* 8023BEA4  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8023BEA8  48 01 97 A5 */	bl isVisible__13CPaneMgrAlphaFv
/* 8023BEAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8023BEB0  40 82 00 0C */	bne lbl_8023BEBC
/* 8023BEB4  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8023BEB8  48 01 97 11 */	bl show__13CPaneMgrAlphaFv
lbl_8023BEBC:
/* 8023BEBC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8023BEC0  48 01 97 8D */	bl isVisible__13CPaneMgrAlphaFv
/* 8023BEC4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8023BEC8  28 00 00 01 */	cmplwi r0, 1
/* 8023BECC  40 82 00 0C */	bne lbl_8023BED8
/* 8023BED0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8023BED4  48 01 97 35 */	bl hide__13CPaneMgrAlphaFv
lbl_8023BED8:
/* 8023BED8  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8023BEDC  C0 02 B1 9C */	lfs f0, lit_3761(r2)
/* 8023BEE0  EC 01 00 2A */	fadds f0, f1, f0
/* 8023BEE4  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8023BEE8  80 7F 00 08 */	lwz r3, 8(r31)
/* 8023BEEC  A8 03 00 06 */	lha r0, 6(r3)
/* 8023BEF0  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 8023BEF4  C8 22 B1 A0 */	lfd f1, lit_3763(r2)
/* 8023BEF8  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8023BEFC  90 61 00 0C */	stw r3, 0xc(r1)
/* 8023BF00  3C 00 43 30 */	lis r0, 0x4330
/* 8023BF04  90 01 00 08 */	stw r0, 8(r1)
/* 8023BF08  C8 01 00 08 */	lfd f0, 8(r1)
/* 8023BF0C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8023BF10  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8023BF14  4C 41 13 82 */	cror 2, 1, 2
/* 8023BF18  40 82 00 1C */	bne lbl_8023BF34
/* 8023BF1C  90 61 00 0C */	stw r3, 0xc(r1)
/* 8023BF20  90 01 00 08 */	stw r0, 8(r1)
/* 8023BF24  C8 01 00 08 */	lfd f0, 8(r1)
/* 8023BF28  EC 00 08 28 */	fsubs f0, f0, f1
/* 8023BF2C  EC 02 00 28 */	fsubs f0, f2, f0
/* 8023BF30  D0 1F 00 1C */	stfs f0, 0x1c(r31)
lbl_8023BF34:
/* 8023BF34  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8023BF38  80 7F 00 08 */	lwz r3, 8(r31)
/* 8023BF3C  D0 03 00 08 */	stfs f0, 8(r3)
/* 8023BF40  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8023BF44  C0 02 B1 9C */	lfs f0, lit_3761(r2)
/* 8023BF48  EC 01 00 2A */	fadds f0, f1, f0
/* 8023BF4C  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8023BF50  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8023BF54  A8 03 00 06 */	lha r0, 6(r3)
/* 8023BF58  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 8023BF5C  C8 22 B1 A0 */	lfd f1, lit_3763(r2)
/* 8023BF60  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8023BF64  90 61 00 0C */	stw r3, 0xc(r1)
/* 8023BF68  3C 00 43 30 */	lis r0, 0x4330
/* 8023BF6C  90 01 00 08 */	stw r0, 8(r1)
/* 8023BF70  C8 01 00 08 */	lfd f0, 8(r1)
/* 8023BF74  EC 00 08 28 */	fsubs f0, f0, f1
/* 8023BF78  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8023BF7C  4C 41 13 82 */	cror 2, 1, 2
/* 8023BF80  40 82 00 1C */	bne lbl_8023BF9C
/* 8023BF84  90 61 00 0C */	stw r3, 0xc(r1)
/* 8023BF88  90 01 00 08 */	stw r0, 8(r1)
/* 8023BF8C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8023BF90  EC 00 08 28 */	fsubs f0, f0, f1
/* 8023BF94  EC 02 00 28 */	fsubs f0, f2, f0
/* 8023BF98  D0 1F 00 20 */	stfs f0, 0x20(r31)
lbl_8023BF9C:
/* 8023BF9C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8023BFA0  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8023BFA4  D0 03 00 08 */	stfs f0, 8(r3)
/* 8023BFA8  80 7F 00 04 */	lwz r3, 4(r31)
/* 8023BFAC  48 0B D6 E5 */	bl animation__9J2DScreenFv
/* 8023BFB0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8023BFB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8023BFB8  7C 08 03 A6 */	mtlr r0
/* 8023BFBC  38 21 00 20 */	addi r1, r1, 0x20
/* 8023BFC0  4E 80 00 20 */	blr 
