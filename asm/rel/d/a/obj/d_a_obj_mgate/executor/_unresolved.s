lbl_80593598:
/* 80593598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059359C  7C 08 02 A6 */	mflr r0
/* 805935A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805935A4  4B CC FA EC */	b ModuleUnresolved
/* 805935A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805935AC  7C 08 03 A6 */	mtlr r0
/* 805935B0  38 21 00 10 */	addi r1, r1, 0x10
/* 805935B4  4E 80 00 20 */	blr 
