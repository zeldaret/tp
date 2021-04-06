lbl_80043EFC:
/* 80043EFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80043F00  7C 08 02 A6 */	mflr r0
/* 80043F04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80043F08  39 61 00 20 */	addi r11, r1, 0x20
/* 80043F0C  48 31 E2 CD */	bl _savegpr_28
/* 80043F10  7C 7C 1B 78 */	mr r28, r3
/* 80043F14  3B A0 00 00 */	li r29, 0
/* 80043F18  3B E0 00 00 */	li r31, 0
/* 80043F1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80043F20  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_80043F24:
/* 80043F24  38 1F 00 88 */	addi r0, r31, 0x88
/* 80043F28  7C 9C 00 2E */	lwzx r4, r28, r0
/* 80043F2C  2C 04 FF FF */	cmpwi r4, -1
/* 80043F30  40 82 00 0C */	bne lbl_80043F3C
/* 80043F34  38 60 00 01 */	li r3, 1
/* 80043F38  48 00 00 20 */	b lbl_80043F58
lbl_80043F3C:
/* 80043F3C  38 7E 51 B4 */	addi r3, r30, 0x51b4
/* 80043F40  4B FF FE 89 */	bl flagSet__11dEvDtFlag_cFi
/* 80043F44  3B BD 00 01 */	addi r29, r29, 1
/* 80043F48  2C 1D 00 03 */	cmpwi r29, 3
/* 80043F4C  3B FF 00 04 */	addi r31, r31, 4
/* 80043F50  41 80 FF D4 */	blt lbl_80043F24
/* 80043F54  38 60 00 01 */	li r3, 1
lbl_80043F58:
/* 80043F58  39 61 00 20 */	addi r11, r1, 0x20
/* 80043F5C  48 31 E2 C9 */	bl _restgpr_28
/* 80043F60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80043F64  7C 08 03 A6 */	mtlr r0
/* 80043F68  38 21 00 20 */	addi r1, r1, 0x20
/* 80043F6C  4E 80 00 20 */	blr 
