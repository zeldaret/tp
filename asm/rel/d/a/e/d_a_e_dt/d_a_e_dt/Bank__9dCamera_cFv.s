lbl_806B5C8C:
/* 806B5C8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B5C90  7C 08 02 A6 */	mflr r0
/* 806B5C94  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B5C98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806B5C9C  7C 85 23 78 */	mr r5, r4
/* 806B5CA0  38 85 00 54 */	addi r4, r5, 0x54
/* 806B5CA4  38 A5 06 F8 */	addi r5, r5, 0x6f8
/* 806B5CA8  4B BB B4 CD */	bl __pl__7cSAngleCFRC7cSAngle
/* 806B5CAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806B5CB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B5CB4  7C 08 03 A6 */	mtlr r0
/* 806B5CB8  38 21 00 10 */	addi r1, r1, 0x10
/* 806B5CBC  4E 80 00 20 */	blr 
