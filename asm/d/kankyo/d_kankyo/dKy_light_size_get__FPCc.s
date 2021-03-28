lbl_8019EBD0:
/* 8019EBD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8019EBD4  7C 08 02 A6 */	mflr r0
/* 8019EBD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8019EBDC  39 61 00 20 */	addi r11, r1, 0x20
/* 8019EBE0  48 1C 35 FD */	bl _savegpr_29
/* 8019EBE4  7C 7D 1B 78 */	mr r29, r3
/* 8019EBE8  4B EB 7E 95 */	bl dKyd_light_size_tbl_getp__Fv
/* 8019EBEC  7C 7F 1B 78 */	mr r31, r3
/* 8019EBF0  4B EB 7E 99 */	bl dKyd_light_tw_size_tbl_getp__Fv
/* 8019EBF4  7C 7E 1B 78 */	mr r30, r3
/* 8019EBF8  48 00 D9 85 */	bl dKy_darkworld_check__Fv
/* 8019EBFC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8019EC00  40 82 00 44 */	bne lbl_8019EC44
/* 8019EC04  3B C0 00 00 */	li r30, 0
lbl_8019EC08:
/* 8019EC08  7F A3 EB 78 */	mr r3, r29
/* 8019EC0C  80 9F 00 00 */	lwz r4, 0(r31)
/* 8019EC10  48 1C 9D 85 */	bl strcmp
/* 8019EC14  2C 03 00 00 */	cmpwi r3, 0
/* 8019EC18  40 82 00 18 */	bne lbl_8019EC30
/* 8019EC1C  88 1F 00 04 */	lbz r0, 4(r31)
/* 8019EC20  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8019EC24  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8019EC28  98 03 13 09 */	stb r0, 0x1309(r3)
/* 8019EC2C  48 00 00 54 */	b lbl_8019EC80
lbl_8019EC30:
/* 8019EC30  3B DE 00 01 */	addi r30, r30, 1
/* 8019EC34  2C 1E 00 24 */	cmpwi r30, 0x24
/* 8019EC38  3B FF 00 08 */	addi r31, r31, 8
/* 8019EC3C  41 80 FF CC */	blt lbl_8019EC08
/* 8019EC40  48 00 00 40 */	b lbl_8019EC80
lbl_8019EC44:
/* 8019EC44  3B E0 00 00 */	li r31, 0
lbl_8019EC48:
/* 8019EC48  7F A3 EB 78 */	mr r3, r29
/* 8019EC4C  80 9E 00 00 */	lwz r4, 0(r30)
/* 8019EC50  48 1C 9D 45 */	bl strcmp
/* 8019EC54  2C 03 00 00 */	cmpwi r3, 0
/* 8019EC58  40 82 00 18 */	bne lbl_8019EC70
/* 8019EC5C  88 1E 00 04 */	lbz r0, 4(r30)
/* 8019EC60  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8019EC64  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8019EC68  98 03 13 09 */	stb r0, 0x1309(r3)
/* 8019EC6C  48 00 00 14 */	b lbl_8019EC80
lbl_8019EC70:
/* 8019EC70  3B FF 00 01 */	addi r31, r31, 1
/* 8019EC74  2C 1F 00 09 */	cmpwi r31, 9
/* 8019EC78  3B DE 00 08 */	addi r30, r30, 8
/* 8019EC7C  41 80 FF CC */	blt lbl_8019EC48
lbl_8019EC80:
/* 8019EC80  39 61 00 20 */	addi r11, r1, 0x20
/* 8019EC84  48 1C 35 A5 */	bl _restgpr_29
/* 8019EC88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8019EC8C  7C 08 03 A6 */	mtlr r0
/* 8019EC90  38 21 00 20 */	addi r1, r1, 0x20
/* 8019EC94  4E 80 00 20 */	blr 
