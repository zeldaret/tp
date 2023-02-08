lbl_80A950BC:
/* 80A950BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A950C0  7C 08 02 A6 */	mflr r0
/* 80A950C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A950C8  39 61 00 20 */	addi r11, r1, 0x20
/* 80A950CC  4B 8C D1 0D */	bl _savegpr_28
/* 80A950D0  7C 7C 1B 78 */	mr r28, r3
/* 80A950D4  7C 9D 23 78 */	mr r29, r4
/* 80A950D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A950DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A950E0  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80A950E4  7F C3 F3 78 */	mr r3, r30
/* 80A950E8  3C A0 80 A9 */	lis r5, d_a_npc_pachi_besu__stringBase0@ha /* 0x80A96B60@ha */
/* 80A950EC  38 A5 6B 60 */	addi r5, r5, d_a_npc_pachi_besu__stringBase0@l /* 0x80A96B60@l */
/* 80A950F0  38 A5 00 D8 */	addi r5, r5, 0xd8
/* 80A950F4  38 C0 00 03 */	li r6, 3
/* 80A950F8  4B 5B 2F F5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A950FC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A95100  40 82 00 0C */	bne lbl_80A9510C
/* 80A95104  38 60 00 01 */	li r3, 1
/* 80A95108  48 00 00 30 */	b lbl_80A95138
lbl_80A9510C:
/* 80A9510C  7F C3 F3 78 */	mr r3, r30
/* 80A95110  7F A4 EB 78 */	mr r4, r29
/* 80A95114  4B 5B 2C 39 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A95118  2C 03 00 00 */	cmpwi r3, 0
/* 80A9511C  41 82 00 10 */	beq lbl_80A9512C
/* 80A95120  7F 83 E3 78 */	mr r3, r28
/* 80A95124  7F E4 FB 78 */	mr r4, r31
/* 80A95128  48 00 00 29 */	bl _cut1stHit_KakasiBody_Init__18daNpc_Pachi_Besu_cFRCi
lbl_80A9512C:
/* 80A9512C  7F 83 E3 78 */	mr r3, r28
/* 80A95130  7F E4 FB 78 */	mr r4, r31
/* 80A95134  48 00 00 A9 */	bl _cut1stHit_KakasiBody_Main__18daNpc_Pachi_Besu_cFRCi
lbl_80A95138:
/* 80A95138  39 61 00 20 */	addi r11, r1, 0x20
/* 80A9513C  4B 8C D0 E9 */	bl _restgpr_28
/* 80A95140  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A95144  7C 08 03 A6 */	mtlr r0
/* 80A95148  38 21 00 20 */	addi r1, r1, 0x20
/* 80A9514C  4E 80 00 20 */	blr 
