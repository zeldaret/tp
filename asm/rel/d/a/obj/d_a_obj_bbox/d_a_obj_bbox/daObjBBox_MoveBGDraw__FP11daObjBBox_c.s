lbl_80BAD440:
/* 80BAD440  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAD444  7C 08 02 A6 */	mflr r0
/* 80BAD448  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAD44C  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80BAD450  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80BAD454  7D 89 03 A6 */	mtctr r12
/* 80BAD458  4E 80 04 21 */	bctrl 
/* 80BAD45C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAD460  7C 08 03 A6 */	mtlr r0
/* 80BAD464  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAD468  4E 80 00 20 */	blr 
