lbl_80A9F688:
/* 80A9F688  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A9F68C  7C 08 02 A6 */	mflr r0
/* 80A9F690  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A9F694  39 61 00 20 */	addi r11, r1, 0x20
/* 80A9F698  4B 8C 2B 41 */	bl _savegpr_28
/* 80A9F69C  7C 7C 1B 78 */	mr r28, r3
/* 80A9F6A0  7C 9D 23 78 */	mr r29, r4
/* 80A9F6A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A9F6A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A9F6AC  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80A9F6B0  7F C3 F3 78 */	mr r3, r30
/* 80A9F6B4  3C A0 80 AA */	lis r5, d_a_npc_pachi_taro__stringBase0@ha /* 0x80AA1814@ha */
/* 80A9F6B8  38 A5 18 14 */	addi r5, r5, d_a_npc_pachi_taro__stringBase0@l /* 0x80AA1814@l */
/* 80A9F6BC  38 A5 00 EF */	addi r5, r5, 0xef
/* 80A9F6C0  38 C0 00 03 */	li r6, 3
/* 80A9F6C4  4B 5A 8A 29 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A9F6C8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A9F6CC  40 82 00 0C */	bne lbl_80A9F6D8
/* 80A9F6D0  38 60 00 01 */	li r3, 1
/* 80A9F6D4  48 00 00 30 */	b lbl_80A9F704
lbl_80A9F6D8:
/* 80A9F6D8  7F C3 F3 78 */	mr r3, r30
/* 80A9F6DC  7F A4 EB 78 */	mr r4, r29
/* 80A9F6E0  4B 5A 86 6D */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A9F6E4  2C 03 00 00 */	cmpwi r3, 0
/* 80A9F6E8  41 82 00 10 */	beq lbl_80A9F6F8
/* 80A9F6EC  7F 83 E3 78 */	mr r3, r28
/* 80A9F6F0  7F E4 FB 78 */	mr r4, r31
/* 80A9F6F4  48 00 00 29 */	bl _cut1stHit_KakasiBody_Init__18daNpc_Pachi_Taro_cFRCi
lbl_80A9F6F8:
/* 80A9F6F8  7F 83 E3 78 */	mr r3, r28
/* 80A9F6FC  7F E4 FB 78 */	mr r4, r31
/* 80A9F700  48 00 01 3D */	bl _cut1stHit_KakasiBody_Main__18daNpc_Pachi_Taro_cFRCi
lbl_80A9F704:
/* 80A9F704  39 61 00 20 */	addi r11, r1, 0x20
/* 80A9F708  4B 8C 2B 1D */	bl _restgpr_28
/* 80A9F70C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A9F710  7C 08 03 A6 */	mtlr r0
/* 80A9F714  38 21 00 20 */	addi r1, r1, 0x20
/* 80A9F718  4E 80 00 20 */	blr 
