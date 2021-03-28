lbl_8002E428:
/* 8002E428  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8002E42C  7C 08 02 A6 */	mflr r0
/* 8002E430  90 01 00 34 */	stw r0, 0x34(r1)
/* 8002E434  39 61 00 30 */	addi r11, r1, 0x30
/* 8002E438  48 33 3D 95 */	bl _savegpr_25
/* 8002E43C  3B 60 00 00 */	li r27, 0
/* 8002E440  3C 60 80 3A */	lis r3, l_itemno@ha
/* 8002E444  38 03 71 D0 */	addi r0, r3, l_itemno@l
/* 8002E448  7C 1A 03 78 */	mr r26, r0
/* 8002E44C  3B 20 00 00 */	li r25, 0
/* 8002E450  3B E0 00 00 */	li r31, 0
/* 8002E454  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002E458  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002E45C  3B A3 00 CC */	addi r29, r3, 0xcc
/* 8002E460  3B 83 07 F0 */	addi r28, r3, 0x7f0
/* 8002E464  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha
/* 8002E468  3B C3 72 88 */	addi r30, r3, saveBitLabels__16dSv_event_flag_c@l
lbl_8002E46C:
/* 8002E46C  88 9A 00 00 */	lbz r4, 0(r26)
/* 8002E470  7F A3 EB 78 */	mr r3, r29
/* 8002E474  3B 5A 00 01 */	addi r26, r26, 1
/* 8002E478  48 00 5A 51 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 8002E47C  2C 03 00 00 */	cmpwi r3, 0
/* 8002E480  41 82 00 20 */	beq lbl_8002E4A0
/* 8002E484  7F 83 E3 78 */	mr r3, r28
/* 8002E488  7C 9E FA 14 */	add r4, r30, r31
/* 8002E48C  A0 84 03 22 */	lhz r4, 0x322(r4)
/* 8002E490  48 00 65 2D */	bl isEventBit__11dSv_event_cCFUs
/* 8002E494  2C 03 00 00 */	cmpwi r3, 0
/* 8002E498  41 82 00 08 */	beq lbl_8002E4A0
/* 8002E49C  3B 7B 00 01 */	addi r27, r27, 1
lbl_8002E4A0:
/* 8002E4A0  3B 39 00 01 */	addi r25, r25, 1
/* 8002E4A4  28 19 00 18 */	cmplwi r25, 0x18
/* 8002E4A8  3B FF 00 02 */	addi r31, r31, 2
/* 8002E4AC  41 80 FF C0 */	blt lbl_8002E46C
/* 8002E4B0  7F 63 DB 78 */	mr r3, r27
/* 8002E4B4  39 61 00 30 */	addi r11, r1, 0x30
/* 8002E4B8  48 33 3D 61 */	bl _restgpr_25
/* 8002E4BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8002E4C0  7C 08 03 A6 */	mtlr r0
/* 8002E4C4  38 21 00 30 */	addi r1, r1, 0x30
/* 8002E4C8  4E 80 00 20 */	blr 
