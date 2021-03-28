lbl_80D4BF04:
/* 80D4BF04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4BF08  7C 08 02 A6 */	mflr r0
/* 80D4BF0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4BF10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4BF14  93 C1 00 08 */	stw r30, 8(r1)
/* 80D4BF18  7C 7E 1B 78 */	mr r30, r3
/* 80D4BF1C  3B E0 00 00 */	li r31, 0
/* 80D4BF20  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80D4BF24  28 00 00 00 */	cmplwi r0, 0
/* 80D4BF28  40 82 00 1C */	bne lbl_80D4BF44
/* 80D4BF2C  4B 2E 3B 28 */	b dComIfGs_wolfeye_effect_check__Fv
/* 80D4BF30  2C 03 00 00 */	cmpwi r3, 0
/* 80D4BF34  40 82 00 14 */	bne lbl_80D4BF48
/* 80D4BF38  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80D4BF3C  28 00 00 00 */	cmplwi r0, 0
/* 80D4BF40  41 82 00 08 */	beq lbl_80D4BF48
lbl_80D4BF44:
/* 80D4BF44  3B E0 00 01 */	li r31, 1
lbl_80D4BF48:
/* 80D4BF48  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80D4BF4C  40 82 00 10 */	bne lbl_80D4BF5C
/* 80D4BF50  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80D4BF54  28 00 00 00 */	cmplwi r0, 0
/* 80D4BF58  41 82 00 0C */	beq lbl_80D4BF64
lbl_80D4BF5C:
/* 80D4BF5C  38 00 00 00 */	li r0, 0
/* 80D4BF60  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80D4BF64:
/* 80D4BF64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4BF68  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D4BF6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4BF70  7C 08 03 A6 */	mtlr r0
/* 80D4BF74  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4BF78  4E 80 00 20 */	blr 
