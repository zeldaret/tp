lbl_8096B548:
/* 8096B548  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8096B54C  7C 08 02 A6 */	mflr r0
/* 8096B550  90 01 00 24 */	stw r0, 0x24(r1)
/* 8096B554  39 61 00 20 */	addi r11, r1, 0x20
/* 8096B558  4B 9F 6C 85 */	bl _savegpr_29
/* 8096B55C  7C 7D 1B 78 */	mr r29, r3
/* 8096B560  7C 9E 23 78 */	mr r30, r4
/* 8096B564  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8096B568  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8096B56C  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 8096B570  38 00 FF FF */	li r0, -1
/* 8096B574  90 01 00 08 */	stw r0, 8(r1)
/* 8096B578  7F E3 FB 78 */	mr r3, r31
/* 8096B57C  3C A0 80 97 */	lis r5, d_a_npc_blue_ns__stringBase0@ha /* 0x8096CB4C@ha */
/* 8096B580  38 A5 CB 4C */	addi r5, r5, d_a_npc_blue_ns__stringBase0@l /* 0x8096CB4C@l */
/* 8096B584  38 A5 00 4B */	addi r5, r5, 0x4b
/* 8096B588  38 C0 00 03 */	li r6, 3
/* 8096B58C  4B 6D CB 61 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8096B590  28 03 00 00 */	cmplwi r3, 0
/* 8096B594  41 82 00 10 */	beq lbl_8096B5A4
/* 8096B598  80 03 00 00 */	lwz r0, 0(r3)
/* 8096B59C  90 01 00 08 */	stw r0, 8(r1)
/* 8096B5A0  48 00 00 0C */	b lbl_8096B5AC
lbl_8096B5A4:
/* 8096B5A4  38 60 00 01 */	li r3, 1
/* 8096B5A8  48 00 00 30 */	b lbl_8096B5D8
lbl_8096B5AC:
/* 8096B5AC  7F E3 FB 78 */	mr r3, r31
/* 8096B5B0  7F C4 F3 78 */	mr r4, r30
/* 8096B5B4  4B 6D C7 99 */	bl getIsAddvance__16dEvent_manager_cFi
/* 8096B5B8  2C 03 00 00 */	cmpwi r3, 0
/* 8096B5BC  41 82 00 10 */	beq lbl_8096B5CC
/* 8096B5C0  7F A3 EB 78 */	mr r3, r29
/* 8096B5C4  38 81 00 08 */	addi r4, r1, 8
/* 8096B5C8  48 00 00 29 */	bl _Evt_ChgYami_Chibi_CutInit__13daNpcBlueNS_cFRCi
lbl_8096B5CC:
/* 8096B5CC  7F A3 EB 78 */	mr r3, r29
/* 8096B5D0  38 81 00 08 */	addi r4, r1, 8
/* 8096B5D4  48 00 00 B5 */	bl _Evt_ChgYami_Chibi_CutMain__13daNpcBlueNS_cFRCi
lbl_8096B5D8:
/* 8096B5D8  39 61 00 20 */	addi r11, r1, 0x20
/* 8096B5DC  4B 9F 6C 4D */	bl _restgpr_29
/* 8096B5E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8096B5E4  7C 08 03 A6 */	mtlr r0
/* 8096B5E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8096B5EC  4E 80 00 20 */	blr 
