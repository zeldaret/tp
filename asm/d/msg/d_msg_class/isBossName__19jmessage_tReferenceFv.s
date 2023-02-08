lbl_80228ED4:
/* 80228ED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80228ED8  7C 08 02 A6 */	mflr r0
/* 80228EDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80228EE0  80 63 05 C0 */	lwz r3, 0x5c0(r3)
/* 80228EE4  28 03 00 00 */	cmplwi r3, 0
/* 80228EE8  40 82 00 0C */	bne lbl_80228EF4
/* 80228EEC  38 60 00 00 */	li r3, 0
/* 80228EF0  48 00 00 08 */	b lbl_80228EF8
lbl_80228EF4:
/* 80228EF4  48 00 E3 05 */	bl isBossMessage__12dMsgObject_cFv
lbl_80228EF8:
/* 80228EF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80228EFC  7C 08 03 A6 */	mtlr r0
/* 80228F00  38 21 00 10 */	addi r1, r1, 0x10
/* 80228F04  4E 80 00 20 */	blr 
