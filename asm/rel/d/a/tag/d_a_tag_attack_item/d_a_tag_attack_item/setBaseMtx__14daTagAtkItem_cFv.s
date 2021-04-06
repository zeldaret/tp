lbl_805A2958:
/* 805A2958  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A295C  7C 08 02 A6 */	mflr r0
/* 805A2960  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A2964  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A2968  7C 7F 1B 78 */	mr r31, r3
/* 805A296C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805A2970  4B A6 A3 F5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 805A2974  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 805A2978  4B A6 A5 CD */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 805A297C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A2980  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A2984  7C 08 03 A6 */	mtlr r0
/* 805A2988  38 21 00 10 */	addi r1, r1, 0x10
/* 805A298C  4E 80 00 20 */	blr 
