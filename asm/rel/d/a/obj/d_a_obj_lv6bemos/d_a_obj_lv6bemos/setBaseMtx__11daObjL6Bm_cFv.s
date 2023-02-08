lbl_80C7CE60:
/* 80C7CE60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7CE64  7C 08 02 A6 */	mflr r0
/* 80C7CE68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7CE6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7CE70  7C 7F 1B 78 */	mr r31, r3
/* 80C7CE74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7CE78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7CE7C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C7CE80  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C7CE84  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C7CE88  4B 6C 9A 61 */	bl PSMTXTrans
/* 80C7CE8C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7CE90  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7CE94  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80C7CE98  4B 38 F5 9D */	bl mDoMtx_YrotM__FPA4_fs
/* 80C7CE9C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7CEA0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7CEA4  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C7CEA8  38 84 00 24 */	addi r4, r4, 0x24
/* 80C7CEAC  4B 6C 96 05 */	bl PSMTXCopy
/* 80C7CEB0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7CEB4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7CEB8  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80C7CEBC  4B 6C 95 F5 */	bl PSMTXCopy
/* 80C7CEC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7CEC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7CEC8  7C 08 03 A6 */	mtlr r0
/* 80C7CECC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7CED0  4E 80 00 20 */	blr 
