lbl_80BE5D4C:
/* 80BE5D4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE5D50  7C 08 02 A6 */	mflr r0
/* 80BE5D54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE5D58  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80BE5D5C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80BE5D60  7D 89 03 A6 */	mtctr r12
/* 80BE5D64  4E 80 04 21 */	bctrl 
/* 80BE5D68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE5D6C  7C 08 03 A6 */	mtlr r0
/* 80BE5D70  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE5D74  4E 80 00 20 */	blr 
