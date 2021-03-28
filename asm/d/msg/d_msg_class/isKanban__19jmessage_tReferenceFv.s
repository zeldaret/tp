lbl_80228E6C:
/* 80228E6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80228E70  7C 08 02 A6 */	mflr r0
/* 80228E74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80228E78  80 63 05 C0 */	lwz r3, 0x5c0(r3)
/* 80228E7C  28 03 00 00 */	cmplwi r3, 0
/* 80228E80  40 82 00 0C */	bne lbl_80228E8C
/* 80228E84  38 60 00 00 */	li r3, 0
/* 80228E88  48 00 00 08 */	b lbl_80228E90
lbl_80228E8C:
/* 80228E8C  48 00 E2 31 */	bl isKanbanMessage__12dMsgObject_cFv
lbl_80228E90:
/* 80228E90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80228E94  7C 08 03 A6 */	mtlr r0
/* 80228E98  38 21 00 10 */	addi r1, r1, 0x10
/* 80228E9C  4E 80 00 20 */	blr 
