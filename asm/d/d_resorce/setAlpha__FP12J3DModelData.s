lbl_8003A81C:
/* 8003A81C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A820  7C 08 02 A6 */	mflr r0
/* 8003A824  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A828  38 63 00 58 */	addi r3, r3, 0x58
/* 8003A82C  4B FF FB C5 */	bl setAlpha__FP16J3DMaterialTable
/* 8003A830  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A834  7C 08 03 A6 */	mtlr r0
/* 8003A838  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A83C  4E 80 00 20 */	blr 
