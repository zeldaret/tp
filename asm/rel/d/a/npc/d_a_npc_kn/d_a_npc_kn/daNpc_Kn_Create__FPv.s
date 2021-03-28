lbl_80A38450:
/* 80A38450  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A38454  7C 08 02 A6 */	mflr r0
/* 80A38458  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A3845C  4B FF 2B 79 */	bl create__10daNpc_Kn_cFv
/* 80A38460  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A38464  7C 08 03 A6 */	mtlr r0
/* 80A38468  38 21 00 10 */	addi r1, r1, 0x10
/* 80A3846C  4E 80 00 20 */	blr 
