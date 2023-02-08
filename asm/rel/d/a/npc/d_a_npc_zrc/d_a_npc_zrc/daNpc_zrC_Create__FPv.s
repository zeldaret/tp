lbl_80B9286C:
/* 80B9286C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B92870  7C 08 02 A6 */	mflr r0
/* 80B92874  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B92878  4B FF B7 C5 */	bl create__11daNpc_zrC_cFv
/* 80B9287C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B92880  7C 08 03 A6 */	mtlr r0
/* 80B92884  38 21 00 10 */	addi r1, r1, 0x10
/* 80B92888  4E 80 00 20 */	blr 
