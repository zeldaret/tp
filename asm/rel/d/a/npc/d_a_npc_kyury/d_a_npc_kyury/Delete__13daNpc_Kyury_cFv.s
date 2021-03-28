lbl_80A609A8:
/* 80A609A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A609AC  7C 08 02 A6 */	mflr r0
/* 80A609B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A609B4  38 80 FF FF */	li r4, -1
/* 80A609B8  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80A609BC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80A609C0  7D 89 03 A6 */	mtctr r12
/* 80A609C4  4E 80 04 21 */	bctrl 
/* 80A609C8  38 60 00 01 */	li r3, 1
/* 80A609CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A609D0  7C 08 03 A6 */	mtlr r0
/* 80A609D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A609D8  4E 80 00 20 */	blr 
