lbl_805C7E88:
/* 805C7E88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C7E8C  7C 08 02 A6 */	mflr r0
/* 805C7E90  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C7E94  48 00 27 DD */	bl Delete__9daB_DRE_cFv
/* 805C7E98  38 60 00 01 */	li r3, 1
/* 805C7E9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C7EA0  7C 08 03 A6 */	mtlr r0
/* 805C7EA4  38 21 00 10 */	addi r1, r1, 0x10
/* 805C7EA8  4E 80 00 20 */	blr 
