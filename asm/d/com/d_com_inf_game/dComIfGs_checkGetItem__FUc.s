lbl_8002E4CC:
/* 8002E4CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8002E4D0  7C 08 02 A6 */	mflr r0
/* 8002E4D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8002E4D8  39 61 00 20 */	addi r11, r1, 0x20
/* 8002E4DC  48 33 3C F9 */	bl _savegpr_27
/* 8002E4E0  7C 7E 1B 78 */	mr r30, r3
/* 8002E4E4  3B E0 00 00 */	li r31, 0
/* 8002E4E8  3B 60 00 00 */	li r27, 0
/* 8002E4EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002E4F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002E4F4  3B 83 00 9C */	addi r28, r3, 0x9c
/* 8002E4F8  57 DD 06 3E */	clrlwi r29, r30, 0x18
lbl_8002E4FC:
/* 8002E4FC  7F 83 E3 78 */	mr r3, r28
/* 8002E500  7F 64 DB 78 */	mr r4, r27
/* 8002E504  38 A0 00 01 */	li r5, 1
/* 8002E508  48 00 4B 29 */	bl getItem__17dSv_player_item_cCFib
/* 8002E50C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8002E510  7C 1D 00 40 */	cmplw r29, r0
/* 8002E514  40 82 00 10 */	bne lbl_8002E524
/* 8002E518  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8002E51C  38 03 00 01 */	addi r0, r3, 1
/* 8002E520  54 1F 06 3E */	clrlwi r31, r0, 0x18
lbl_8002E524:
/* 8002E524  3B 7B 00 01 */	addi r27, r27, 1
/* 8002E528  2C 1B 00 3C */	cmpwi r27, 0x3c
/* 8002E52C  41 80 FF D0 */	blt lbl_8002E4FC
/* 8002E530  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002E534  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002E538  88 63 00 13 */	lbz r3, 0x13(r3)
/* 8002E53C  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8002E540  7C 00 18 40 */	cmplw r0, r3
/* 8002E544  40 82 00 10 */	bne lbl_8002E554
/* 8002E548  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8002E54C  38 03 00 01 */	addi r0, r3, 1
/* 8002E550  54 1F 06 3E */	clrlwi r31, r0, 0x18
lbl_8002E554:
/* 8002E554  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002E558  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002E55C  88 63 00 14 */	lbz r3, 0x14(r3)
/* 8002E560  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8002E564  7C 00 18 40 */	cmplw r0, r3
/* 8002E568  40 82 00 10 */	bne lbl_8002E578
/* 8002E56C  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8002E570  38 03 00 01 */	addi r0, r3, 1
/* 8002E574  54 1F 06 3E */	clrlwi r31, r0, 0x18
lbl_8002E578:
/* 8002E578  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002E57C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002E580  88 63 00 15 */	lbz r3, 0x15(r3)
/* 8002E584  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8002E588  7C 00 18 40 */	cmplw r0, r3
/* 8002E58C  40 82 00 10 */	bne lbl_8002E59C
/* 8002E590  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8002E594  38 03 00 01 */	addi r0, r3, 1
/* 8002E598  54 1F 06 3E */	clrlwi r31, r0, 0x18
lbl_8002E59C:
/* 8002E59C  7F E3 FB 78 */	mr r3, r31
/* 8002E5A0  39 61 00 20 */	addi r11, r1, 0x20
/* 8002E5A4  48 33 3C 7D */	bl _restgpr_27
/* 8002E5A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8002E5AC  7C 08 03 A6 */	mtlr r0
/* 8002E5B0  38 21 00 20 */	addi r1, r1, 0x20
/* 8002E5B4  4E 80 00 20 */	blr 
