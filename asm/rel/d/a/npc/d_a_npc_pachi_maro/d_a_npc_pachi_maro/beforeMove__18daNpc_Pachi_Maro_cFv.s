lbl_80A98DE8:
/* 80A98DE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A98DEC  7C 08 02 A6 */	mflr r0
/* 80A98DF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A98DF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A98DF8  93 C1 00 08 */	stw r30, 8(r1)
/* 80A98DFC  7C 7E 1B 78 */	mr r30, r3
/* 80A98E00  3B E0 00 00 */	li r31, 0
/* 80A98E04  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80A98E08  28 00 00 00 */	cmplwi r0, 0
/* 80A98E0C  40 82 00 1C */	bne lbl_80A98E28
/* 80A98E10  4B 59 6C 44 */	b dComIfGs_wolfeye_effect_check__Fv
/* 80A98E14  2C 03 00 00 */	cmpwi r3, 0
/* 80A98E18  40 82 00 14 */	bne lbl_80A98E2C
/* 80A98E1C  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80A98E20  28 00 00 00 */	cmplwi r0, 0
/* 80A98E24  41 82 00 08 */	beq lbl_80A98E2C
lbl_80A98E28:
/* 80A98E28  3B E0 00 01 */	li r31, 1
lbl_80A98E2C:
/* 80A98E2C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80A98E30  40 82 00 10 */	bne lbl_80A98E40
/* 80A98E34  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80A98E38  28 00 00 00 */	cmplwi r0, 0
/* 80A98E3C  41 82 00 0C */	beq lbl_80A98E48
lbl_80A98E40:
/* 80A98E40  38 00 00 00 */	li r0, 0
/* 80A98E44  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80A98E48:
/* 80A98E48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A98E4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A98E50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A98E54  7C 08 03 A6 */	mtlr r0
/* 80A98E58  38 21 00 10 */	addi r1, r1, 0x10
/* 80A98E5C  4E 80 00 20 */	blr 
