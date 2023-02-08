lbl_80A6E9FC:
/* 80A6E9FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6EA00  7C 08 02 A6 */	mflr r0
/* 80A6EA04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6EA08  4B FF C2 ED */	bl create__11daNpc_Lud_cFv
/* 80A6EA0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6EA10  7C 08 03 A6 */	mtlr r0
/* 80A6EA14  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6EA18  4E 80 00 20 */	blr 
