lbl_8001B5E4:
/* 8001B5E4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8001B5E8  7C 08 02 A6 */	mflr r0
/* 8001B5EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8001B5F0  39 61 00 30 */	addi r11, r1, 0x30
/* 8001B5F4  48 34 6B DD */	bl _savegpr_26
/* 8001B5F8  7C 7A 1B 78 */	mr r26, r3
/* 8001B5FC  7C 9B 23 78 */	mr r27, r4
/* 8001B600  7C BC 2B 78 */	mr r28, r5
/* 8001B604  7C DD 33 78 */	mr r29, r6
/* 8001B608  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8001B60C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8001B610  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 8001B614  7F 44 D3 78 */	mr r4, r26
/* 8001B618  7F 65 DB 78 */	mr r5, r27
/* 8001B61C  48 02 CB D9 */	bl getEventPrio__16dEvent_manager_cFP10fopAc_ac_cs
/* 8001B620  54 7E 04 3F */	clrlwi. r30, r3, 0x10
/* 8001B624  40 82 00 08 */	bne lbl_8001B62C
/* 8001B628  3B C0 00 FF */	li r30, 0xff
lbl_8001B62C:
/* 8001B62C  7F 83 E3 78 */	mr r3, r28
/* 8001B630  4B FF FA 29 */	bl event_second_actor__FUs
/* 8001B634  7C 69 1B 78 */	mr r9, r3
/* 8001B638  38 00 00 FF */	li r0, 0xff
/* 8001B63C  90 01 00 08 */	stw r0, 8(r1)
/* 8001B640  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 8001B644  38 80 00 02 */	li r4, 2
/* 8001B648  7F C5 F3 78 */	mr r5, r30
/* 8001B64C  63 80 04 00 */	ori r0, r28, 0x400
/* 8001B650  54 06 04 3E */	clrlwi r6, r0, 0x10
/* 8001B654  7F A7 EB 78 */	mr r7, r29
/* 8001B658  7F 48 D3 78 */	mr r8, r26
/* 8001B65C  7F 6A DB 78 */	mr r10, r27
/* 8001B660  48 02 60 09 */	bl order__14dEvt_control_cFUsUsUsUsPvPvsUc
/* 8001B664  39 61 00 30 */	addi r11, r1, 0x30
/* 8001B668  48 34 6B B5 */	bl _restgpr_26
/* 8001B66C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8001B670  7C 08 03 A6 */	mtlr r0
/* 8001B674  38 21 00 30 */	addi r1, r1, 0x30
/* 8001B678  4E 80 00 20 */	blr 
