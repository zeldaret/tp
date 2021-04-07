lbl_80467694:
/* 80467694  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80467698  7C 08 02 A6 */	mflr r0
/* 8046769C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804676A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804676A4  7C 7F 1B 78 */	mr r31, r3
/* 804676A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804676AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804676B0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 804676B4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 804676B8  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 804676BC  4B ED F2 2D */	bl PSMTXTrans
/* 804676C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804676C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804676C8  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 804676CC  4B BA 4D 69 */	bl mDoMtx_YrotM__FPA4_fs
/* 804676D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804676D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804676D8  80 9F 05 B0 */	lwz r4, 0x5b0(r31)
/* 804676DC  38 84 00 24 */	addi r4, r4, 0x24
/* 804676E0  4B ED ED D1 */	bl PSMTXCopy
/* 804676E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804676E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804676EC  38 9F 05 6C */	addi r4, r31, 0x56c
/* 804676F0  4B ED ED C1 */	bl PSMTXCopy
/* 804676F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804676F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804676FC  7C 08 03 A6 */	mtlr r0
/* 80467700  38 21 00 10 */	addi r1, r1, 0x10
/* 80467704  4E 80 00 20 */	blr 
