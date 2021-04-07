lbl_80024DC0:
/* 80024DC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80024DC4  7C 08 02 A6 */	mflr r0
/* 80024DC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80024DCC  39 61 00 20 */	addi r11, r1, 0x20
/* 80024DD0  48 33 D4 0D */	bl _savegpr_29
/* 80024DD4  7C 7D 1B 78 */	mr r29, r3
/* 80024DD8  3C 60 80 3A */	lis r3, l_objectName@ha /* 0x803A3B18@ha */
/* 80024DDC  38 03 3B 18 */	addi r0, r3, l_objectName@l /* 0x803A3B18@l */
/* 80024DE0  7C 1F 03 78 */	mr r31, r0
/* 80024DE4  3B C0 00 00 */	li r30, 0
lbl_80024DE8:
/* 80024DE8  7F E3 FB 78 */	mr r3, r31
/* 80024DEC  7F A4 EB 78 */	mr r4, r29
/* 80024DF0  48 34 3B A5 */	bl strcmp
/* 80024DF4  2C 03 00 00 */	cmpwi r3, 0
/* 80024DF8  40 82 00 0C */	bne lbl_80024E04
/* 80024DFC  7F E3 FB 78 */	mr r3, r31
/* 80024E00  48 00 00 18 */	b lbl_80024E18
lbl_80024E04:
/* 80024E04  3B DE 00 01 */	addi r30, r30, 1
/* 80024E08  28 1E 03 8F */	cmplwi r30, 0x38f
/* 80024E0C  3B FF 00 0C */	addi r31, r31, 0xc
/* 80024E10  41 80 FF D8 */	blt lbl_80024DE8
/* 80024E14  38 60 00 00 */	li r3, 0
lbl_80024E18:
/* 80024E18  39 61 00 20 */	addi r11, r1, 0x20
/* 80024E1C  48 33 D4 0D */	bl _restgpr_29
/* 80024E20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80024E24  7C 08 03 A6 */	mtlr r0
/* 80024E28  38 21 00 20 */	addi r1, r1, 0x20
/* 80024E2C  4E 80 00 20 */	blr 
