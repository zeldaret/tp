lbl_80CDE1A8:
/* 80CDE1A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CDE1AC  7C 08 02 A6 */	mflr r0
/* 80CDE1B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CDE1B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CDE1B8  7C 7F 1B 78 */	mr r31, r3
/* 80CDE1BC  80 03 04 E4 */	lwz r0, 0x4e4(r3)
/* 80CDE1C0  90 01 00 08 */	stw r0, 8(r1)
/* 80CDE1C4  A0 03 04 E8 */	lhz r0, 0x4e8(r3)
/* 80CDE1C8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80CDE1CC  A8 61 00 0A */	lha r3, 0xa(r1)
/* 80CDE1D0  3C 63 00 01 */	addis r3, r3, 1
/* 80CDE1D4  38 03 80 00 */	addi r0, r3, -32768
/* 80CDE1D8  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80CDE1DC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CDE1E0  4B 32 EB 85 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80CDE1E4  38 61 00 08 */	addi r3, r1, 8
/* 80CDE1E8  4B 32 ED 5D */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80CDE1EC  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 80CDE1F0  4B 32 EC 81 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80CDE1F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CDE1F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CDE1FC  80 9F 05 8C */	lwz r4, 0x58c(r31)
/* 80CDE200  38 84 00 24 */	addi r4, r4, 0x24
/* 80CDE204  4B 66 82 AD */	bl PSMTXCopy
/* 80CDE208  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CDE20C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CDE210  7C 08 03 A6 */	mtlr r0
/* 80CDE214  38 21 00 20 */	addi r1, r1, 0x20
/* 80CDE218  4E 80 00 20 */	blr 
