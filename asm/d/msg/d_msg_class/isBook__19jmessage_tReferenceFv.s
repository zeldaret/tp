lbl_80228F3C:
/* 80228F3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80228F40  7C 08 02 A6 */	mflr r0
/* 80228F44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80228F48  80 63 05 C0 */	lwz r3, 0x5c0(r3)
/* 80228F4C  28 03 00 00 */	cmplwi r3, 0
/* 80228F50  40 82 00 0C */	bne lbl_80228F5C
/* 80228F54  38 60 00 00 */	li r3, 0
/* 80228F58  48 00 00 08 */	b lbl_80228F60
lbl_80228F5C:
/* 80228F5C  48 00 E2 B1 */	bl isBookMessage__12dMsgObject_cFv
lbl_80228F60:
/* 80228F60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80228F64  7C 08 03 A6 */	mtlr r0
/* 80228F68  38 21 00 10 */	addi r1, r1, 0x10
/* 80228F6C  4E 80 00 20 */	blr 
