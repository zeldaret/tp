lbl_809BD288:
/* 809BD288  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BD28C  7C 08 02 A6 */	mflr r0
/* 809BD290  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BD294  4B FF EB CD */	bl Execute__11daNpc_Gnd_cFv
/* 809BD298  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BD29C  7C 08 03 A6 */	mtlr r0
/* 809BD2A0  38 21 00 10 */	addi r1, r1, 0x10
/* 809BD2A4  4E 80 00 20 */	blr 
