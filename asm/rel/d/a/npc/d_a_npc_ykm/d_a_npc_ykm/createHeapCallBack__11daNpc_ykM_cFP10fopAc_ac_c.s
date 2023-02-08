lbl_80B541F8:
/* 80B541F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B541FC  7C 08 02 A6 */	mflr r0
/* 80B54200  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B54204  4B FF F7 8D */	bl CreateHeap__11daNpc_ykM_cFv
/* 80B54208  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5420C  7C 08 03 A6 */	mtlr r0
/* 80B54210  38 21 00 10 */	addi r1, r1, 0x10
/* 80B54214  4E 80 00 20 */	blr 
