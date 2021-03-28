lbl_8066B650:
/* 8066B650  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8066B654  7C 08 02 A6 */	mflr r0
/* 8066B658  90 01 00 24 */	stw r0, 0x24(r1)
/* 8066B65C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8066B660  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8066B664  7C 7E 1B 78 */	mr r30, r3
/* 8066B668  3C 60 80 67 */	lis r3, lit_3662@ha
/* 8066B66C  3B E3 ED E8 */	addi r31, r3, lit_3662@l
/* 8066B670  38 00 00 01 */	li r0, 1
/* 8066B674  98 1E 06 16 */	stb r0, 0x616(r30)
/* 8066B678  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 8066B67C  D0 1E 06 48 */	stfs f0, 0x648(r30)
/* 8066B680  A8 1E 05 F6 */	lha r0, 0x5f6(r30)
/* 8066B684  2C 00 00 01 */	cmpwi r0, 1
/* 8066B688  41 82 00 44 */	beq lbl_8066B6CC
/* 8066B68C  40 80 00 40 */	bge lbl_8066B6CC
/* 8066B690  2C 00 00 00 */	cmpwi r0, 0
/* 8066B694  40 80 00 08 */	bge lbl_8066B69C
/* 8066B698  48 00 00 34 */	b lbl_8066B6CC
lbl_8066B69C:
/* 8066B69C  C0 3F 01 44 */	lfs f1, 0x144(r31)
/* 8066B6A0  4B BF C2 B4 */	b cM_rndF__Ff
/* 8066B6A4  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 8066B6A8  EC 40 08 2A */	fadds f2, f0, f1
/* 8066B6AC  7F C3 F3 78 */	mr r3, r30
/* 8066B6B0  38 80 00 13 */	li r4, 0x13
/* 8066B6B4  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8066B6B8  38 A0 00 02 */	li r5, 2
/* 8066B6BC  4B FF C6 ED */	bl anm_init__FP8do_classifUcf
/* 8066B6C0  A8 7E 05 F6 */	lha r3, 0x5f6(r30)
/* 8066B6C4  38 03 00 01 */	addi r0, r3, 1
/* 8066B6C8  B0 1E 05 F6 */	sth r0, 0x5f6(r30)
lbl_8066B6CC:
/* 8066B6CC  3C 60 80 67 */	lis r3, l_HIO@ha
/* 8066B6D0  38 63 F2 C4 */	addi r3, r3, l_HIO@l
/* 8066B6D4  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 8066B6D8  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8066B6DC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8066B6E0  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 8066B6E4  EC 60 00 72 */	fmuls f3, f0, f1
/* 8066B6E8  4B C0 43 54 */	b cLib_addCalc2__FPffff
/* 8066B6EC  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8066B6F0  A8 9E 05 CC */	lha r4, 0x5cc(r30)
/* 8066B6F4  38 A0 00 10 */	li r5, 0x10
/* 8066B6F8  38 C0 01 00 */	li r6, 0x100
/* 8066B6FC  4B C0 4F 0C */	b cLib_addCalcAngleS2__FPssss
/* 8066B700  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8066B704  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8066B708  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 8066B70C  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 8066B710  C0 3E 06 5C */	lfs f1, 0x65c(r30)
/* 8066B714  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 8066B718  EC 21 00 28 */	fsubs f1, f1, f0
/* 8066B71C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8066B720  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 8066B724  4B C0 43 18 */	b cLib_addCalc2__FPffff
/* 8066B728  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 8066B72C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8066B730  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 8066B734  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8066B738  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 8066B73C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8066B740  C0 1E 06 5C */	lfs f0, 0x65c(r30)
/* 8066B744  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8066B748  38 7E 0B CC */	addi r3, r30, 0xbcc
/* 8066B74C  38 81 00 08 */	addi r4, r1, 8
/* 8066B750  C0 3F 01 4C */	lfs f1, 0x14c(r31)
/* 8066B754  C0 5F 00 C8 */	lfs f2, 0xc8(r31)
/* 8066B758  4B 9B 19 B4 */	b fopAcM_effHamonSet__FPUlPC4cXyzff
/* 8066B75C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8066B760  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8066B764  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8066B768  7C 08 03 A6 */	mtlr r0
/* 8066B76C  38 21 00 20 */	addi r1, r1, 0x20
/* 8066B770  4E 80 00 20 */	blr 
