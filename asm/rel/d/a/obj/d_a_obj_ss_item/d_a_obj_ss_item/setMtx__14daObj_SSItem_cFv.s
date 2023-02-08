lbl_80CE7CC4:
/* 80CE7CC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE7CC8  7C 08 02 A6 */	mflr r0
/* 80CE7CCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE7CD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE7CD4  7C 7F 1B 78 */	mr r31, r3
/* 80CE7CD8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CE7CDC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CE7CE0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CE7CE4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CE7CE8  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CE7CEC  4B 65 EB FD */	bl PSMTXTrans
/* 80CE7CF0  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80CE7CF4  4B 32 52 51 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80CE7CF8  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 80CE7CFC  4B 32 51 75 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80CE7D00  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CE7D04  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CE7D08  80 9F 05 80 */	lwz r4, 0x580(r31)
/* 80CE7D0C  38 84 00 24 */	addi r4, r4, 0x24
/* 80CE7D10  4B 65 E7 A1 */	bl PSMTXCopy
/* 80CE7D14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE7D18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE7D1C  7C 08 03 A6 */	mtlr r0
/* 80CE7D20  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE7D24  4E 80 00 20 */	blr 
