lbl_80CAE6C4:
/* 80CAE6C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAE6C8  7C 08 02 A6 */	mflr r0
/* 80CAE6CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAE6D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CAE6D4  93 C1 00 08 */	stw r30, 8(r1)
/* 80CAE6D8  7C 7E 1B 78 */	mr r30, r3
/* 80CAE6DC  7C BF 2B 78 */	mr r31, r5
/* 80CAE6E0  1C 04 00 0C */	mulli r0, r4, 0xc
/* 80CAE6E4  3C 60 80 CB */	lis r3, l_LINE_OFFSET_POS@ha
/* 80CAE6E8  38 63 F0 EC */	addi r3, r3, l_LINE_OFFSET_POS@l
/* 80CAE6EC  7C 03 04 2E */	lfsx f0, r3, r0
/* 80CAE6F0  D0 05 00 00 */	stfs f0, 0(r5)
/* 80CAE6F4  7C 63 02 14 */	add r3, r3, r0
/* 80CAE6F8  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CAE6FC  D0 05 00 04 */	stfs f0, 4(r5)
/* 80CAE700  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CAE704  D0 05 00 08 */	stfs f0, 8(r5)
/* 80CAE708  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80CAE70C  4B 35 E6 58 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80CAE710  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80CAE714  4B 35 E8 30 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80CAE718  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CAE71C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CAE720  7F E4 FB 78 */	mr r4, r31
/* 80CAE724  7F E5 FB 78 */	mr r5, r31
/* 80CAE728  4B 69 86 44 */	b PSMTXMultVec
/* 80CAE72C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CAE730  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CAE734  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAE738  7C 08 03 A6 */	mtlr r0
/* 80CAE73C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAE740  4E 80 00 20 */	blr 
