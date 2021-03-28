lbl_80D3A2A4:
/* 80D3A2A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3A2A8  7C 08 02 A6 */	mflr r0
/* 80D3A2AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3A2B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3A2B4  7C 7F 1B 78 */	mr r31, r3
/* 80D3A2B8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80D3A2BC  4B 2D 2A A8 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80D3A2C0  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80D3A2C4  4B 2D 2C 80 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80D3A2C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D3A2CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D3A2D0  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80D3A2D4  38 84 00 24 */	addi r4, r4, 0x24
/* 80D3A2D8  4B 60 C1 D8 */	b PSMTXCopy
/* 80D3A2DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3A2E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3A2E4  7C 08 03 A6 */	mtlr r0
/* 80D3A2E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3A2EC  4E 80 00 20 */	blr 
