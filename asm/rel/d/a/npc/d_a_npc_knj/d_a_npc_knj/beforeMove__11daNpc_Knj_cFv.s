lbl_80A43FAC:
/* 80A43FAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A43FB0  7C 08 02 A6 */	mflr r0
/* 80A43FB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A43FB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A43FBC  93 C1 00 08 */	stw r30, 8(r1)
/* 80A43FC0  7C 7E 1B 78 */	mr r30, r3
/* 80A43FC4  3B E0 00 00 */	li r31, 0
/* 80A43FC8  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80A43FCC  28 00 00 00 */	cmplwi r0, 0
/* 80A43FD0  40 82 00 1C */	bne lbl_80A43FEC
/* 80A43FD4  4B 5E BA 80 */	b dComIfGs_wolfeye_effect_check__Fv
/* 80A43FD8  2C 03 00 00 */	cmpwi r3, 0
/* 80A43FDC  40 82 00 14 */	bne lbl_80A43FF0
/* 80A43FE0  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80A43FE4  28 00 00 00 */	cmplwi r0, 0
/* 80A43FE8  41 82 00 08 */	beq lbl_80A43FF0
lbl_80A43FEC:
/* 80A43FEC  3B E0 00 01 */	li r31, 1
lbl_80A43FF0:
/* 80A43FF0  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80A43FF4  40 82 00 10 */	bne lbl_80A44004
/* 80A43FF8  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80A43FFC  28 00 00 00 */	cmplwi r0, 0
/* 80A44000  41 82 00 0C */	beq lbl_80A4400C
lbl_80A44004:
/* 80A44004  38 00 00 00 */	li r0, 0
/* 80A44008  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80A4400C:
/* 80A4400C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A44010  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A44014  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A44018  7C 08 03 A6 */	mtlr r0
/* 80A4401C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A44020  4E 80 00 20 */	blr 
