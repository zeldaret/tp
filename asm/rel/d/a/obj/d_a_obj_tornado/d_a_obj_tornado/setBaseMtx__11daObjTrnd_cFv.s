lbl_80D1BE24:
/* 80D1BE24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1BE28  7C 08 02 A6 */	mflr r0
/* 80D1BE2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1BE30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1BE34  7C 7F 1B 78 */	mr r31, r3
/* 80D1BE38  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80D1BE3C  4B 2F 0F 28 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80D1BE40  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80D1BE44  4B 2F 11 00 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80D1BE48  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D1BE4C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D1BE50  38 9F 07 08 */	addi r4, r31, 0x708
/* 80D1BE54  4B 62 A6 5C */	b PSMTXCopy
/* 80D1BE58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1BE5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1BE60  7C 08 03 A6 */	mtlr r0
/* 80D1BE64  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1BE68  4E 80 00 20 */	blr 
