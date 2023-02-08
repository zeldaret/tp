lbl_80BB341C:
/* 80BB341C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB3420  7C 08 02 A6 */	mflr r0
/* 80BB3424  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB3428  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80BB342C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80BB3430  7D 89 03 A6 */	mtctr r12
/* 80BB3434  4E 80 04 21 */	bctrl 
/* 80BB3438  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB343C  7C 08 03 A6 */	mtlr r0
/* 80BB3440  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB3444  4E 80 00 20 */	blr 
