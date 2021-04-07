lbl_804CDDAC:
/* 804CDDAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CDDB0  7C 08 02 A6 */	mflr r0
/* 804CDDB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CDDB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CDDBC  93 C1 00 08 */	stw r30, 8(r1)
/* 804CDDC0  7C 7E 1B 78 */	mr r30, r3
/* 804CDDC4  3C 60 80 4D */	lis r3, l_cyl_src@ha /* 0x804CE3F4@ha */
/* 804CDDC8  3B E3 E3 F4 */	addi r31, r3, l_cyl_src@l /* 0x804CE3F4@l */
/* 804CDDCC  38 7E 09 54 */	addi r3, r30, 0x954
/* 804CDDD0  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 804CDDD4  C0 5F 00 A8 */	lfs f2, 0xa8(r31)
/* 804CDDD8  4B DA 29 69 */	bl cLib_chaseF__FPfff
/* 804CDDDC  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 804CDDE0  C0 1E 09 54 */	lfs f0, 0x954(r30)
/* 804CDDE4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804CDDE8  40 82 00 50 */	bne lbl_804CDE38
/* 804CDDEC  38 7E 09 4C */	addi r3, r30, 0x94c
/* 804CDDF0  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 804CDDF4  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 804CDDF8  4B DA 29 49 */	bl cLib_chaseF__FPfff
/* 804CDDFC  A8 1E 09 5E */	lha r0, 0x95e(r30)
/* 804CDE00  1C 00 0B B8 */	mulli r0, r0, 0xbb8
/* 804CDE04  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804CDE08  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804CDE0C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804CDE10  7C 23 04 2E */	lfsx f1, r3, r0
/* 804CDE14  C0 1E 09 4C */	lfs f0, 0x94c(r30)
/* 804CDE18  EC 00 00 72 */	fmuls f0, f0, f1
/* 804CDE1C  D0 1E 09 50 */	stfs f0, 0x950(r30)
/* 804CDE20  A8 7E 09 5E */	lha r3, 0x95e(r30)
/* 804CDE24  2C 03 03 E8 */	cmpwi r3, 0x3e8
/* 804CDE28  40 80 00 18 */	bge lbl_804CDE40
/* 804CDE2C  38 03 00 01 */	addi r0, r3, 1
/* 804CDE30  B0 1E 09 5E */	sth r0, 0x95e(r30)
/* 804CDE34  48 00 00 0C */	b lbl_804CDE40
lbl_804CDE38:
/* 804CDE38  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 804CDE3C  D0 1E 09 50 */	stfs f0, 0x950(r30)
lbl_804CDE40:
/* 804CDE40  C0 3E 09 50 */	lfs f1, 0x950(r30)
/* 804CDE44  C0 1E 09 54 */	lfs f0, 0x954(r30)
/* 804CDE48  EC 01 00 2A */	fadds f0, f1, f0
/* 804CDE4C  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 804CDE50  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 804CDE54  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 804CDE58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804CDE5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804CDE60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CDE64  7C 08 03 A6 */	mtlr r0
/* 804CDE68  38 21 00 10 */	addi r1, r1, 0x10
/* 804CDE6C  4E 80 00 20 */	blr 
