lbl_80CDC4AC:
/* 80CDC4AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CDC4B0  7C 08 02 A6 */	mflr r0
/* 80CDC4B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CDC4B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CDC4BC  7C 7F 1B 78 */	mr r31, r3
/* 80CDC4C0  3C 60 80 CE */	lis r3, lit_3706@ha /* 0x80CDCBF8@ha */
/* 80CDC4C4  C0 23 CB F8 */	lfs f1, lit_3706@l(r3)  /* 0x80CDCBF8@l */
/* 80CDC4C8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CDC4CC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80CDC4D0  3C 60 80 CE */	lis r3, lit_3888@ha /* 0x80CDCC0C@ha */
/* 80CDC4D4  C0 03 CC 0C */	lfs f0, lit_3888@l(r3)  /* 0x80CDCC0C@l */
/* 80CDC4D8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CDC4DC  88 1F 05 E8 */	lbz r0, 0x5e8(r31)
/* 80CDC4E0  28 00 00 01 */	cmplwi r0, 1
/* 80CDC4E4  40 82 00 10 */	bne lbl_80CDC4F4
/* 80CDC4E8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CDC4EC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80CDC4F0  D0 21 00 10 */	stfs f1, 0x10(r1)
lbl_80CDC4F4:
/* 80CDC4F4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CDC4F8  4B 33 08 6D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80CDC4FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CDC500  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CDC504  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80CDC508  4B 32 FF 2D */	bl mDoMtx_YrotM__FPA4_fs
/* 80CDC50C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CDC510  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CDC514  38 81 00 08 */	addi r4, r1, 8
/* 80CDC518  7C 85 23 78 */	mr r5, r4
/* 80CDC51C  4B 66 A8 51 */	bl PSMTXMultVec
/* 80CDC520  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CDC524  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CDC528  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80CDC52C  38 81 00 08 */	addi r4, r1, 8
/* 80CDC530  4B 36 BE 95 */	bl setGoal__16dEvent_manager_cFP4cXyz
/* 80CDC534  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CDC538  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CDC53C  7C 08 03 A6 */	mtlr r0
/* 80CDC540  38 21 00 20 */	addi r1, r1, 0x20
/* 80CDC544  4E 80 00 20 */	blr 
