lbl_80AB6EC8:
/* 80AB6EC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB6ECC  7C 08 02 A6 */	mflr r0
/* 80AB6ED0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB6ED4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB6ED8  93 C1 00 08 */	stw r30, 8(r1)
/* 80AB6EDC  7C 7E 1B 78 */	mr r30, r3
/* 80AB6EE0  3B E0 00 00 */	li r31, 0
/* 80AB6EE4  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80AB6EE8  28 00 00 00 */	cmplwi r0, 0
/* 80AB6EEC  40 82 00 1C */	bne lbl_80AB6F08
/* 80AB6EF0  4B 57 8B 64 */	b dComIfGs_wolfeye_effect_check__Fv
/* 80AB6EF4  2C 03 00 00 */	cmpwi r3, 0
/* 80AB6EF8  40 82 00 14 */	bne lbl_80AB6F0C
/* 80AB6EFC  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80AB6F00  28 00 00 00 */	cmplwi r0, 0
/* 80AB6F04  41 82 00 08 */	beq lbl_80AB6F0C
lbl_80AB6F08:
/* 80AB6F08  3B E0 00 01 */	li r31, 1
lbl_80AB6F0C:
/* 80AB6F0C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80AB6F10  40 82 00 10 */	bne lbl_80AB6F20
/* 80AB6F14  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80AB6F18  28 00 00 00 */	cmplwi r0, 0
/* 80AB6F1C  41 82 00 0C */	beq lbl_80AB6F28
lbl_80AB6F20:
/* 80AB6F20  38 00 00 00 */	li r0, 0
/* 80AB6F24  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80AB6F28:
/* 80AB6F28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB6F2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AB6F30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB6F34  7C 08 03 A6 */	mtlr r0
/* 80AB6F38  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB6F3C  4E 80 00 20 */	blr 
