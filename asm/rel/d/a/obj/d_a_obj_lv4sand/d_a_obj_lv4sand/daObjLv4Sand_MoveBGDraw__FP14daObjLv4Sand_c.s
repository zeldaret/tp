lbl_80C6A280:
/* 80C6A280  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6A284  7C 08 02 A6 */	mflr r0
/* 80C6A288  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6A28C  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80C6A290  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C6A294  7D 89 03 A6 */	mtctr r12
/* 80C6A298  4E 80 04 21 */	bctrl 
/* 80C6A29C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6A2A0  7C 08 03 A6 */	mtlr r0
/* 80C6A2A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6A2A8  4E 80 00 20 */	blr 
