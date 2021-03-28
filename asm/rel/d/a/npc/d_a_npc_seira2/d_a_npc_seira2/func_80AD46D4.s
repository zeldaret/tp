lbl_80AD46D4:
/* 80AD46D4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AD46D8  7C 08 02 A6 */	mflr r0
/* 80AD46DC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AD46E0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80AD46E4  7C 7F 1B 78 */	mr r31, r3
/* 80AD46E8  3C 60 80 AD */	lis r3, lit_4860@ha
/* 80AD46EC  C8 23 4B 38 */	lfd f1, lit_4860@l(r3)
/* 80AD46F0  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80AD46F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AD46F8  3C 00 43 30 */	lis r0, 0x4330
/* 80AD46FC  90 01 00 08 */	stw r0, 8(r1)
/* 80AD4700  C8 01 00 08 */	lfd f0, 8(r1)
/* 80AD4704  EC 20 08 28 */	fsubs f1, f0, f1
/* 80AD4708  4B 79 32 4C */	b cM_rndF__Ff
/* 80AD470C  3C 60 80 AD */	lis r3, lit_4860@ha
/* 80AD4710  C8 43 4B 38 */	lfd f2, lit_4860@l(r3)
/* 80AD4714  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 80AD4718  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD471C  3C 00 43 30 */	lis r0, 0x4330
/* 80AD4720  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AD4724  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80AD4728  EC 00 10 28 */	fsubs f0, f0, f2
/* 80AD472C  EC 00 08 2A */	fadds f0, f0, f1
/* 80AD4730  FC 00 00 1E */	fctiwz f0, f0
/* 80AD4734  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80AD4738  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80AD473C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80AD4740  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AD4744  7C 08 03 A6 */	mtlr r0
/* 80AD4748  38 21 00 30 */	addi r1, r1, 0x30
/* 80AD474C  4E 80 00 20 */	blr 
