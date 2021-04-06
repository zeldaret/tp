lbl_80A46824:
/* 80A46824  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A46828  7C 08 02 A6 */	mflr r0
/* 80A4682C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A46830  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A46834  93 C1 00 08 */	stw r30, 8(r1)
/* 80A46838  7C 7E 1B 78 */	mr r30, r3
/* 80A4683C  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80A46840  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 80A46844  90 03 04 9C */	stw r0, 0x49c(r3)
/* 80A46848  3B E0 00 00 */	li r31, 0
/* 80A4684C  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80A46850  28 00 00 00 */	cmplwi r0, 0
/* 80A46854  40 82 00 1C */	bne lbl_80A46870
/* 80A46858  4B 5E 91 FD */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80A4685C  2C 03 00 00 */	cmpwi r3, 0
/* 80A46860  40 82 00 14 */	bne lbl_80A46874
/* 80A46864  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80A46868  28 00 00 00 */	cmplwi r0, 0
/* 80A4686C  41 82 00 08 */	beq lbl_80A46874
lbl_80A46870:
/* 80A46870  3B E0 00 01 */	li r31, 1
lbl_80A46874:
/* 80A46874  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80A46878  41 82 00 10 */	beq lbl_80A46888
/* 80A4687C  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80A46880  64 00 08 00 */	oris r0, r0, 0x800
/* 80A46884  90 1E 04 9C */	stw r0, 0x49c(r30)
lbl_80A46888:
/* 80A46888  3B E0 00 00 */	li r31, 0
/* 80A4688C  88 1E 0E 25 */	lbz r0, 0xe25(r30)
/* 80A46890  28 00 00 00 */	cmplwi r0, 0
/* 80A46894  40 82 00 1C */	bne lbl_80A468B0
/* 80A46898  4B 5E 91 BD */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80A4689C  2C 03 00 00 */	cmpwi r3, 0
/* 80A468A0  40 82 00 14 */	bne lbl_80A468B4
/* 80A468A4  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80A468A8  28 00 00 00 */	cmplwi r0, 0
/* 80A468AC  41 82 00 08 */	beq lbl_80A468B4
lbl_80A468B0:
/* 80A468B0  3B E0 00 01 */	li r31, 1
lbl_80A468B4:
/* 80A468B4  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80A468B8  40 82 00 10 */	bne lbl_80A468C8
/* 80A468BC  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80A468C0  28 00 00 00 */	cmplwi r0, 0
/* 80A468C4  41 82 00 0C */	beq lbl_80A468D0
lbl_80A468C8:
/* 80A468C8  38 00 00 00 */	li r0, 0
/* 80A468CC  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80A468D0:
/* 80A468D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A468D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A468D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A468DC  7C 08 03 A6 */	mtlr r0
/* 80A468E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A468E4  4E 80 00 20 */	blr 
