lbl_80591004:
/* 80591004  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80591008  7C 08 02 A6 */	mflr r0
/* 8059100C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80591010  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80591014  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80591018  7C 7E 1B 78 */	mr r30, r3
/* 8059101C  3C 60 80 59 */	lis r3, l_magne_scale@ha
/* 80591020  3B E3 28 48 */	addi r31, r3, l_magne_scale@l
/* 80591024  38 7E 0A 17 */	addi r3, r30, 0xa17
/* 80591028  48 00 17 ED */	bl func_80592814
/* 8059102C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80591030  40 82 00 A0 */	bne lbl_805910D0
/* 80591034  38 7E 0A 0C */	addi r3, r30, 0xa0c
/* 80591038  38 9F 00 2C */	addi r4, r31, 0x2c
/* 8059103C  A8 84 00 02 */	lha r4, 2(r4)
/* 80591040  38 A0 00 14 */	li r5, 0x14
/* 80591044  38 C0 00 32 */	li r6, 0x32
/* 80591048  38 E0 00 0A */	li r7, 0xa
/* 8059104C  4B CD F4 F4 */	b cLib_addCalcAngleS__FPsssss
/* 80591050  A8 7E 0A 0C */	lha r3, 0xa0c(r30)
/* 80591054  A8 1E 0A 00 */	lha r0, 0xa00(r30)
/* 80591058  7C 03 00 50 */	subf r0, r3, r0
/* 8059105C  B0 1E 0A 00 */	sth r0, 0xa00(r30)
/* 80591060  C0 7E 0A 04 */	lfs f3, 0xa04(r30)
/* 80591064  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 80591068  A8 1E 0A 0C */	lha r0, 0xa0c(r30)
/* 8059106C  C8 3F 00 78 */	lfd f1, 0x78(r31)
/* 80591070  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80591074  90 01 00 0C */	stw r0, 0xc(r1)
/* 80591078  3C 00 43 30 */	lis r0, 0x4330
/* 8059107C  90 01 00 08 */	stw r0, 8(r1)
/* 80591080  C8 01 00 08 */	lfd f0, 8(r1)
/* 80591084  EC 00 08 28 */	fsubs f0, f0, f1
/* 80591088  EC 22 00 32 */	fmuls f1, f2, f0
/* 8059108C  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80591090  EC 01 00 24 */	fdivs f0, f1, f0
/* 80591094  EC 03 00 28 */	fsubs f0, f3, f0
/* 80591098  D0 1E 0A 04 */	stfs f0, 0xa04(r30)
/* 8059109C  C0 3E 0A 04 */	lfs f1, 0xa04(r30)
/* 805910A0  88 1E 0A 15 */	lbz r0, 0xa15(r30)
/* 805910A4  54 00 10 3A */	slwi r0, r0, 2
/* 805910A8  38 7F 00 0C */	addi r3, r31, 0xc
/* 805910AC  7C 03 04 2E */	lfsx f0, r3, r0
/* 805910B0  FC 00 00 50 */	fneg f0, f0
/* 805910B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805910B8  40 80 00 10 */	bge lbl_805910C8
/* 805910BC  D0 1E 0A 04 */	stfs f0, 0xa04(r30)
/* 805910C0  7F C3 F3 78 */	mr r3, r30
/* 805910C4  4B FF FE 51 */	bl init_typeB_modeLiftUp__11daObjMarm_cFv
lbl_805910C8:
/* 805910C8  7F C3 F3 78 */	mr r3, r30
/* 805910CC  48 00 0E ED */	bl seStartLevel_DOWN__11daObjMarm_cFv
lbl_805910D0:
/* 805910D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805910D4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805910D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805910DC  7C 08 03 A6 */	mtlr r0
/* 805910E0  38 21 00 20 */	addi r1, r1, 0x20
/* 805910E4  4E 80 00 20 */	blr 
