lbl_80697F78:
/* 80697F78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80697F7C  7C 08 02 A6 */	mflr r0
/* 80697F80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80697F84  4B BC B1 0C */	b ModuleUnresolved
/* 80697F88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80697F8C  7C 08 03 A6 */	mtlr r0
/* 80697F90  38 21 00 10 */	addi r1, r1, 0x10
/* 80697F94  4E 80 00 20 */	blr 
