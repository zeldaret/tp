lbl_80990218:
/* 80990218  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8099021C  7C 08 02 A6 */	mflr r0
/* 80990220  90 01 00 24 */	stw r0, 0x24(r1)
/* 80990224  39 61 00 20 */	addi r11, r1, 0x20
/* 80990228  4B 9D 1F B5 */	bl _savegpr_29
/* 8099022C  7C 7D 1B 78 */	mr r29, r3
/* 80990230  7C 9E 23 78 */	mr r30, r4
/* 80990234  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80990238  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8099023C  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80990240  38 00 FF FF */	li r0, -1
/* 80990244  90 01 00 08 */	stw r0, 8(r1)
/* 80990248  7F E3 FB 78 */	mr r3, r31
/* 8099024C  3C A0 80 99 */	lis r5, d_a_npc_chin__stringBase0@ha /* 0x80991D40@ha */
/* 80990250  38 A5 1D 40 */	addi r5, r5, d_a_npc_chin__stringBase0@l /* 0x80991D40@l */
/* 80990254  38 A5 00 94 */	addi r5, r5, 0x94
/* 80990258  38 C0 00 03 */	li r6, 3
/* 8099025C  4B 6B 7E 91 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80990260  28 03 00 00 */	cmplwi r3, 0
/* 80990264  41 82 00 10 */	beq lbl_80990274
/* 80990268  80 03 00 00 */	lwz r0, 0(r3)
/* 8099026C  90 01 00 08 */	stw r0, 8(r1)
/* 80990270  48 00 00 0C */	b lbl_8099027C
lbl_80990274:
/* 80990274  38 60 00 01 */	li r3, 1
/* 80990278  48 00 00 30 */	b lbl_809902A8
lbl_8099027C:
/* 8099027C  7F E3 FB 78 */	mr r3, r31
/* 80990280  7F C4 F3 78 */	mr r4, r30
/* 80990284  4B 6B 7A C9 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80990288  2C 03 00 00 */	cmpwi r3, 0
/* 8099028C  41 82 00 10 */	beq lbl_8099029C
/* 80990290  7F A3 EB 78 */	mr r3, r29
/* 80990294  38 81 00 08 */	addi r4, r1, 8
/* 80990298  48 00 00 29 */	bl _Evt_GameSucceed_CutInit__11daNpcChin_cFRCi
lbl_8099029C:
/* 8099029C  7F A3 EB 78 */	mr r3, r29
/* 809902A0  38 81 00 08 */	addi r4, r1, 8
/* 809902A4  48 00 01 79 */	bl _Evt_GameSucceed_CutMain__11daNpcChin_cFRCi
lbl_809902A8:
/* 809902A8  39 61 00 20 */	addi r11, r1, 0x20
/* 809902AC  4B 9D 1F 7D */	bl _restgpr_29
/* 809902B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809902B4  7C 08 03 A6 */	mtlr r0
/* 809902B8  38 21 00 20 */	addi r1, r1, 0x20
/* 809902BC  4E 80 00 20 */	blr 
