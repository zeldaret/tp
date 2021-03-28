lbl_80BE7EC4:
/* 80BE7EC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE7EC8  7C 08 02 A6 */	mflr r0
/* 80BE7ECC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE7ED0  4B FF FB 69 */	bl Execute__12daFireWood_cFv
/* 80BE7ED4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE7ED8  7C 08 03 A6 */	mtlr r0
/* 80BE7EDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE7EE0  4E 80 00 20 */	blr 
