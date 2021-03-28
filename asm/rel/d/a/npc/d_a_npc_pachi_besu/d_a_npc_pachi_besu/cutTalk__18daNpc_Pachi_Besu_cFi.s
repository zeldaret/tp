lbl_80A94ECC:
/* 80A94ECC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A94ED0  7C 08 02 A6 */	mflr r0
/* 80A94ED4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A94ED8  39 61 00 20 */	addi r11, r1, 0x20
/* 80A94EDC  4B 8C D2 FC */	b _savegpr_28
/* 80A94EE0  7C 7C 1B 78 */	mr r28, r3
/* 80A94EE4  7C 9D 23 78 */	mr r29, r4
/* 80A94EE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A94EEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A94EF0  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80A94EF4  7F C3 F3 78 */	mr r3, r30
/* 80A94EF8  3C A0 80 A9 */	lis r5, struct_80A96B60+0x0@ha
/* 80A94EFC  38 A5 6B 60 */	addi r5, r5, struct_80A96B60+0x0@l
/* 80A94F00  38 A5 00 D8 */	addi r5, r5, 0xd8
/* 80A94F04  38 C0 00 03 */	li r6, 3
/* 80A94F08  4B 5B 31 E4 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A94F0C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A94F10  40 82 00 0C */	bne lbl_80A94F1C
/* 80A94F14  38 60 00 01 */	li r3, 1
/* 80A94F18  48 00 00 30 */	b lbl_80A94F48
lbl_80A94F1C:
/* 80A94F1C  7F C3 F3 78 */	mr r3, r30
/* 80A94F20  7F A4 EB 78 */	mr r4, r29
/* 80A94F24  4B 5B 2E 28 */	b getIsAddvance__16dEvent_manager_cFi
/* 80A94F28  2C 03 00 00 */	cmpwi r3, 0
/* 80A94F2C  41 82 00 10 */	beq lbl_80A94F3C
/* 80A94F30  7F 83 E3 78 */	mr r3, r28
/* 80A94F34  7F E4 FB 78 */	mr r4, r31
/* 80A94F38  48 00 00 29 */	bl _cutTalk_Init__18daNpc_Pachi_Besu_cFRCi
lbl_80A94F3C:
/* 80A94F3C  7F 83 E3 78 */	mr r3, r28
/* 80A94F40  7F E4 FB 78 */	mr r4, r31
/* 80A94F44  48 00 00 25 */	bl _cutTalk_Main__18daNpc_Pachi_Besu_cFRCi
lbl_80A94F48:
/* 80A94F48  39 61 00 20 */	addi r11, r1, 0x20
/* 80A94F4C  4B 8C D2 D8 */	b _restgpr_28
/* 80A94F50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A94F54  7C 08 03 A6 */	mtlr r0
/* 80A94F58  38 21 00 20 */	addi r1, r1, 0x20
/* 80A94F5C  4E 80 00 20 */	blr 
