lbl_80AB6548:
/* 80AB6548  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB654C  7C 08 02 A6 */	mflr r0
/* 80AB6550  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB6554  4B 69 1F D8 */	b execute__8daNpcT_cFv
/* 80AB6558  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB655C  7C 08 03 A6 */	mtlr r0
/* 80AB6560  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB6564  4E 80 00 20 */	blr 
