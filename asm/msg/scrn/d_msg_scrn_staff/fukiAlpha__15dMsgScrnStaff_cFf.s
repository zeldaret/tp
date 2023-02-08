lbl_80246FC0:
/* 80246FC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80246FC4  7C 08 02 A6 */	mflr r0
/* 80246FC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80246FCC  80 63 00 08 */	lwz r3, 8(r3)
/* 80246FD0  48 00 E8 01 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80246FD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80246FD8  7C 08 03 A6 */	mtlr r0
/* 80246FDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80246FE0  4E 80 00 20 */	blr 
