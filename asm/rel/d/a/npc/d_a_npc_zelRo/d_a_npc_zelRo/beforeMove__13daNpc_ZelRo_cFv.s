lbl_80B73194:
/* 80B73194  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B73198  7C 08 02 A6 */	mflr r0
/* 80B7319C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B731A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B731A4  93 C1 00 08 */	stw r30, 8(r1)
/* 80B731A8  7C 7E 1B 78 */	mr r30, r3
/* 80B731AC  3B E0 00 00 */	li r31, 0
/* 80B731B0  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80B731B4  28 00 00 00 */	cmplwi r0, 0
/* 80B731B8  40 82 00 1C */	bne lbl_80B731D4
/* 80B731BC  4B 4B C8 99 */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80B731C0  2C 03 00 00 */	cmpwi r3, 0
/* 80B731C4  40 82 00 14 */	bne lbl_80B731D8
/* 80B731C8  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80B731CC  28 00 00 00 */	cmplwi r0, 0
/* 80B731D0  41 82 00 08 */	beq lbl_80B731D8
lbl_80B731D4:
/* 80B731D4  3B E0 00 01 */	li r31, 1
lbl_80B731D8:
/* 80B731D8  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80B731DC  40 82 00 10 */	bne lbl_80B731EC
/* 80B731E0  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80B731E4  28 00 00 00 */	cmplwi r0, 0
/* 80B731E8  41 82 00 0C */	beq lbl_80B731F4
lbl_80B731EC:
/* 80B731EC  38 00 00 00 */	li r0, 0
/* 80B731F0  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80B731F4:
/* 80B731F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B731F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B731FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B73200  7C 08 03 A6 */	mtlr r0
/* 80B73204  38 21 00 10 */	addi r1, r1, 0x10
/* 80B73208  4E 80 00 20 */	blr 
