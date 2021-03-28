lbl_80CC5720:
/* 80CC5720  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CC5724  7C 08 02 A6 */	mflr r0
/* 80CC5728  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CC572C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80CC5730  7C 7F 1B 78 */	mr r31, r3
/* 80CC5734  38 61 00 08 */	addi r3, r1, 8
/* 80CC5738  80 9F 00 04 */	lwz r4, 4(r31)
/* 80CC573C  38 BF 00 08 */	addi r5, r31, 8
/* 80CC5740  4B 5A 13 F4 */	b __mi__4cXyzCFRC3Vec
/* 80CC5744  C0 01 00 08 */	lfs f0, 8(r1)
/* 80CC5748  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CC574C  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80CC5750  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80CC5754  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80CC5758  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80CC575C  4B 5A 1F 18 */	b cM_atan2s__Fff
/* 80CC5760  B0 7F 00 30 */	sth r3, 0x30(r31)
/* 80CC5764  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80CC5768  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80CC576C  A8 1F 00 38 */	lha r0, 0x38(r31)
/* 80CC5770  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CC5774  7C 63 02 14 */	add r3, r3, r0
/* 80CC5778  C0 43 00 04 */	lfs f2, 4(r3)
/* 80CC577C  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 80CC5780  3C 60 80 CC */	lis r3, lit_3776@ha
/* 80CC5784  C8 23 69 50 */	lfd f1, lit_3776@l(r3)
/* 80CC5788  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CC578C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CC5790  3C 00 43 30 */	lis r0, 0x4330
/* 80CC5794  90 01 00 20 */	stw r0, 0x20(r1)
/* 80CC5798  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80CC579C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80CC57A0  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80CC57A4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80CC57A8  EC 01 00 2A */	fadds f0, f1, f0
/* 80CC57AC  FC 00 00 1E */	fctiwz f0, f0
/* 80CC57B0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80CC57B4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80CC57B8  B0 1F 00 32 */	sth r0, 0x32(r31)
/* 80CC57BC  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80CC57C0  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80CC57C4  4B 5A 1E B0 */	b cM_atan2s__Fff
/* 80CC57C8  7C 03 00 D0 */	neg r0, r3
/* 80CC57CC  B0 1F 00 34 */	sth r0, 0x34(r31)
/* 80CC57D0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80CC57D4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CC57D8  7C 08 03 A6 */	mtlr r0
/* 80CC57DC  38 21 00 40 */	addi r1, r1, 0x40
/* 80CC57E0  4E 80 00 20 */	blr 
