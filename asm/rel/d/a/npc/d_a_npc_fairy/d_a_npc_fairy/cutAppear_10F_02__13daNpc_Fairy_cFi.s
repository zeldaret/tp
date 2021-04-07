lbl_809B4A44:
/* 809B4A44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809B4A48  7C 08 02 A6 */	mflr r0
/* 809B4A4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 809B4A50  39 61 00 20 */	addi r11, r1, 0x20
/* 809B4A54  4B 9A D7 85 */	bl _savegpr_28
/* 809B4A58  7C 7C 1B 78 */	mr r28, r3
/* 809B4A5C  7C 9D 23 78 */	mr r29, r4
/* 809B4A60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809B4A64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809B4A68  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 809B4A6C  7F C3 F3 78 */	mr r3, r30
/* 809B4A70  3C A0 80 9C */	lis r5, d_a_npc_fairy__stringBase0@ha /* 0x809B94CC@ha */
/* 809B4A74  38 A5 94 CC */	addi r5, r5, d_a_npc_fairy__stringBase0@l /* 0x809B94CC@l */
/* 809B4A78  38 A5 00 FE */	addi r5, r5, 0xfe
/* 809B4A7C  38 C0 00 03 */	li r6, 3
/* 809B4A80  4B 69 36 6D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 809B4A84  7C 7F 1B 79 */	or. r31, r3, r3
/* 809B4A88  40 82 00 0C */	bne lbl_809B4A94
/* 809B4A8C  38 60 00 01 */	li r3, 1
/* 809B4A90  48 00 00 30 */	b lbl_809B4AC0
lbl_809B4A94:
/* 809B4A94  7F C3 F3 78 */	mr r3, r30
/* 809B4A98  7F A4 EB 78 */	mr r4, r29
/* 809B4A9C  4B 69 32 B1 */	bl getIsAddvance__16dEvent_manager_cFi
/* 809B4AA0  2C 03 00 00 */	cmpwi r3, 0
/* 809B4AA4  41 82 00 10 */	beq lbl_809B4AB4
/* 809B4AA8  7F 83 E3 78 */	mr r3, r28
/* 809B4AAC  7F E4 FB 78 */	mr r4, r31
/* 809B4AB0  48 00 00 29 */	bl _cutAppear_10F_02_Init__13daNpc_Fairy_cFRCi
lbl_809B4AB4:
/* 809B4AB4  7F 83 E3 78 */	mr r3, r28
/* 809B4AB8  7F E4 FB 78 */	mr r4, r31
/* 809B4ABC  48 00 01 3D */	bl _cutAppear_10F_02_Main__13daNpc_Fairy_cFRCi
lbl_809B4AC0:
/* 809B4AC0  39 61 00 20 */	addi r11, r1, 0x20
/* 809B4AC4  4B 9A D7 61 */	bl _restgpr_28
/* 809B4AC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809B4ACC  7C 08 03 A6 */	mtlr r0
/* 809B4AD0  38 21 00 20 */	addi r1, r1, 0x20
/* 809B4AD4  4E 80 00 20 */	blr 
