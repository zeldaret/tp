lbl_800CE728:
/* 800CE728  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800CE72C  7C 08 02 A6 */	mflr r0
/* 800CE730  90 01 00 54 */	stw r0, 0x54(r1)
/* 800CE734  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 800CE738  93 C1 00 48 */	stw r30, 0x48(r1)
/* 800CE73C  7C 7E 1B 78 */	mr r30, r3
/* 800CE740  7C 9F 23 78 */	mr r31, r4
/* 800CE744  80 03 05 74 */	lwz r0, 0x574(r3)
/* 800CE748  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800CE74C  40 82 00 18 */	bne lbl_800CE764
/* 800CE750  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800CE754  28 00 01 40 */	cmplwi r0, 0x140
/* 800CE758  41 82 00 0C */	beq lbl_800CE764
/* 800CE75C  28 00 00 CB */	cmplwi r0, 0xcb
/* 800CE760  40 82 00 0C */	bne lbl_800CE76C
lbl_800CE764:
/* 800CE764  7F E3 FB 78 */	mr r3, r31
/* 800CE768  48 00 01 20 */	b lbl_800CE888
lbl_800CE76C:
/* 800CE76C  3C 60 80 39 */	lis r3, lit_5908@ha /* 0x80391734@ha */
/* 800CE770  38 83 17 34 */	addi r4, r3, lit_5908@l /* 0x80391734@l */
/* 800CE774  80 64 00 00 */	lwz r3, 0(r4)
/* 800CE778  80 04 00 04 */	lwz r0, 4(r4)
/* 800CE77C  90 61 00 38 */	stw r3, 0x38(r1)
/* 800CE780  90 01 00 3C */	stw r0, 0x3c(r1)
/* 800CE784  80 04 00 08 */	lwz r0, 8(r4)
/* 800CE788  90 01 00 40 */	stw r0, 0x40(r1)
/* 800CE78C  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800CE790  C0 1E 05 98 */	lfs f0, 0x598(r30)
/* 800CE794  EC 01 00 32 */	fmuls f0, f1, f0
/* 800CE798  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 800CE79C  80 7E 06 50 */	lwz r3, 0x650(r30)
/* 800CE7A0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800CE7A4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800CE7A8  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 800CE7AC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800CE7B0  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 800CE7B4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 800CE7B8  C0 03 00 5C */	lfs f0, 0x5c(r3)
/* 800CE7BC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 800CE7C0  7F E0 07 35 */	extsh. r0, r31
/* 800CE7C4  41 80 00 10 */	blt lbl_800CE7D4
/* 800CE7C8  C0 02 92 9C */	lfs f0, lit_5944(r2)
/* 800CE7CC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 800CE7D0  48 00 00 0C */	b lbl_800CE7DC
lbl_800CE7D4:
/* 800CE7D4  C0 02 92 A0 */	lfs f0, lit_5945(r2)
/* 800CE7D8  D0 01 00 40 */	stfs f0, 0x40(r1)
lbl_800CE7DC:
/* 800CE7DC  38 61 00 2C */	addi r3, r1, 0x2c
/* 800CE7E0  4B F3 E5 85 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 800CE7E4  7F C3 F3 78 */	mr r3, r30
/* 800CE7E8  48 01 3C 15 */	bl concatMagneBootMtx__9daAlink_cFv
/* 800CE7EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800CE7F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800CE7F4  7F E4 FB 78 */	mr r4, r31
/* 800CE7F8  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 800CE7FC  38 C0 00 00 */	li r6, 0
/* 800CE800  4B F3 DA A1 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 800CE804  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800CE808  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800CE80C  38 81 00 38 */	addi r4, r1, 0x38
/* 800CE810  38 A1 00 20 */	addi r5, r1, 0x20
/* 800CE814  48 27 85 59 */	bl PSMTXMultVec
/* 800CE818  7F C3 F3 78 */	mr r3, r30
/* 800CE81C  38 81 00 2C */	addi r4, r1, 0x2c
/* 800CE820  38 A1 00 20 */	addi r5, r1, 0x20
/* 800CE824  4B FD 39 75 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800CE828  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800CE82C  41 82 00 58 */	beq lbl_800CE884
/* 800CE830  38 61 00 08 */	addi r3, r1, 8
/* 800CE834  38 81 00 20 */	addi r4, r1, 0x20
/* 800CE838  38 BE 1B 78 */	addi r5, r30, 0x1b78
/* 800CE83C  48 19 82 F9 */	bl __mi__4cXyzCFRC3Vec
/* 800CE840  C0 01 00 08 */	lfs f0, 8(r1)
/* 800CE844  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800CE848  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800CE84C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800CE850  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800CE854  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800CE858  7F C3 F3 78 */	mr r3, r30
/* 800CE85C  38 81 00 14 */	addi r4, r1, 0x14
/* 800CE860  48 01 3C 1D */	bl multVecMagneBootInvMtx__9daAlink_cFP4cXyz
/* 800CE864  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 800CE868  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 800CE86C  EC 01 00 28 */	fsubs f0, f1, f0
/* 800CE870  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 800CE874  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 800CE878  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800CE87C  EC 01 00 28 */	fsubs f0, f1, f0
/* 800CE880  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
lbl_800CE884:
/* 800CE884  7F E3 FB 78 */	mr r3, r31
lbl_800CE888:
/* 800CE888  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 800CE88C  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 800CE890  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800CE894  7C 08 03 A6 */	mtlr r0
/* 800CE898  38 21 00 50 */	addi r1, r1, 0x50
/* 800CE89C  4E 80 00 20 */	blr 
