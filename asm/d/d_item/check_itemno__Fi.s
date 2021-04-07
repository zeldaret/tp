lbl_8009B7C4:
/* 8009B7C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009B7C8  7C 08 02 A6 */	mflr r0
/* 8009B7CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009B7D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8009B7D4  7C 7F 1B 78 */	mr r31, r3
/* 8009B7D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8009B7DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8009B7E0  38 80 00 00 */	li r4, 0
/* 8009B7E4  4B F9 73 15 */	bl isMagicFlag__21dSv_player_status_a_cCFUc
/* 8009B7E8  2C 03 00 00 */	cmpwi r3, 0
/* 8009B7EC  40 82 00 1C */	bne lbl_8009B808
/* 8009B7F0  2C 1F 00 08 */	cmpwi r31, 8
/* 8009B7F4  41 82 00 0C */	beq lbl_8009B800
/* 8009B7F8  2C 1F 00 09 */	cmpwi r31, 9
/* 8009B7FC  40 82 00 0C */	bne lbl_8009B808
lbl_8009B800:
/* 8009B800  38 60 00 01 */	li r3, 1
/* 8009B804  48 00 01 28 */	b lbl_8009B92C
lbl_8009B808:
/* 8009B808  2C 1F 00 11 */	cmpwi r31, 0x11
/* 8009B80C  40 82 00 28 */	bne lbl_8009B834
/* 8009B810  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8009B814  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8009B818  38 63 00 CC */	addi r3, r3, 0xcc
/* 8009B81C  38 80 00 43 */	li r4, 0x43
/* 8009B820  4B F9 86 A9 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 8009B824  2C 03 00 00 */	cmpwi r3, 0
/* 8009B828  40 82 00 8C */	bne lbl_8009B8B4
/* 8009B82C  38 60 00 01 */	li r3, 1
/* 8009B830  48 00 00 FC */	b lbl_8009B92C
lbl_8009B834:
/* 8009B834  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8009B838  4B FF FE 9D */	bl isArrow__FUc
/* 8009B83C  2C 03 00 00 */	cmpwi r3, 0
/* 8009B840  41 82 00 74 */	beq lbl_8009B8B4
/* 8009B844  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8009B848  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8009B84C  38 63 00 CC */	addi r3, r3, 0xcc
/* 8009B850  38 80 00 43 */	li r4, 0x43
/* 8009B854  4B F9 86 75 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 8009B858  2C 03 00 00 */	cmpwi r3, 0
/* 8009B85C  40 82 00 0C */	bne lbl_8009B868
/* 8009B860  38 60 00 01 */	li r3, 1
/* 8009B864  48 00 00 C8 */	b lbl_8009B92C
lbl_8009B868:
/* 8009B868  38 60 00 00 */	li r3, 0
/* 8009B86C  4B F9 11 11 */	bl getLayerNo__14dComIfG_play_cFi
/* 8009B870  2C 03 00 0D */	cmpwi r3, 0xd
/* 8009B874  41 82 00 14 */	beq lbl_8009B888
/* 8009B878  38 60 00 00 */	li r3, 0
/* 8009B87C  4B F9 11 01 */	bl getLayerNo__14dComIfG_play_cFi
/* 8009B880  2C 03 00 0E */	cmpwi r3, 0xe
/* 8009B884  40 82 00 30 */	bne lbl_8009B8B4
lbl_8009B888:
/* 8009B888  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8009B88C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8009B890  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8009B894  3C 80 80 38 */	lis r4, d_d_item__stringBase0@ha /* 0x8037B0D0@ha */
/* 8009B898  38 84 B0 D0 */	addi r4, r4, d_d_item__stringBase0@l /* 0x8037B0D0@l */
/* 8009B89C  38 A0 00 06 */	li r5, 6
/* 8009B8A0  48 2C D0 B5 */	bl strncmp
/* 8009B8A4  2C 03 00 00 */	cmpwi r3, 0
/* 8009B8A8  41 82 00 0C */	beq lbl_8009B8B4
/* 8009B8AC  38 60 00 01 */	li r3, 1
/* 8009B8B0  48 00 00 7C */	b lbl_8009B92C
lbl_8009B8B4:
/* 8009B8B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8009B8B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8009B8BC  38 63 00 CC */	addi r3, r3, 0xcc
/* 8009B8C0  38 80 00 50 */	li r4, 0x50
/* 8009B8C4  4B F9 86 05 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 8009B8C8  2C 03 00 00 */	cmpwi r3, 0
/* 8009B8CC  40 82 00 1C */	bne lbl_8009B8E8
/* 8009B8D0  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8009B8D4  4B FF FD B5 */	bl isBomb__FUc
/* 8009B8D8  2C 03 00 00 */	cmpwi r3, 0
/* 8009B8DC  41 82 00 0C */	beq lbl_8009B8E8
/* 8009B8E0  38 60 00 01 */	li r3, 1
/* 8009B8E4  48 00 00 48 */	b lbl_8009B92C
lbl_8009B8E8:
/* 8009B8E8  2C 1F 00 1F */	cmpwi r31, 0x1f
/* 8009B8EC  40 82 00 08 */	bne lbl_8009B8F4
/* 8009B8F0  3B E0 00 00 */	li r31, 0
lbl_8009B8F4:
/* 8009B8F4  38 60 00 4B */	li r3, 0x4b
/* 8009B8F8  38 80 00 01 */	li r4, 1
/* 8009B8FC  4B FF C5 E5 */	bl checkItemGet__FUci
/* 8009B900  2C 03 00 00 */	cmpwi r3, 0
/* 8009B904  40 82 00 10 */	bne lbl_8009B914
/* 8009B908  2C 1F 00 12 */	cmpwi r31, 0x12
/* 8009B90C  40 82 00 08 */	bne lbl_8009B914
/* 8009B910  3B E0 00 01 */	li r31, 1
lbl_8009B914:
/* 8009B914  2C 1F 00 08 */	cmpwi r31, 8
/* 8009B918  41 82 00 0C */	beq lbl_8009B924
/* 8009B91C  2C 1F 00 09 */	cmpwi r31, 9
/* 8009B920  40 82 00 08 */	bne lbl_8009B928
lbl_8009B924:
/* 8009B924  3B E0 00 01 */	li r31, 1
lbl_8009B928:
/* 8009B928  57 E3 06 3E */	clrlwi r3, r31, 0x18
lbl_8009B92C:
/* 8009B92C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8009B930  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009B934  7C 08 03 A6 */	mtlr r0
/* 8009B938  38 21 00 10 */	addi r1, r1, 0x10
/* 8009B93C  4E 80 00 20 */	blr 
