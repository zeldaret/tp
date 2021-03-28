lbl_80C82A0C:
/* 80C82A0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C82A10  7C 08 02 A6 */	mflr r0
/* 80C82A14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C82A18  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80C82A1C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C82A20  7D 89 03 A6 */	mtctr r12
/* 80C82A24  4E 80 04 21 */	bctrl 
/* 80C82A28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C82A2C  7C 08 03 A6 */	mtlr r0
/* 80C82A30  38 21 00 10 */	addi r1, r1, 0x10
/* 80C82A34  4E 80 00 20 */	blr 
