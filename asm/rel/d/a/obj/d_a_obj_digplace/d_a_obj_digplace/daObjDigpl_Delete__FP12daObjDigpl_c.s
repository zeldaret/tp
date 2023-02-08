lbl_8057C1B8:
/* 8057C1B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057C1BC  7C 08 02 A6 */	mflr r0
/* 8057C1C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057C1C4  38 80 FF FF */	li r4, -1
/* 8057C1C8  81 83 05 BC */	lwz r12, 0x5bc(r3)
/* 8057C1CC  81 8C 00 08 */	lwz r12, 8(r12)
/* 8057C1D0  7D 89 03 A6 */	mtctr r12
/* 8057C1D4  4E 80 04 21 */	bctrl 
/* 8057C1D8  38 60 00 01 */	li r3, 1
/* 8057C1DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057C1E0  7C 08 03 A6 */	mtlr r0
/* 8057C1E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8057C1E8  4E 80 00 20 */	blr 
