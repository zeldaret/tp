lbl_804EADD4:
/* 804EADD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EADD8  7C 08 02 A6 */	mflr r0
/* 804EADDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EADE0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804EADE4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804EADE8  7C 7F 1B 78 */	mr r31, r3
/* 804EADEC  3C 60 80 4F */	lis r3, lit_3789@ha
/* 804EADF0  3B C3 E8 AC */	addi r30, r3, lit_3789@l
/* 804EADF4  A8 9F 10 C2 */	lha r4, 0x10c2(r31)
/* 804EADF8  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 804EADFC  38 03 80 00 */	addi r0, r3, -32768
/* 804EAE00  7C 04 00 50 */	subf r0, r4, r0
/* 804EAE04  B0 1F 07 50 */	sth r0, 0x750(r31)
/* 804EAE08  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 804EAE0C  D0 1F 07 4C */	stfs f0, 0x74c(r31)
/* 804EAE10  38 00 00 15 */	li r0, 0x15
/* 804EAE14  B0 1F 06 CE */	sth r0, 0x6ce(r31)
/* 804EAE18  38 00 00 00 */	li r0, 0
/* 804EAE1C  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 804EAE20  A8 1F 10 C2 */	lha r0, 0x10c2(r31)
/* 804EAE24  B0 1F 07 26 */	sth r0, 0x726(r31)
/* 804EAE28  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 804EAE2C  4B D7 CB 28 */	b cM_rndF__Ff
/* 804EAE30  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 804EAE34  EC 00 08 2A */	fadds f0, f0, f1
/* 804EAE38  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 804EAE3C  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 804EAE40  D0 1F 07 04 */	stfs f0, 0x704(r31)
/* 804EAE44  38 00 00 32 */	li r0, 0x32
/* 804EAE48  B0 1F 08 28 */	sth r0, 0x828(r31)
/* 804EAE4C  80 7F 10 C8 */	lwz r3, 0x10c8(r31)
/* 804EAE50  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 804EAE54  41 82 00 28 */	beq lbl_804EAE7C
/* 804EAE58  C0 3E 01 24 */	lfs f1, 0x124(r30)
/* 804EAE5C  4B D7 CB 30 */	b cM_rndFX__Ff
/* 804EAE60  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 804EAE64  EC 00 08 2A */	fadds f0, f0, f1
/* 804EAE68  FC 00 00 1E */	fctiwz f0, f0
/* 804EAE6C  D8 01 00 08 */	stfd f0, 8(r1)
/* 804EAE70  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804EAE74  B0 1F 07 0E */	sth r0, 0x70e(r31)
/* 804EAE78  48 00 00 4C */	b lbl_804EAEC4
lbl_804EAE7C:
/* 804EAE7C  54 60 05 29 */	rlwinm. r0, r3, 0, 0x14, 0x14
/* 804EAE80  41 82 00 2C */	beq lbl_804EAEAC
/* 804EAE84  C0 3E 01 24 */	lfs f1, 0x124(r30)
/* 804EAE88  4B D7 CB 04 */	b cM_rndFX__Ff
/* 804EAE8C  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 804EAE90  EC 00 08 2A */	fadds f0, f0, f1
/* 804EAE94  FC 00 00 50 */	fneg f0, f0
/* 804EAE98  FC 00 00 1E */	fctiwz f0, f0
/* 804EAE9C  D8 01 00 08 */	stfd f0, 8(r1)
/* 804EAEA0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804EAEA4  B0 1F 07 0E */	sth r0, 0x70e(r31)
/* 804EAEA8  48 00 00 1C */	b lbl_804EAEC4
lbl_804EAEAC:
/* 804EAEAC  C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 804EAEB0  4B D7 CA DC */	b cM_rndFX__Ff
/* 804EAEB4  FC 00 08 1E */	fctiwz f0, f1
/* 804EAEB8  D8 01 00 08 */	stfd f0, 8(r1)
/* 804EAEBC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804EAEC0  B0 1F 07 0E */	sth r0, 0x70e(r31)
lbl_804EAEC4:
/* 804EAEC4  38 00 00 00 */	li r0, 0
/* 804EAEC8  98 1F 07 10 */	stb r0, 0x710(r31)
/* 804EAECC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804EAED0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804EAED4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EAED8  7C 08 03 A6 */	mtlr r0
/* 804EAEDC  38 21 00 20 */	addi r1, r1, 0x20
/* 804EAEE0  4E 80 00 20 */	blr 
