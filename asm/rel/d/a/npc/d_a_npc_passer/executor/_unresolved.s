lbl_80AA2BF8:
/* 80AA2BF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA2BFC  7C 08 02 A6 */	mflr r0
/* 80AA2C00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA2C04  4B 7C 04 8C */	b ModuleUnresolved
/* 80AA2C08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA2C0C  7C 08 03 A6 */	mtlr r0
/* 80AA2C10  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA2C14  4E 80 00 20 */	blr 
