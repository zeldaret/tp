lbl_80BCF998:
/* 80BCF998  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCF99C  7C 08 02 A6 */	mflr r0
/* 80BCF9A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCF9A4  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80BCF9A8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80BCF9AC  7D 89 03 A6 */	mtctr r12
/* 80BCF9B0  4E 80 04 21 */	bctrl 
/* 80BCF9B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCF9B8  7C 08 03 A6 */	mtlr r0
/* 80BCF9BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCF9C0  4E 80 00 20 */	blr 
