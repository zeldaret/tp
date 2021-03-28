lbl_800B3844:
/* 800B3844  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800B3848  7C 08 02 A6 */	mflr r0
/* 800B384C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800B3850  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800B3854  7C 7F 1B 78 */	mr r31, r3
/* 800B3858  C0 22 93 E0 */	lfs f1, lit_11673(r2)
/* 800B385C  48 1B 40 F9 */	bl cM_rndF__Ff
/* 800B3860  C0 02 92 D0 */	lfs f0, lit_6238(r2)
/* 800B3864  EC 00 08 2A */	fadds f0, f0, f1
/* 800B3868  FC 00 00 1E */	fctiwz f0, f0
/* 800B386C  D8 01 00 08 */	stfd f0, 8(r1)
/* 800B3870  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800B3874  B0 1F 30 CA */	sth r0, 0x30ca(r31)
/* 800B3878  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800B387C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B3880  41 82 00 14 */	beq lbl_800B3894
/* 800B3884  A8 1F 30 CA */	lha r0, 0x30ca(r31)
/* 800B3888  7C 00 16 70 */	srawi r0, r0, 2
/* 800B388C  B0 1F 30 CA */	sth r0, 0x30ca(r31)
/* 800B3890  48 00 00 60 */	b lbl_800B38F0
lbl_800B3894:
/* 800B3894  38 00 00 00 */	li r0, 0
/* 800B3898  88 7F 2F AA */	lbz r3, 0x2faa(r31)
/* 800B389C  28 03 00 01 */	cmplwi r3, 1
/* 800B38A0  41 82 00 0C */	beq lbl_800B38AC
/* 800B38A4  28 03 00 02 */	cmplwi r3, 2
/* 800B38A8  40 82 00 08 */	bne lbl_800B38B0
lbl_800B38AC:
/* 800B38AC  38 00 00 01 */	li r0, 1
lbl_800B38B0:
/* 800B38B0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800B38B4  41 82 00 3C */	beq lbl_800B38F0
/* 800B38B8  A8 1F 30 CA */	lha r0, 0x30ca(r31)
/* 800B38BC  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800B38C0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800B38C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 800B38C8  3C 00 43 30 */	lis r0, 0x4330
/* 800B38CC  90 01 00 08 */	stw r0, 8(r1)
/* 800B38D0  C8 01 00 08 */	lfd f0, 8(r1)
/* 800B38D4  EC 20 08 28 */	fsubs f1, f0, f1
/* 800B38D8  C0 02 94 AC */	lfs f0, lit_16641(r2)
/* 800B38DC  EC 01 00 32 */	fmuls f0, f1, f0
/* 800B38E0  FC 00 00 1E */	fctiwz f0, f0
/* 800B38E4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 800B38E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B38EC  B0 1F 30 CA */	sth r0, 0x30ca(r31)
lbl_800B38F0:
/* 800B38F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800B38F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800B38F8  7C 08 03 A6 */	mtlr r0
/* 800B38FC  38 21 00 20 */	addi r1, r1, 0x20
/* 800B3900  4E 80 00 20 */	blr 
