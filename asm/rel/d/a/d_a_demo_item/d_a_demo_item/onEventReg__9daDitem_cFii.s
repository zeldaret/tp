lbl_804E0D44:
/* 804E0D44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E0D48  7C 08 02 A6 */	mflr r0
/* 804E0D4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E0D50  39 61 00 20 */	addi r11, r1, 0x20
/* 804E0D54  4B E8 14 85 */	bl _savegpr_28
/* 804E0D58  7C BC 2B 78 */	mr r28, r5
/* 804E0D5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E0D60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E0D64  3B A3 07 F0 */	addi r29, r3, 0x7f0
/* 804E0D68  7F A3 EB 78 */	mr r3, r29
/* 804E0D6C  54 9E 08 3C */	slwi r30, r4, 1
/* 804E0D70  3C 80 80 4E */	lis r4, l_event_reg@ha /* 0x804E19F8@ha */
/* 804E0D74  3B E4 19 F8 */	addi r31, r4, l_event_reg@l /* 0x804E19F8@l */
/* 804E0D78  7C 9F F2 2E */	lhzx r4, r31, r30
/* 804E0D7C  4B B5 3C 89 */	bl getEventReg__11dSv_event_cCFUs
/* 804E0D80  38 00 00 01 */	li r0, 1
/* 804E0D84  7C 00 E0 30 */	slw r0, r0, r28
/* 804E0D88  7C 60 03 78 */	or r0, r3, r0
/* 804E0D8C  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 804E0D90  7F A3 EB 78 */	mr r3, r29
/* 804E0D94  7C 9F F2 2E */	lhzx r4, r31, r30
/* 804E0D98  4B B5 3C 49 */	bl setEventReg__11dSv_event_cFUsUc
/* 804E0D9C  39 61 00 20 */	addi r11, r1, 0x20
/* 804E0DA0  4B E8 14 85 */	bl _restgpr_28
/* 804E0DA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E0DA8  7C 08 03 A6 */	mtlr r0
/* 804E0DAC  38 21 00 20 */	addi r1, r1, 0x20
/* 804E0DB0  4E 80 00 20 */	blr 
