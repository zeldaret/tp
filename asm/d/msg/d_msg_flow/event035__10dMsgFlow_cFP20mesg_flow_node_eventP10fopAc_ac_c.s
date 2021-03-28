lbl_8024D7C8:
/* 8024D7C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024D7CC  7C 08 02 A6 */	mflr r0
/* 8024D7D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024D7D4  38 84 00 04 */	addi r4, r4, 4
/* 8024D7D8  4B FF D9 59 */	bl getParam__10dMsgFlow_cFPUc
/* 8024D7DC  7C 64 1B 78 */	mr r4, r3
/* 8024D7E0  2C 04 00 F4 */	cmpwi r4, 0xf4
/* 8024D7E4  41 82 00 0C */	beq lbl_8024D7F0
/* 8024D7E8  2C 04 00 F5 */	cmpwi r4, 0xf5
/* 8024D7EC  40 82 00 1C */	bne lbl_8024D808
lbl_8024D7F0:
/* 8024D7F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024D7F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024D7F8  38 63 00 CC */	addi r3, r3, 0xcc
/* 8024D7FC  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 8024D800  4B DE 66 95 */	bl offFirstBit__21dSv_player_get_item_cFUc
/* 8024D804  48 00 00 58 */	b lbl_8024D85C
lbl_8024D808:
/* 8024D808  2C 04 00 90 */	cmpwi r4, 0x90
/* 8024D80C  41 82 00 0C */	beq lbl_8024D818
/* 8024D810  2C 04 00 91 */	cmpwi r4, 0x91
/* 8024D814  40 82 00 20 */	bne lbl_8024D834
lbl_8024D818:
/* 8024D818  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024D81C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024D820  38 63 00 9C */	addi r3, r3, 0x9c
/* 8024D824  38 80 00 13 */	li r4, 0x13
/* 8024D828  38 A0 00 FF */	li r5, 0xff
/* 8024D82C  4B DE 57 8D */	bl setItem__17dSv_player_item_cFiUc
/* 8024D830  48 00 00 2C */	b lbl_8024D85C
lbl_8024D834:
/* 8024D834  38 04 FF 80 */	addi r0, r4, -128
/* 8024D838  28 00 00 02 */	cmplwi r0, 2
/* 8024D83C  40 81 00 0C */	ble lbl_8024D848
/* 8024D840  2C 04 00 83 */	cmpwi r4, 0x83
/* 8024D844  40 82 00 18 */	bne lbl_8024D85C
lbl_8024D848:
/* 8024D848  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024D84C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024D850  38 63 00 9C */	addi r3, r3, 0x9c
/* 8024D854  38 80 00 FF */	li r4, 0xff
/* 8024D858  4B DE 63 D5 */	bl setWarashibeItem__17dSv_player_item_cFUc
lbl_8024D85C:
/* 8024D85C  38 60 00 01 */	li r3, 1
/* 8024D860  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024D864  7C 08 03 A6 */	mtlr r0
/* 8024D868  38 21 00 10 */	addi r1, r1, 0x10
/* 8024D86C  4E 80 00 20 */	blr 
