lbl_80AC8424:
/* 80AC8424  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC8428  7C 08 02 A6 */	mflr r0
/* 80AC842C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC8430  4B FF F5 51 */	bl Delete__12daNpc_seiC_cFv
/* 80AC8434  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC8438  7C 08 03 A6 */	mtlr r0
/* 80AC843C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC8440  4E 80 00 20 */	blr 
