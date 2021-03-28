lbl_80B60AFC:
/* 80B60AFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B60B00  7C 08 02 A6 */	mflr r0
/* 80B60B04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B60B08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B60B0C  93 C1 00 08 */	stw r30, 8(r1)
/* 80B60B10  7C 7E 1B 78 */	mr r30, r3
/* 80B60B14  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80B60B18  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 80B60B1C  90 03 04 9C */	stw r0, 0x49c(r3)
/* 80B60B20  3B E0 00 00 */	li r31, 0
/* 80B60B24  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80B60B28  28 00 00 00 */	cmplwi r0, 0
/* 80B60B2C  40 82 00 1C */	bne lbl_80B60B48
/* 80B60B30  4B 4C EF 24 */	b dComIfGs_wolfeye_effect_check__Fv
/* 80B60B34  2C 03 00 00 */	cmpwi r3, 0
/* 80B60B38  40 82 00 14 */	bne lbl_80B60B4C
/* 80B60B3C  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80B60B40  28 00 00 00 */	cmplwi r0, 0
/* 80B60B44  41 82 00 08 */	beq lbl_80B60B4C
lbl_80B60B48:
/* 80B60B48  3B E0 00 01 */	li r31, 1
lbl_80B60B4C:
/* 80B60B4C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80B60B50  41 82 00 10 */	beq lbl_80B60B60
/* 80B60B54  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80B60B58  64 00 08 00 */	oris r0, r0, 0x800
/* 80B60B5C  90 1E 04 9C */	stw r0, 0x49c(r30)
lbl_80B60B60:
/* 80B60B60  3B E0 00 00 */	li r31, 0
/* 80B60B64  88 1E 0E 25 */	lbz r0, 0xe25(r30)
/* 80B60B68  28 00 00 00 */	cmplwi r0, 0
/* 80B60B6C  40 82 00 1C */	bne lbl_80B60B88
/* 80B60B70  4B 4C EE E4 */	b dComIfGs_wolfeye_effect_check__Fv
/* 80B60B74  2C 03 00 00 */	cmpwi r3, 0
/* 80B60B78  40 82 00 14 */	bne lbl_80B60B8C
/* 80B60B7C  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80B60B80  28 00 00 00 */	cmplwi r0, 0
/* 80B60B84  41 82 00 08 */	beq lbl_80B60B8C
lbl_80B60B88:
/* 80B60B88  3B E0 00 01 */	li r31, 1
lbl_80B60B8C:
/* 80B60B8C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80B60B90  40 82 00 10 */	bne lbl_80B60BA0
/* 80B60B94  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80B60B98  28 00 00 00 */	cmplwi r0, 0
/* 80B60B9C  41 82 00 0C */	beq lbl_80B60BA8
lbl_80B60BA0:
/* 80B60BA0  38 00 00 00 */	li r0, 0
/* 80B60BA4  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80B60BA8:
/* 80B60BA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B60BAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B60BB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B60BB4  7C 08 03 A6 */	mtlr r0
/* 80B60BB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B60BBC  4E 80 00 20 */	blr 
