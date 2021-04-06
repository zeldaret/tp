lbl_809AB4D8:
/* 809AB4D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AB4DC  7C 08 02 A6 */	mflr r0
/* 809AB4E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AB4E4  4B 7A 6B 31 */	bl execute__8daNpcF_cFv
/* 809AB4E8  38 60 00 01 */	li r3, 1
/* 809AB4EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AB4F0  7C 08 03 A6 */	mtlr r0
/* 809AB4F4  38 21 00 10 */	addi r1, r1, 0x10
/* 809AB4F8  4E 80 00 20 */	blr 
