lbl_80B1C408:
/* 80B1C408  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1C40C  7C 08 02 A6 */	mflr r0
/* 80B1C410  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1C414  4B FF 8F F9 */	bl Execute__10daNpcTks_cFv
/* 80B1C418  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1C41C  7C 08 03 A6 */	mtlr r0
/* 80B1C420  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1C424  4E 80 00 20 */	blr 
