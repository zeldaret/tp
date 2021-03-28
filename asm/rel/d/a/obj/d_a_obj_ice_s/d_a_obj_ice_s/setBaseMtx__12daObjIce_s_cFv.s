lbl_80C20EEC:
/* 80C20EEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C20EF0  7C 08 02 A6 */	mflr r0
/* 80C20EF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C20EF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C20EFC  7C 7F 1B 78 */	mr r31, r3
/* 80C20F00  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C20F04  4B 3E BE 60 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80C20F08  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80C20F0C  4B 3E C0 38 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C20F10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C20F14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C20F18  80 9F 06 34 */	lwz r4, 0x634(r31)
/* 80C20F1C  38 84 00 24 */	addi r4, r4, 0x24
/* 80C20F20  4B 72 55 90 */	b PSMTXCopy
/* 80C20F24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C20F28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C20F2C  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80C20F30  4B 72 55 80 */	b PSMTXCopy
/* 80C20F34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C20F38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C20F3C  7C 08 03 A6 */	mtlr r0
/* 80C20F40  38 21 00 10 */	addi r1, r1, 0x10
/* 80C20F44  4E 80 00 20 */	blr 
