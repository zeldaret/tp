lbl_80D2B7A8:
/* 80D2B7A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2B7AC  7C 08 02 A6 */	mflr r0
/* 80D2B7B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2B7B4  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80D2B7B8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80D2B7BC  7D 89 03 A6 */	mtctr r12
/* 80D2B7C0  4E 80 04 21 */	bctrl 
/* 80D2B7C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2B7C8  7C 08 03 A6 */	mtlr r0
/* 80D2B7CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2B7D0  4E 80 00 20 */	blr 
