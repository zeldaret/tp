lbl_80A9E9E8:
/* 80A9E9E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A9E9EC  7C 08 02 A6 */	mflr r0
/* 80A9E9F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A9E9F4  39 61 00 20 */	addi r11, r1, 0x20
/* 80A9E9F8  4B 8C 37 E1 */	bl _savegpr_28
/* 80A9E9FC  7C 7C 1B 78 */	mr r28, r3
/* 80A9EA00  7C 9D 23 78 */	mr r29, r4
/* 80A9EA04  38 00 00 01 */	li r0, 1
/* 80A9EA08  98 03 10 04 */	stb r0, 0x1004(r3)
/* 80A9EA0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A9EA10  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A9EA14  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80A9EA18  7F 84 E3 78 */	mr r4, r28
/* 80A9EA1C  3C A0 80 AA */	lis r5, d_a_npc_pachi_taro__stringBase0@ha /* 0x80AA1814@ha */
/* 80A9EA20  38 A5 18 14 */	addi r5, r5, d_a_npc_pachi_taro__stringBase0@l /* 0x80AA1814@l */
/* 80A9EA24  38 A5 00 0F */	addi r5, r5, 0xf
/* 80A9EA28  4B 5A 3F 31 */	bl setSkipZev__14dEvt_control_cFPvPc
/* 80A9EA2C  3B DF 4F F8 */	addi r30, r31, 0x4ff8
/* 80A9EA30  7F C3 F3 78 */	mr r3, r30
/* 80A9EA34  7F A4 EB 78 */	mr r4, r29
/* 80A9EA38  3C A0 80 AA */	lis r5, d_a_npc_pachi_taro__stringBase0@ha /* 0x80AA1814@ha */
/* 80A9EA3C  38 A5 18 14 */	addi r5, r5, d_a_npc_pachi_taro__stringBase0@l /* 0x80AA1814@l */
/* 80A9EA40  38 A5 00 EF */	addi r5, r5, 0xef
/* 80A9EA44  38 C0 00 03 */	li r6, 3
/* 80A9EA48  4B 5A 96 A5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A9EA4C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A9EA50  40 82 00 0C */	bne lbl_80A9EA5C
/* 80A9EA54  38 60 00 01 */	li r3, 1
/* 80A9EA58  48 00 00 30 */	b lbl_80A9EA88
lbl_80A9EA5C:
/* 80A9EA5C  7F C3 F3 78 */	mr r3, r30
/* 80A9EA60  7F A4 EB 78 */	mr r4, r29
/* 80A9EA64  4B 5A 92 E9 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A9EA68  2C 03 00 00 */	cmpwi r3, 0
/* 80A9EA6C  41 82 00 10 */	beq lbl_80A9EA7C
/* 80A9EA70  7F 83 E3 78 */	mr r3, r28
/* 80A9EA74  7F E4 FB 78 */	mr r4, r31
/* 80A9EA78  48 00 00 29 */	bl _cutTutrialBegin_Init__18daNpc_Pachi_Taro_cFRCi
lbl_80A9EA7C:
/* 80A9EA7C  7F 83 E3 78 */	mr r3, r28
/* 80A9EA80  7F E4 FB 78 */	mr r4, r31
/* 80A9EA84  48 00 00 B9 */	bl _cutTutrialBegin_Main__18daNpc_Pachi_Taro_cFRCi
lbl_80A9EA88:
/* 80A9EA88  39 61 00 20 */	addi r11, r1, 0x20
/* 80A9EA8C  4B 8C 37 99 */	bl _restgpr_28
/* 80A9EA90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A9EA94  7C 08 03 A6 */	mtlr r0
/* 80A9EA98  38 21 00 20 */	addi r1, r1, 0x20
/* 80A9EA9C  4E 80 00 20 */	blr 
