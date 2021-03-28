lbl_80C3CB7C:
/* 80C3CB7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C3CB80  7C 08 02 A6 */	mflr r0
/* 80C3CB84  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C3CB88  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C3CB8C  7C 7F 1B 78 */	mr r31, r3
/* 80C3CB90  3C 60 80 C4 */	lis r3, lit_3890@ha
/* 80C3CB94  C0 23 D4 18 */	lfs f1, lit_3890@l(r3)
/* 80C3CB98  C0 5F 07 44 */	lfs f2, 0x744(r31)
/* 80C3CB9C  FC 01 10 00 */	fcmpu cr0, f1, f2
/* 80C3CBA0  41 82 00 8C */	beq lbl_80C3CC2C
/* 80C3CBA4  A8 1F 07 4C */	lha r0, 0x74c(r31)
/* 80C3CBA8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C3CBAC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80C3CBB0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80C3CBB4  7C 03 04 2E */	lfsx f0, r3, r0
/* 80C3CBB8  EC 42 00 32 */	fmuls f2, f2, f0
/* 80C3CBBC  A8 1F 07 4E */	lha r0, 0x74e(r31)
/* 80C3CBC0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C3CBC4  7C 03 04 2E */	lfsx f0, r3, r0
/* 80C3CBC8  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C3CBCC  FC 00 00 1E */	fctiwz f0, f0
/* 80C3CBD0  D8 01 00 08 */	stfd f0, 8(r1)
/* 80C3CBD4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80C3CBD8  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80C3CBDC  A8 1F 07 4E */	lha r0, 0x74e(r31)
/* 80C3CBE0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C3CBE4  7C 63 02 14 */	add r3, r3, r0
/* 80C3CBE8  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C3CBEC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C3CBF0  FC 00 00 1E */	fctiwz f0, f0
/* 80C3CBF4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80C3CBF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3CBFC  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80C3CC00  38 7F 07 44 */	addi r3, r31, 0x744
/* 80C3CC04  3C 80 80 C4 */	lis r4, M_attr__15daObjKazeNeko_c@ha
/* 80C3CC08  38 84 D3 DC */	addi r4, r4, M_attr__15daObjKazeNeko_c@l
/* 80C3CC0C  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 80C3CC10  4B 63 3B 30 */	b cLib_chaseF__FPfff
/* 80C3CC14  A8 9F 07 4C */	lha r4, 0x74c(r31)
/* 80C3CC18  3C 60 80 C4 */	lis r3, M_attr__15daObjKazeNeko_c@ha
/* 80C3CC1C  38 63 D3 DC */	addi r3, r3, M_attr__15daObjKazeNeko_c@l
/* 80C3CC20  A8 03 00 26 */	lha r0, 0x26(r3)
/* 80C3CC24  7C 04 02 14 */	add r0, r4, r0
/* 80C3CC28  B0 1F 07 4C */	sth r0, 0x74c(r31)
lbl_80C3CC2C:
/* 80C3CC2C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C3CC30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C3CC34  7C 08 03 A6 */	mtlr r0
/* 80C3CC38  38 21 00 20 */	addi r1, r1, 0x20
/* 80C3CC3C  4E 80 00 20 */	blr 
