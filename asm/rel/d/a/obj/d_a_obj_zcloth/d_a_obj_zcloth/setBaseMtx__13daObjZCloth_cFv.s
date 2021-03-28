lbl_80D3EE54:
/* 80D3EE54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3EE58  7C 08 02 A6 */	mflr r0
/* 80D3EE5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3EE60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3EE64  7C 7F 1B 78 */	mr r31, r3
/* 80D3EE68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D3EE6C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D3EE70  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D3EE74  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D3EE78  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D3EE7C  4B 60 7A 6C */	b PSMTXTrans
/* 80D3EE80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D3EE84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D3EE88  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80D3EE8C  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80D3EE90  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80D3EE94  4B 2C D4 0C */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80D3EE98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D3EE9C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D3EEA0  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80D3EEA4  38 84 00 24 */	addi r4, r4, 0x24
/* 80D3EEA8  4B 60 76 08 */	b PSMTXCopy
/* 80D3EEAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3EEB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3EEB4  7C 08 03 A6 */	mtlr r0
/* 80D3EEB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3EEBC  4E 80 00 20 */	blr 
