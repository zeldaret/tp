lbl_80CAD114:
/* 80CAD114  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAD118  7C 08 02 A6 */	mflr r0
/* 80CAD11C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAD120  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80CAD124  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CAD128  7D 89 03 A6 */	mtctr r12
/* 80CAD12C  4E 80 04 21 */	bctrl 
/* 80CAD130  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAD134  7C 08 03 A6 */	mtlr r0
/* 80CAD138  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAD13C  4E 80 00 20 */	blr 
