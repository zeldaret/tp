lbl_80BB9578:
/* 80BB9578  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB957C  7C 08 02 A6 */	mflr r0
/* 80BB9580  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB9584  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80BB9588  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80BB958C  7D 89 03 A6 */	mtctr r12
/* 80BB9590  4E 80 04 21 */	bctrl 
/* 80BB9594  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB9598  7C 08 03 A6 */	mtlr r0
/* 80BB959C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB95A0  4E 80 00 20 */	blr 
