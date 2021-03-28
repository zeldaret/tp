lbl_80D4F46C:
/* 80D4F46C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4F470  7C 08 02 A6 */	mflr r0
/* 80D4F474  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4F478  4B FF FF CD */	bl _delete__11daSwLBall_cFv
/* 80D4F47C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4F480  7C 08 03 A6 */	mtlr r0
/* 80D4F484  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4F488  4E 80 00 20 */	blr 
