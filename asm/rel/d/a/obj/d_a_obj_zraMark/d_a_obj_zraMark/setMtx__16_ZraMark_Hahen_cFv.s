lbl_80D43864:
/* 80D43864  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D43868  7C 08 02 A6 */	mflr r0
/* 80D4386C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D43870  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D43874  7C 7F 1B 78 */	mr r31, r3
/* 80D43878  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D4387C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D43880  C0 3F 03 8C */	lfs f1, 0x38c(r31)
/* 80D43884  C0 5F 03 90 */	lfs f2, 0x390(r31)
/* 80D43888  C0 7F 03 94 */	lfs f3, 0x394(r31)
/* 80D4388C  4B 60 30 5D */	bl PSMTXTrans
/* 80D43890  38 7F 03 A4 */	addi r3, r31, 0x3a4
/* 80D43894  4B 2C 96 41 */	bl XYZrotM__14mDoMtx_stack_cFRC5csXyz
/* 80D43898  38 7F 03 B0 */	addi r3, r31, 0x3b0
/* 80D4389C  4B 2C 95 D5 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80D438A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D438A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D438A8  80 9F 00 00 */	lwz r4, 0(r31)
/* 80D438AC  38 84 00 24 */	addi r4, r4, 0x24
/* 80D438B0  4B 60 2C 01 */	bl PSMTXCopy
/* 80D438B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D438B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D438BC  7C 08 03 A6 */	mtlr r0
/* 80D438C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D438C4  4E 80 00 20 */	blr 
