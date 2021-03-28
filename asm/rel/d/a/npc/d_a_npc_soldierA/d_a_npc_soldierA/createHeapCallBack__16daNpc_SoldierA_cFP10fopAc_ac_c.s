lbl_80AF0110:
/* 80AF0110  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF0114  7C 08 02 A6 */	mflr r0
/* 80AF0118  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF011C  4B FF FB 65 */	bl CreateHeap__16daNpc_SoldierA_cFv
/* 80AF0120  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF0124  7C 08 03 A6 */	mtlr r0
/* 80AF0128  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF012C  4E 80 00 20 */	blr 
