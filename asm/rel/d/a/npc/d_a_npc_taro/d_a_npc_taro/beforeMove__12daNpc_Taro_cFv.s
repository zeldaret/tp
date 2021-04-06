lbl_80567EB4:
/* 80567EB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80567EB8  7C 08 02 A6 */	mflr r0
/* 80567EBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80567EC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80567EC4  93 C1 00 08 */	stw r30, 8(r1)
/* 80567EC8  7C 7E 1B 78 */	mr r30, r3
/* 80567ECC  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80567ED0  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 80567ED4  90 03 04 9C */	stw r0, 0x49c(r3)
/* 80567ED8  3B E0 00 00 */	li r31, 0
/* 80567EDC  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80567EE0  28 00 00 00 */	cmplwi r0, 0
/* 80567EE4  40 82 00 1C */	bne lbl_80567F00
/* 80567EE8  4B AC 7B 6D */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80567EEC  2C 03 00 00 */	cmpwi r3, 0
/* 80567EF0  40 82 00 14 */	bne lbl_80567F04
/* 80567EF4  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80567EF8  28 00 00 00 */	cmplwi r0, 0
/* 80567EFC  41 82 00 08 */	beq lbl_80567F04
lbl_80567F00:
/* 80567F00  3B E0 00 01 */	li r31, 1
lbl_80567F04:
/* 80567F04  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80567F08  41 82 00 10 */	beq lbl_80567F18
/* 80567F0C  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80567F10  64 00 08 00 */	oris r0, r0, 0x800
/* 80567F14  90 1E 04 9C */	stw r0, 0x49c(r30)
lbl_80567F18:
/* 80567F18  3B E0 00 00 */	li r31, 0
/* 80567F1C  88 1E 0E 25 */	lbz r0, 0xe25(r30)
/* 80567F20  28 00 00 00 */	cmplwi r0, 0
/* 80567F24  40 82 00 1C */	bne lbl_80567F40
/* 80567F28  4B AC 7B 2D */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80567F2C  2C 03 00 00 */	cmpwi r3, 0
/* 80567F30  40 82 00 14 */	bne lbl_80567F44
/* 80567F34  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80567F38  28 00 00 00 */	cmplwi r0, 0
/* 80567F3C  41 82 00 08 */	beq lbl_80567F44
lbl_80567F40:
/* 80567F40  3B E0 00 01 */	li r31, 1
lbl_80567F44:
/* 80567F44  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80567F48  40 82 00 10 */	bne lbl_80567F58
/* 80567F4C  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80567F50  28 00 00 00 */	cmplwi r0, 0
/* 80567F54  41 82 00 0C */	beq lbl_80567F60
lbl_80567F58:
/* 80567F58  38 00 00 00 */	li r0, 0
/* 80567F5C  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80567F60:
/* 80567F60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80567F64  83 C1 00 08 */	lwz r30, 8(r1)
/* 80567F68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80567F6C  7C 08 03 A6 */	mtlr r0
/* 80567F70  38 21 00 10 */	addi r1, r1, 0x10
/* 80567F74  4E 80 00 20 */	blr 
