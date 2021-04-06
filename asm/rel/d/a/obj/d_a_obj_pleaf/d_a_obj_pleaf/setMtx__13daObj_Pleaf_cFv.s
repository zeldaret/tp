lbl_80CB1684:
/* 80CB1684  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB1688  7C 08 02 A6 */	mflr r0
/* 80CB168C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB1690  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB1694  7C 7F 1B 78 */	mr r31, r3
/* 80CB1698  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CB169C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CB16A0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CB16A4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CB16A8  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CB16AC  4B 69 52 3D */	bl PSMTXTrans
/* 80CB16B0  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80CB16B4  4B 35 B8 91 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80CB16B8  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 80CB16BC  4B 35 B7 B5 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80CB16C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CB16C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CB16C8  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80CB16CC  38 84 00 24 */	addi r4, r4, 0x24
/* 80CB16D0  4B 69 4D E1 */	bl PSMTXCopy
/* 80CB16D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB16D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB16DC  7C 08 03 A6 */	mtlr r0
/* 80CB16E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB16E4  4E 80 00 20 */	blr 
