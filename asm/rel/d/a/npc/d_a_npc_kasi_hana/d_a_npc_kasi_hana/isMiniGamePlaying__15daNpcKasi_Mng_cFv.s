lbl_80A1BB9C:
/* 80A1BB9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A1BBA0  7C 08 02 A6 */	mflr r0
/* 80A1BBA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A1BBA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A1BBAC  3B E0 00 00 */	li r31, 0
/* 80A1BBB0  38 63 00 18 */	addi r3, r3, 0x18
/* 80A1BBB4  4B 73 4B 38 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A1BBB8  28 03 00 00 */	cmplwi r3, 0
/* 80A1BBBC  41 82 00 0C */	beq lbl_80A1BBC8
/* 80A1BBC0  8B E3 0E 08 */	lbz r31, 0xe08(r3)
/* 80A1BBC4  7F FF 07 74 */	extsb r31, r31
lbl_80A1BBC8:
/* 80A1BBC8  7F E3 FB 78 */	mr r3, r31
/* 80A1BBCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A1BBD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A1BBD4  7C 08 03 A6 */	mtlr r0
/* 80A1BBD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A1BBDC  4E 80 00 20 */	blr 
