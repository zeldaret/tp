lbl_80B53458:
/* 80B53458  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5345C  7C 08 02 A6 */	mflr r0
/* 80B53460  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B53464  4B 70 FC 2C */	b ModuleUnresolved
/* 80B53468  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5346C  7C 08 03 A6 */	mtlr r0
/* 80B53470  38 21 00 10 */	addi r1, r1, 0x10
/* 80B53474  4E 80 00 20 */	blr 
