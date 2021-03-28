lbl_800FE5A0:
/* 800FE5A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800FE5A4  7C 08 02 A6 */	mflr r0
/* 800FE5A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 800FE5AC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800FE5B0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800FE5B4  7C 7E 1B 78 */	mr r30, r3
/* 800FE5B8  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 800FE5BC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800FE5C0  3C A0 80 44 */	lis r5, sincosTable___5JMath@ha
/* 800FE5C4  38 A5 9A 20 */	addi r5, r5, sincosTable___5JMath@l
/* 800FE5C8  7C C5 04 2E */	lfsx f6, r5, r0
/* 800FE5CC  7C A5 02 14 */	add r5, r5, r0
/* 800FE5D0  C0 E5 00 04 */	lfs f7, 4(r5)
/* 800FE5D4  2C 04 00 01 */	cmpwi r4, 1
/* 800FE5D8  40 82 00 0C */	bne lbl_800FE5E4
/* 800FE5DC  38 60 00 01 */	li r3, 1
/* 800FE5E0  48 00 00 F0 */	b lbl_800FE6D0
lbl_800FE5E4:
/* 800FE5E4  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 800FE5E8  C0 62 92 E0 */	lfs f3, lit_6845(r2)
/* 800FE5EC  EC 03 01 F2 */	fmuls f0, f3, f7
/* 800FE5F0  EC A1 00 28 */	fsubs f5, f1, f0
/* 800FE5F4  C0 42 93 3C */	lfs f2, lit_7808(r2)
/* 800FE5F8  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 800FE5FC  C0 1E 05 98 */	lfs f0, 0x598(r30)
/* 800FE600  EC 01 00 2A */	fadds f0, f1, f0
/* 800FE604  EC 03 00 2A */	fadds f0, f3, f0
/* 800FE608  EC 82 00 2A */	fadds f4, f2, f0
/* 800FE60C  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 800FE610  EC 03 01 B2 */	fmuls f0, f3, f6
/* 800FE614  EC 41 00 28 */	fsubs f2, f1, f0
/* 800FE618  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 800FE61C  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 800FE620  D0 A1 00 1C */	stfs f5, 0x1c(r1)
/* 800FE624  C0 22 93 B0 */	lfs f1, lit_10039(r2)
/* 800FE628  EC 01 01 B2 */	fmuls f0, f1, f6
/* 800FE62C  EC 02 00 2A */	fadds f0, f2, f0
/* 800FE630  D0 01 00 08 */	stfs f0, 8(r1)
/* 800FE634  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 800FE638  EC 01 01 F2 */	fmuls f0, f1, f7
/* 800FE63C  EC 05 00 2A */	fadds f0, f5, f0
/* 800FE640  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800FE644  38 81 00 14 */	addi r4, r1, 0x14
/* 800FE648  38 A1 00 08 */	addi r5, r1, 8
/* 800FE64C  4B FA 3B 4D */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800FE650  54 7F 06 3F */	clrlwi. r31, r3, 0x18
/* 800FE654  41 82 00 18 */	beq lbl_800FE66C
/* 800FE658  38 7E 1B 5C */	addi r3, r30, 0x1b5c
/* 800FE65C  4B F7 76 B1 */	bl dBgS_CheckBWallPoly__FRC13cBgS_PolyInfo
/* 800FE660  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FE664  40 82 00 08 */	bne lbl_800FE66C
/* 800FE668  3B E0 00 00 */	li r31, 0
lbl_800FE66C:
/* 800FE66C  2C 1F 00 00 */	cmpwi r31, 0
/* 800FE670  41 82 00 18 */	beq lbl_800FE688
/* 800FE674  7F C3 F3 78 */	mr r3, r30
/* 800FE678  38 9E 1B 5C */	addi r4, r30, 0x1b5c
/* 800FE67C  4B FF F9 DD */	bl checkClimbCode__9daAlink_cFR13cBgS_PolyInfo
/* 800FE680  2C 03 00 00 */	cmpwi r3, 0
/* 800FE684  40 82 00 48 */	bne lbl_800FE6CC
lbl_800FE688:
/* 800FE688  7F C3 F3 78 */	mr r3, r30
/* 800FE68C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 800FE690  48 00 05 E1 */	bl checkClimbRoof__9daAlink_cFf
/* 800FE694  2C 03 00 00 */	cmpwi r3, 0
/* 800FE698  40 82 00 24 */	bne lbl_800FE6BC
/* 800FE69C  2C 1F 00 00 */	cmpwi r31, 0
/* 800FE6A0  40 82 00 24 */	bne lbl_800FE6C4
/* 800FE6A4  7F C3 F3 78 */	mr r3, r30
/* 800FE6A8  38 81 00 08 */	addi r4, r1, 8
/* 800FE6AC  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 800FE6B0  48 00 06 A1 */	bl checkClimbGround__9daAlink_cFP4cXyzf
/* 800FE6B4  2C 03 00 00 */	cmpwi r3, 0
/* 800FE6B8  41 82 00 0C */	beq lbl_800FE6C4
lbl_800FE6BC:
/* 800FE6BC  38 60 00 01 */	li r3, 1
/* 800FE6C0  48 00 00 10 */	b lbl_800FE6D0
lbl_800FE6C4:
/* 800FE6C4  38 60 00 00 */	li r3, 0
/* 800FE6C8  48 00 00 08 */	b lbl_800FE6D0
lbl_800FE6CC:
/* 800FE6CC  38 60 00 01 */	li r3, 1
lbl_800FE6D0:
/* 800FE6D0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800FE6D4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800FE6D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800FE6DC  7C 08 03 A6 */	mtlr r0
/* 800FE6E0  38 21 00 30 */	addi r1, r1, 0x30
/* 800FE6E4  4E 80 00 20 */	blr 
