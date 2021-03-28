lbl_80D28B7C:
/* 80D28B7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D28B80  7C 08 02 A6 */	mflr r0
/* 80D28B84  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D28B88  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D28B8C  7C 7F 1B 78 */	mr r31, r3
/* 80D28B90  3C 60 80 D3 */	lis r3, l_midna_wait_offset@ha
/* 80D28B94  C4 03 96 08 */	lfsu f0, l_midna_wait_offset@l(r3)
/* 80D28B98  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D28B9C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80D28BA0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D28BA4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80D28BA8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D28BAC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80D28BB0  4B 2E 41 B4 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80D28BB4  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80D28BB8  4B 2E 43 8C */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80D28BBC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D28BC0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D28BC4  38 81 00 08 */	addi r4, r1, 8
/* 80D28BC8  38 BF 06 28 */	addi r5, r31, 0x628
/* 80D28BCC  4B 61 E1 A0 */	b PSMTXMultVec
/* 80D28BD0  C0 1F 06 28 */	lfs f0, 0x628(r31)
/* 80D28BD4  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80D28BD8  C0 1F 06 2C */	lfs f0, 0x62c(r31)
/* 80D28BDC  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80D28BE0  C0 1F 06 30 */	lfs f0, 0x630(r31)
/* 80D28BE4  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80D28BE8  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 80D28BEC  3C 60 80 D3 */	lis r3, lit_4590@ha
/* 80D28BF0  C0 03 96 84 */	lfs f0, lit_4590@l(r3)
/* 80D28BF4  EC 01 00 2A */	fadds f0, f1, f0
/* 80D28BF8  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80D28BFC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D28C00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D28C04  7C 08 03 A6 */	mtlr r0
/* 80D28C08  38 21 00 20 */	addi r1, r1, 0x20
/* 80D28C0C  4E 80 00 20 */	blr 
