lbl_80B1FE68:
/* 80B1FE68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1FE6C  7C 08 02 A6 */	mflr r0
/* 80B1FE70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1FE74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B1FE78  93 C1 00 08 */	stw r30, 8(r1)
/* 80B1FE7C  7C 7E 1B 78 */	mr r30, r3
/* 80B1FE80  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80B1FE84  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 80B1FE88  90 03 04 9C */	stw r0, 0x49c(r3)
/* 80B1FE8C  3B E0 00 00 */	li r31, 0
/* 80B1FE90  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80B1FE94  28 00 00 00 */	cmplwi r0, 0
/* 80B1FE98  40 82 00 1C */	bne lbl_80B1FEB4
/* 80B1FE9C  4B 50 FB B8 */	b dComIfGs_wolfeye_effect_check__Fv
/* 80B1FEA0  2C 03 00 00 */	cmpwi r3, 0
/* 80B1FEA4  40 82 00 14 */	bne lbl_80B1FEB8
/* 80B1FEA8  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80B1FEAC  28 00 00 00 */	cmplwi r0, 0
/* 80B1FEB0  41 82 00 08 */	beq lbl_80B1FEB8
lbl_80B1FEB4:
/* 80B1FEB4  3B E0 00 01 */	li r31, 1
lbl_80B1FEB8:
/* 80B1FEB8  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80B1FEBC  41 82 00 10 */	beq lbl_80B1FECC
/* 80B1FEC0  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80B1FEC4  64 00 08 00 */	oris r0, r0, 0x800
/* 80B1FEC8  90 1E 04 9C */	stw r0, 0x49c(r30)
lbl_80B1FECC:
/* 80B1FECC  3B E0 00 00 */	li r31, 0
/* 80B1FED0  88 1E 0E 25 */	lbz r0, 0xe25(r30)
/* 80B1FED4  28 00 00 00 */	cmplwi r0, 0
/* 80B1FED8  40 82 00 1C */	bne lbl_80B1FEF4
/* 80B1FEDC  4B 50 FB 78 */	b dComIfGs_wolfeye_effect_check__Fv
/* 80B1FEE0  2C 03 00 00 */	cmpwi r3, 0
/* 80B1FEE4  40 82 00 14 */	bne lbl_80B1FEF8
/* 80B1FEE8  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80B1FEEC  28 00 00 00 */	cmplwi r0, 0
/* 80B1FEF0  41 82 00 08 */	beq lbl_80B1FEF8
lbl_80B1FEF4:
/* 80B1FEF4  3B E0 00 01 */	li r31, 1
lbl_80B1FEF8:
/* 80B1FEF8  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80B1FEFC  40 82 00 10 */	bne lbl_80B1FF0C
/* 80B1FF00  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80B1FF04  28 00 00 00 */	cmplwi r0, 0
/* 80B1FF08  41 82 00 0C */	beq lbl_80B1FF14
lbl_80B1FF0C:
/* 80B1FF0C  38 00 00 00 */	li r0, 0
/* 80B1FF10  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80B1FF14:
/* 80B1FF14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B1FF18  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B1FF1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1FF20  7C 08 03 A6 */	mtlr r0
/* 80B1FF24  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1FF28  4E 80 00 20 */	blr 
