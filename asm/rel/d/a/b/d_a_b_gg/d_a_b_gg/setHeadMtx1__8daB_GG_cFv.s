lbl_805EBB30:
/* 805EBB30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EBB34  7C 08 02 A6 */	mflr r0
/* 805EBB38  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EBB3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EBB40  7C 7F 1B 78 */	mr r31, r3
/* 805EBB44  38 7F 06 94 */	addi r3, r31, 0x694
/* 805EBB48  4B A2 12 1C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 805EBB4C  38 7F 06 A0 */	addi r3, r31, 0x6a0
/* 805EBB50  4B A2 13 F4 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 805EBB54  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805EBB58  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805EBB5C  80 9F 0E 3C */	lwz r4, 0xe3c(r31)
/* 805EBB60  38 84 00 24 */	addi r4, r4, 0x24
/* 805EBB64  4B D5 A9 4C */	b PSMTXCopy
/* 805EBB68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805EBB6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EBB70  7C 08 03 A6 */	mtlr r0
/* 805EBB74  38 21 00 10 */	addi r1, r1, 0x10
/* 805EBB78  4E 80 00 20 */	blr 
