lbl_80336600:
/* 80336600  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80336604  7C 08 02 A6 */	mflr r0
/* 80336608  90 01 00 14 */	stw r0, 0x14(r1)
/* 8033660C  7C 83 23 78 */	mr r3, r4
/* 80336610  7C A4 2B 78 */	mr r4, r5
/* 80336614  4B FF 86 15 */	bl init__25J3DMtxCalcJ3DSysInitBasicFRC3VecRA3_A4_Cf
/* 80336618  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033661C  7C 08 03 A6 */	mtlr r0
/* 80336620  38 21 00 10 */	addi r1, r1, 0x10
/* 80336624  4E 80 00 20 */	blr 
