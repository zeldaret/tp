lbl_80B66774:
/* 80B66774  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B66778  7C 08 02 A6 */	mflr r0
/* 80B6677C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B66780  4B FF 89 05 */	bl create__11daNpc_ykW_cFv
/* 80B66784  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B66788  7C 08 03 A6 */	mtlr r0
/* 80B6678C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B66790  4E 80 00 20 */	blr 
