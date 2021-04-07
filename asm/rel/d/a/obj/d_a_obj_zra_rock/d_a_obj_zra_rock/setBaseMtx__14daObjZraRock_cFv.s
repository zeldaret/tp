lbl_80D44D3C:
/* 80D44D3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D44D40  7C 08 02 A6 */	mflr r0
/* 80D44D44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D44D48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D44D4C  7C 7F 1B 78 */	mr r31, r3
/* 80D44D50  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D44D54  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D44D58  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D44D5C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D44D60  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D44D64  4B 60 1B 85 */	bl PSMTXTrans
/* 80D44D68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D44D6C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D44D70  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80D44D74  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80D44D78  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80D44D7C  4B 2C 75 25 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80D44D80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D44D84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D44D88  80 9F 05 AC */	lwz r4, 0x5ac(r31)
/* 80D44D8C  38 84 00 24 */	addi r4, r4, 0x24
/* 80D44D90  4B 60 17 21 */	bl PSMTXCopy
/* 80D44D94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D44D98  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D44D9C  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80D44DA0  38 84 00 24 */	addi r4, r4, 0x24
/* 80D44DA4  4B 60 17 0D */	bl PSMTXCopy
/* 80D44DA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D44DAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D44DB0  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80D44DB4  4B 60 16 FD */	bl PSMTXCopy
/* 80D44DB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D44DBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D44DC0  7C 08 03 A6 */	mtlr r0
/* 80D44DC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D44DC8  4E 80 00 20 */	blr 
