lbl_80B69F60:
/* 80B69F60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B69F64  7C 08 02 A6 */	mflr r0
/* 80B69F68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B69F6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B69F70  93 C1 00 08 */	stw r30, 8(r1)
/* 80B69F74  7C 7E 1B 78 */	mr r30, r3
/* 80B69F78  3B E0 00 00 */	li r31, 0
/* 80B69F7C  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80B69F80  28 00 00 00 */	cmplwi r0, 0
/* 80B69F84  40 82 00 1C */	bne lbl_80B69FA0
/* 80B69F88  4B 4C 5A CD */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80B69F8C  2C 03 00 00 */	cmpwi r3, 0
/* 80B69F90  40 82 00 14 */	bne lbl_80B69FA4
/* 80B69F94  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80B69F98  28 00 00 00 */	cmplwi r0, 0
/* 80B69F9C  41 82 00 08 */	beq lbl_80B69FA4
lbl_80B69FA0:
/* 80B69FA0  3B E0 00 01 */	li r31, 1
lbl_80B69FA4:
/* 80B69FA4  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80B69FA8  40 82 00 10 */	bne lbl_80B69FB8
/* 80B69FAC  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80B69FB0  28 00 00 00 */	cmplwi r0, 0
/* 80B69FB4  41 82 00 0C */	beq lbl_80B69FC0
lbl_80B69FB8:
/* 80B69FB8  38 00 00 00 */	li r0, 0
/* 80B69FBC  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80B69FC0:
/* 80B69FC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B69FC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B69FC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B69FCC  7C 08 03 A6 */	mtlr r0
/* 80B69FD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B69FD4  4E 80 00 20 */	blr 
