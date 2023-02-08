lbl_80B55658:
/* 80B55658  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5565C  7C 08 02 A6 */	mflr r0
/* 80B55660  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B55664  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B55668  93 C1 00 08 */	stw r30, 8(r1)
/* 80B5566C  7C 7E 1B 78 */	mr r30, r3
/* 80B55670  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80B55674  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 80B55678  90 03 04 9C */	stw r0, 0x49c(r3)
/* 80B5567C  3B E0 00 00 */	li r31, 0
/* 80B55680  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80B55684  28 00 00 00 */	cmplwi r0, 0
/* 80B55688  40 82 00 1C */	bne lbl_80B556A4
/* 80B5568C  4B 4D A3 C9 */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80B55690  2C 03 00 00 */	cmpwi r3, 0
/* 80B55694  40 82 00 14 */	bne lbl_80B556A8
/* 80B55698  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80B5569C  28 00 00 00 */	cmplwi r0, 0
/* 80B556A0  41 82 00 08 */	beq lbl_80B556A8
lbl_80B556A4:
/* 80B556A4  3B E0 00 01 */	li r31, 1
lbl_80B556A8:
/* 80B556A8  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80B556AC  41 82 00 10 */	beq lbl_80B556BC
/* 80B556B0  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80B556B4  64 00 08 00 */	oris r0, r0, 0x800
/* 80B556B8  90 1E 04 9C */	stw r0, 0x49c(r30)
lbl_80B556BC:
/* 80B556BC  3B E0 00 00 */	li r31, 0
/* 80B556C0  88 1E 0E 25 */	lbz r0, 0xe25(r30)
/* 80B556C4  28 00 00 00 */	cmplwi r0, 0
/* 80B556C8  40 82 00 1C */	bne lbl_80B556E4
/* 80B556CC  4B 4D A3 89 */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80B556D0  2C 03 00 00 */	cmpwi r3, 0
/* 80B556D4  40 82 00 14 */	bne lbl_80B556E8
/* 80B556D8  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80B556DC  28 00 00 00 */	cmplwi r0, 0
/* 80B556E0  41 82 00 08 */	beq lbl_80B556E8
lbl_80B556E4:
/* 80B556E4  3B E0 00 01 */	li r31, 1
lbl_80B556E8:
/* 80B556E8  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80B556EC  40 82 00 10 */	bne lbl_80B556FC
/* 80B556F0  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80B556F4  28 00 00 00 */	cmplwi r0, 0
/* 80B556F8  41 82 00 0C */	beq lbl_80B55704
lbl_80B556FC:
/* 80B556FC  38 00 00 00 */	li r0, 0
/* 80B55700  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80B55704:
/* 80B55704  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B55708  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B5570C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B55710  7C 08 03 A6 */	mtlr r0
/* 80B55714  38 21 00 10 */	addi r1, r1, 0x10
/* 80B55718  4E 80 00 20 */	blr 
