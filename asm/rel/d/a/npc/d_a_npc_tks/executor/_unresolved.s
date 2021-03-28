lbl_80B14598:
/* 80B14598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1459C  7C 08 02 A6 */	mflr r0
/* 80B145A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B145A4  4B 74 EA EC */	b ModuleUnresolved
/* 80B145A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B145AC  7C 08 03 A6 */	mtlr r0
/* 80B145B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B145B4  4E 80 00 20 */	blr 
