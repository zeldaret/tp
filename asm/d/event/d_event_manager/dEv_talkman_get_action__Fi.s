lbl_80048748:
/* 80048748  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8004874C  7C 08 02 A6 */	mflr r0
/* 80048750  90 01 00 24 */	stw r0, 0x24(r1)
/* 80048754  39 61 00 20 */	addi r11, r1, 0x20
/* 80048758  48 31 9A 81 */	bl _savegpr_28
/* 8004875C  7C 7C 1B 78 */	mr r28, r3
/* 80048760  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80048764  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80048768  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 8004876C  7F E3 FB 78 */	mr r3, r31
/* 80048770  3C 80 80 38 */	lis r4, d_event_d_event_manager__stringBase0@ha /* 0x80379F60@ha */
/* 80048774  38 84 9F 60 */	addi r4, r4, d_event_d_event_manager__stringBase0@l /* 0x80379F60@l */
/* 80048778  38 84 01 9C */	addi r4, r4, 0x19c
/* 8004877C  38 A0 00 00 */	li r5, 0
/* 80048780  38 C0 FF FF */	li r6, -1
/* 80048784  4B FF F3 99 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80048788  7C 7E 1B 78 */	mr r30, r3
/* 8004878C  2C 1E FF FF */	cmpwi r30, -1
/* 80048790  40 82 00 0C */	bne lbl_8004879C
/* 80048794  38 60 FF FF */	li r3, -1
/* 80048798  48 00 00 40 */	b lbl_800487D8
lbl_8004879C:
/* 8004879C  7F E3 FB 78 */	mr r3, r31
/* 800487A0  7F C4 F3 78 */	mr r4, r30
/* 800487A4  3C A0 80 3B */	lis r5, action_table@ha /* 0x803A82A8@ha */
/* 800487A8  38 A5 82 A8 */	addi r5, r5, action_table@l /* 0x803A82A8@l */
/* 800487AC  38 C0 00 03 */	li r6, 3
/* 800487B0  38 E0 00 00 */	li r7, 0
/* 800487B4  39 00 00 00 */	li r8, 0
/* 800487B8  4B FF F6 59 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 800487BC  7C 7D 1B 78 */	mr r29, r3
/* 800487C0  7C 1D E0 00 */	cmpw r29, r28
/* 800487C4  40 82 00 10 */	bne lbl_800487D4
/* 800487C8  7F E3 FB 78 */	mr r3, r31
/* 800487CC  7F C4 F3 78 */	mr r4, r30
/* 800487D0  4B FF F9 AD */	bl cutEnd__16dEvent_manager_cFi
lbl_800487D4:
/* 800487D4  7F A3 EB 78 */	mr r3, r29
lbl_800487D8:
/* 800487D8  39 61 00 20 */	addi r11, r1, 0x20
/* 800487DC  48 31 9A 49 */	bl _restgpr_28
/* 800487E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800487E4  7C 08 03 A6 */	mtlr r0
/* 800487E8  38 21 00 20 */	addi r1, r1, 0x20
/* 800487EC  4E 80 00 20 */	blr 
