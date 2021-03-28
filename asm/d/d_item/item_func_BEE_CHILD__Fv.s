lbl_80098EE4:
/* 80098EE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80098EE8  7C 08 02 A6 */	mflr r0
/* 80098EEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80098EF0  39 61 00 20 */	addi r11, r1, 0x20
/* 80098EF4  48 2C 92 E9 */	bl _savegpr_29
/* 80098EF8  3B C0 00 FF */	li r30, 0xff
/* 80098EFC  3B A0 00 00 */	li r29, 0
/* 80098F00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80098F04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80098F08  3B E3 00 9C */	addi r31, r3, 0x9c
lbl_80098F0C:
/* 80098F0C  7F E3 FB 78 */	mr r3, r31
/* 80098F10  38 9D 00 0B */	addi r4, r29, 0xb
/* 80098F14  38 A0 00 01 */	li r5, 1
/* 80098F18  4B F9 A1 19 */	bl getItem__17dSv_player_item_cCFib
/* 80098F1C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80098F20  28 00 00 60 */	cmplwi r0, 0x60
/* 80098F24  40 82 00 0C */	bne lbl_80098F30
/* 80098F28  7F BE EB 78 */	mr r30, r29
/* 80098F2C  48 00 00 10 */	b lbl_80098F3C
lbl_80098F30:
/* 80098F30  3B BD 00 01 */	addi r29, r29, 1
/* 80098F34  2C 1D 00 04 */	cmpwi r29, 4
/* 80098F38  41 80 FF D4 */	blt lbl_80098F0C
lbl_80098F3C:
/* 80098F3C  2C 1E 00 FF */	cmpwi r30, 0xff
/* 80098F40  41 82 00 28 */	beq lbl_80098F68
/* 80098F44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80098F48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80098F4C  38 63 00 EC */	addi r3, r3, 0xec
/* 80098F50  57 C4 06 3E */	clrlwi r4, r30, 0x18
/* 80098F54  38 A0 00 0A */	li r5, 0xa
/* 80098F58  4B F9 B0 35 */	bl setBottleNum__24dSv_player_item_record_cFUcUc
/* 80098F5C  7F E3 FB 78 */	mr r3, r31
/* 80098F60  38 80 00 76 */	li r4, 0x76
/* 80098F64  4B F9 A4 ED */	bl setEmptyBottleItemIn__17dSv_player_item_cFUc
lbl_80098F68:
/* 80098F68  39 61 00 20 */	addi r11, r1, 0x20
/* 80098F6C  48 2C 92 BD */	bl _restgpr_29
/* 80098F70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80098F74  7C 08 03 A6 */	mtlr r0
/* 80098F78  38 21 00 20 */	addi r1, r1, 0x20
/* 80098F7C  4E 80 00 20 */	blr 
