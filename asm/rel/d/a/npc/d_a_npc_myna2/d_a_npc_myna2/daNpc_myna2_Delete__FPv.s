lbl_80A879C0:
/* 80A879C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A879C4  7C 08 02 A6 */	mflr r0
/* 80A879C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A879CC  4B FF CD 15 */	bl Delete__13daNpc_myna2_cFv
/* 80A879D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A879D4  7C 08 03 A6 */	mtlr r0
/* 80A879D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A879DC  4E 80 00 20 */	blr 
