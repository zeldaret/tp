lbl_80D5A818:
/* 80D5A818  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5A81C  7C 08 02 A6 */	mflr r0
/* 80D5A820  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5A824  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5A828  7C 7F 1B 78 */	mr r31, r3
/* 80D5A82C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D5A830  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D5A834  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D5A838  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D5A83C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D5A840  4B 5E C0 A8 */	b PSMTXTrans
/* 80D5A844  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D5A848  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D5A84C  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80D5A850  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80D5A854  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80D5A858  4B 2B 1A 48 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80D5A85C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5A860  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5A864  7C 08 03 A6 */	mtlr r0
/* 80D5A868  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5A86C  4E 80 00 20 */	blr 
