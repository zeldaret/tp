lbl_8059B88C:
/* 8059B88C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059B890  7C 08 02 A6 */	mflr r0
/* 8059B894  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059B898  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059B89C  7C 7F 1B 78 */	mr r31, r3
/* 8059B8A0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8059B8A4  4B A7 14 C1 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8059B8A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8059B8AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8059B8B0  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8059B8B4  4B A7 0B 81 */	bl mDoMtx_YrotM__FPA4_fs
/* 8059B8B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8059B8BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8059B8C0  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 8059B8C4  38 84 00 24 */	addi r4, r4, 0x24
/* 8059B8C8  4B DA AB E9 */	bl PSMTXCopy
/* 8059B8CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8059B8D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8059B8D4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8059B8D8  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8059B8DC  C0 1F 05 F4 */	lfs f0, 0x5f4(r31)
/* 8059B8E0  EC 42 00 2A */	fadds f2, f2, f0
/* 8059B8E4  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 8059B8E8  4B DA B0 01 */	bl PSMTXTrans
/* 8059B8EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8059B8F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8059B8F4  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8059B8F8  4B A7 0B 3D */	bl mDoMtx_YrotM__FPA4_fs
/* 8059B8FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8059B900  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8059B904  38 9F 05 6C */	addi r4, r31, 0x56c
/* 8059B908  4B DA AB A9 */	bl PSMTXCopy
/* 8059B90C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059B910  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059B914  7C 08 03 A6 */	mtlr r0
/* 8059B918  38 21 00 10 */	addi r1, r1, 0x10
/* 8059B91C  4E 80 00 20 */	blr 
