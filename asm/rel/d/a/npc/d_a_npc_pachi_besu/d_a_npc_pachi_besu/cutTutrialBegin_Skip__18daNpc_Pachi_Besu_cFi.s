lbl_80A94C08:
/* 80A94C08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A94C0C  7C 08 02 A6 */	mflr r0
/* 80A94C10  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A94C14  39 61 00 20 */	addi r11, r1, 0x20
/* 80A94C18  4B 8C D5 C1 */	bl _savegpr_28
/* 80A94C1C  7C 7C 1B 78 */	mr r28, r3
/* 80A94C20  7C 9D 23 78 */	mr r29, r4
/* 80A94C24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A94C28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A94C2C  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80A94C30  7F C3 F3 78 */	mr r3, r30
/* 80A94C34  3C A0 80 A9 */	lis r5, d_a_npc_pachi_besu__stringBase0@ha /* 0x80A96B60@ha */
/* 80A94C38  38 A5 6B 60 */	addi r5, r5, d_a_npc_pachi_besu__stringBase0@l /* 0x80A96B60@l */
/* 80A94C3C  38 A5 00 D8 */	addi r5, r5, 0xd8
/* 80A94C40  38 C0 00 03 */	li r6, 3
/* 80A94C44  4B 5B 34 A9 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A94C48  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A94C4C  40 82 00 0C */	bne lbl_80A94C58
/* 80A94C50  38 60 00 01 */	li r3, 1
/* 80A94C54  48 00 00 30 */	b lbl_80A94C84
lbl_80A94C58:
/* 80A94C58  7F C3 F3 78 */	mr r3, r30
/* 80A94C5C  7F A4 EB 78 */	mr r4, r29
/* 80A94C60  4B 5B 30 ED */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A94C64  2C 03 00 00 */	cmpwi r3, 0
/* 80A94C68  41 82 00 10 */	beq lbl_80A94C78
/* 80A94C6C  7F 83 E3 78 */	mr r3, r28
/* 80A94C70  7F E4 FB 78 */	mr r4, r31
/* 80A94C74  48 00 00 29 */	bl _cutTutrialBegin_Skip_Init__18daNpc_Pachi_Besu_cFRCi
lbl_80A94C78:
/* 80A94C78  7F 83 E3 78 */	mr r3, r28
/* 80A94C7C  7F E4 FB 78 */	mr r4, r31
/* 80A94C80  48 00 00 25 */	bl _cutTutrialBegin_Skip_Main__18daNpc_Pachi_Besu_cFRCi
lbl_80A94C84:
/* 80A94C84  39 61 00 20 */	addi r11, r1, 0x20
/* 80A94C88  4B 8C D5 9D */	bl _restgpr_28
/* 80A94C8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A94C90  7C 08 03 A6 */	mtlr r0
/* 80A94C94  38 21 00 20 */	addi r1, r1, 0x20
/* 80A94C98  4E 80 00 20 */	blr 
