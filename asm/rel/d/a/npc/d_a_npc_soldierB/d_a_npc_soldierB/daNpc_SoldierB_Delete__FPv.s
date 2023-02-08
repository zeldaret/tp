lbl_80AF5180:
/* 80AF5180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF5184  7C 08 02 A6 */	mflr r0
/* 80AF5188  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF518C  4B FF E3 E1 */	bl Delete__16daNpc_SoldierB_cFv
/* 80AF5190  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF5194  7C 08 03 A6 */	mtlr r0
/* 80AF5198  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF519C  4E 80 00 20 */	blr 
