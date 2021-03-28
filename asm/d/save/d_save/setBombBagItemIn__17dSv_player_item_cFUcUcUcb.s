lbl_80033910:
/* 80033910  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80033914  7C 08 02 A6 */	mflr r0
/* 80033918  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003391C  39 61 00 20 */	addi r11, r1, 0x20
/* 80033920  48 32 E8 B5 */	bl _savegpr_27
/* 80033924  7C BB 2B 78 */	mr r27, r5
/* 80033928  7C DC 33 78 */	mr r28, r6
/* 8003392C  7C FD 3B 78 */	mr r29, r7
/* 80033930  3B E0 00 00 */	li r31, 0
/* 80033934  54 85 06 3E */	clrlwi r5, r4, 0x18
/* 80033938  38 00 00 03 */	li r0, 3
/* 8003393C  7C 09 03 A6 */	mtctr r0
lbl_80033940:
/* 80033940  38 9F 00 0F */	addi r4, r31, 0xf
/* 80033944  7C 03 20 AE */	lbzx r0, r3, r4
/* 80033948  7C 05 00 40 */	cmplw r5, r0
/* 8003394C  40 82 00 B4 */	bne lbl_80033A00
/* 80033950  7F 65 DB 78 */	mr r5, r27
/* 80033954  4B FF F6 65 */	bl setItem__17dSv_player_item_cFiUc
/* 80033958  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8003395C  28 00 00 01 */	cmplwi r0, 1
/* 80033960  40 82 00 60 */	bne lbl_800339C0
/* 80033964  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 80033968  28 00 00 50 */	cmplwi r0, 0x50
/* 8003396C  41 82 00 54 */	beq lbl_800339C0
/* 80033970  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80033974  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80033978  3B C3 00 F8 */	addi r30, r3, 0xf8
/* 8003397C  7F C3 F3 78 */	mr r3, r30
/* 80033980  7F 64 DB 78 */	mr r4, r27
/* 80033984  48 00 07 75 */	bl getBombNum__21dSv_player_item_max_cCFUc
/* 80033988  57 84 06 3E */	clrlwi r4, r28, 0x18
/* 8003398C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80033990  7C 04 00 40 */	cmplw r4, r0
/* 80033994  40 81 00 14 */	ble lbl_800339A8
/* 80033998  7F C3 F3 78 */	mr r3, r30
/* 8003399C  7F 64 DB 78 */	mr r4, r27
/* 800339A0  48 00 07 59 */	bl getBombNum__21dSv_player_item_max_cCFUc
/* 800339A4  7C 7C 1B 78 */	mr r28, r3
lbl_800339A8:
/* 800339A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800339AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800339B0  38 63 00 EC */	addi r3, r3, 0xec
/* 800339B4  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 800339B8  7F 85 E3 78 */	mr r5, r28
/* 800339BC  48 00 05 B1 */	bl setBombNum__24dSv_player_item_record_cFUcUc
lbl_800339C0:
/* 800339C0  3B A0 00 00 */	li r29, 0
/* 800339C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800339C8  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 800339CC  3B FF 00 0F */	addi r31, r31, 0xf
lbl_800339D0:
/* 800339D0  7F C3 F3 78 */	mr r3, r30
/* 800339D4  7F A4 EB 78 */	mr r4, r29
/* 800339D8  4B FF F0 85 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 800339DC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800339E0  7C 1F 00 00 */	cmpw r31, r0
/* 800339E4  40 82 00 0C */	bne lbl_800339F0
/* 800339E8  7F A3 EB 78 */	mr r3, r29
/* 800339EC  4B FF A4 09 */	bl dComIfGp_setSelectItem__Fi
lbl_800339F0:
/* 800339F0  3B BD 00 01 */	addi r29, r29, 1
/* 800339F4  2C 1D 00 03 */	cmpwi r29, 3
/* 800339F8  41 80 FF D8 */	blt lbl_800339D0
/* 800339FC  48 00 00 0C */	b lbl_80033A08
lbl_80033A00:
/* 80033A00  3B FF 00 01 */	addi r31, r31, 1
/* 80033A04  42 00 FF 3C */	bdnz lbl_80033940
lbl_80033A08:
/* 80033A08  39 61 00 20 */	addi r11, r1, 0x20
/* 80033A0C  48 32 E8 15 */	bl _restgpr_27
/* 80033A10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80033A14  7C 08 03 A6 */	mtlr r0
/* 80033A18  38 21 00 20 */	addi r1, r1, 0x20
/* 80033A1C  4E 80 00 20 */	blr 
