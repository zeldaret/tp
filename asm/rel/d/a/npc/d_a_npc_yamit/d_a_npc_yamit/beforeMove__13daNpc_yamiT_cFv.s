lbl_80B4AE38:
/* 80B4AE38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4AE3C  7C 08 02 A6 */	mflr r0
/* 80B4AE40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4AE44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4AE48  93 C1 00 08 */	stw r30, 8(r1)
/* 80B4AE4C  7C 7E 1B 78 */	mr r30, r3
/* 80B4AE50  3B E0 00 00 */	li r31, 0
/* 80B4AE54  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80B4AE58  28 00 00 00 */	cmplwi r0, 0
/* 80B4AE5C  40 82 00 1C */	bne lbl_80B4AE78
/* 80B4AE60  4B 4E 4B F4 */	b dComIfGs_wolfeye_effect_check__Fv
/* 80B4AE64  2C 03 00 00 */	cmpwi r3, 0
/* 80B4AE68  40 82 00 14 */	bne lbl_80B4AE7C
/* 80B4AE6C  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80B4AE70  28 00 00 00 */	cmplwi r0, 0
/* 80B4AE74  41 82 00 08 */	beq lbl_80B4AE7C
lbl_80B4AE78:
/* 80B4AE78  3B E0 00 01 */	li r31, 1
lbl_80B4AE7C:
/* 80B4AE7C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80B4AE80  40 82 00 10 */	bne lbl_80B4AE90
/* 80B4AE84  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80B4AE88  28 00 00 00 */	cmplwi r0, 0
/* 80B4AE8C  41 82 00 0C */	beq lbl_80B4AE98
lbl_80B4AE90:
/* 80B4AE90  38 00 00 00 */	li r0, 0
/* 80B4AE94  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80B4AE98:
/* 80B4AE98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4AE9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B4AEA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4AEA4  7C 08 03 A6 */	mtlr r0
/* 80B4AEA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4AEAC  4E 80 00 20 */	blr 
