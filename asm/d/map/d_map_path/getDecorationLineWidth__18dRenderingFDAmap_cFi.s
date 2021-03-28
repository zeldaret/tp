lbl_8003D6B8:
/* 8003D6B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003D6BC  7C 08 02 A6 */	mflr r0
/* 8003D6C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003D6C4  81 83 00 00 */	lwz r12, 0(r3)
/* 8003D6C8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8003D6CC  7D 89 03 A6 */	mtctr r12
/* 8003D6D0  4E 80 04 21 */	bctrl 
/* 8003D6D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003D6D8  7C 08 03 A6 */	mtlr r0
/* 8003D6DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8003D6E0  4E 80 00 20 */	blr 
