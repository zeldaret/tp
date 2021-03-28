lbl_80BEB408:
/* 80BEB408  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEB40C  7C 08 02 A6 */	mflr r0
/* 80BEB410  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEB414  4B FF FE 65 */	bl _delete__15daObjFPillar2_cFv
/* 80BEB418  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEB41C  7C 08 03 A6 */	mtlr r0
/* 80BEB420  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEB424  4E 80 00 20 */	blr 
