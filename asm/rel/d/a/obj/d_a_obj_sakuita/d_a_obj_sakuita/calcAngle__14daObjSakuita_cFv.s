lbl_80CC4A98:
/* 80CC4A98  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CC4A9C  7C 08 02 A6 */	mflr r0
/* 80CC4AA0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CC4AA4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80CC4AA8  7C 7F 1B 78 */	mr r31, r3
/* 80CC4AAC  38 61 00 08 */	addi r3, r1, 8
/* 80CC4AB0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80CC4AB4  38 BF 07 1C */	addi r5, r31, 0x71c
/* 80CC4AB8  4B 5A 20 7C */	b __mi__4cXyzCFRC3Vec
/* 80CC4ABC  C0 01 00 08 */	lfs f0, 8(r1)
/* 80CC4AC0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CC4AC4  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80CC4AC8  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80CC4ACC  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80CC4AD0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80CC4AD4  4B 5A 2B A0 */	b cM_atan2s__Fff
/* 80CC4AD8  B0 7F 07 44 */	sth r3, 0x744(r31)
/* 80CC4ADC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80CC4AE0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80CC4AE4  A8 1F 07 4A */	lha r0, 0x74a(r31)
/* 80CC4AE8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CC4AEC  7C 63 02 14 */	add r3, r3, r0
/* 80CC4AF0  C0 43 00 04 */	lfs f2, 4(r3)
/* 80CC4AF4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80CC4AF8  3C 60 80 CC */	lis r3, lit_3781@ha
/* 80CC4AFC  C8 23 51 0C */	lfd f1, lit_3781@l(r3)
/* 80CC4B00  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CC4B04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CC4B08  3C 00 43 30 */	lis r0, 0x4330
/* 80CC4B0C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80CC4B10  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80CC4B14  EC 20 08 28 */	fsubs f1, f0, f1
/* 80CC4B18  C0 1F 07 40 */	lfs f0, 0x740(r31)
/* 80CC4B1C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80CC4B20  EC 01 00 2A */	fadds f0, f1, f0
/* 80CC4B24  FC 00 00 1E */	fctiwz f0, f0
/* 80CC4B28  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80CC4B2C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80CC4B30  B0 1F 07 46 */	sth r0, 0x746(r31)
/* 80CC4B34  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80CC4B38  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80CC4B3C  4B 5A 2B 38 */	b cM_atan2s__Fff
/* 80CC4B40  7C 03 00 D0 */	neg r0, r3
/* 80CC4B44  B0 1F 07 48 */	sth r0, 0x748(r31)
/* 80CC4B48  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80CC4B4C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CC4B50  7C 08 03 A6 */	mtlr r0
/* 80CC4B54  38 21 00 40 */	addi r1, r1, 0x40
/* 80CC4B58  4E 80 00 20 */	blr 
