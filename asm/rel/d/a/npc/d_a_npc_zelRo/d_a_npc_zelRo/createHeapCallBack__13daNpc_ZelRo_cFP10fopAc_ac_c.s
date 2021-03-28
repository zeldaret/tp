lbl_80B728FC:
/* 80B728FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B72900  7C 08 02 A6 */	mflr r0
/* 80B72904  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B72908  4B FF FA 71 */	bl CreateHeap__13daNpc_ZelRo_cFv
/* 80B7290C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B72910  7C 08 03 A6 */	mtlr r0
/* 80B72914  38 21 00 10 */	addi r1, r1, 0x10
/* 80B72918  4E 80 00 20 */	blr 
