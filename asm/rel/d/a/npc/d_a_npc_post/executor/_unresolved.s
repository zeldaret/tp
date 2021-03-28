lbl_80AA8BF8:
/* 80AA8BF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA8BFC  7C 08 02 A6 */	mflr r0
/* 80AA8C00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA8C04  4B 7B A4 8C */	b ModuleUnresolved
/* 80AA8C08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA8C0C  7C 08 03 A6 */	mtlr r0
/* 80AA8C10  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA8C14  4E 80 00 20 */	blr 
