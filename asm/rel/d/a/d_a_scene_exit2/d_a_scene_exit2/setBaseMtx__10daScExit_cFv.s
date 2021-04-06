lbl_8059E178:
/* 8059E178  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059E17C  7C 08 02 A6 */	mflr r0
/* 8059E180  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059E184  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059E188  7C 7F 1B 78 */	mr r31, r3
/* 8059E18C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8059E190  4B A6 EB D5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8059E194  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 8059E198  4B A6 ED AD */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8059E19C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059E1A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059E1A4  7C 08 03 A6 */	mtlr r0
/* 8059E1A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8059E1AC  4E 80 00 20 */	blr 
