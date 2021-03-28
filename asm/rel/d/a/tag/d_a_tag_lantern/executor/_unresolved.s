lbl_8048EC18:
/* 8048EC18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048EC1C  7C 08 02 A6 */	mflr r0
/* 8048EC20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048EC24  4B DD 44 6C */	b ModuleUnresolved
/* 8048EC28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048EC2C  7C 08 03 A6 */	mtlr r0
/* 8048EC30  38 21 00 10 */	addi r1, r1, 0x10
/* 8048EC34  4E 80 00 20 */	blr 
