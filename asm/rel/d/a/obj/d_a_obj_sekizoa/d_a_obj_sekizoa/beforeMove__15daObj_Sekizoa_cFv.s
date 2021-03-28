lbl_80CCFD08:
/* 80CCFD08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCFD0C  7C 08 02 A6 */	mflr r0
/* 80CCFD10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCFD14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCFD18  93 C1 00 08 */	stw r30, 8(r1)
/* 80CCFD1C  7C 7E 1B 78 */	mr r30, r3
/* 80CCFD20  3B E0 00 00 */	li r31, 0
/* 80CCFD24  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80CCFD28  28 00 00 00 */	cmplwi r0, 0
/* 80CCFD2C  40 82 00 1C */	bne lbl_80CCFD48
/* 80CCFD30  4B 35 FD 24 */	b dComIfGs_wolfeye_effect_check__Fv
/* 80CCFD34  2C 03 00 00 */	cmpwi r3, 0
/* 80CCFD38  40 82 00 14 */	bne lbl_80CCFD4C
/* 80CCFD3C  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80CCFD40  28 00 00 00 */	cmplwi r0, 0
/* 80CCFD44  41 82 00 08 */	beq lbl_80CCFD4C
lbl_80CCFD48:
/* 80CCFD48  3B E0 00 01 */	li r31, 1
lbl_80CCFD4C:
/* 80CCFD4C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80CCFD50  40 82 00 10 */	bne lbl_80CCFD60
/* 80CCFD54  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80CCFD58  28 00 00 00 */	cmplwi r0, 0
/* 80CCFD5C  41 82 00 0C */	beq lbl_80CCFD68
lbl_80CCFD60:
/* 80CCFD60  38 00 00 00 */	li r0, 0
/* 80CCFD64  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80CCFD68:
/* 80CCFD68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCFD6C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CCFD70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCFD74  7C 08 03 A6 */	mtlr r0
/* 80CCFD78  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCFD7C  4E 80 00 20 */	blr 
