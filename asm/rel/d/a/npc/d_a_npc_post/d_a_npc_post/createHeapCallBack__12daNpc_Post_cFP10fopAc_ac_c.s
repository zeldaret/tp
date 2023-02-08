lbl_80AA971C:
/* 80AA971C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA9720  7C 08 02 A6 */	mflr r0
/* 80AA9724  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA9728  4B FF F9 89 */	bl CreateHeap__12daNpc_Post_cFv
/* 80AA972C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA9730  7C 08 03 A6 */	mtlr r0
/* 80AA9734  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA9738  4E 80 00 20 */	blr 
