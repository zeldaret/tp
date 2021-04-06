lbl_8099BEA8:
/* 8099BEA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099BEAC  7C 08 02 A6 */	mflr r0
/* 8099BEB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099BEB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8099BEB8  93 C1 00 08 */	stw r30, 8(r1)
/* 8099BEBC  7C 7E 1B 78 */	mr r30, r3
/* 8099BEC0  3B E0 00 00 */	li r31, 0
/* 8099BEC4  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 8099BEC8  28 00 00 00 */	cmplwi r0, 0
/* 8099BECC  40 82 00 1C */	bne lbl_8099BEE8
/* 8099BED0  4B 69 3B 85 */	bl dComIfGs_wolfeye_effect_check__Fv
/* 8099BED4  2C 03 00 00 */	cmpwi r3, 0
/* 8099BED8  40 82 00 14 */	bne lbl_8099BEEC
/* 8099BEDC  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 8099BEE0  28 00 00 00 */	cmplwi r0, 0
/* 8099BEE4  41 82 00 08 */	beq lbl_8099BEEC
lbl_8099BEE8:
/* 8099BEE8  3B E0 00 01 */	li r31, 1
lbl_8099BEEC:
/* 8099BEEC  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8099BEF0  40 82 00 10 */	bne lbl_8099BF00
/* 8099BEF4  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 8099BEF8  28 00 00 00 */	cmplwi r0, 0
/* 8099BEFC  41 82 00 0C */	beq lbl_8099BF08
lbl_8099BF00:
/* 8099BF00  38 00 00 00 */	li r0, 0
/* 8099BF04  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_8099BF08:
/* 8099BF08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8099BF0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8099BF10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099BF14  7C 08 03 A6 */	mtlr r0
/* 8099BF18  38 21 00 10 */	addi r1, r1, 0x10
/* 8099BF1C  4E 80 00 20 */	blr 
