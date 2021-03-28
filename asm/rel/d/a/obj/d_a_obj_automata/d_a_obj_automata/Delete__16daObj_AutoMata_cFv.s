lbl_80BA60A0:
/* 80BA60A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA60A4  7C 08 02 A6 */	mflr r0
/* 80BA60A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA60AC  38 80 FF FF */	li r4, -1
/* 80BA60B0  81 83 0B 34 */	lwz r12, 0xb34(r3)
/* 80BA60B4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80BA60B8  7D 89 03 A6 */	mtctr r12
/* 80BA60BC  4E 80 04 21 */	bctrl 
/* 80BA60C0  38 60 00 01 */	li r3, 1
/* 80BA60C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA60C8  7C 08 03 A6 */	mtlr r0
/* 80BA60CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA60D0  4E 80 00 20 */	blr 
