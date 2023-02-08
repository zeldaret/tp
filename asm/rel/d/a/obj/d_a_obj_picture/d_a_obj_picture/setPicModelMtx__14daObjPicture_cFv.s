lbl_80CAE5B0:
/* 80CAE5B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAE5B4  7C 08 02 A6 */	mflr r0
/* 80CAE5B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAE5BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CAE5C0  7C 7F 1B 78 */	mr r31, r3
/* 80CAE5C4  88 03 0D 26 */	lbz r0, 0xd26(r3)
/* 80CAE5C8  28 00 00 00 */	cmplwi r0, 0
/* 80CAE5CC  40 82 00 58 */	bne lbl_80CAE624
/* 80CAE5D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CAE5D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CAE5D8  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CAE5DC  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CAE5E0  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CAE5E4  4B 69 83 05 */	bl PSMTXTrans
/* 80CAE5E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CAE5EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CAE5F0  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80CAE5F4  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80CAE5F8  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80CAE5FC  4B 35 DC A5 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80CAE600  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CAE604  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CAE608  38 9F 0C F4 */	addi r4, r31, 0xcf4
/* 80CAE60C  4B 69 7E A5 */	bl PSMTXCopy
/* 80CAE610  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CAE614  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CAE618  80 9F 0C B4 */	lwz r4, 0xcb4(r31)
/* 80CAE61C  38 84 00 24 */	addi r4, r4, 0x24
/* 80CAE620  4B 69 7E 91 */	bl PSMTXCopy
lbl_80CAE624:
/* 80CAE624  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CAE628  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAE62C  7C 08 03 A6 */	mtlr r0
/* 80CAE630  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAE634  4E 80 00 20 */	blr 
