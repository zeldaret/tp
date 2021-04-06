lbl_80A71DB0:
/* 80A71DB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A71DB4  7C 08 02 A6 */	mflr r0
/* 80A71DB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A71DBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A71DC0  93 C1 00 08 */	stw r30, 8(r1)
/* 80A71DC4  7C 7E 1B 78 */	mr r30, r3
/* 80A71DC8  3B E0 00 00 */	li r31, 0
/* 80A71DCC  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80A71DD0  28 00 00 00 */	cmplwi r0, 0
/* 80A71DD4  40 82 00 1C */	bne lbl_80A71DF0
/* 80A71DD8  4B 5B DC 7D */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80A71DDC  2C 03 00 00 */	cmpwi r3, 0
/* 80A71DE0  40 82 00 14 */	bne lbl_80A71DF4
/* 80A71DE4  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80A71DE8  28 00 00 00 */	cmplwi r0, 0
/* 80A71DEC  41 82 00 08 */	beq lbl_80A71DF4
lbl_80A71DF0:
/* 80A71DF0  3B E0 00 01 */	li r31, 1
lbl_80A71DF4:
/* 80A71DF4  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80A71DF8  40 82 00 10 */	bne lbl_80A71E08
/* 80A71DFC  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80A71E00  28 00 00 00 */	cmplwi r0, 0
/* 80A71E04  41 82 00 0C */	beq lbl_80A71E10
lbl_80A71E08:
/* 80A71E08  38 00 00 00 */	li r0, 0
/* 80A71E0C  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80A71E10:
/* 80A71E10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A71E14  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A71E18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A71E1C  7C 08 03 A6 */	mtlr r0
/* 80A71E20  38 21 00 10 */	addi r1, r1, 0x10
/* 80A71E24  4E 80 00 20 */	blr 
