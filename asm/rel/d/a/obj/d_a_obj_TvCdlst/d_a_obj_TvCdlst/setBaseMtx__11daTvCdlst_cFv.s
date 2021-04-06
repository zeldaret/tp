lbl_80B9ED40:
/* 80B9ED40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9ED44  7C 08 02 A6 */	mflr r0
/* 80B9ED48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9ED4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9ED50  7C 7F 1B 78 */	mr r31, r3
/* 80B9ED54  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B9ED58  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B9ED5C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80B9ED60  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80B9ED64  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80B9ED68  4B 7A 7B 81 */	bl PSMTXTrans
/* 80B9ED6C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B9ED70  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B9ED74  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 80B9ED78  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 80B9ED7C  A8 DF 04 E0 */	lha r6, 0x4e0(r31)
/* 80B9ED80  4B 46 D5 21 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80B9ED84  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80B9ED88  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80B9ED8C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B9ED90  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80B9ED94  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80B9ED98  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80B9ED9C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80B9EDA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B9EDA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B9EDA8  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80B9EDAC  38 84 00 24 */	addi r4, r4, 0x24
/* 80B9EDB0  4B 7A 77 01 */	bl PSMTXCopy
/* 80B9EDB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9EDB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9EDBC  7C 08 03 A6 */	mtlr r0
/* 80B9EDC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9EDC4  4E 80 00 20 */	blr 
