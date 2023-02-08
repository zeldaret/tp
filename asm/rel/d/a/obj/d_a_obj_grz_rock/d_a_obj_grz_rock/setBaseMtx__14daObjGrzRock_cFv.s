lbl_80C14BD8:
/* 80C14BD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C14BDC  7C 08 02 A6 */	mflr r0
/* 80C14BE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C14BE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C14BE8  7C 7F 1B 78 */	mr r31, r3
/* 80C14BEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C14BF0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C14BF4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C14BF8  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C14BFC  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C14C00  4B 73 1C E9 */	bl PSMTXTrans
/* 80C14C04  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C14C08  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C14C0C  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80C14C10  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80C14C14  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80C14C18  4B 3F 76 89 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80C14C1C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C14C20  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C14C24  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C14C28  38 84 00 24 */	addi r4, r4, 0x24
/* 80C14C2C  4B 73 18 85 */	bl PSMTXCopy
/* 80C14C30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C14C34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C14C38  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80C14C3C  4B 73 18 75 */	bl PSMTXCopy
/* 80C14C40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C14C44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C14C48  7C 08 03 A6 */	mtlr r0
/* 80C14C4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C14C50  4E 80 00 20 */	blr 
