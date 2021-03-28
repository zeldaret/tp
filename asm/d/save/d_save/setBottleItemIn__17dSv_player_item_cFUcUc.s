lbl_80033370:
/* 80033370  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80033374  7C 08 02 A6 */	mflr r0
/* 80033378  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003337C  39 61 00 20 */	addi r11, r1, 0x20
/* 80033380  48 32 EE 59 */	bl _savegpr_28
/* 80033384  7C 7C 1B 78 */	mr r28, r3
/* 80033388  7C BD 2B 78 */	mr r29, r5
/* 8003338C  7C 83 23 78 */	mr r3, r4
/* 80033390  4B FF F5 89 */	bl dSv_item_rename__FUc
/* 80033394  7C 7E 1B 78 */	mr r30, r3
/* 80033398  7F A3 EB 78 */	mr r3, r29
/* 8003339C  4B FF F5 7D */	bl dSv_item_rename__FUc
/* 800333A0  7C 7D 1B 78 */	mr r29, r3
/* 800333A4  3B E0 00 00 */	li r31, 0
/* 800333A8  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 800333AC  38 00 00 04 */	li r0, 4
/* 800333B0  7C 09 03 A6 */	mtctr r0
lbl_800333B4:
/* 800333B4  38 9F 00 0B */	addi r4, r31, 0xb
/* 800333B8  7C 1C 20 AE */	lbzx r0, r28, r4
/* 800333BC  7C 03 00 40 */	cmplw r3, r0
/* 800333C0  40 82 00 70 */	bne lbl_80033430
/* 800333C4  7F 83 E3 78 */	mr r3, r28
/* 800333C8  7F A5 EB 78 */	mr r5, r29
/* 800333CC  4B FF FB ED */	bl setItem__17dSv_player_item_cFiUc
/* 800333D0  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 800333D4  28 00 00 6B */	cmplwi r0, 0x6b
/* 800333D8  40 82 00 18 */	bne lbl_800333F0
/* 800333DC  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 800333E0  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 800333E4  38 1F 00 0B */	addi r0, r31, 0xb
/* 800333E8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 800333EC  48 1E A8 D9 */	bl setHotSpringTimer__13dMeter2Info_cFUc
lbl_800333F0:
/* 800333F0  3B A0 00 00 */	li r29, 0
/* 800333F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800333F8  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 800333FC  3B FF 00 0B */	addi r31, r31, 0xb
lbl_80033400:
/* 80033400  7F C3 F3 78 */	mr r3, r30
/* 80033404  7F A4 EB 78 */	mr r4, r29
/* 80033408  4B FF F6 55 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 8003340C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80033410  7C 1F 00 00 */	cmpw r31, r0
/* 80033414  40 82 00 0C */	bne lbl_80033420
/* 80033418  7F A3 EB 78 */	mr r3, r29
/* 8003341C  4B FF A9 D9 */	bl dComIfGp_setSelectItem__Fi
lbl_80033420:
/* 80033420  3B BD 00 01 */	addi r29, r29, 1
/* 80033424  2C 1D 00 03 */	cmpwi r29, 3
/* 80033428  41 80 FF D8 */	blt lbl_80033400
/* 8003342C  48 00 00 0C */	b lbl_80033438
lbl_80033430:
/* 80033430  3B FF 00 01 */	addi r31, r31, 1
/* 80033434  42 00 FF 80 */	bdnz lbl_800333B4
lbl_80033438:
/* 80033438  39 61 00 20 */	addi r11, r1, 0x20
/* 8003343C  48 32 ED E9 */	bl _restgpr_28
/* 80033440  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80033444  7C 08 03 A6 */	mtlr r0
/* 80033448  38 21 00 20 */	addi r1, r1, 0x20
/* 8003344C  4E 80 00 20 */	blr 
