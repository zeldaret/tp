lbl_8034BC04:
/* 8034BC04  7C 08 02 A6 */	mflr r0
/* 8034BC08  90 01 00 04 */	stw r0, 4(r1)
/* 8034BC0C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8034BC10  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8034BC14  3B E4 00 00 */	addi r31, r4, 0
/* 8034BC18  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8034BC1C  7C 7E 1B 78 */	mr r30, r3
/* 8034BC20  88 03 00 00 */	lbz r0, 0(r3)
/* 8034BC24  7C 00 07 75 */	extsb. r0, r0
/* 8034BC28  41 82 00 30 */	beq lbl_8034BC58
/* 8034BC2C  88 1F 00 00 */	lbz r0, 0(r31)
/* 8034BC30  7C 00 07 75 */	extsb. r0, r0
/* 8034BC34  41 82 00 24 */	beq lbl_8034BC58
/* 8034BC38  38 7E 00 00 */	addi r3, r30, 0
/* 8034BC3C  38 9F 00 00 */	addi r4, r31, 0
/* 8034BC40  38 A0 00 04 */	li r5, 4
/* 8034BC44  48 01 CD 11 */	bl strncmp
/* 8034BC48  2C 03 00 00 */	cmpwi r3, 0
/* 8034BC4C  41 82 00 0C */	beq lbl_8034BC58
/* 8034BC50  38 60 00 00 */	li r3, 0
/* 8034BC54  48 00 00 90 */	b lbl_8034BCE4
lbl_8034BC58:
/* 8034BC58  88 1E 00 04 */	lbz r0, 4(r30)
/* 8034BC5C  7C 00 07 75 */	extsb. r0, r0
/* 8034BC60  41 82 00 28 */	beq lbl_8034BC88
/* 8034BC64  88 1F 00 04 */	lbz r0, 4(r31)
/* 8034BC68  7C 00 07 75 */	extsb. r0, r0
/* 8034BC6C  41 82 00 1C */	beq lbl_8034BC88
/* 8034BC70  38 7E 00 04 */	addi r3, r30, 4
/* 8034BC74  38 9F 00 04 */	addi r4, r31, 4
/* 8034BC78  38 A0 00 02 */	li r5, 2
/* 8034BC7C  48 01 CC D9 */	bl strncmp
/* 8034BC80  2C 03 00 00 */	cmpwi r3, 0
/* 8034BC84  41 82 00 0C */	beq lbl_8034BC90
lbl_8034BC88:
/* 8034BC88  38 60 00 00 */	li r3, 0
/* 8034BC8C  48 00 00 58 */	b lbl_8034BCE4
lbl_8034BC90:
/* 8034BC90  88 7E 00 06 */	lbz r3, 6(r30)
/* 8034BC94  28 03 00 FF */	cmplwi r3, 0xff
/* 8034BC98  41 82 00 20 */	beq lbl_8034BCB8
/* 8034BC9C  88 1F 00 06 */	lbz r0, 6(r31)
/* 8034BCA0  28 00 00 FF */	cmplwi r0, 0xff
/* 8034BCA4  41 82 00 14 */	beq lbl_8034BCB8
/* 8034BCA8  7C 03 00 40 */	cmplw r3, r0
/* 8034BCAC  41 82 00 0C */	beq lbl_8034BCB8
/* 8034BCB0  38 60 00 00 */	li r3, 0
/* 8034BCB4  48 00 00 30 */	b lbl_8034BCE4
lbl_8034BCB8:
/* 8034BCB8  88 7E 00 07 */	lbz r3, 7(r30)
/* 8034BCBC  28 03 00 FF */	cmplwi r3, 0xff
/* 8034BCC0  41 82 00 20 */	beq lbl_8034BCE0
/* 8034BCC4  88 1F 00 07 */	lbz r0, 7(r31)
/* 8034BCC8  28 00 00 FF */	cmplwi r0, 0xff
/* 8034BCCC  41 82 00 14 */	beq lbl_8034BCE0
/* 8034BCD0  7C 03 00 40 */	cmplw r3, r0
/* 8034BCD4  41 82 00 0C */	beq lbl_8034BCE0
/* 8034BCD8  38 60 00 00 */	li r3, 0
/* 8034BCDC  48 00 00 08 */	b lbl_8034BCE4
lbl_8034BCE0:
/* 8034BCE0  38 60 00 01 */	li r3, 1
lbl_8034BCE4:
/* 8034BCE4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8034BCE8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8034BCEC  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8034BCF0  38 21 00 18 */	addi r1, r1, 0x18
/* 8034BCF4  7C 08 03 A6 */	mtlr r0
/* 8034BCF8  4E 80 00 20 */	blr 
