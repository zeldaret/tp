lbl_80AF1D58:
/* 80AF1D58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF1D5C  7C 08 02 A6 */	mflr r0
/* 80AF1D60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF1D64  4B FF DC 3D */	bl create__16daNpc_SoldierA_cFv
/* 80AF1D68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF1D6C  7C 08 03 A6 */	mtlr r0
/* 80AF1D70  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF1D74  4E 80 00 20 */	blr 
