lbl_80D3B9D4:
/* 80D3B9D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3B9D8  7C 08 02 A6 */	mflr r0
/* 80D3B9DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3B9E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3B9E4  7C 7F 1B 78 */	mr r31, r3
/* 80D3B9E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D3B9EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D3B9F0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D3B9F4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D3B9F8  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D3B9FC  4B 60 AE ED */	bl PSMTXTrans
/* 80D3BA00  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D3BA04  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D3BA08  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80D3BA0C  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80D3BA10  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80D3BA14  4B 2D 08 8D */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80D3BA18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D3BA1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D3BA20  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80D3BA24  38 84 00 24 */	addi r4, r4, 0x24
/* 80D3BA28  4B 60 AA 89 */	bl PSMTXCopy
/* 80D3BA2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3BA30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3BA34  7C 08 03 A6 */	mtlr r0
/* 80D3BA38  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3BA3C  4E 80 00 20 */	blr 
