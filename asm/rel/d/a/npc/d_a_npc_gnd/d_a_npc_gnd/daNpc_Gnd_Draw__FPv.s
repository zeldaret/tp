lbl_809BD2A8:
/* 809BD2A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BD2AC  7C 08 02 A6 */	mflr r0
/* 809BD2B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BD2B4  4B FF EB CD */	bl Draw__11daNpc_Gnd_cFv
/* 809BD2B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BD2BC  7C 08 03 A6 */	mtlr r0
/* 809BD2C0  38 21 00 10 */	addi r1, r1, 0x10
/* 809BD2C4  4E 80 00 20 */	blr 
