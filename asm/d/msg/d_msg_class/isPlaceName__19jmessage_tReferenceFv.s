lbl_80228EA0:
/* 80228EA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80228EA4  7C 08 02 A6 */	mflr r0
/* 80228EA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80228EAC  80 63 05 C0 */	lwz r3, 0x5c0(r3)
/* 80228EB0  28 03 00 00 */	cmplwi r3, 0
/* 80228EB4  40 82 00 0C */	bne lbl_80228EC0
/* 80228EB8  38 60 00 00 */	li r3, 0
/* 80228EBC  48 00 00 08 */	b lbl_80228EC4
lbl_80228EC0:
/* 80228EC0  48 00 E3 25 */	bl isPlaceMessage__12dMsgObject_cFv
lbl_80228EC4:
/* 80228EC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80228EC8  7C 08 03 A6 */	mtlr r0
/* 80228ECC  38 21 00 10 */	addi r1, r1, 0x10
/* 80228ED0  4E 80 00 20 */	blr 
