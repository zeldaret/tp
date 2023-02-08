lbl_80C899D0:
/* 80C899D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C899D4  7C 08 02 A6 */	mflr r0
/* 80C899D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C899DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C899E0  7C 7F 1B 78 */	mr r31, r3
/* 80C899E4  48 00 00 95 */	bl liftReset__10daL8Lift_cFv
/* 80C899E8  38 00 00 08 */	li r0, 8
/* 80C899EC  98 1F 05 E8 */	stb r0, 0x5e8(r31)
/* 80C899F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C899F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C899F8  7C 08 03 A6 */	mtlr r0
/* 80C899FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C89A00  4E 80 00 20 */	blr 
