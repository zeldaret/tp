lbl_80CAFB44:
/* 80CAFB44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CAFB48  7C 08 02 A6 */	mflr r0
/* 80CAFB4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CAFB50  39 61 00 20 */	addi r11, r1, 0x20
/* 80CAFB54  4B 6B 26 81 */	bl _savegpr_27
/* 80CAFB58  7C 7B 1B 78 */	mr r27, r3
/* 80CAFB5C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80CAFB60  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 80CAFB64  28 1E 00 FF */	cmplwi r30, 0xff
/* 80CAFB68  41 82 00 84 */	beq lbl_80CAFBEC
/* 80CAFB6C  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80CAFB70  28 00 00 FF */	cmplwi r0, 0xff
/* 80CAFB74  40 82 00 2C */	bne lbl_80CAFBA0
/* 80CAFB78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CAFB7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CAFB80  7F C4 F3 78 */	mr r4, r30
/* 80CAFB84  88 1B 04 BA */	lbz r0, 0x4ba(r27)
/* 80CAFB88  7C 05 07 74 */	extsb r5, r0
/* 80CAFB8C  4B 38 57 D5 */	bl isSwitch__10dSv_info_cCFii
/* 80CAFB90  30 03 FF FF */	addic r0, r3, -1
/* 80CAFB94  7C 00 19 10 */	subfe r0, r0, r3
/* 80CAFB98  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80CAFB9C  48 00 00 54 */	b lbl_80CAFBF0
lbl_80CAFBA0:
/* 80CAFBA0  28 00 00 00 */	cmplwi r0, 0
/* 80CAFBA4  40 82 00 48 */	bne lbl_80CAFBEC
/* 80CAFBA8  3B A0 00 00 */	li r29, 0
/* 80CAFBAC  3B 80 00 00 */	li r28, 0
/* 80CAFBB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CAFBB4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_80CAFBB8:
/* 80CAFBB8  7F E3 FB 78 */	mr r3, r31
/* 80CAFBBC  7C 9E E2 14 */	add r4, r30, r28
/* 80CAFBC0  88 1B 04 BA */	lbz r0, 0x4ba(r27)
/* 80CAFBC4  7C 05 07 74 */	extsb r5, r0
/* 80CAFBC8  4B 38 57 99 */	bl isSwitch__10dSv_info_cCFii
/* 80CAFBCC  2C 03 00 00 */	cmpwi r3, 0
/* 80CAFBD0  41 82 00 08 */	beq lbl_80CAFBD8
/* 80CAFBD4  3B A0 00 01 */	li r29, 1
lbl_80CAFBD8:
/* 80CAFBD8  3B 9C 00 01 */	addi r28, r28, 1
/* 80CAFBDC  2C 1C 00 04 */	cmpwi r28, 4
/* 80CAFBE0  41 80 FF D8 */	blt lbl_80CAFBB8
/* 80CAFBE4  7F A3 EB 78 */	mr r3, r29
/* 80CAFBE8  48 00 00 08 */	b lbl_80CAFBF0
lbl_80CAFBEC:
/* 80CAFBEC  38 60 00 00 */	li r3, 0
lbl_80CAFBF0:
/* 80CAFBF0  39 61 00 20 */	addi r11, r1, 0x20
/* 80CAFBF4  4B 6B 26 2D */	bl _restgpr_27
/* 80CAFBF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CAFBFC  7C 08 03 A6 */	mtlr r0
/* 80CAFC00  38 21 00 20 */	addi r1, r1, 0x20
/* 80CAFC04  4E 80 00 20 */	blr 
