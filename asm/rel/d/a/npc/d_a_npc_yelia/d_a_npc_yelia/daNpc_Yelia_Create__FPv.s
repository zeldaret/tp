lbl_80B50EE0:
/* 80B50EE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B50EE4  7C 08 02 A6 */	mflr r0
/* 80B50EE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B50EEC  4B FF C5 6D */	bl create__13daNpc_Yelia_cFv
/* 80B50EF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B50EF4  7C 08 03 A6 */	mtlr r0
/* 80B50EF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B50EFC  4E 80 00 20 */	blr 
