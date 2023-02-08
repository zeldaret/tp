lbl_80D3F884:
/* 80D3F884  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3F888  7C 08 02 A6 */	mflr r0
/* 80D3F88C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3F890  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3F894  7C 7F 1B 78 */	mr r31, r3
/* 80D3F898  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D3F89C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D3F8A0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D3F8A4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D3F8A8  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D3F8AC  4B 60 70 3D */	bl PSMTXTrans
/* 80D3F8B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D3F8B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D3F8B8  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80D3F8BC  4B 2C CB 79 */	bl mDoMtx_YrotM__FPA4_fs
/* 80D3F8C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D3F8C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D3F8C8  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80D3F8CC  38 84 00 24 */	addi r4, r4, 0x24
/* 80D3F8D0  4B 60 6B E1 */	bl PSMTXCopy
/* 80D3F8D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D3F8D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D3F8DC  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80D3F8E0  4B 60 6B D1 */	bl PSMTXCopy
/* 80D3F8E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3F8E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3F8EC  7C 08 03 A6 */	mtlr r0
/* 80D3F8F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3F8F4  4E 80 00 20 */	blr 
