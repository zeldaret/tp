lbl_80CEC9FC:
/* 80CEC9FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CECA00  7C 08 02 A6 */	mflr r0
/* 80CECA04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CECA08  4B FF FF 41 */	bl _delete__12daObjStone_cFv
/* 80CECA0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CECA10  7C 08 03 A6 */	mtlr r0
/* 80CECA14  38 21 00 10 */	addi r1, r1, 0x10
/* 80CECA18  4E 80 00 20 */	blr 
