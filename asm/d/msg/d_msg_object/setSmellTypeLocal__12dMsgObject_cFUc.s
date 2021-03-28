lbl_80237E04:
/* 80237E04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80237E08  7C 08 02 A6 */	mflr r0
/* 80237E0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80237E10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80237E14  7C 7F 1B 78 */	mr r31, r3
/* 80237E18  98 83 01 A0 */	stb r4, 0x1a0(r3)
/* 80237E1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80237E20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80237E24  38 63 00 CC */	addi r3, r3, 0xcc
/* 80237E28  4B DF C0 39 */	bl onFirstBit__21dSv_player_get_item_cFUc
/* 80237E2C  88 9F 01 A0 */	lbz r4, 0x1a0(r31)
/* 80237E30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80237E34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80237E38  98 83 00 16 */	stb r4, 0x16(r3)
/* 80237E3C  38 60 00 02 */	li r3, 2
/* 80237E40  4B DF 5E 85 */	bl dComIfGs_setSelectItemIndex__FiUc
/* 80237E44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80237E48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80237E4C  7C 08 03 A6 */	mtlr r0
/* 80237E50  38 21 00 10 */	addi r1, r1, 0x10
/* 80237E54  4E 80 00 20 */	blr 
