lbl_8002F810:
/* 8002F810  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002F814  7C 08 02 A6 */	mflr r0
/* 8002F818  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002F81C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002F820  93 C1 00 08 */	stw r30, 8(r1)
/* 8002F824  3B E0 00 00 */	li r31, 0
/* 8002F828  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002F82C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002F830  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8002F834  38 80 0D 04 */	li r4, 0xd04
/* 8002F838  48 00 51 85 */	bl isEventBit__11dSv_event_cCFUs
/* 8002F83C  2C 03 00 00 */	cmpwi r3, 0
/* 8002F840  41 82 00 14 */	beq lbl_8002F854
/* 8002F844  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002F848  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002F84C  8B E3 00 1E */	lbz r31, 0x1e(r3)
/* 8002F850  48 00 00 CC */	b lbl_8002F91C
lbl_8002F854:
/* 8002F854  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002F858  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002F85C  3B C3 00 28 */	addi r30, r3, 0x28
/* 8002F860  7F C3 F3 78 */	mr r3, r30
/* 8002F864  38 80 00 00 */	li r4, 0
/* 8002F868  48 00 33 85 */	bl isTransformLV__21dSv_player_status_b_cCFi
/* 8002F86C  2C 03 00 00 */	cmpwi r3, 0
/* 8002F870  41 82 00 20 */	beq lbl_8002F890
/* 8002F874  7F C3 F3 78 */	mr r3, r30
/* 8002F878  38 80 00 00 */	li r4, 0
/* 8002F87C  48 00 33 35 */	bl isDarkClearLV__21dSv_player_status_b_cCFi
/* 8002F880  2C 03 00 00 */	cmpwi r3, 0
/* 8002F884  40 82 00 0C */	bne lbl_8002F890
/* 8002F888  3B E0 00 01 */	li r31, 1
/* 8002F88C  48 00 00 90 */	b lbl_8002F91C
lbl_8002F890:
/* 8002F890  7F C3 F3 78 */	mr r3, r30
/* 8002F894  38 80 00 01 */	li r4, 1
/* 8002F898  48 00 33 55 */	bl isTransformLV__21dSv_player_status_b_cCFi
/* 8002F89C  2C 03 00 00 */	cmpwi r3, 0
/* 8002F8A0  41 82 00 20 */	beq lbl_8002F8C0
/* 8002F8A4  7F C3 F3 78 */	mr r3, r30
/* 8002F8A8  38 80 00 01 */	li r4, 1
/* 8002F8AC  48 00 33 05 */	bl isDarkClearLV__21dSv_player_status_b_cCFi
/* 8002F8B0  2C 03 00 00 */	cmpwi r3, 0
/* 8002F8B4  40 82 00 0C */	bne lbl_8002F8C0
/* 8002F8B8  3B E0 00 01 */	li r31, 1
/* 8002F8BC  48 00 00 60 */	b lbl_8002F91C
lbl_8002F8C0:
/* 8002F8C0  7F C3 F3 78 */	mr r3, r30
/* 8002F8C4  38 80 00 02 */	li r4, 2
/* 8002F8C8  48 00 33 25 */	bl isTransformLV__21dSv_player_status_b_cCFi
/* 8002F8CC  2C 03 00 00 */	cmpwi r3, 0
/* 8002F8D0  41 82 00 20 */	beq lbl_8002F8F0
/* 8002F8D4  7F C3 F3 78 */	mr r3, r30
/* 8002F8D8  38 80 00 02 */	li r4, 2
/* 8002F8DC  48 00 32 D5 */	bl isDarkClearLV__21dSv_player_status_b_cCFi
/* 8002F8E0  2C 03 00 00 */	cmpwi r3, 0
/* 8002F8E4  40 82 00 0C */	bne lbl_8002F8F0
/* 8002F8E8  3B E0 00 01 */	li r31, 1
/* 8002F8EC  48 00 00 30 */	b lbl_8002F91C
lbl_8002F8F0:
/* 8002F8F0  7F C3 F3 78 */	mr r3, r30
/* 8002F8F4  38 80 00 03 */	li r4, 3
/* 8002F8F8  48 00 32 F5 */	bl isTransformLV__21dSv_player_status_b_cCFi
/* 8002F8FC  2C 03 00 00 */	cmpwi r3, 0
/* 8002F900  41 82 00 1C */	beq lbl_8002F91C
/* 8002F904  7F C3 F3 78 */	mr r3, r30
/* 8002F908  38 80 00 03 */	li r4, 3
/* 8002F90C  48 00 32 A5 */	bl isDarkClearLV__21dSv_player_status_b_cCFi
/* 8002F910  2C 03 00 00 */	cmpwi r3, 0
/* 8002F914  40 82 00 08 */	bne lbl_8002F91C
/* 8002F918  3B E0 00 01 */	li r31, 1
lbl_8002F91C:
/* 8002F91C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002F920  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002F924  3B C3 4E 00 */	addi r30, r3, 0x4e00
/* 8002F928  7F C3 F3 78 */	mr r3, r30
/* 8002F92C  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002F930  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002F934  38 84 00 AD */	addi r4, r4, 0xad
/* 8002F938  48 33 90 5D */	bl strcmp
/* 8002F93C  2C 03 00 00 */	cmpwi r3, 0
/* 8002F940  40 82 00 40 */	bne lbl_8002F980
/* 8002F944  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002F948  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002F94C  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 8002F950  2C 00 00 02 */	cmpwi r0, 2
/* 8002F954  40 82 00 2C */	bne lbl_8002F980
/* 8002F958  A8 03 4E 08 */	lha r0, 0x4e08(r3)
/* 8002F95C  2C 00 00 0A */	cmpwi r0, 0xa
/* 8002F960  40 82 00 20 */	bne lbl_8002F980
/* 8002F964  38 63 09 58 */	addi r3, r3, 0x958
/* 8002F968  38 80 00 0C */	li r4, 0xc
/* 8002F96C  48 00 4E F5 */	bl isSwitch__12dSv_memBit_cCFi
/* 8002F970  2C 03 00 00 */	cmpwi r3, 0
/* 8002F974  40 82 00 0C */	bne lbl_8002F980
/* 8002F978  3B E0 00 00 */	li r31, 0
/* 8002F97C  48 00 00 58 */	b lbl_8002F9D4
lbl_8002F980:
/* 8002F980  7F C3 F3 78 */	mr r3, r30
/* 8002F984  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002F988  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002F98C  38 84 00 AD */	addi r4, r4, 0xad
/* 8002F990  48 33 90 05 */	bl strcmp
/* 8002F994  2C 03 00 00 */	cmpwi r3, 0
/* 8002F998  40 82 00 3C */	bne lbl_8002F9D4
/* 8002F99C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002F9A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002F9A4  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 8002F9A8  2C 00 00 09 */	cmpwi r0, 9
/* 8002F9AC  40 82 00 28 */	bne lbl_8002F9D4
/* 8002F9B0  A8 03 4E 08 */	lha r0, 0x4e08(r3)
/* 8002F9B4  2C 00 00 0A */	cmpwi r0, 0xa
/* 8002F9B8  40 82 00 1C */	bne lbl_8002F9D4
/* 8002F9BC  38 63 09 58 */	addi r3, r3, 0x958
/* 8002F9C0  38 80 00 0D */	li r4, 0xd
/* 8002F9C4  48 00 4E 9D */	bl isSwitch__12dSv_memBit_cCFi
/* 8002F9C8  2C 03 00 00 */	cmpwi r3, 0
/* 8002F9CC  40 82 00 08 */	bne lbl_8002F9D4
/* 8002F9D0  3B E0 00 00 */	li r31, 0
lbl_8002F9D4:
/* 8002F9D4  7F E3 FB 78 */	mr r3, r31
/* 8002F9D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002F9DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8002F9E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002F9E4  7C 08 03 A6 */	mtlr r0
/* 8002F9E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8002F9EC  4E 80 00 20 */	blr 
