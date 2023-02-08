lbl_80B1F010:
/* 80B1F010  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1F014  7C 08 02 A6 */	mflr r0
/* 80B1F018  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1F01C  4B FF FA 45 */	bl CreateHeap__12daNpc_Toby_cFv
/* 80B1F020  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1F024  7C 08 03 A6 */	mtlr r0
/* 80B1F028  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1F02C  4E 80 00 20 */	blr 
