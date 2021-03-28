lbl_80B9C534:
/* 80B9C534  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9C538  7C 08 02 A6 */	mflr r0
/* 80B9C53C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9C540  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9C544  7C 7F 1B 78 */	mr r31, r3
/* 80B9C548  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B9C54C  4B 47 08 18 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80B9C550  C0 3F 09 58 */	lfs f1, 0x958(r31)
/* 80B9C554  C0 5F 09 5C */	lfs f2, 0x95c(r31)
/* 80B9C558  C0 7F 09 60 */	lfs f3, 0x960(r31)
/* 80B9C55C  4B 47 08 40 */	b transM__14mDoMtx_stack_cFfff
/* 80B9C560  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80B9C564  4B 47 09 E0 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80B9C568  C0 1F 09 58 */	lfs f0, 0x958(r31)
/* 80B9C56C  FC 20 00 50 */	fneg f1, f0
/* 80B9C570  C0 1F 09 5C */	lfs f0, 0x95c(r31)
/* 80B9C574  FC 40 00 50 */	fneg f2, f0
/* 80B9C578  C0 1F 09 60 */	lfs f0, 0x960(r31)
/* 80B9C57C  FC 60 00 50 */	fneg f3, f0
/* 80B9C580  4B 47 08 1C */	b transM__14mDoMtx_stack_cFfff
/* 80B9C584  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B9C588  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B9C58C  80 9F 05 90 */	lwz r4, 0x590(r31)
/* 80B9C590  38 84 00 24 */	addi r4, r4, 0x24
/* 80B9C594  4B 7A 9F 1C */	b PSMTXCopy
/* 80B9C598  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9C59C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9C5A0  7C 08 03 A6 */	mtlr r0
/* 80B9C5A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9C5A8  4E 80 00 20 */	blr 
