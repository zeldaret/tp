lbl_80AB65FC:
/* 80AB65FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB6600  7C 08 02 A6 */	mflr r0
/* 80AB6604  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB6608  4B FF FA B1 */	bl CreateHeap__12daNpc_Raca_cFv
/* 80AB660C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB6610  7C 08 03 A6 */	mtlr r0
/* 80AB6614  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB6618  4E 80 00 20 */	blr 
