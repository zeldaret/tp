lbl_80AF51A0:
/* 80AF51A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF51A4  7C 08 02 A6 */	mflr r0
/* 80AF51A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF51AC  4B FF E3 F5 */	bl Execute__16daNpc_SoldierB_cFv
/* 80AF51B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF51B4  7C 08 03 A6 */	mtlr r0
/* 80AF51B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF51BC  4E 80 00 20 */	blr 
