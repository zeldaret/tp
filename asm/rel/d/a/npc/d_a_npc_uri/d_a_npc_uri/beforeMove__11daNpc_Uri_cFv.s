lbl_80B27F14:
/* 80B27F14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B27F18  7C 08 02 A6 */	mflr r0
/* 80B27F1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B27F20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B27F24  93 C1 00 08 */	stw r30, 8(r1)
/* 80B27F28  7C 7E 1B 78 */	mr r30, r3
/* 80B27F2C  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80B27F30  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 80B27F34  90 03 04 9C */	stw r0, 0x49c(r3)
/* 80B27F38  3B E0 00 00 */	li r31, 0
/* 80B27F3C  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80B27F40  28 00 00 00 */	cmplwi r0, 0
/* 80B27F44  40 82 00 1C */	bne lbl_80B27F60
/* 80B27F48  4B 50 7B 0D */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80B27F4C  2C 03 00 00 */	cmpwi r3, 0
/* 80B27F50  40 82 00 14 */	bne lbl_80B27F64
/* 80B27F54  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80B27F58  28 00 00 00 */	cmplwi r0, 0
/* 80B27F5C  41 82 00 08 */	beq lbl_80B27F64
lbl_80B27F60:
/* 80B27F60  3B E0 00 01 */	li r31, 1
lbl_80B27F64:
/* 80B27F64  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80B27F68  41 82 00 10 */	beq lbl_80B27F78
/* 80B27F6C  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80B27F70  64 00 08 00 */	oris r0, r0, 0x800
/* 80B27F74  90 1E 04 9C */	stw r0, 0x49c(r30)
lbl_80B27F78:
/* 80B27F78  3B E0 00 00 */	li r31, 0
/* 80B27F7C  88 1E 0E 25 */	lbz r0, 0xe25(r30)
/* 80B27F80  28 00 00 00 */	cmplwi r0, 0
/* 80B27F84  40 82 00 1C */	bne lbl_80B27FA0
/* 80B27F88  4B 50 7A CD */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80B27F8C  2C 03 00 00 */	cmpwi r3, 0
/* 80B27F90  40 82 00 14 */	bne lbl_80B27FA4
/* 80B27F94  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80B27F98  28 00 00 00 */	cmplwi r0, 0
/* 80B27F9C  41 82 00 08 */	beq lbl_80B27FA4
lbl_80B27FA0:
/* 80B27FA0  3B E0 00 01 */	li r31, 1
lbl_80B27FA4:
/* 80B27FA4  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80B27FA8  40 82 00 10 */	bne lbl_80B27FB8
/* 80B27FAC  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80B27FB0  28 00 00 00 */	cmplwi r0, 0
/* 80B27FB4  41 82 00 0C */	beq lbl_80B27FC0
lbl_80B27FB8:
/* 80B27FB8  38 00 00 00 */	li r0, 0
/* 80B27FBC  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80B27FC0:
/* 80B27FC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B27FC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B27FC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B27FCC  7C 08 03 A6 */	mtlr r0
/* 80B27FD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B27FD4  4E 80 00 20 */	blr 
