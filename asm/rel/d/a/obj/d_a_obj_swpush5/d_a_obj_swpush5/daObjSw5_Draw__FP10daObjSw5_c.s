lbl_8059C5CC:
/* 8059C5CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059C5D0  7C 08 02 A6 */	mflr r0
/* 8059C5D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059C5D8  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 8059C5DC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8059C5E0  7D 89 03 A6 */	mtctr r12
/* 8059C5E4  4E 80 04 21 */	bctrl 
/* 8059C5E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059C5EC  7C 08 03 A6 */	mtlr r0
/* 8059C5F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8059C5F4  4E 80 00 20 */	blr 
