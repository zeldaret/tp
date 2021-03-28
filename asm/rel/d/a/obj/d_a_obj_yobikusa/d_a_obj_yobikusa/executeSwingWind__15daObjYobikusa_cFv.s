lbl_8059CA8C:
/* 8059CA8C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8059CA90  7C 08 02 A6 */	mflr r0
/* 8059CA94  90 01 00 54 */	stw r0, 0x54(r1)
/* 8059CA98  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8059CA9C  7C 7F 1B 78 */	mr r31, r3
/* 8059CAA0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8059CAA4  38 81 00 0C */	addi r4, r1, 0xc
/* 8059CAA8  38 A1 00 08 */	addi r5, r1, 8
/* 8059CAAC  4B AB E8 4C */	b dKyw_get_AllWind_vec__FP4cXyzP4cXyzPf
/* 8059CAB0  A8 1F 07 66 */	lha r0, 0x766(r31)
/* 8059CAB4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8059CAB8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8059CABC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8059CAC0  7C 23 04 2E */	lfsx f1, r3, r0
/* 8059CAC4  3C 60 80 5A */	lis r3, M_attr__15daObjYobikusa_c@ha
/* 8059CAC8  38 63 DE 7C */	addi r3, r3, M_attr__15daObjYobikusa_c@l
/* 8059CACC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8059CAD0  EC 40 00 72 */	fmuls f2, f0, f1
/* 8059CAD4  C0 21 00 08 */	lfs f1, 8(r1)
/* 8059CAD8  C0 03 00 00 */	lfs f0, 0(r3)
/* 8059CADC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8059CAE0  EC 22 00 2A */	fadds f1, f2, f0
/* 8059CAE4  3C 60 80 5A */	lis r3, lit_3699@ha
/* 8059CAE8  C0 03 DE BC */	lfs f0, lit_3699@l(r3)
/* 8059CAEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059CAF0  40 80 00 08 */	bge lbl_8059CAF8
/* 8059CAF4  FC 20 00 90 */	fmr f1, f0
lbl_8059CAF8:
/* 8059CAF8  A8 1F 07 64 */	lha r0, 0x764(r31)
/* 8059CAFC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8059CB00  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8059CB04  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8059CB08  7C 03 04 2E */	lfsx f0, r3, r0
/* 8059CB0C  EC 21 00 32 */	fmuls f1, f1, f0
/* 8059CB10  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8059CB14  EC 01 00 32 */	fmuls f0, f1, f0
/* 8059CB18  FC 00 00 1E */	fctiwz f0, f0
/* 8059CB1C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8059CB20  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8059CB24  B0 1F 07 4E */	sth r0, 0x74e(r31)
/* 8059CB28  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8059CB2C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8059CB30  FC 00 00 1E */	fctiwz f0, f0
/* 8059CB34  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8059CB38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059CB3C  B0 1F 07 50 */	sth r0, 0x750(r31)
/* 8059CB40  A8 1F 07 66 */	lha r0, 0x766(r31)
/* 8059CB44  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8059CB48  7C 23 04 2E */	lfsx f1, r3, r0
/* 8059CB4C  3C 60 80 5A */	lis r3, M_attr__15daObjYobikusa_c@ha
/* 8059CB50  38 63 DE 7C */	addi r3, r3, M_attr__15daObjYobikusa_c@l
/* 8059CB54  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8059CB58  EC 40 00 72 */	fmuls f2, f0, f1
/* 8059CB5C  C0 63 00 10 */	lfs f3, 0x10(r3)
/* 8059CB60  C0 21 00 08 */	lfs f1, 8(r1)
/* 8059CB64  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8059CB68  EC 00 18 28 */	fsubs f0, f0, f3
/* 8059CB6C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8059CB70  EC 03 00 2A */	fadds f0, f3, f0
/* 8059CB74  EC 22 00 2A */	fadds f1, f2, f0
/* 8059CB78  3C 60 80 5A */	lis r3, lit_3699@ha
/* 8059CB7C  C0 03 DE BC */	lfs f0, lit_3699@l(r3)
/* 8059CB80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059CB84  40 80 00 08 */	bge lbl_8059CB8C
/* 8059CB88  FC 20 00 90 */	fmr f1, f0
lbl_8059CB8C:
/* 8059CB8C  A8 1F 07 64 */	lha r0, 0x764(r31)
/* 8059CB90  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8059CB94  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8059CB98  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8059CB9C  7C 03 04 2E */	lfsx f0, r3, r0
/* 8059CBA0  EC 21 00 32 */	fmuls f1, f1, f0
/* 8059CBA4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8059CBA8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8059CBAC  FC 00 00 1E */	fctiwz f0, f0
/* 8059CBB0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8059CBB4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8059CBB8  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 8059CBBC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8059CBC0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8059CBC4  FC 00 00 1E */	fctiwz f0, f0
/* 8059CBC8  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8059CBCC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8059CBD0  B0 1F 07 56 */	sth r0, 0x756(r31)
/* 8059CBD4  A8 BF 07 64 */	lha r5, 0x764(r31)
/* 8059CBD8  3C 60 80 5A */	lis r3, M_attr__15daObjYobikusa_c@ha
/* 8059CBDC  38 83 DE 7C */	addi r4, r3, M_attr__15daObjYobikusa_c@l
/* 8059CBE0  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 8059CBE4  C0 21 00 08 */	lfs f1, 8(r1)
/* 8059CBE8  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 8059CBEC  EC 00 10 28 */	fsubs f0, f0, f2
/* 8059CBF0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8059CBF4  EC 02 00 2A */	fadds f0, f2, f0
/* 8059CBF8  FC 00 00 1E */	fctiwz f0, f0
/* 8059CBFC  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8059CC00  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8059CC04  7C 05 02 14 */	add r0, r5, r0
/* 8059CC08  B0 1F 07 64 */	sth r0, 0x764(r31)
/* 8059CC0C  A8 7F 07 66 */	lha r3, 0x766(r31)
/* 8059CC10  A8 04 00 3A */	lha r0, 0x3a(r4)
/* 8059CC14  7C 03 02 14 */	add r0, r3, r0
/* 8059CC18  B0 1F 07 66 */	sth r0, 0x766(r31)
/* 8059CC1C  7F E3 FB 78 */	mr r3, r31
/* 8059CC20  48 00 08 35 */	bl setNewLeaf__15daObjYobikusa_cFv
/* 8059CC24  38 7F 05 F0 */	addi r3, r31, 0x5f0
/* 8059CC28  4B AE 7A 30 */	b ChkCoHit__12dCcD_GObjInfFv
/* 8059CC2C  28 03 00 00 */	cmplwi r3, 0
/* 8059CC30  41 82 00 10 */	beq lbl_8059CC40
/* 8059CC34  7F E3 FB 78 */	mr r3, r31
/* 8059CC38  38 80 00 01 */	li r4, 1
/* 8059CC3C  4B FF FD BD */	bl setAction__15daObjYobikusa_cFQ215daObjYobikusa_c6Mode_e
lbl_8059CC40:
/* 8059CC40  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8059CC44  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8059CC48  7C 08 03 A6 */	mtlr r0
/* 8059CC4C  38 21 00 50 */	addi r1, r1, 0x50
/* 8059CC50  4E 80 00 20 */	blr 
