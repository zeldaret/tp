lbl_80033D40:
/* 80033D40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80033D44  7C 08 02 A6 */	mflr r0
/* 80033D48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80033D4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80033D50  7C 7F 1B 78 */	mr r31, r3
/* 80033D54  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80033D58  2C 00 00 76 */	cmpwi r0, 0x76
/* 80033D5C  41 82 00 20 */	beq lbl_80033D7C
/* 80033D60  40 80 00 10 */	bge lbl_80033D70
/* 80033D64  2C 00 00 74 */	cmpwi r0, 0x74
/* 80033D68  41 82 00 48 */	beq lbl_80033DB0
/* 80033D6C  48 00 00 A8 */	b lbl_80033E14
lbl_80033D70:
/* 80033D70  2C 00 00 FF */	cmpwi r0, 0xff
/* 80033D74  41 82 00 70 */	beq lbl_80033DE4
/* 80033D78  48 00 00 9C */	b lbl_80033E14
lbl_80033D7C:
/* 80033D7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80033D80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80033D84  38 63 00 CC */	addi r3, r3, 0xcc
/* 80033D88  38 80 00 3D */	li r4, 0x3d
/* 80033D8C  48 00 01 3D */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 80033D90  2C 03 00 00 */	cmpwi r3, 0
/* 80033D94  41 82 00 10 */	beq lbl_80033DA4
/* 80033D98  38 00 00 5E */	li r0, 0x5e
/* 80033D9C  98 1F 00 14 */	stb r0, 0x14(r31)
/* 80033DA0  48 00 00 74 */	b lbl_80033E14
lbl_80033DA4:
/* 80033DA4  38 00 00 5B */	li r0, 0x5b
/* 80033DA8  98 1F 00 14 */	stb r0, 0x14(r31)
/* 80033DAC  48 00 00 68 */	b lbl_80033E14
lbl_80033DB0:
/* 80033DB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80033DB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80033DB8  38 63 00 CC */	addi r3, r3, 0xcc
/* 80033DBC  38 80 00 3D */	li r4, 0x3d
/* 80033DC0  48 00 01 09 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 80033DC4  2C 03 00 00 */	cmpwi r3, 0
/* 80033DC8  41 82 00 10 */	beq lbl_80033DD8
/* 80033DCC  38 00 00 5F */	li r0, 0x5f
/* 80033DD0  98 1F 00 14 */	stb r0, 0x14(r31)
/* 80033DD4  48 00 00 40 */	b lbl_80033E14
lbl_80033DD8:
/* 80033DD8  38 00 00 5D */	li r0, 0x5d
/* 80033DDC  98 1F 00 14 */	stb r0, 0x14(r31)
/* 80033DE0  48 00 00 34 */	b lbl_80033E14
lbl_80033DE4:
/* 80033DE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80033DE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80033DEC  38 63 00 CC */	addi r3, r3, 0xcc
/* 80033DF0  38 80 00 3D */	li r4, 0x3d
/* 80033DF4  48 00 00 D5 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 80033DF8  2C 03 00 00 */	cmpwi r3, 0
/* 80033DFC  41 82 00 10 */	beq lbl_80033E0C
/* 80033E00  38 00 00 5C */	li r0, 0x5c
/* 80033E04  98 1F 00 14 */	stb r0, 0x14(r31)
/* 80033E08  48 00 00 0C */	b lbl_80033E14
lbl_80033E0C:
/* 80033E0C  38 00 00 4A */	li r0, 0x4a
/* 80033E10  98 1F 00 14 */	stb r0, 0x14(r31)
lbl_80033E14:
/* 80033E14  3B E0 00 00 */	li r31, 0
lbl_80033E18:
/* 80033E18  7F E3 FB 78 */	mr r3, r31
/* 80033E1C  4B FF 9F D9 */	bl dComIfGp_setSelectItem__Fi
/* 80033E20  3B FF 00 01 */	addi r31, r31, 1
/* 80033E24  2C 1F 00 04 */	cmpwi r31, 4
/* 80033E28  41 80 FF F0 */	blt lbl_80033E18
/* 80033E2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80033E30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80033E34  7C 08 03 A6 */	mtlr r0
/* 80033E38  38 21 00 10 */	addi r1, r1, 0x10
/* 80033E3C  4E 80 00 20 */	blr 
