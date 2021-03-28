lbl_8015B190:
/* 8015B190  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015B194  7C 08 02 A6 */	mflr r0
/* 8015B198  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015B19C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015B1A0  7C 7F 1B 78 */	mr r31, r3
/* 8015B1A4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8015B1A8  4B EB 1B BD */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8015B1AC  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 8015B1B0  4B EB 1D 95 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8015B1B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015B1B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015B1BC  7C 08 03 A6 */	mtlr r0
/* 8015B1C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8015B1C4  4E 80 00 20 */	blr 
