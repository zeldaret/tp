lbl_80115D08:
/* 80115D08  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80115D0C  7C 08 02 A6 */	mflr r0
/* 80115D10  90 01 00 44 */	stw r0, 0x44(r1)
/* 80115D14  39 61 00 40 */	addi r11, r1, 0x40
/* 80115D18  48 24 C4 BD */	bl _savegpr_27
/* 80115D1C  7C 7C 1B 78 */	mr r28, r3
/* 80115D20  7C 9D 23 78 */	mr r29, r4
/* 80115D24  7C BE 2B 78 */	mr r30, r5
/* 80115D28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80115D2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80115D30  80 03 0D D0 */	lwz r0, 0xdd0(r3)
/* 80115D34  54 1F 07 3E */	clrlwi r31, r0, 0x1c
/* 80115D38  2C 06 00 00 */	cmpwi r6, 0
/* 80115D3C  41 82 01 68 */	beq lbl_80115EA4
/* 80115D40  4B FA A5 D1 */	bl checkDungeon__9daAlink_cFv
/* 80115D44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80115D48  41 82 01 5C */	beq lbl_80115EA4
/* 80115D4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80115D50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80115D54  3B 63 4E 20 */	addi r27, r3, 0x4e20
/* 80115D58  7F 63 DB 78 */	mr r3, r27
/* 80115D5C  81 9B 00 00 */	lwz r12, 0(r27)
/* 80115D60  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 80115D64  7D 89 03 A6 */	mtctr r12
/* 80115D68  4E 80 04 21 */	bctrl 
/* 80115D6C  88 03 00 09 */	lbz r0, 9(r3)
/* 80115D70  54 00 FE FE */	rlwinm r0, r0, 0x1f, 0x1b, 0x1f
/* 80115D74  2C 00 00 17 */	cmpwi r0, 0x17
/* 80115D78  41 82 01 2C */	beq lbl_80115EA4
/* 80115D7C  7F 63 DB 78 */	mr r3, r27
/* 80115D80  81 9B 00 00 */	lwz r12, 0(r27)
/* 80115D84  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 80115D88  7D 89 03 A6 */	mtctr r12
/* 80115D8C  4E 80 04 21 */	bctrl 
/* 80115D90  88 03 00 09 */	lbz r0, 9(r3)
/* 80115D94  54 00 FE FE */	rlwinm r0, r0, 0x1f, 0x1b, 0x1f
/* 80115D98  2C 00 00 18 */	cmpwi r0, 0x18
/* 80115D9C  41 82 01 08 */	beq lbl_80115EA4
/* 80115DA0  38 60 00 2D */	li r3, 0x2d
/* 80115DA4  38 80 00 01 */	li r4, 1
/* 80115DA8  4B F8 21 39 */	bl checkItemGet__FUci
/* 80115DAC  2C 03 00 00 */	cmpwi r3, 0
/* 80115DB0  40 82 00 24 */	bne lbl_80115DD4
/* 80115DB4  38 60 00 27 */	li r3, 0x27
/* 80115DB8  38 80 00 01 */	li r4, 1
/* 80115DBC  4B F8 21 25 */	bl checkItemGet__FUci
/* 80115DC0  2C 03 00 00 */	cmpwi r3, 0
/* 80115DC4  41 82 00 E0 */	beq lbl_80115EA4
/* 80115DC8  48 00 90 79 */	bl checkLv7DungeonShop__9daAlink_cFv
/* 80115DCC  2C 03 00 00 */	cmpwi r3, 0
/* 80115DD0  40 82 00 D4 */	bne lbl_80115EA4
lbl_80115DD4:
/* 80115DD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80115DD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80115DDC  3B 63 09 58 */	addi r27, r3, 0x958
/* 80115DE0  7F 63 DB 78 */	mr r3, r27
/* 80115DE4  38 80 00 06 */	li r4, 6
/* 80115DE8  4B F1 EB 4D */	bl isDungeonItem__12dSv_memBit_cCFi
/* 80115DEC  2C 03 00 00 */	cmpwi r3, 0
/* 80115DF0  41 82 00 B4 */	beq lbl_80115EA4
/* 80115DF4  7F 63 DB 78 */	mr r3, r27
/* 80115DF8  38 80 00 03 */	li r4, 3
/* 80115DFC  4B F1 EB 39 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 80115E00  2C 03 00 00 */	cmpwi r3, 0
/* 80115E04  40 82 00 A0 */	bne lbl_80115EA4
/* 80115E08  3B 60 00 05 */	li r27, 5
/* 80115E0C  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha
/* 80115E10  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l
/* 80115E14  38 63 00 BB */	addi r3, r3, 0xbb
/* 80115E18  4B F8 7C 49 */	bl checkStageName__9daAlink_cFPCc
/* 80115E1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80115E20  41 82 00 2C */	beq lbl_80115E4C
/* 80115E24  38 60 00 01 */	li r3, 1
/* 80115E28  38 80 00 00 */	li r4, 0
/* 80115E2C  38 A1 00 10 */	addi r5, r1, 0x10
/* 80115E30  38 C1 00 08 */	addi r6, r1, 8
/* 80115E34  48 03 F9 41 */	bl daNpcF_getPlayerInfoFromPlayerList__FiiR4cXyzR5csXyz
/* 80115E38  3B A1 00 10 */	addi r29, r1, 0x10
/* 80115E3C  28 1F 00 0C */	cmplwi r31, 0xc
/* 80115E40  41 82 00 48 */	beq lbl_80115E88
/* 80115E44  3B 60 00 08 */	li r27, 8
/* 80115E48  48 00 00 40 */	b lbl_80115E88
lbl_80115E4C:
/* 80115E4C  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha
/* 80115E50  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l
/* 80115E54  38 63 00 C2 */	addi r3, r3, 0xc2
/* 80115E58  4B F8 7C 09 */	bl checkStageName__9daAlink_cFPCc
/* 80115E5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80115E60  40 82 00 1C */	bne lbl_80115E7C
/* 80115E64  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha
/* 80115E68  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l
/* 80115E6C  38 63 00 C9 */	addi r3, r3, 0xc9
/* 80115E70  4B F8 7B F1 */	bl checkStageName__9daAlink_cFPCc
/* 80115E74  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80115E78  41 82 00 10 */	beq lbl_80115E88
lbl_80115E7C:
/* 80115E7C  28 1F 00 0C */	cmplwi r31, 0xc
/* 80115E80  41 82 00 08 */	beq lbl_80115E88
/* 80115E84  3B 60 00 09 */	li r27, 9
lbl_80115E88:
/* 80115E88  7F 83 E3 78 */	mr r3, r28
/* 80115E8C  7F A4 EB 78 */	mr r4, r29
/* 80115E90  7F C5 F3 78 */	mr r5, r30
/* 80115E94  7F 66 DB 78 */	mr r6, r27
/* 80115E98  4B FF FD B9 */	bl createNpcTks__9daAlink_cFP4cXyziUl
/* 80115E9C  38 60 00 01 */	li r3, 1
/* 80115EA0  48 00 00 08 */	b lbl_80115EA8
lbl_80115EA4:
/* 80115EA4  38 60 00 00 */	li r3, 0
lbl_80115EA8:
/* 80115EA8  39 61 00 40 */	addi r11, r1, 0x40
/* 80115EAC  48 24 C3 75 */	bl _restgpr_27
/* 80115EB0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80115EB4  7C 08 03 A6 */	mtlr r0
/* 80115EB8  38 21 00 40 */	addi r1, r1, 0x40
/* 80115EBC  4E 80 00 20 */	blr 
