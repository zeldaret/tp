lbl_8047E6C8:
/* 8047E6C8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8047E6CC  7C 08 02 A6 */	mflr r0
/* 8047E6D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8047E6D4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8047E6D8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8047E6DC  7C 7F 1B 78 */	mr r31, r3
/* 8047E6E0  80 03 05 AC */	lwz r0, 0x5ac(r3)
/* 8047E6E4  20 00 00 02 */	subfic r0, r0, 2
/* 8047E6E8  7C 00 00 34 */	cntlzw r0, r0
/* 8047E6EC  54 1E D9 7E */	srwi r30, r0, 5
/* 8047E6F0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8047E6F4  4B B8 E6 70 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8047E6F8  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8047E6FC  41 82 00 48 */	beq lbl_8047E744
/* 8047E700  C0 3F 08 CC */	lfs f1, 0x8cc(r31)
/* 8047E704  C0 1F 08 C8 */	lfs f0, 0x8c8(r31)
/* 8047E708  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8047E70C  3C 60 80 48 */	lis r3, lit_3902@ha
/* 8047E710  C0 03 10 FC */	lfs f0, lit_3902@l(r3)
/* 8047E714  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8047E718  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8047E71C  3C 60 80 48 */	lis r3, lit_3687@ha
/* 8047E720  C0 23 10 E8 */	lfs f1, lit_3687@l(r3)
/* 8047E724  C0 5F 08 D8 */	lfs f2, 0x8d8(r31)
/* 8047E728  FC 60 08 90 */	fmr f3, f1
/* 8047E72C  4B B8 E6 70 */	b transM__14mDoMtx_stack_cFfff
/* 8047E730  38 61 00 08 */	addi r3, r1, 8
/* 8047E734  38 81 00 18 */	addi r4, r1, 0x18
/* 8047E738  4B BB 90 50 */	b quat_rotBaseY__5daObjFP10QuaternionRC4cXyz
/* 8047E73C  38 61 00 08 */	addi r3, r1, 8
/* 8047E740  4B B8 E8 3C */	b quatM__14mDoMtx_stack_cFPC10Quaternion
lbl_8047E744:
/* 8047E744  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 8047E748  4B B8 E7 FC */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8047E74C  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8047E750  41 82 00 1C */	beq lbl_8047E76C
/* 8047E754  3C 60 80 48 */	lis r3, lit_3687@ha
/* 8047E758  C0 23 10 E8 */	lfs f1, lit_3687@l(r3)
/* 8047E75C  C0 1F 08 D8 */	lfs f0, 0x8d8(r31)
/* 8047E760  FC 40 00 50 */	fneg f2, f0
/* 8047E764  FC 60 08 90 */	fmr f3, f1
/* 8047E768  4B B8 E6 34 */	b transM__14mDoMtx_stack_cFfff
lbl_8047E76C:
/* 8047E76C  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 8047E770  28 04 00 00 */	cmplwi r4, 0
/* 8047E774  41 82 00 14 */	beq lbl_8047E788
/* 8047E778  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8047E77C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8047E780  38 84 00 24 */	addi r4, r4, 0x24
/* 8047E784  4B EC 7D 2C */	b PSMTXCopy
lbl_8047E788:
/* 8047E788  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8047E78C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8047E790  38 9F 05 6C */	addi r4, r31, 0x56c
/* 8047E794  4B EC 7D 1C */	b PSMTXCopy
/* 8047E798  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8047E79C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8047E7A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8047E7A4  7C 08 03 A6 */	mtlr r0
/* 8047E7A8  38 21 00 30 */	addi r1, r1, 0x30
/* 8047E7AC  4E 80 00 20 */	blr 
