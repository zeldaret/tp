lbl_800CFF4C:
/* 800CFF4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800CFF50  7C 08 02 A6 */	mflr r0
/* 800CFF54  90 01 00 14 */	stw r0, 0x14(r1)
/* 800CFF58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800CFF5C  93 C1 00 08 */	stw r30, 8(r1)
/* 800CFF60  83 E3 27 E0 */	lwz r31, 0x27e0(r3)
/* 800CFF64  3B C0 00 01 */	li r30, 1
/* 800CFF68  7F E3 FB 78 */	mr r3, r31
/* 800CFF6C  4B FA 38 79 */	bl LockonTruth__12dAttention_cFv
/* 800CFF70  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800CFF74  40 82 00 14 */	bne lbl_800CFF88
/* 800CFF78  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 800CFF7C  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800CFF80  40 82 00 08 */	bne lbl_800CFF88
/* 800CFF84  3B C0 00 00 */	li r30, 0
lbl_800CFF88:
/* 800CFF88  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 800CFF8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800CFF90  83 C1 00 08 */	lwz r30, 8(r1)
/* 800CFF94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800CFF98  7C 08 03 A6 */	mtlr r0
/* 800CFF9C  38 21 00 10 */	addi r1, r1, 0x10
/* 800CFFA0  4E 80 00 20 */	blr 
