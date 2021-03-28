lbl_80AE3F80:
/* 80AE3F80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE3F84  7C 08 02 A6 */	mflr r0
/* 80AE3F88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE3F8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE3F90  93 C1 00 08 */	stw r30, 8(r1)
/* 80AE3F94  7C 7E 1B 78 */	mr r30, r3
/* 80AE3F98  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80AE3F9C  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 80AE3FA0  90 03 04 9C */	stw r0, 0x49c(r3)
/* 80AE3FA4  3B E0 00 00 */	li r31, 0
/* 80AE3FA8  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80AE3FAC  28 00 00 00 */	cmplwi r0, 0
/* 80AE3FB0  40 82 00 1C */	bne lbl_80AE3FCC
/* 80AE3FB4  4B 54 BA A0 */	b dComIfGs_wolfeye_effect_check__Fv
/* 80AE3FB8  2C 03 00 00 */	cmpwi r3, 0
/* 80AE3FBC  40 82 00 14 */	bne lbl_80AE3FD0
/* 80AE3FC0  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80AE3FC4  28 00 00 00 */	cmplwi r0, 0
/* 80AE3FC8  41 82 00 08 */	beq lbl_80AE3FD0
lbl_80AE3FCC:
/* 80AE3FCC  3B E0 00 01 */	li r31, 1
lbl_80AE3FD0:
/* 80AE3FD0  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80AE3FD4  41 82 00 10 */	beq lbl_80AE3FE4
/* 80AE3FD8  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80AE3FDC  64 00 08 00 */	oris r0, r0, 0x800
/* 80AE3FE0  90 1E 04 9C */	stw r0, 0x49c(r30)
lbl_80AE3FE4:
/* 80AE3FE4  3B E0 00 00 */	li r31, 0
/* 80AE3FE8  88 1E 0E 25 */	lbz r0, 0xe25(r30)
/* 80AE3FEC  28 00 00 00 */	cmplwi r0, 0
/* 80AE3FF0  40 82 00 1C */	bne lbl_80AE400C
/* 80AE3FF4  4B 54 BA 60 */	b dComIfGs_wolfeye_effect_check__Fv
/* 80AE3FF8  2C 03 00 00 */	cmpwi r3, 0
/* 80AE3FFC  40 82 00 14 */	bne lbl_80AE4010
/* 80AE4000  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80AE4004  28 00 00 00 */	cmplwi r0, 0
/* 80AE4008  41 82 00 08 */	beq lbl_80AE4010
lbl_80AE400C:
/* 80AE400C  3B E0 00 01 */	li r31, 1
lbl_80AE4010:
/* 80AE4010  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80AE4014  40 82 00 10 */	bne lbl_80AE4024
/* 80AE4018  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80AE401C  28 00 00 00 */	cmplwi r0, 0
/* 80AE4020  41 82 00 0C */	beq lbl_80AE402C
lbl_80AE4024:
/* 80AE4024  38 00 00 00 */	li r0, 0
/* 80AE4028  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80AE402C:
/* 80AE402C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE4030  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AE4034  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE4038  7C 08 03 A6 */	mtlr r0
/* 80AE403C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE4040  4E 80 00 20 */	blr 
