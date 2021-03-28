lbl_800A79EC:
/* 800A79EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A79F0  7C 08 02 A6 */	mflr r0
/* 800A79F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A79F8  39 61 00 20 */	addi r11, r1, 0x20
/* 800A79FC  48 2B A7 E1 */	bl _savegpr_29
/* 800A7A00  7C 7D 1B 78 */	mr r29, r3
/* 800A7A04  7C 9E 23 78 */	mr r30, r4
/* 800A7A08  3B E0 00 00 */	li r31, 0
/* 800A7A0C  4B FF FF 45 */	bl checkWindSpeedOnAngle__9daAlink_cCFv
/* 800A7A10  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A7A14  41 82 00 2C */	beq lbl_800A7A40
/* 800A7A18  88 1D 2F 8C */	lbz r0, 0x2f8c(r29)
/* 800A7A1C  28 00 00 01 */	cmplwi r0, 1
/* 800A7A20  41 82 00 1C */	beq lbl_800A7A3C
/* 800A7A24  28 00 00 03 */	cmplwi r0, 3
/* 800A7A28  41 82 00 14 */	beq lbl_800A7A3C
/* 800A7A2C  2C 1E 00 00 */	cmpwi r30, 0
/* 800A7A30  41 82 00 10 */	beq lbl_800A7A40
/* 800A7A34  28 00 00 02 */	cmplwi r0, 2
/* 800A7A38  40 82 00 08 */	bne lbl_800A7A40
lbl_800A7A3C:
/* 800A7A3C  3B E0 00 01 */	li r31, 1
lbl_800A7A40:
/* 800A7A40  7F E3 FB 78 */	mr r3, r31
/* 800A7A44  39 61 00 20 */	addi r11, r1, 0x20
/* 800A7A48  48 2B A7 E1 */	bl _restgpr_29
/* 800A7A4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A7A50  7C 08 03 A6 */	mtlr r0
/* 800A7A54  38 21 00 20 */	addi r1, r1, 0x20
/* 800A7A58  4E 80 00 20 */	blr 
