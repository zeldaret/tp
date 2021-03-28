lbl_804D5EBC:
/* 804D5EBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D5EC0  7C 08 02 A6 */	mflr r0
/* 804D5EC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D5EC8  39 61 00 20 */	addi r11, r1, 0x20
/* 804D5ECC  4B E8 C3 08 */	b _savegpr_27
/* 804D5ED0  7C 7B 1B 78 */	mr r27, r3
/* 804D5ED4  4B FF FF 6D */	bl getTopSw__10daAndsw2_cFv
/* 804D5ED8  54 7E 06 3E */	clrlwi r30, r3, 0x18
/* 804D5EDC  7F 63 DB 78 */	mr r3, r27
/* 804D5EE0  4B FF FF 55 */	bl getNum__10daAndsw2_cFv
/* 804D5EE4  54 7D 06 3E */	clrlwi r29, r3, 0x18
/* 804D5EE8  2C 1D 00 FF */	cmpwi r29, 0xff
/* 804D5EEC  41 82 00 14 */	beq lbl_804D5F00
/* 804D5EF0  2C 1D 00 00 */	cmpwi r29, 0
/* 804D5EF4  41 82 00 0C */	beq lbl_804D5F00
/* 804D5EF8  2C 1E 00 FF */	cmpwi r30, 0xff
/* 804D5EFC  40 82 00 0C */	bne lbl_804D5F08
lbl_804D5F00:
/* 804D5F00  38 60 00 00 */	li r3, 0
/* 804D5F04  48 00 00 48 */	b lbl_804D5F4C
lbl_804D5F08:
/* 804D5F08  3B 80 00 00 */	li r28, 0
/* 804D5F0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D5F10  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 804D5F14  48 00 00 2C */	b lbl_804D5F40
lbl_804D5F18:
/* 804D5F18  7F E3 FB 78 */	mr r3, r31
/* 804D5F1C  7C 9E E2 14 */	add r4, r30, r28
/* 804D5F20  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 804D5F24  7C 05 07 74 */	extsb r5, r0
/* 804D5F28  4B B5 F4 38 */	b isSwitch__10dSv_info_cCFii
/* 804D5F2C  2C 03 00 00 */	cmpwi r3, 0
/* 804D5F30  40 82 00 0C */	bne lbl_804D5F3C
/* 804D5F34  38 60 00 00 */	li r3, 0
/* 804D5F38  48 00 00 14 */	b lbl_804D5F4C
lbl_804D5F3C:
/* 804D5F3C  3B 9C 00 01 */	addi r28, r28, 1
lbl_804D5F40:
/* 804D5F40  7C 1C E8 00 */	cmpw r28, r29
/* 804D5F44  41 80 FF D4 */	blt lbl_804D5F18
/* 804D5F48  38 60 00 01 */	li r3, 1
lbl_804D5F4C:
/* 804D5F4C  39 61 00 20 */	addi r11, r1, 0x20
/* 804D5F50  4B E8 C2 D0 */	b _restgpr_27
/* 804D5F54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D5F58  7C 08 03 A6 */	mtlr r0
/* 804D5F5C  38 21 00 20 */	addi r1, r1, 0x20
/* 804D5F60  4E 80 00 20 */	blr 
