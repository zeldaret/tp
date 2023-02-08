lbl_80C6BB60:
/* 80C6BB60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6BB64  7C 08 02 A6 */	mflr r0
/* 80C6BB68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6BB6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6BB70  93 C1 00 08 */	stw r30, 8(r1)
/* 80C6BB74  7C 7E 1B 78 */	mr r30, r3
/* 80C6BB78  7C 9F 23 78 */	mr r31, r4
/* 80C6BB7C  48 00 00 49 */	bl procMain__11daIceWall_cFv
/* 80C6BB80  88 1E 08 65 */	lbz r0, 0x865(r30)
/* 80C6BB84  54 00 10 3A */	slwi r0, r0, 2
/* 80C6BB88  7C 7E 02 14 */	add r3, r30, r0
/* 80C6BB8C  80 63 08 5C */	lwz r3, 0x85c(r3)
/* 80C6BB90  38 03 00 24 */	addi r0, r3, 0x24
/* 80C6BB94  90 1F 00 00 */	stw r0, 0(r31)
/* 80C6BB98  7F C3 F3 78 */	mr r3, r30
/* 80C6BB9C  4B FF F9 81 */	bl setBaseMtx__11daIceWall_cFv
/* 80C6BBA0  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80C6BBA4  4B 41 7C 8D */	bl Move__10dCcD_GSttsFv
/* 80C6BBA8  38 60 00 01 */	li r3, 1
/* 80C6BBAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6BBB0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C6BBB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6BBB8  7C 08 03 A6 */	mtlr r0
/* 80C6BBBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6BBC0  4E 80 00 20 */	blr 
