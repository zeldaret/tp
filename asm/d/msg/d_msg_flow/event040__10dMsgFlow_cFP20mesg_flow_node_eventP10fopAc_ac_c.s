lbl_8024D970:
/* 8024D970  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024D974  7C 08 02 A6 */	mflr r0
/* 8024D978  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024D97C  38 84 00 04 */	addi r4, r4, 4
/* 8024D980  4B FF D7 B1 */	bl getParam__10dMsgFlow_cFPUc
/* 8024D984  28 03 00 07 */	cmplwi r3, 7
/* 8024D988  41 81 00 DC */	bgt lbl_8024DA64
/* 8024D98C  3C 80 80 3C */	lis r4, lit_6752@ha
/* 8024D990  38 84 1F 20 */	addi r4, r4, lit_6752@l
/* 8024D994  54 60 10 3A */	slwi r0, r3, 2
/* 8024D998  7C 04 00 2E */	lwzx r0, r4, r0
/* 8024D99C  7C 09 03 A6 */	mtctr r0
/* 8024D9A0  4E 80 04 20 */	bctr 
/* 8024D9A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024D9A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024D9AC  38 63 00 9C */	addi r3, r3, 0x9c
/* 8024D9B0  38 80 00 61 */	li r4, 0x61
/* 8024D9B4  38 A0 00 60 */	li r5, 0x60
/* 8024D9B8  4B DE 59 B9 */	bl setBottleItemIn__17dSv_player_item_cFUcUc
/* 8024D9BC  48 00 00 A8 */	b lbl_8024DA64
/* 8024D9C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024D9C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024D9C8  38 63 00 9C */	addi r3, r3, 0x9c
/* 8024D9CC  38 80 00 62 */	li r4, 0x62
/* 8024D9D0  38 A0 00 60 */	li r5, 0x60
/* 8024D9D4  4B DE 59 9D */	bl setBottleItemIn__17dSv_player_item_cFUcUc
/* 8024D9D8  48 00 00 8C */	b lbl_8024DA64
/* 8024D9DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024D9E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024D9E4  38 63 00 9C */	addi r3, r3, 0x9c
/* 8024D9E8  38 80 00 63 */	li r4, 0x63
/* 8024D9EC  38 A0 00 60 */	li r5, 0x60
/* 8024D9F0  4B DE 59 81 */	bl setBottleItemIn__17dSv_player_item_cFUcUc
/* 8024D9F4  48 00 00 70 */	b lbl_8024DA64
/* 8024D9F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024D9FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024DA00  38 63 00 9C */	addi r3, r3, 0x9c
/* 8024DA04  38 80 00 64 */	li r4, 0x64
/* 8024DA08  38 A0 00 60 */	li r5, 0x60
/* 8024DA0C  4B DE 59 65 */	bl setBottleItemIn__17dSv_player_item_cFUcUc
/* 8024DA10  48 00 00 54 */	b lbl_8024DA64
/* 8024DA14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024DA18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024DA1C  38 63 00 9C */	addi r3, r3, 0x9c
/* 8024DA20  38 80 00 65 */	li r4, 0x65
/* 8024DA24  38 A0 00 60 */	li r5, 0x60
/* 8024DA28  4B DE 59 49 */	bl setBottleItemIn__17dSv_player_item_cFUcUc
/* 8024DA2C  48 00 00 38 */	b lbl_8024DA64
/* 8024DA30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024DA34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024DA38  38 63 00 9C */	addi r3, r3, 0x9c
/* 8024DA3C  38 80 00 66 */	li r4, 0x66
/* 8024DA40  38 A0 00 60 */	li r5, 0x60
/* 8024DA44  4B DE 59 2D */	bl setBottleItemIn__17dSv_player_item_cFUcUc
/* 8024DA48  48 00 00 1C */	b lbl_8024DA64
/* 8024DA4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024DA50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024DA54  38 63 00 9C */	addi r3, r3, 0x9c
/* 8024DA58  38 80 00 6B */	li r4, 0x6b
/* 8024DA5C  38 A0 00 60 */	li r5, 0x60
/* 8024DA60  4B DE 59 11 */	bl setBottleItemIn__17dSv_player_item_cFUcUc
lbl_8024DA64:
/* 8024DA64  38 60 00 01 */	li r3, 1
/* 8024DA68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024DA6C  7C 08 03 A6 */	mtlr r0
/* 8024DA70  38 21 00 10 */	addi r1, r1, 0x10
/* 8024DA74  4E 80 00 20 */	blr 
