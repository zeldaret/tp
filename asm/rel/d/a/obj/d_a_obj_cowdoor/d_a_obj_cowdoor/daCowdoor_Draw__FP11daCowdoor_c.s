lbl_80BCCB20:
/* 80BCCB20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCCB24  7C 08 02 A6 */	mflr r0
/* 80BCCB28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCCB2C  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80BCCB30  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80BCCB34  7D 89 03 A6 */	mtctr r12
/* 80BCCB38  4E 80 04 21 */	bctrl 
/* 80BCCB3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCCB40  7C 08 03 A6 */	mtlr r0
/* 80BCCB44  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCCB48  4E 80 00 20 */	blr 
