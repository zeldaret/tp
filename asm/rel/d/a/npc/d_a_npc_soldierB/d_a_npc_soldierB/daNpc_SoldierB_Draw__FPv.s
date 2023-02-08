lbl_80AF51C0:
/* 80AF51C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF51C4  7C 08 02 A6 */	mflr r0
/* 80AF51C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF51CC  4B FF E3 F5 */	bl Draw__16daNpc_SoldierB_cFv
/* 80AF51D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF51D4  7C 08 03 A6 */	mtlr r0
/* 80AF51D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF51DC  4E 80 00 20 */	blr 
