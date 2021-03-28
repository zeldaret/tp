lbl_80BD5D10:
/* 80BD5D10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD5D14  7C 08 02 A6 */	mflr r0
/* 80BD5D18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD5D1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD5D20  7C 7F 1B 78 */	mr r31, r3
/* 80BD5D24  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BD5D28  4B 43 70 3C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80BD5D2C  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80BD5D30  4B 43 72 14 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BD5D34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BD5D38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BD5D3C  80 9F 05 C0 */	lwz r4, 0x5c0(r31)
/* 80BD5D40  38 84 00 24 */	addi r4, r4, 0x24
/* 80BD5D44  4B 77 07 6C */	b PSMTXCopy
/* 80BD5D48  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BD5D4C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BD5D50  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80BD5D54  4B 77 07 5C */	b PSMTXCopy
/* 80BD5D58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD5D5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD5D60  7C 08 03 A6 */	mtlr r0
/* 80BD5D64  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD5D68  4E 80 00 20 */	blr 
