lbl_80B6CE08:
/* 80B6CE08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6CE0C  7C 08 02 A6 */	mflr r0
/* 80B6CE10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6CE14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6CE18  93 C1 00 08 */	stw r30, 8(r1)
/* 80B6CE1C  7C 7E 1B 78 */	mr r30, r3
/* 80B6CE20  3B E0 00 00 */	li r31, 0
/* 80B6CE24  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80B6CE28  28 00 00 00 */	cmplwi r0, 0
/* 80B6CE2C  40 82 00 1C */	bne lbl_80B6CE48
/* 80B6CE30  4B 4C 2C 24 */	b dComIfGs_wolfeye_effect_check__Fv
/* 80B6CE34  2C 03 00 00 */	cmpwi r3, 0
/* 80B6CE38  40 82 00 14 */	bne lbl_80B6CE4C
/* 80B6CE3C  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80B6CE40  28 00 00 00 */	cmplwi r0, 0
/* 80B6CE44  41 82 00 08 */	beq lbl_80B6CE4C
lbl_80B6CE48:
/* 80B6CE48  3B E0 00 01 */	li r31, 1
lbl_80B6CE4C:
/* 80B6CE4C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80B6CE50  40 82 00 10 */	bne lbl_80B6CE60
/* 80B6CE54  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80B6CE58  28 00 00 00 */	cmplwi r0, 0
/* 80B6CE5C  41 82 00 0C */	beq lbl_80B6CE68
lbl_80B6CE60:
/* 80B6CE60  38 00 00 00 */	li r0, 0
/* 80B6CE64  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80B6CE68:
/* 80B6CE68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6CE6C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B6CE70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6CE74  7C 08 03 A6 */	mtlr r0
/* 80B6CE78  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6CE7C  4E 80 00 20 */	blr 
