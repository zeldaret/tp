lbl_801CEE94:
/* 801CEE94  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 801CEE98  7C 08 02 A6 */	mflr r0
/* 801CEE9C  90 01 00 74 */	stw r0, 0x74(r1)
/* 801CEEA0  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 801CEEA4  7C 7F 1B 78 */	mr r31, r3
/* 801CEEA8  88 63 00 E5 */	lbz r3, 0xe5(r3)
/* 801CEEAC  88 02 A7 94 */	lbz r0, m_other__22dMfm_HIO_prm_res_src_s(r2)
/* 801CEEB0  54 04 F8 7E */	srwi r4, r0, 1
/* 801CEEB4  7C 03 20 00 */	cmpw r3, r4
/* 801CEEB8  40 80 00 40 */	bge lbl_801CEEF8
/* 801CEEBC  7C 03 20 50 */	subf r0, r3, r4
/* 801CEEC0  C8 42 A7 A8 */	lfd f2, lit_4108(r2)
/* 801CEEC4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801CEEC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CEECC  3C 60 43 30 */	lis r3, 0x4330
/* 801CEED0  90 61 00 10 */	stw r3, 0x10(r1)
/* 801CEED4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801CEED8  EC 20 10 28 */	fsubs f1, f0, f2
/* 801CEEDC  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801CEEE0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801CEEE4  90 61 00 18 */	stw r3, 0x18(r1)
/* 801CEEE8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 801CEEEC  EC 00 10 28 */	fsubs f0, f0, f2
/* 801CEEF0  EC 21 00 24 */	fdivs f1, f1, f0
/* 801CEEF4  48 00 00 3C */	b lbl_801CEF30
lbl_801CEEF8:
/* 801CEEF8  7C 04 18 50 */	subf r0, r4, r3
/* 801CEEFC  C8 42 A7 A8 */	lfd f2, lit_4108(r2)
/* 801CEF00  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801CEF04  90 01 00 24 */	stw r0, 0x24(r1)
/* 801CEF08  3C 60 43 30 */	lis r3, 0x4330
/* 801CEF0C  90 61 00 20 */	stw r3, 0x20(r1)
/* 801CEF10  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 801CEF14  EC 20 10 28 */	fsubs f1, f0, f2
/* 801CEF18  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801CEF1C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801CEF20  90 61 00 28 */	stw r3, 0x28(r1)
/* 801CEF24  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 801CEF28  EC 00 10 28 */	fsubs f0, f0, f2
/* 801CEF2C  EC 21 00 24 */	fdivs f1, f1, f0
lbl_801CEF30:
/* 801CEF30  7F E3 FB 78 */	mr r3, r31
/* 801CEF34  C0 02 A7 84 */	lfs f0, lit_3711(r2)
/* 801CEF38  EC 20 08 28 */	fsubs f1, f0, f1
/* 801CEF3C  4B FF FB E1 */	bl setPointColor__15dMenu_FmapMap_cFf
/* 801CEF40  80 BF 00 C4 */	lwz r5, 0xc4(r31)
/* 801CEF44  A8 85 01 68 */	lha r4, 0x168(r5)
/* 801CEF48  3C 60 80 43 */	lis r3, g_Counter@ha
/* 801CEF4C  38 63 0C D8 */	addi r3, r3, g_Counter@l
/* 801CEF50  80 63 00 00 */	lwz r3, 0(r3)
/* 801CEF54  7C 03 23 96 */	divwu r0, r3, r4
/* 801CEF58  7C 00 21 D6 */	mullw r0, r0, r4
/* 801CEF5C  7C 00 18 50 */	subf r0, r0, r3
/* 801CEF60  C8 22 A7 78 */	lfd f1, lit_3689(r2)
/* 801CEF64  90 01 00 34 */	stw r0, 0x34(r1)
/* 801CEF68  3C 60 43 30 */	lis r3, 0x4330
/* 801CEF6C  90 61 00 30 */	stw r3, 0x30(r1)
/* 801CEF70  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 801CEF74  EC 40 08 28 */	fsubs f2, f0, f1
/* 801CEF78  C8 22 A7 A8 */	lfd f1, lit_4108(r2)
/* 801CEF7C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801CEF80  90 01 00 3C */	stw r0, 0x3c(r1)
/* 801CEF84  90 61 00 38 */	stw r3, 0x38(r1)
/* 801CEF88  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 801CEF8C  EC 00 08 28 */	fsubs f0, f0, f1
/* 801CEF90  EC 22 00 24 */	fdivs f1, f2, f0
/* 801CEF94  C0 42 A7 98 */	lfs f2, lit_4104(r2)
/* 801CEF98  C0 02 A7 9C */	lfs f0, lit_4105(r2)
/* 801CEF9C  EC 20 00 72 */	fmuls f1, f0, f1
/* 801CEFA0  C0 02 A7 A0 */	lfs f0, lit_4106(r2)
/* 801CEFA4  EC 01 00 28 */	fsubs f0, f1, f0
/* 801CEFA8  FC 00 00 1E */	fctiwz f0, f0
/* 801CEFAC  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 801CEFB0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801CEFB4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 801CEFB8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 801CEFBC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 801CEFC0  7C 03 04 2E */	lfsx f0, r3, r0
/* 801CEFC4  EC 02 00 32 */	fmuls f0, f2, f0
/* 801CEFC8  EC 22 00 2A */	fadds f1, f2, f0
/* 801CEFCC  38 65 00 D8 */	addi r3, r5, 0xd8
/* 801CEFD0  38 85 00 DC */	addi r4, r5, 0xdc
/* 801CEFD4  38 A1 00 08 */	addi r5, r1, 8
/* 801CEFD8  4B FF F0 F5 */	bl twoColorLineInterporation__FRC8_GXColorRC8_GXColorfR8_GXColor
/* 801CEFDC  7F E3 FB 78 */	mr r3, r31
/* 801CEFE0  38 80 00 19 */	li r4, 0x19
/* 801CEFE4  38 A1 00 08 */	addi r5, r1, 8
/* 801CEFE8  4B FF FA C5 */	bl setFmapPaletteColor__15dMenu_FmapMap_cFQ215renderingFmap_c9palette_eRC8_GXColor
/* 801CEFEC  80 BF 00 C4 */	lwz r5, 0xc4(r31)
/* 801CEFF0  A8 85 01 6A */	lha r4, 0x16a(r5)
/* 801CEFF4  3C 60 80 43 */	lis r3, g_Counter@ha
/* 801CEFF8  38 63 0C D8 */	addi r3, r3, g_Counter@l
/* 801CEFFC  80 63 00 00 */	lwz r3, 0(r3)
/* 801CF000  7C 03 23 96 */	divwu r0, r3, r4
/* 801CF004  7C 00 21 D6 */	mullw r0, r0, r4
/* 801CF008  7C 00 18 50 */	subf r0, r0, r3
/* 801CF00C  C8 22 A7 78 */	lfd f1, lit_3689(r2)
/* 801CF010  90 01 00 4C */	stw r0, 0x4c(r1)
/* 801CF014  3C 60 43 30 */	lis r3, 0x4330
/* 801CF018  90 61 00 48 */	stw r3, 0x48(r1)
/* 801CF01C  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 801CF020  EC 40 08 28 */	fsubs f2, f0, f1
/* 801CF024  C8 22 A7 A8 */	lfd f1, lit_4108(r2)
/* 801CF028  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801CF02C  90 01 00 54 */	stw r0, 0x54(r1)
/* 801CF030  90 61 00 50 */	stw r3, 0x50(r1)
/* 801CF034  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 801CF038  EC 00 08 28 */	fsubs f0, f0, f1
/* 801CF03C  EC 22 00 24 */	fdivs f1, f2, f0
/* 801CF040  38 65 00 E0 */	addi r3, r5, 0xe0
/* 801CF044  38 85 00 E4 */	addi r4, r5, 0xe4
/* 801CF048  C0 42 A7 98 */	lfs f2, lit_4104(r2)
/* 801CF04C  C0 02 A7 9C */	lfs f0, lit_4105(r2)
/* 801CF050  EC 20 00 72 */	fmuls f1, f0, f1
/* 801CF054  C0 02 A7 A0 */	lfs f0, lit_4106(r2)
/* 801CF058  EC 01 00 28 */	fsubs f0, f1, f0
/* 801CF05C  FC 00 00 1E */	fctiwz f0, f0
/* 801CF060  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 801CF064  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 801CF068  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 801CF06C  3C A0 80 44 */	lis r5, sincosTable___5JMath@ha
/* 801CF070  38 A5 9A 20 */	addi r5, r5, sincosTable___5JMath@l
/* 801CF074  7C 05 04 2E */	lfsx f0, r5, r0
/* 801CF078  EC 02 00 32 */	fmuls f0, f2, f0
/* 801CF07C  EC 22 00 2A */	fadds f1, f2, f0
/* 801CF080  38 A1 00 08 */	addi r5, r1, 8
/* 801CF084  4B FF F0 49 */	bl twoColorLineInterporation__FRC8_GXColorRC8_GXColorfR8_GXColor
/* 801CF088  7F E3 FB 78 */	mr r3, r31
/* 801CF08C  38 80 00 1A */	li r4, 0x1a
/* 801CF090  38 A1 00 08 */	addi r5, r1, 8
/* 801CF094  4B FF FA 19 */	bl setFmapPaletteColor__15dMenu_FmapMap_cFQ215renderingFmap_c9palette_eRC8_GXColor
/* 801CF098  7F E3 FB 78 */	mr r3, r31
/* 801CF09C  4B E6 DD 11 */	bl renderingMap__15dRenderingMap_cFv
/* 801CF0A0  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 801CF0A4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801CF0A8  7C 08 03 A6 */	mtlr r0
/* 801CF0AC  38 21 00 70 */	addi r1, r1, 0x70
/* 801CF0B0  4E 80 00 20 */	blr 
