lbl_8096D7B8:
/* 8096D7B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8096D7BC  7C 08 02 A6 */	mflr r0
/* 8096D7C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8096D7C4  38 80 FF FF */	li r4, -1
/* 8096D7C8  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 8096D7CC  81 8C 00 08 */	lwz r12, 8(r12)
/* 8096D7D0  7D 89 03 A6 */	mtctr r12
/* 8096D7D4  4E 80 04 21 */	bctrl 
/* 8096D7D8  38 60 00 01 */	li r3, 1
/* 8096D7DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8096D7E0  7C 08 03 A6 */	mtlr r0
/* 8096D7E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8096D7E8  4E 80 00 20 */	blr 
