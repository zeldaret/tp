lbl_80D4E914:
/* 80D4E914  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4E918  7C 08 02 A6 */	mflr r0
/* 80D4E91C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4E920  4B FF FB 75 */	bl execute__10daSwBall_cFv
/* 80D4E924  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4E928  7C 08 03 A6 */	mtlr r0
/* 80D4E92C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4E930  4E 80 00 20 */	blr 
