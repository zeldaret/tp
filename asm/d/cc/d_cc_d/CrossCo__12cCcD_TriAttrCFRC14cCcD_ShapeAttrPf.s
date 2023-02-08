lbl_80084EBC:
/* 80084EBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80084EC0  7C 08 02 A6 */	mflr r0
/* 80084EC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80084EC8  7C 60 1B 78 */	mr r0, r3
/* 80084ECC  7C 83 23 78 */	mr r3, r4
/* 80084ED0  7C 04 03 78 */	mr r4, r0
/* 80084ED4  81 83 00 1C */	lwz r12, 0x1c(r3)
/* 80084ED8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80084EDC  7D 89 03 A6 */	mtctr r12
/* 80084EE0  4E 80 04 21 */	bctrl 
/* 80084EE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80084EE8  7C 08 03 A6 */	mtlr r0
/* 80084EEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80084EF0  4E 80 00 20 */	blr 
