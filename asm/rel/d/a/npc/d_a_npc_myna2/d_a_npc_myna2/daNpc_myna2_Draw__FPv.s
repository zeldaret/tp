lbl_80A87A00:
/* 80A87A00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A87A04  7C 08 02 A6 */	mflr r0
/* 80A87A08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A87A0C  4B FF CD 29 */	bl Draw__13daNpc_myna2_cFv
/* 80A87A10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A87A14  7C 08 03 A6 */	mtlr r0
/* 80A87A18  38 21 00 10 */	addi r1, r1, 0x10
/* 80A87A1C  4E 80 00 20 */	blr 
