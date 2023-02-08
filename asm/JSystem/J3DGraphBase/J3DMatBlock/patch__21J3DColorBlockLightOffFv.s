lbl_80318EB4:
/* 80318EB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80318EB8  7C 08 02 A6 */	mflr r0
/* 80318EBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80318EC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80318EC4  7C 7F 1B 78 */	mr r31, r3
/* 80318EC8  81 83 00 00 */	lwz r12, 0(r3)
/* 80318ECC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80318ED0  7D 89 03 A6 */	mtctr r12
/* 80318ED4  4E 80 04 21 */	bctrl 
/* 80318ED8  7F E3 FB 78 */	mr r3, r31
/* 80318EDC  81 9F 00 00 */	lwz r12, 0(r31)
/* 80318EE0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80318EE4  7D 89 03 A6 */	mtctr r12
/* 80318EE8  4E 80 04 21 */	bctrl 
/* 80318EEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80318EF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80318EF4  7C 08 03 A6 */	mtlr r0
/* 80318EF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80318EFC  4E 80 00 20 */	blr 
