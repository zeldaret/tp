lbl_805EF504:
/* 805EF504  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805EF508  7C 08 02 A6 */	mflr r0
/* 805EF50C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805EF510  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805EF514  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805EF518  7C 7E 1B 78 */	mr r30, r3
/* 805EF51C  3C 80 80 5F */	lis r4, lit_3774@ha
/* 805EF520  3B E4 41 88 */	addi r31, r4, lit_3774@l
/* 805EF524  80 83 05 DC */	lwz r4, 0x5dc(r3)
/* 805EF528  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 805EF52C  FC 00 00 1E */	fctiwz f0, f0
/* 805EF530  D8 01 00 08 */	stfd f0, 8(r1)
/* 805EF534  80 81 00 0C */	lwz r4, 0xc(r1)
/* 805EF538  A8 03 07 20 */	lha r0, 0x720(r3)
/* 805EF53C  2C 00 00 01 */	cmpwi r0, 1
/* 805EF540  41 82 00 34 */	beq lbl_805EF574
/* 805EF544  40 80 00 BC */	bge lbl_805EF600
/* 805EF548  2C 00 00 00 */	cmpwi r0, 0
/* 805EF54C  40 80 00 08 */	bge lbl_805EF554
/* 805EF550  48 00 00 B0 */	b lbl_805EF600
lbl_805EF554:
/* 805EF554  38 00 00 01 */	li r0, 1
/* 805EF558  B0 1E 07 20 */	sth r0, 0x720(r30)
/* 805EF55C  38 80 00 18 */	li r4, 0x18
/* 805EF560  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 805EF564  38 A0 00 00 */	li r5, 0
/* 805EF568  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805EF56C  4B FF E4 91 */	bl anm_init__FP10b_gm_classifUcf
/* 805EF570  48 00 00 90 */	b lbl_805EF600
lbl_805EF574:
/* 805EF574  2C 04 00 32 */	cmpwi r4, 0x32
/* 805EF578  41 80 00 30 */	blt lbl_805EF5A8
/* 805EF57C  40 82 00 0C */	bne lbl_805EF588
/* 805EF580  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 805EF584  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_805EF588:
/* 805EF588  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 805EF58C  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 805EF590  EC 01 00 2A */	fadds f0, f1, f0
/* 805EF594  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 805EF598  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 805EF59C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 805EF5A0  EC 01 00 28 */	fsubs f0, f1, f0
/* 805EF5A4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_805EF5A8:
/* 805EF5A8  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 805EF5AC  38 80 00 01 */	li r4, 1
/* 805EF5B0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805EF5B4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805EF5B8  40 82 00 18 */	bne lbl_805EF5D0
/* 805EF5BC  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 805EF5C0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805EF5C4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805EF5C8  41 82 00 08 */	beq lbl_805EF5D0
/* 805EF5CC  38 80 00 00 */	li r4, 0
lbl_805EF5D0:
/* 805EF5D0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805EF5D4  41 82 00 2C */	beq lbl_805EF600
/* 805EF5D8  38 00 00 0B */	li r0, 0xb
/* 805EF5DC  B0 1E 07 1E */	sth r0, 0x71e(r30)
/* 805EF5E0  38 00 00 00 */	li r0, 0
/* 805EF5E4  B0 1E 07 20 */	sth r0, 0x720(r30)
/* 805EF5E8  7F C3 F3 78 */	mr r3, r30
/* 805EF5EC  38 80 00 11 */	li r4, 0x11
/* 805EF5F0  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 805EF5F4  38 A0 00 02 */	li r5, 2
/* 805EF5F8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805EF5FC  4B FF E4 01 */	bl anm_init__FP10b_gm_classifUcf
lbl_805EF600:
/* 805EF600  38 00 00 14 */	li r0, 0x14
/* 805EF604  B0 1E 07 2A */	sth r0, 0x72a(r30)
/* 805EF608  38 7E 05 2C */	addi r3, r30, 0x52c
/* 805EF60C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805EF610  C0 5F 00 88 */	lfs f2, 0x88(r31)
/* 805EF614  4B C8 04 6C */	b cLib_addCalc0__FPfff
/* 805EF618  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805EF61C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805EF620  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805EF624  7C 08 03 A6 */	mtlr r0
/* 805EF628  38 21 00 20 */	addi r1, r1, 0x20
/* 805EF62C  4E 80 00 20 */	blr 
