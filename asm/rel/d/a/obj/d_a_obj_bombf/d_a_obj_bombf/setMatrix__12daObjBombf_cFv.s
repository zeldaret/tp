lbl_80BBAC4C:
/* 80BBAC4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBAC50  7C 08 02 A6 */	mflr r0
/* 80BBAC54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBAC58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BBAC5C  7C 7F 1B 78 */	mr r31, r3
/* 80BBAC60  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BBAC64  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BBAC68  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80BBAC6C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80BBAC70  C0 1F 05 84 */	lfs f0, 0x584(r31)
/* 80BBAC74  EC 42 00 2A */	fadds f2, f2, f0
/* 80BBAC78  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80BBAC7C  4B 78 BC 6D */	bl PSMTXTrans
/* 80BBAC80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BBAC84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BBAC88  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80BBAC8C  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80BBAC90  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80BBAC94  4B 45 16 0D */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80BBAC98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BBAC9C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BBACA0  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80BBACA4  38 84 00 24 */	addi r4, r4, 0x24
/* 80BBACA8  4B 78 B8 09 */	bl PSMTXCopy
/* 80BBACAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BBACB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBACB4  7C 08 03 A6 */	mtlr r0
/* 80BBACB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBACBC  4E 80 00 20 */	blr 
