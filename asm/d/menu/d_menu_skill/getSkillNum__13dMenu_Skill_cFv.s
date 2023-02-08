lbl_801F9470:
/* 801F9470  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F9474  7C 08 02 A6 */	mflr r0
/* 801F9478  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F947C  39 61 00 20 */	addi r11, r1, 0x20
/* 801F9480  48 16 8D 51 */	bl _savegpr_26
/* 801F9484  3B 60 00 00 */	li r27, 0
/* 801F9488  3B 40 00 00 */	li r26, 0
/* 801F948C  3B E0 00 00 */	li r31, 0
/* 801F9490  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801F9494  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801F9498  3B 83 07 F0 */	addi r28, r3, 0x7f0
/* 801F949C  3C 60 80 3C */	lis r3, evt_id@ha /* 0x803BE8A4@ha */
/* 801F94A0  3B A3 E8 A4 */	addi r29, r3, evt_id@l /* 0x803BE8A4@l */
/* 801F94A4  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 801F94A8  3B C3 72 88 */	addi r30, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
lbl_801F94AC:
/* 801F94AC  7F 83 E3 78 */	mr r3, r28
/* 801F94B0  7C 1D F8 2E */	lwzx r0, r29, r31
/* 801F94B4  54 00 08 3C */	slwi r0, r0, 1
/* 801F94B8  7C 9E 02 2E */	lhzx r4, r30, r0
/* 801F94BC  4B E3 B5 01 */	bl isEventBit__11dSv_event_cCFUs
/* 801F94C0  2C 03 00 00 */	cmpwi r3, 0
/* 801F94C4  41 82 00 10 */	beq lbl_801F94D4
/* 801F94C8  57 63 06 3E */	clrlwi r3, r27, 0x18
/* 801F94CC  38 03 00 01 */	addi r0, r3, 1
/* 801F94D0  54 1B 06 3E */	clrlwi r27, r0, 0x18
lbl_801F94D4:
/* 801F94D4  3B 5A 00 01 */	addi r26, r26, 1
/* 801F94D8  2C 1A 00 07 */	cmpwi r26, 7
/* 801F94DC  3B FF 00 04 */	addi r31, r31, 4
/* 801F94E0  41 80 FF CC */	blt lbl_801F94AC
/* 801F94E4  7F 63 DB 78 */	mr r3, r27
/* 801F94E8  39 61 00 20 */	addi r11, r1, 0x20
/* 801F94EC  48 16 8D 31 */	bl _restgpr_26
/* 801F94F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F94F4  7C 08 03 A6 */	mtlr r0
/* 801F94F8  38 21 00 20 */	addi r1, r1, 0x20
/* 801F94FC  4E 80 00 20 */	blr 
