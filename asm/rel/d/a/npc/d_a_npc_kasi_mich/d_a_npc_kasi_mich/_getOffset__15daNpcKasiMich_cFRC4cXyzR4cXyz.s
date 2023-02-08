lbl_80A295D8:
/* 80A295D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A295DC  7C 08 02 A6 */	mflr r0
/* 80A295E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A295E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A295E8  7C BF 2B 78 */	mr r31, r5
/* 80A295EC  C0 04 00 00 */	lfs f0, 0(r4)
/* 80A295F0  D0 05 00 00 */	stfs f0, 0(r5)
/* 80A295F4  C0 04 00 04 */	lfs f0, 4(r4)
/* 80A295F8  D0 05 00 04 */	stfs f0, 4(r5)
/* 80A295FC  C0 04 00 08 */	lfs f0, 8(r4)
/* 80A29600  D0 05 00 08 */	stfs f0, 8(r5)
/* 80A29604  80 03 04 E4 */	lwz r0, 0x4e4(r3)
/* 80A29608  90 01 00 08 */	stw r0, 8(r1)
/* 80A2960C  A0 03 04 E8 */	lhz r0, 0x4e8(r3)
/* 80A29610  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80A29614  38 61 00 08 */	addi r3, r1, 8
/* 80A29618  4B 5E 38 F5 */	bl ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80A2961C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A29620  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A29624  7F E4 FB 78 */	mr r4, r31
/* 80A29628  7F E5 FB 78 */	mr r5, r31
/* 80A2962C  4B 91 D7 41 */	bl PSMTXMultVec
/* 80A29630  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A29634  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A29638  7C 08 03 A6 */	mtlr r0
/* 80A2963C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A29640  4E 80 00 20 */	blr 
