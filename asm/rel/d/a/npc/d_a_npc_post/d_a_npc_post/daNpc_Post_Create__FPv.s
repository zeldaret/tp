lbl_80AABE04:
/* 80AABE04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AABE08  7C 08 02 A6 */	mflr r0
/* 80AABE0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AABE10  4B FF CF D9 */	bl create__12daNpc_Post_cFv
/* 80AABE14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AABE18  7C 08 03 A6 */	mtlr r0
/* 80AABE1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AABE20  4E 80 00 20 */	blr 
