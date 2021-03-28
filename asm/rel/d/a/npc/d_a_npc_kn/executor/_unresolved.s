lbl_80A2A978:
/* 80A2A978  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A2A97C  7C 08 02 A6 */	mflr r0
/* 80A2A980  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A2A984  4B 83 87 0C */	b ModuleUnresolved
/* 80A2A988  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A2A98C  7C 08 03 A6 */	mtlr r0
/* 80A2A990  38 21 00 10 */	addi r1, r1, 0x10
/* 80A2A994  4E 80 00 20 */	blr 
