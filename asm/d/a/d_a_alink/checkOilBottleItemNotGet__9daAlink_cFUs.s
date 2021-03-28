lbl_8010E584:
/* 8010E584  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010E588  7C 08 02 A6 */	mflr r0
/* 8010E58C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010E590  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010E594  3B E0 00 00 */	li r31, 0
/* 8010E598  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 8010E59C  28 00 00 B6 */	cmplwi r0, 0xb6
/* 8010E5A0  41 82 00 20 */	beq lbl_8010E5C0
/* 8010E5A4  28 00 00 B5 */	cmplwi r0, 0xb5
/* 8010E5A8  41 82 00 18 */	beq lbl_8010E5C0
/* 8010E5AC  54 83 04 3E */	clrlwi r3, r4, 0x10
/* 8010E5B0  48 05 05 91 */	bl checkOilBottleItem__9daPy_py_cFi
/* 8010E5B4  2C 03 00 00 */	cmpwi r3, 0
/* 8010E5B8  41 82 00 08 */	beq lbl_8010E5C0
/* 8010E5BC  3B E0 00 01 */	li r31, 1
lbl_8010E5C0:
/* 8010E5C0  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8010E5C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010E5C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010E5CC  7C 08 03 A6 */	mtlr r0
/* 8010E5D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8010E5D4  4E 80 00 20 */	blr 
