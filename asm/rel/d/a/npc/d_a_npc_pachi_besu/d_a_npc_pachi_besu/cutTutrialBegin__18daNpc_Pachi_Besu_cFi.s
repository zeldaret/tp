lbl_80A94B64:
/* 80A94B64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A94B68  7C 08 02 A6 */	mflr r0
/* 80A94B6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A94B70  39 61 00 20 */	addi r11, r1, 0x20
/* 80A94B74  4B 8C D6 64 */	b _savegpr_28
/* 80A94B78  7C 7C 1B 78 */	mr r28, r3
/* 80A94B7C  7C 9D 23 78 */	mr r29, r4
/* 80A94B80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A94B84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A94B88  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80A94B8C  7F C3 F3 78 */	mr r3, r30
/* 80A94B90  3C A0 80 A9 */	lis r5, struct_80A96B60+0x0@ha
/* 80A94B94  38 A5 6B 60 */	addi r5, r5, struct_80A96B60+0x0@l
/* 80A94B98  38 A5 00 D8 */	addi r5, r5, 0xd8
/* 80A94B9C  38 C0 00 03 */	li r6, 3
/* 80A94BA0  4B 5B 35 4C */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A94BA4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A94BA8  40 82 00 0C */	bne lbl_80A94BB4
/* 80A94BAC  38 60 00 01 */	li r3, 1
/* 80A94BB0  48 00 00 30 */	b lbl_80A94BE0
lbl_80A94BB4:
/* 80A94BB4  7F C3 F3 78 */	mr r3, r30
/* 80A94BB8  7F A4 EB 78 */	mr r4, r29
/* 80A94BBC  4B 5B 31 90 */	b getIsAddvance__16dEvent_manager_cFi
/* 80A94BC0  2C 03 00 00 */	cmpwi r3, 0
/* 80A94BC4  41 82 00 10 */	beq lbl_80A94BD4
/* 80A94BC8  7F 83 E3 78 */	mr r3, r28
/* 80A94BCC  7F E4 FB 78 */	mr r4, r31
/* 80A94BD0  48 00 00 29 */	bl _cutTutrialBegin_Init__18daNpc_Pachi_Besu_cFRCi
lbl_80A94BD4:
/* 80A94BD4  7F 83 E3 78 */	mr r3, r28
/* 80A94BD8  7F E4 FB 78 */	mr r4, r31
/* 80A94BDC  48 00 00 25 */	bl _cutTutrialBegin_Main__18daNpc_Pachi_Besu_cFRCi
lbl_80A94BE0:
/* 80A94BE0  39 61 00 20 */	addi r11, r1, 0x20
/* 80A94BE4  4B 8C D6 40 */	b _restgpr_28
/* 80A94BE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A94BEC  7C 08 03 A6 */	mtlr r0
/* 80A94BF0  38 21 00 20 */	addi r1, r1, 0x20
/* 80A94BF4  4E 80 00 20 */	blr 
