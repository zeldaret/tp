lbl_80048EBC:
/* 80048EBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80048EC0  7C 08 02 A6 */	mflr r0
/* 80048EC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80048EC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80048ECC  48 31 93 05 */	bl _savegpr_26
/* 80048ED0  7C 7A 1B 78 */	mr r26, r3
/* 80048ED4  7C 9B 23 79 */	or. r27, r4, r4
/* 80048ED8  7C BC 2B 78 */	mr r28, r5
/* 80048EDC  41 82 00 7C */	beq lbl_80048F58
/* 80048EE0  80 1A 00 A4 */	lwz r0, 0xa4(r26)
/* 80048EE4  2C 00 01 F4 */	cmpwi r0, 0x1f4
/* 80048EE8  40 80 00 70 */	bge lbl_80048F58
/* 80048EEC  54 03 18 38 */	slwi r3, r0, 3
/* 80048EF0  38 03 00 A8 */	addi r0, r3, 0xa8
/* 80048EF4  7F 7A 01 2E */	stwx r27, r26, r0
/* 80048EF8  3B A0 00 00 */	li r29, 0
/* 80048EFC  3B E0 00 00 */	li r31, 0
lbl_80048F00:
/* 80048F00  3B DF 00 04 */	addi r30, r31, 4
/* 80048F04  7F DA F2 14 */	add r30, r26, r30
/* 80048F08  7F C3 F3 78 */	mr r3, r30
/* 80048F0C  80 9B 00 04 */	lwz r4, 4(r27)
/* 80048F10  7F 85 E3 78 */	mr r5, r28
/* 80048F14  48 00 04 75 */	bl isSame__12diff_model_cFP12J3DModelDatai
/* 80048F18  2C 03 00 00 */	cmpwi r3, 0
/* 80048F1C  41 82 00 20 */	beq lbl_80048F3C
/* 80048F20  7F C3 F3 78 */	mr r3, r30
/* 80048F24  80 1A 00 A4 */	lwz r0, 0xa4(r26)
/* 80048F28  54 04 18 38 */	slwi r4, r0, 3
/* 80048F2C  38 84 00 A8 */	addi r4, r4, 0xa8
/* 80048F30  7C 9A 22 14 */	add r4, r26, r4
/* 80048F34  48 00 04 D5 */	bl insert__12diff_model_cFP11modelList_c
/* 80048F38  48 00 00 14 */	b lbl_80048F4C
lbl_80048F3C:
/* 80048F3C  3B BD 00 01 */	addi r29, r29, 1
/* 80048F40  2C 1D 00 08 */	cmpwi r29, 8
/* 80048F44  3B FF 00 14 */	addi r31, r31, 0x14
/* 80048F48  41 80 FF B8 */	blt lbl_80048F00
lbl_80048F4C:
/* 80048F4C  80 7A 00 A4 */	lwz r3, 0xa4(r26)
/* 80048F50  38 03 00 01 */	addi r0, r3, 1
/* 80048F54  90 1A 00 A4 */	stw r0, 0xa4(r26)
lbl_80048F58:
/* 80048F58  39 61 00 20 */	addi r11, r1, 0x20
/* 80048F5C  48 31 92 C1 */	bl _restgpr_26
/* 80048F60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80048F64  7C 08 03 A6 */	mtlr r0
/* 80048F68  38 21 00 20 */	addi r1, r1, 0x20
/* 80048F6C  4E 80 00 20 */	blr 
