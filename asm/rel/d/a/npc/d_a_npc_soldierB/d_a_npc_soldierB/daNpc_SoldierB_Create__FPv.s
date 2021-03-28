lbl_80AF5160:
/* 80AF5160  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF5164  7C 08 02 A6 */	mflr r0
/* 80AF5168  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF516C  4B FF DF 55 */	bl create__16daNpc_SoldierB_cFv
/* 80AF5170  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF5174  7C 08 03 A6 */	mtlr r0
/* 80AF5178  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF517C  4E 80 00 20 */	blr 
