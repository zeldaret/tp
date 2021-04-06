lbl_80A029A0:
/* 80A029A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A029A4  7C 08 02 A6 */	mflr r0
/* 80A029A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A029AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A029B0  93 C1 00 08 */	stw r30, 8(r1)
/* 80A029B4  7C 7E 1B 78 */	mr r30, r3
/* 80A029B8  3B E0 00 00 */	li r31, 0
/* 80A029BC  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80A029C0  28 00 00 00 */	cmplwi r0, 0
/* 80A029C4  40 82 00 1C */	bne lbl_80A029E0
/* 80A029C8  4B 62 D0 8D */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80A029CC  2C 03 00 00 */	cmpwi r3, 0
/* 80A029D0  40 82 00 14 */	bne lbl_80A029E4
/* 80A029D4  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80A029D8  28 00 00 00 */	cmplwi r0, 0
/* 80A029DC  41 82 00 08 */	beq lbl_80A029E4
lbl_80A029E0:
/* 80A029E0  3B E0 00 01 */	li r31, 1
lbl_80A029E4:
/* 80A029E4  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80A029E8  40 82 00 10 */	bne lbl_80A029F8
/* 80A029EC  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80A029F0  28 00 00 00 */	cmplwi r0, 0
/* 80A029F4  41 82 00 0C */	beq lbl_80A02A00
lbl_80A029F8:
/* 80A029F8  38 00 00 00 */	li r0, 0
/* 80A029FC  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80A02A00:
/* 80A02A00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A02A04  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A02A08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A02A0C  7C 08 03 A6 */	mtlr r0
/* 80A02A10  38 21 00 10 */	addi r1, r1, 0x10
/* 80A02A14  4E 80 00 20 */	blr 
