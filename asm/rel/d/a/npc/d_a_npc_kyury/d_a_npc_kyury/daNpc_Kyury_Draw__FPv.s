lbl_80A625D0:
/* 80A625D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A625D4  7C 08 02 A6 */	mflr r0
/* 80A625D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A625DC  4B FF E4 21 */	bl Draw__13daNpc_Kyury_cFv
/* 80A625E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A625E4  7C 08 03 A6 */	mtlr r0
/* 80A625E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A625EC  4E 80 00 20 */	blr 
