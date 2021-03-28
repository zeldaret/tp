lbl_80AAE870:
/* 80AAE870  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AAE874  7C 08 02 A6 */	mflr r0
/* 80AAE878  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AAE87C  4B FF F9 31 */	bl CreateHeap__13daNpc_Pouya_cFv
/* 80AAE880  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AAE884  7C 08 03 A6 */	mtlr r0
/* 80AAE888  38 21 00 10 */	addi r1, r1, 0x10
/* 80AAE88C  4E 80 00 20 */	blr 
