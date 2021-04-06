lbl_80D0E958:
/* 80D0E958  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0E95C  7C 08 02 A6 */	mflr r0
/* 80D0E960  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0E964  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0E968  7C 7F 1B 78 */	mr r31, r3
/* 80D0E96C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D0E970  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D0E974  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D0E978  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D0E97C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D0E980  4B 63 7F 69 */	bl PSMTXTrans
/* 80D0E984  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D0E988  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D0E98C  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80D0E990  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80D0E994  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80D0E998  4B 2F D9 09 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80D0E99C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0E9A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0E9A4  7C 08 03 A6 */	mtlr r0
/* 80D0E9A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0E9AC  4E 80 00 20 */	blr 
