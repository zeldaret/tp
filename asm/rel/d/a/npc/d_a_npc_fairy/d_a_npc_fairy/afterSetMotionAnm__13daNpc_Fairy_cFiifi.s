lbl_809B2E78:
/* 809B2E78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B2E7C  7C 08 02 A6 */	mflr r0
/* 809B2E80  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B2E84  88 03 0F F7 */	lbz r0, 0xff7(r3)
/* 809B2E88  28 00 00 00 */	cmplwi r0, 0
/* 809B2E8C  40 82 00 0C */	bne lbl_809B2E98
/* 809B2E90  38 60 00 01 */	li r3, 1
/* 809B2E94  48 00 00 58 */	b lbl_809B2EEC
lbl_809B2E98:
/* 809B2E98  2C 04 00 08 */	cmpwi r4, 8
/* 809B2E9C  41 82 00 28 */	beq lbl_809B2EC4
/* 809B2EA0  40 80 00 10 */	bge lbl_809B2EB0
/* 809B2EA4  2C 04 00 03 */	cmpwi r4, 3
/* 809B2EA8  40 80 00 14 */	bge lbl_809B2EBC
/* 809B2EAC  48 00 00 28 */	b lbl_809B2ED4
lbl_809B2EB0:
/* 809B2EB0  2C 04 00 0A */	cmpwi r4, 0xa
/* 809B2EB4  40 80 00 20 */	bge lbl_809B2ED4
/* 809B2EB8  48 00 00 14 */	b lbl_809B2ECC
lbl_809B2EBC:
/* 809B2EBC  38 80 00 02 */	li r4, 2
/* 809B2EC0  48 00 00 18 */	b lbl_809B2ED8
lbl_809B2EC4:
/* 809B2EC4  38 80 00 04 */	li r4, 4
/* 809B2EC8  48 00 00 10 */	b lbl_809B2ED8
lbl_809B2ECC:
/* 809B2ECC  38 80 00 05 */	li r4, 5
/* 809B2ED0  48 00 00 08 */	b lbl_809B2ED8
lbl_809B2ED4:
/* 809B2ED4  38 80 00 03 */	li r4, 3
lbl_809B2ED8:
/* 809B2ED8  38 63 0F F8 */	addi r3, r3, 0xff8
/* 809B2EDC  4B FF EE 09 */	bl setAnm__16_Fairy_Feather_cFi
/* 809B2EE0  30 03 FF FF */	addic r0, r3, -1
/* 809B2EE4  7C 00 19 10 */	subfe r0, r0, r3
/* 809B2EE8  54 03 06 3E */	clrlwi r3, r0, 0x18
lbl_809B2EEC:
/* 809B2EEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B2EF0  7C 08 03 A6 */	mtlr r0
/* 809B2EF4  38 21 00 10 */	addi r1, r1, 0x10
/* 809B2EF8  4E 80 00 20 */	blr 
