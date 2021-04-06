lbl_80AB3644:
/* 80AB3644  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB3648  7C 08 02 A6 */	mflr r0
/* 80AB364C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB3650  4B 69 E9 C5 */	bl execute__8daNpcF_cFv
/* 80AB3654  38 60 00 01 */	li r3, 1
/* 80AB3658  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB365C  7C 08 03 A6 */	mtlr r0
/* 80AB3660  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB3664  4E 80 00 20 */	blr 
