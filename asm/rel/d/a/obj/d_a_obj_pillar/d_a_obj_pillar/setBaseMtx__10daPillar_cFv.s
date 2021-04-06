lbl_80CAF4B4:
/* 80CAF4B4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CAF4B8  7C 08 02 A6 */	mflr r0
/* 80CAF4BC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CAF4C0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80CAF4C4  7C 7F 1B 78 */	mr r31, r3
/* 80CAF4C8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CAF4CC  4B 35 D8 99 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80CAF4D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CAF4D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CAF4D8  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80CAF4DC  A8 BF 07 2E */	lha r5, 0x72e(r31)
/* 80CAF4E0  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80CAF4E4  4B 35 CD BD */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80CAF4E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CAF4EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CAF4F0  A8 1F 07 2E */	lha r0, 0x72e(r31)
/* 80CAF4F4  7C 00 00 D0 */	neg r0, r0
/* 80CAF4F8  7C 04 07 34 */	extsh r4, r0
/* 80CAF4FC  4B 35 CF 39 */	bl mDoMtx_YrotM__FPA4_fs
/* 80CAF500  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CAF504  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CAF508  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80CAF50C  38 84 00 24 */	addi r4, r4, 0x24
/* 80CAF510  4B 69 6F A1 */	bl PSMTXCopy
/* 80CAF514  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CAF518  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CAF51C  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80CAF520  4B 69 6F 91 */	bl PSMTXCopy
/* 80CAF524  80 1F 07 24 */	lwz r0, 0x724(r31)
/* 80CAF528  28 00 00 00 */	cmplwi r0, 0
/* 80CAF52C  41 82 00 AC */	beq lbl_80CAF5D8
/* 80CAF530  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CAF534  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CAF538  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CAF53C  3C 80 80 CB */	lis r4, lit_3683@ha /* 0x80CB0A78@ha */
/* 80CAF540  C0 44 0A 78 */	lfs f2, lit_3683@l(r4)  /* 0x80CB0A78@l */
/* 80CAF544  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CAF548  EC 42 00 2A */	fadds f2, f2, f0
/* 80CAF54C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CAF550  4B 69 73 99 */	bl PSMTXTrans
/* 80CAF554  A8 1F 07 2E */	lha r0, 0x72e(r31)
/* 80CAF558  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CAF55C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80CAF560  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80CAF564  7C 63 04 2E */	lfsx f3, r3, r0
/* 80CAF568  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CAF56C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CAF570  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80CAF574  3C 80 80 CB */	lis r4, lit_3716@ha /* 0x80CB0A84@ha */
/* 80CAF578  C8 44 0A 84 */	lfd f2, lit_3716@l(r4)  /* 0x80CB0A84@l */
/* 80CAF57C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CAF580  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CAF584  3C 80 43 30 */	lis r4, 0x4330
/* 80CAF588  90 81 00 08 */	stw r4, 8(r1)
/* 80CAF58C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80CAF590  EC 20 10 28 */	fsubs f1, f0, f2
/* 80CAF594  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80CAF598  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CAF59C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAF5A0  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CAF5A4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80CAF5A8  EC 00 10 28 */	fsubs f0, f0, f2
/* 80CAF5AC  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80CAF5B0  EC 01 00 2A */	fadds f0, f1, f0
/* 80CAF5B4  FC 00 00 1E */	fctiwz f0, f0
/* 80CAF5B8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80CAF5BC  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 80CAF5C0  4B 35 CE 75 */	bl mDoMtx_YrotM__FPA4_fs
/* 80CAF5C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CAF5C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CAF5CC  80 9F 07 24 */	lwz r4, 0x724(r31)
/* 80CAF5D0  38 84 00 24 */	addi r4, r4, 0x24
/* 80CAF5D4  4B 69 6E DD */	bl PSMTXCopy
lbl_80CAF5D8:
/* 80CAF5D8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80CAF5DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CAF5E0  7C 08 03 A6 */	mtlr r0
/* 80CAF5E4  38 21 00 30 */	addi r1, r1, 0x30
/* 80CAF5E8  4E 80 00 20 */	blr 
