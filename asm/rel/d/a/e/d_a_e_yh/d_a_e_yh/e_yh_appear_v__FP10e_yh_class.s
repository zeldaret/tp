lbl_807FE484:
/* 807FE484  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807FE488  7C 08 02 A6 */	mflr r0
/* 807FE48C  90 01 00 24 */	stw r0, 0x24(r1)
/* 807FE490  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 807FE494  93 C1 00 18 */	stw r30, 0x18(r1)
/* 807FE498  7C 7E 1B 78 */	mr r30, r3
/* 807FE49C  3C 80 80 80 */	lis r4, lit_3902@ha
/* 807FE4A0  3B E4 42 7C */	addi r31, r4, lit_3902@l
/* 807FE4A4  A8 03 06 70 */	lha r0, 0x670(r3)
/* 807FE4A8  2C 00 00 01 */	cmpwi r0, 1
/* 807FE4AC  41 82 00 64 */	beq lbl_807FE510
/* 807FE4B0  40 80 01 3C */	bge lbl_807FE5EC
/* 807FE4B4  2C 00 00 00 */	cmpwi r0, 0
/* 807FE4B8  40 80 00 08 */	bge lbl_807FE4C0
/* 807FE4BC  48 00 01 30 */	b lbl_807FE5EC
lbl_807FE4C0:
/* 807FE4C0  38 80 00 06 */	li r4, 6
/* 807FE4C4  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 807FE4C8  38 A0 00 00 */	li r5, 0
/* 807FE4CC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807FE4D0  4B FF F1 ED */	bl anm_init__FP10e_yh_classifUcf
/* 807FE4D4  7F C3 F3 78 */	mr r3, r30
/* 807FE4D8  38 80 00 14 */	li r4, 0x14
/* 807FE4DC  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 807FE4E0  38 A0 00 02 */	li r5, 2
/* 807FE4E4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807FE4E8  4B FF F2 81 */	bl leaf_anm_init__FP10e_yh_classifUcf
/* 807FE4EC  38 00 00 01 */	li r0, 1
/* 807FE4F0  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 807FE4F4  38 00 00 1E */	li r0, 0x1e
/* 807FE4F8  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 807FE4FC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807FE500  D0 1E 06 90 */	stfs f0, 0x690(r30)
/* 807FE504  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 807FE508  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 807FE50C  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_807FE510:
/* 807FE510  A8 9E 06 6C */	lha r4, 0x66c(r30)
/* 807FE514  1C 04 04 B0 */	mulli r0, r4, 0x4b0
/* 807FE518  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807FE51C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 807FE520  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 807FE524  7C 23 04 2E */	lfsx f1, r3, r0
/* 807FE528  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 807FE52C  EC 20 00 72 */	fmuls f1, f0, f1
/* 807FE530  D0 21 00 08 */	stfs f1, 8(r1)
/* 807FE534  1C 04 05 DC */	mulli r0, r4, 0x5dc
/* 807FE538  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807FE53C  7C 63 02 14 */	add r3, r3, r0
/* 807FE540  C0 43 00 04 */	lfs f2, 4(r3)
/* 807FE544  EC 00 00 B2 */	fmuls f0, f0, f2
/* 807FE548  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807FE54C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807FE550  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 807FE554  EC 20 08 2A */	fadds f1, f0, f1
/* 807FE558  C0 5F 00 6C */	lfs f2, 0x6c(r31)
/* 807FE55C  C0 7F 00 84 */	lfs f3, 0x84(r31)
/* 807FE560  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 807FE564  EC 63 00 32 */	fmuls f3, f3, f0
/* 807FE568  4B A7 14 D4 */	b cLib_addCalc2__FPffff
/* 807FE56C  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 807FE570  C0 3E 04 B0 */	lfs f1, 0x4b0(r30)
/* 807FE574  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807FE578  EC 21 00 2A */	fadds f1, f1, f0
/* 807FE57C  C0 5F 00 6C */	lfs f2, 0x6c(r31)
/* 807FE580  C0 7F 00 84 */	lfs f3, 0x84(r31)
/* 807FE584  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 807FE588  EC 63 00 32 */	fmuls f3, f3, f0
/* 807FE58C  4B A7 14 B0 */	b cLib_addCalc2__FPffff
/* 807FE590  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 807FE594  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 807FE598  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 807FE59C  EC 21 00 28 */	fsubs f1, f1, f0
/* 807FE5A0  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 807FE5A4  C0 7F 00 84 */	lfs f3, 0x84(r31)
/* 807FE5A8  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 807FE5AC  EC 63 00 32 */	fmuls f3, f3, f0
/* 807FE5B0  4B A7 14 8C */	b cLib_addCalc2__FPffff
/* 807FE5B4  38 7E 06 90 */	addi r3, r30, 0x690
/* 807FE5B8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807FE5BC  FC 40 08 90 */	fmr f2, f1
/* 807FE5C0  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 807FE5C4  4B A7 14 78 */	b cLib_addCalc2__FPffff
/* 807FE5C8  A8 1E 06 98 */	lha r0, 0x698(r30)
/* 807FE5CC  2C 00 00 00 */	cmpwi r0, 0
/* 807FE5D0  40 82 00 1C */	bne lbl_807FE5EC
/* 807FE5D4  38 00 00 03 */	li r0, 3
/* 807FE5D8  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 807FE5DC  38 00 00 00 */	li r0, 0
/* 807FE5E0  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 807FE5E4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807FE5E8  D0 1E 08 4C */	stfs f0, 0x84c(r30)
lbl_807FE5EC:
/* 807FE5EC  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 807FE5F0  38 80 40 00 */	li r4, 0x4000
/* 807FE5F4  38 A0 00 04 */	li r5, 4
/* 807FE5F8  38 C0 04 00 */	li r6, 0x400
/* 807FE5FC  4B A7 20 0C */	b cLib_addCalcAngleS2__FPssss
/* 807FE600  38 7E 08 48 */	addi r3, r30, 0x848
/* 807FE604  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 807FE608  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807FE60C  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 807FE610  4B A7 14 2C */	b cLib_addCalc2__FPffff
/* 807FE614  38 7E 06 94 */	addi r3, r30, 0x694
/* 807FE618  3C 80 80 80 */	lis r4, l_HIO@ha
/* 807FE61C  38 84 47 28 */	addi r4, r4, l_HIO@l
/* 807FE620  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 807FE624  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807FE628  C0 7F 00 8C */	lfs f3, 0x8c(r31)
/* 807FE62C  4B A7 14 10 */	b cLib_addCalc2__FPffff
/* 807FE630  38 00 00 01 */	li r0, 1
/* 807FE634  98 1E 0B 18 */	stb r0, 0xb18(r30)
/* 807FE638  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807FE63C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 807FE640  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807FE644  7C 08 03 A6 */	mtlr r0
/* 807FE648  38 21 00 20 */	addi r1, r1, 0x20
/* 807FE64C  4E 80 00 20 */	blr 
