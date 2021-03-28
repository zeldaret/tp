lbl_80BB52F8:
/* 80BB52F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB52FC  7C 08 02 A6 */	mflr r0
/* 80BB5300  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB5304  4B 6A DD 8C */	b ModuleUnresolved
/* 80BB5308  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB530C  7C 08 03 A6 */	mtlr r0
/* 80BB5310  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB5314  4E 80 00 20 */	blr 
