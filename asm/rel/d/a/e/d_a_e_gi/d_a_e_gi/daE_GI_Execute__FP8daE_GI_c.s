lbl_806D002C:
/* 806D002C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D0030  7C 08 02 A6 */	mflr r0
/* 806D0034  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D0038  4B FF FD BD */	bl execute__8daE_GI_cFv
/* 806D003C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D0040  7C 08 03 A6 */	mtlr r0
/* 806D0044  38 21 00 10 */	addi r1, r1, 0x10
/* 806D0048  4E 80 00 20 */	blr 
