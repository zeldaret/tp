lbl_80A97BF8:
/* 80A97BF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A97BFC  7C 08 02 A6 */	mflr r0
/* 80A97C00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A97C04  4B 7C B4 8C */	b ModuleUnresolved
/* 80A97C08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A97C0C  7C 08 03 A6 */	mtlr r0
/* 80A97C10  38 21 00 10 */	addi r1, r1, 0x10
/* 80A97C14  4E 80 00 20 */	blr 
