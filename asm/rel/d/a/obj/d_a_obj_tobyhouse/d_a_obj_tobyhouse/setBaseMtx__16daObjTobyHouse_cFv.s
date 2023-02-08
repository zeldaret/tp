lbl_80D15F48:
/* 80D15F48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D15F4C  7C 08 02 A6 */	mflr r0
/* 80D15F50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D15F54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D15F58  7C 7F 1B 78 */	mr r31, r3
/* 80D15F5C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D15F60  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D15F64  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D15F68  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D15F6C  C0 1F 05 E8 */	lfs f0, 0x5e8(r31)
/* 80D15F70  EC 42 00 2A */	fadds f2, f2, f0
/* 80D15F74  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D15F78  4B 63 09 71 */	bl PSMTXTrans
/* 80D15F7C  38 7F 04 B4 */	addi r3, r31, 0x4b4
/* 80D15F80  4B 2F 6F C5 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80D15F84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D15F88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D15F8C  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80D15F90  38 84 00 24 */	addi r4, r4, 0x24
/* 80D15F94  4B 63 05 1D */	bl PSMTXCopy
/* 80D15F98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D15F9C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D15FA0  80 9F 05 AC */	lwz r4, 0x5ac(r31)
/* 80D15FA4  38 84 00 24 */	addi r4, r4, 0x24
/* 80D15FA8  4B 63 05 09 */	bl PSMTXCopy
/* 80D15FAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D15FB0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D15FB4  A8 9F 05 E0 */	lha r4, 0x5e0(r31)
/* 80D15FB8  4B 2F 64 7D */	bl mDoMtx_YrotM__FPA4_fs
/* 80D15FBC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D15FC0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D15FC4  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80D15FC8  4B 63 04 E9 */	bl PSMTXCopy
/* 80D15FCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D15FD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D15FD4  7C 08 03 A6 */	mtlr r0
/* 80D15FD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D15FDC  4E 80 00 20 */	blr 
