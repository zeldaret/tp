lbl_80BA0ED0:
/* 80BA0ED0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA0ED4  7C 08 02 A6 */	mflr r0
/* 80BA0ED8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA0EDC  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80BA0EE0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80BA0EE4  7D 89 03 A6 */	mtctr r12
/* 80BA0EE8  4E 80 04 21 */	bctrl 
/* 80BA0EEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA0EF0  7C 08 03 A6 */	mtlr r0
/* 80BA0EF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA0EF8  4E 80 00 20 */	blr 
