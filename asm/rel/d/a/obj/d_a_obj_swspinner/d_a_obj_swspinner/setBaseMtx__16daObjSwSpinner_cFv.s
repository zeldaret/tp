lbl_80D001CC:
/* 80D001CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D001D0  7C 08 02 A6 */	mflr r0
/* 80D001D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D001D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D001DC  7C 7F 1B 78 */	mr r31, r3
/* 80D001E0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80D001E4  4B 30 CB 81 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80D001E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D001EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D001F0  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80D001F4  4B 30 C2 41 */	bl mDoMtx_YrotM__FPA4_fs
/* 80D001F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D001FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D00200  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80D00204  38 84 00 24 */	addi r4, r4, 0x24
/* 80D00208  4B 64 62 A9 */	bl PSMTXCopy
/* 80D0020C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D00210  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D00214  38 9F 05 B4 */	addi r4, r31, 0x5b4
/* 80D00218  4B 64 62 99 */	bl PSMTXCopy
/* 80D0021C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D00220  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D00224  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D00228  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D0022C  C0 1F 05 E4 */	lfs f0, 0x5e4(r31)
/* 80D00230  EC 42 00 2A */	fadds f2, f2, f0
/* 80D00234  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D00238  4B 64 66 B1 */	bl PSMTXTrans
/* 80D0023C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D00240  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D00244  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80D00248  4B 30 C1 ED */	bl mDoMtx_YrotM__FPA4_fs
/* 80D0024C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D00250  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D00254  80 9F 05 AC */	lwz r4, 0x5ac(r31)
/* 80D00258  38 84 00 24 */	addi r4, r4, 0x24
/* 80D0025C  4B 64 62 55 */	bl PSMTXCopy
/* 80D00260  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D00264  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D00268  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80D0026C  4B 64 62 45 */	bl PSMTXCopy
/* 80D00270  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D00274  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D00278  7C 08 03 A6 */	mtlr r0
/* 80D0027C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D00280  4E 80 00 20 */	blr 
