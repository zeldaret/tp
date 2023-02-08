lbl_80C6CA20:
/* 80C6CA20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6CA24  7C 08 02 A6 */	mflr r0
/* 80C6CA28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6CA2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6CA30  7C 7F 1B 78 */	mr r31, r3
/* 80C6CA34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C6CA38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C6CA3C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C6CA40  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C6CA44  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C6CA48  4B 6D 9E A1 */	bl PSMTXTrans
/* 80C6CA4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C6CA50  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C6CA54  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80C6CA58  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80C6CA5C  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80C6CA60  4B 39 F8 41 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80C6CA64  80 7F 07 20 */	lwz r3, 0x720(r31)
/* 80C6CA68  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80C6CA6C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C6CA70  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80C6CA74  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C6CA78  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80C6CA7C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C6CA80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C6CA84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C6CA88  80 9F 07 20 */	lwz r4, 0x720(r31)
/* 80C6CA8C  38 84 00 24 */	addi r4, r4, 0x24
/* 80C6CA90  4B 6D 9A 21 */	bl PSMTXCopy
/* 80C6CA94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6CA98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6CA9C  7C 08 03 A6 */	mtlr r0
/* 80C6CAA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6CAA4  4E 80 00 20 */	blr 
