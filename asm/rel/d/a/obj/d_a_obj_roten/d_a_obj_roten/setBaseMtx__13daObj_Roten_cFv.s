lbl_80CC0B94:
/* 80CC0B94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC0B98  7C 08 02 A6 */	mflr r0
/* 80CC0B9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC0BA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC0BA4  7C 7F 1B 78 */	mr r31, r3
/* 80CC0BA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CC0BAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CC0BB0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CC0BB4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CC0BB8  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CC0BBC  4B 68 5D 2D */	bl PSMTXTrans
/* 80CC0BC0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CC0BC4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CC0BC8  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80CC0BCC  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80CC0BD0  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80CC0BD4  4B 34 B6 CD */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80CC0BD8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CC0BDC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CC0BE0  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80CC0BE4  38 84 00 24 */	addi r4, r4, 0x24
/* 80CC0BE8  4B 68 58 C9 */	bl PSMTXCopy
/* 80CC0BEC  C0 3F 04 EC */	lfs f1, 0x4ec(r31)
/* 80CC0BF0  C0 5F 04 F0 */	lfs f2, 0x4f0(r31)
/* 80CC0BF4  C0 7F 04 F4 */	lfs f3, 0x4f4(r31)
/* 80CC0BF8  4B 34 C2 41 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80CC0BFC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CC0C00  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CC0C04  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80CC0C08  4B 68 58 A9 */	bl PSMTXCopy
/* 80CC0C0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC0C10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC0C14  7C 08 03 A6 */	mtlr r0
/* 80CC0C18  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC0C1C  4E 80 00 20 */	blr 
