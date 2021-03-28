lbl_806CDD8C:
/* 806CDD8C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806CDD90  7C 08 02 A6 */	mflr r0
/* 806CDD94  90 01 00 34 */	stw r0, 0x34(r1)
/* 806CDD98  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 806CDD9C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 806CDDA0  7C 7E 1B 78 */	mr r30, r3
/* 806CDDA4  3C 60 80 6D */	lis r3, lit_3907@ha
/* 806CDDA8  3B E3 0E 60 */	addi r31, r3, lit_3907@l
/* 806CDDAC  3C 60 80 6D */	lis r3, m_cry_gi@ha
/* 806CDDB0  80 03 11 64 */	lwz r0, m_cry_gi@l(r3)
/* 806CDDB4  28 00 00 00 */	cmplwi r0, 0
/* 806CDDB8  40 82 01 04 */	bne lbl_806CDEBC
/* 806CDDBC  48 00 30 79 */	bl checkNowWolf__9daPy_py_cFv
/* 806CDDC0  28 03 00 00 */	cmplwi r3, 0
/* 806CDDC4  40 82 00 2C */	bne lbl_806CDDF0
/* 806CDDC8  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 806CDDCC  3C 60 80 6D */	lis r3, l_HIO@ha
/* 806CDDD0  38 63 11 38 */	addi r3, r3, l_HIO@l
/* 806CDDD4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806CDDD8  EC 01 00 2A */	fadds f0, f1, f0
/* 806CDDDC  FC 00 00 1E */	fctiwz f0, f0
/* 806CDDE0  D8 01 00 08 */	stfd f0, 8(r1)
/* 806CDDE4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 806CDDE8  90 1E 06 8C */	stw r0, 0x68c(r30)
/* 806CDDEC  48 00 00 28 */	b lbl_806CDE14
lbl_806CDDF0:
/* 806CDDF0  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 806CDDF4  3C 60 80 6D */	lis r3, l_HIO@ha
/* 806CDDF8  38 63 11 38 */	addi r3, r3, l_HIO@l
/* 806CDDFC  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 806CDE00  EC 01 00 2A */	fadds f0, f1, f0
/* 806CDE04  FC 00 00 1E */	fctiwz f0, f0
/* 806CDE08  D8 01 00 08 */	stfd f0, 8(r1)
/* 806CDE0C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 806CDE10  90 1E 06 8C */	stw r0, 0x68c(r30)
lbl_806CDE14:
/* 806CDE14  80 9E 06 8C */	lwz r4, 0x68c(r30)
/* 806CDE18  3C 60 80 6D */	lis r3, l_HIO@ha
/* 806CDE1C  38 63 11 38 */	addi r3, r3, l_HIO@l
/* 806CDE20  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 806CDE24  FC 00 00 1E */	fctiwz f0, f0
/* 806CDE28  D8 01 00 08 */	stfd f0, 8(r1)
/* 806CDE2C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 806CDE30  7C 04 02 14 */	add r0, r4, r0
/* 806CDE34  90 1E 06 8C */	stw r0, 0x68c(r30)
/* 806CDE38  38 00 00 00 */	li r0, 0
/* 806CDE3C  90 1E 06 A8 */	stw r0, 0x6a8(r30)
/* 806CDE40  80 1E 06 8C */	lwz r0, 0x68c(r30)
/* 806CDE44  C8 3F 00 70 */	lfd f1, 0x70(r31)
/* 806CDE48  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806CDE4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806CDE50  3C 00 43 30 */	lis r0, 0x4330
/* 806CDE54  90 01 00 10 */	stw r0, 0x10(r1)
/* 806CDE58  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 806CDE5C  EC 20 08 28 */	fsubs f1, f0, f1
/* 806CDE60  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 806CDE64  EC 01 00 2A */	fadds f0, f1, f0
/* 806CDE68  FC 00 00 1E */	fctiwz f0, f0
/* 806CDE6C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 806CDE70  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 806CDE74  90 1E 06 90 */	stw r0, 0x690(r30)
/* 806CDE78  3C 60 80 6D */	lis r3, m_cry_gi@ha
/* 806CDE7C  93 C3 11 64 */	stw r30, m_cry_gi@l(r3)
/* 806CDE80  4B AB 37 C0 */	b dCam_getBody__Fv
/* 806CDE84  7F C4 F3 78 */	mr r4, r30
/* 806CDE88  4B AB 36 AC */	b ForceLockOn__9dCamera_cFP10fopAc_ac_c
/* 806CDE8C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806CDE90  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806CDE94  7F C3 F3 78 */	mr r3, r30
/* 806CDE98  38 80 00 0A */	li r4, 0xa
/* 806CDE9C  38 A0 00 00 */	li r5, 0
/* 806CDEA0  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 806CDEA4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806CDEA8  4B FF F9 C1 */	bl setBck__8daE_GI_cFiUcff
/* 806CDEAC  38 00 00 03 */	li r0, 3
/* 806CDEB0  98 1E 06 A0 */	stb r0, 0x6a0(r30)
/* 806CDEB4  38 60 00 01 */	li r3, 1
/* 806CDEB8  48 00 00 08 */	b lbl_806CDEC0
lbl_806CDEBC:
/* 806CDEBC  38 60 00 00 */	li r3, 0
lbl_806CDEC0:
/* 806CDEC0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 806CDEC4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 806CDEC8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806CDECC  7C 08 03 A6 */	mtlr r0
/* 806CDED0  38 21 00 30 */	addi r1, r1, 0x30
/* 806CDED4  4E 80 00 20 */	blr 
