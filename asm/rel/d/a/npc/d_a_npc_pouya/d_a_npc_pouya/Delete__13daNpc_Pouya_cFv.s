lbl_80AAE788:
/* 80AAE788  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AAE78C  7C 08 02 A6 */	mflr r0
/* 80AAE790  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AAE794  38 80 FF FF */	li r4, -1
/* 80AAE798  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80AAE79C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80AAE7A0  7D 89 03 A6 */	mtctr r12
/* 80AAE7A4  4E 80 04 21 */	bctrl 
/* 80AAE7A8  38 60 00 01 */	li r3, 1
/* 80AAE7AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AAE7B0  7C 08 03 A6 */	mtlr r0
/* 80AAE7B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AAE7B8  4E 80 00 20 */	blr 
