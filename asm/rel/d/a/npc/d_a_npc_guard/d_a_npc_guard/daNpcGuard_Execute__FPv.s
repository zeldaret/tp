lbl_809F2024:
/* 809F2024  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F2028  7C 08 02 A6 */	mflr r0
/* 809F202C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F2030  48 00 00 15 */	bl execute__12daNpcGuard_cFv
/* 809F2034  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F2038  7C 08 03 A6 */	mtlr r0
/* 809F203C  38 21 00 10 */	addi r1, r1, 0x10
/* 809F2040  4E 80 00 20 */	blr 
