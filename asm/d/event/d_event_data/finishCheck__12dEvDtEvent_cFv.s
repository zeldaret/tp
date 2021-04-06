lbl_80043E78:
/* 80043E78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80043E7C  7C 08 02 A6 */	mflr r0
/* 80043E80  90 01 00 24 */	stw r0, 0x24(r1)
/* 80043E84  39 61 00 20 */	addi r11, r1, 0x20
/* 80043E88  48 31 E3 51 */	bl _savegpr_28
/* 80043E8C  7C 7C 1B 78 */	mr r28, r3
/* 80043E90  3B A0 00 00 */	li r29, 0
/* 80043E94  3B E0 00 00 */	li r31, 0
/* 80043E98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80043E9C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_80043EA0:
/* 80043EA0  38 1F 00 88 */	addi r0, r31, 0x88
/* 80043EA4  7C 9C 00 2E */	lwzx r4, r28, r0
/* 80043EA8  2C 04 FF FF */	cmpwi r4, -1
/* 80043EAC  40 82 00 0C */	bne lbl_80043EB8
/* 80043EB0  38 60 00 01 */	li r3, 1
/* 80043EB4  48 00 00 30 */	b lbl_80043EE4
lbl_80043EB8:
/* 80043EB8  38 7E 51 B4 */	addi r3, r30, 0x51b4
/* 80043EBC  4B FF FE A5 */	bl flagCheck__11dEvDtFlag_cFi
/* 80043EC0  2C 03 00 00 */	cmpwi r3, 0
/* 80043EC4  40 82 00 0C */	bne lbl_80043ED0
/* 80043EC8  38 60 00 00 */	li r3, 0
/* 80043ECC  48 00 00 18 */	b lbl_80043EE4
lbl_80043ED0:
/* 80043ED0  3B BD 00 01 */	addi r29, r29, 1
/* 80043ED4  2C 1D 00 03 */	cmpwi r29, 3
/* 80043ED8  3B FF 00 04 */	addi r31, r31, 4
/* 80043EDC  41 80 FF C4 */	blt lbl_80043EA0
/* 80043EE0  38 60 00 01 */	li r3, 1
lbl_80043EE4:
/* 80043EE4  39 61 00 20 */	addi r11, r1, 0x20
/* 80043EE8  48 31 E3 3D */	bl _restgpr_28
/* 80043EEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80043EF0  7C 08 03 A6 */	mtlr r0
/* 80043EF4  38 21 00 20 */	addi r1, r1, 0x20
/* 80043EF8  4E 80 00 20 */	blr 
