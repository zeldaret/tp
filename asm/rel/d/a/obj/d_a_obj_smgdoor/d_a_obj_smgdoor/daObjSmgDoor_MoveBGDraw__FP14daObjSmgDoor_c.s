lbl_80CDCBA4:
/* 80CDCBA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDCBA8  7C 08 02 A6 */	mflr r0
/* 80CDCBAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDCBB0  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80CDCBB4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CDCBB8  7D 89 03 A6 */	mtctr r12
/* 80CDCBBC  4E 80 04 21 */	bctrl 
/* 80CDCBC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDCBC4  7C 08 03 A6 */	mtlr r0
/* 80CDCBC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDCBCC  4E 80 00 20 */	blr 
