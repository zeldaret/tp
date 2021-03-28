lbl_8030BFF0:
/* 8030BFF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8030BFF4  7C 08 02 A6 */	mflr r0
/* 8030BFF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8030BFFC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8030C000  7C 7F 1B 78 */	mr r31, r3
/* 8030C004  80 03 00 30 */	lwz r0, 0x30(r3)
/* 8030C008  28 00 00 00 */	cmplwi r0, 0
/* 8030C00C  40 82 00 0C */	bne lbl_8030C018
/* 8030C010  38 60 00 00 */	li r3, 0
/* 8030C014  48 00 00 20 */	b lbl_8030C034
lbl_8030C018:
/* 8030C018  38 A1 00 08 */	addi r5, r1, 8
/* 8030C01C  4B FF FE CD */	bl getTexNo__16J2DAnmTexPatternCFUsPUs
/* 8030C020  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 8030C024  A0 01 00 08 */	lhz r0, 8(r1)
/* 8030C028  54 00 18 38 */	slwi r0, r0, 3
/* 8030C02C  7C 63 02 14 */	add r3, r3, r0
/* 8030C030  80 63 00 04 */	lwz r3, 4(r3)
lbl_8030C034:
/* 8030C034  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8030C038  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8030C03C  7C 08 03 A6 */	mtlr r0
/* 8030C040  38 21 00 20 */	addi r1, r1, 0x20
/* 8030C044  4E 80 00 20 */	blr 
