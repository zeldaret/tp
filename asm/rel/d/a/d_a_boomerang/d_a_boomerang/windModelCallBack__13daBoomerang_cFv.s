lbl_8049F280:
/* 8049F280  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049F284  7C 08 02 A6 */	mflr r0
/* 8049F288  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049F28C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049F290  7C 7F 1B 78 */	mr r31, r3
/* 8049F294  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8049F298  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8049F29C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8049F2A0  4B B6 D1 3D */	bl mDoMtx_YrotS__FPA4_fs
/* 8049F2A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8049F2A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8049F2AC  A8 1F 04 E8 */	lha r0, 0x4e8(r31)
/* 8049F2B0  7C 00 00 D0 */	neg r0, r0
/* 8049F2B4  7C 04 07 34 */	extsh r4, r0
/* 8049F2B8  4B B6 D2 15 */	bl mDoMtx_ZrotM__FPA4_fs
/* 8049F2BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8049F2C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8049F2C4  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 8049F2C8  7C 00 00 D0 */	neg r0, r0
/* 8049F2CC  7C 04 07 34 */	extsh r4, r0
/* 8049F2D0  4B B6 D0 CD */	bl mDoMtx_XrotM__FPA4_fs
/* 8049F2D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8049F2D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8049F2DC  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8049F2E0  7C 00 00 D0 */	neg r0, r0
/* 8049F2E4  7C 04 07 34 */	extsh r4, r0
/* 8049F2E8  4B B6 D1 4D */	bl mDoMtx_YrotM__FPA4_fs
/* 8049F2EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8049F2F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8049F2F4  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 8049F2F8  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 8049F2FC  7C 65 1B 78 */	mr r5, r3
/* 8049F300  4B EA 71 E5 */	bl PSMTXConcat
/* 8049F304  3C 60 80 43 */	lis r3, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 8049F308  38 83 4B E4 */	addi r4, r3, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 8049F30C  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8049F310  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8049F314  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8049F318  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8049F31C  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 8049F320  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8049F324  C0 04 00 2C */	lfs f0, 0x2c(r4)
/* 8049F328  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8049F32C  4B EA 71 85 */	bl PSMTXCopy
/* 8049F330  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8049F334  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8049F338  80 9F 05 6C */	lwz r4, 0x56c(r31)
/* 8049F33C  80 84 00 84 */	lwz r4, 0x84(r4)
/* 8049F340  80 84 00 0C */	lwz r4, 0xc(r4)
/* 8049F344  38 84 00 C0 */	addi r4, r4, 0xc0
/* 8049F348  4B EA 71 69 */	bl PSMTXCopy
/* 8049F34C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049F350  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049F354  7C 08 03 A6 */	mtlr r0
/* 8049F358  38 21 00 10 */	addi r1, r1, 0x10
/* 8049F35C  4E 80 00 20 */	blr 
