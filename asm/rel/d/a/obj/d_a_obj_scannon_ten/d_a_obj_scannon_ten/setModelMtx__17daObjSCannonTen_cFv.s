lbl_80CCC53C:
/* 80CCC53C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCC540  7C 08 02 A6 */	mflr r0
/* 80CCC544  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCC548  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCC54C  7C 7F 1B 78 */	mr r31, r3
/* 80CCC550  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CCC554  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CCC558  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CCC55C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CCC560  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CCC564  4B 67 A3 85 */	bl PSMTXTrans
/* 80CCC568  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CCC56C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CCC570  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80CCC574  4B 33 FE C1 */	bl mDoMtx_YrotM__FPA4_fs
/* 80CCC578  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CCC57C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CCC580  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80CCC584  38 84 00 24 */	addi r4, r4, 0x24
/* 80CCC588  4B 67 9F 29 */	bl PSMTXCopy
/* 80CCC58C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCC590  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCC594  7C 08 03 A6 */	mtlr r0
/* 80CCC598  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCC59C  4E 80 00 20 */	blr 
