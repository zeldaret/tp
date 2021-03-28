lbl_809905C4:
/* 809905C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809905C8  7C 08 02 A6 */	mflr r0
/* 809905CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 809905D0  39 61 00 20 */	addi r11, r1, 0x20
/* 809905D4  4B 9D 1C 08 */	b _savegpr_29
/* 809905D8  7C 7D 1B 78 */	mr r29, r3
/* 809905DC  7C 9E 23 78 */	mr r30, r4
/* 809905E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809905E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809905E8  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 809905EC  38 00 FF FF */	li r0, -1
/* 809905F0  90 01 00 08 */	stw r0, 8(r1)
/* 809905F4  7F E3 FB 78 */	mr r3, r31
/* 809905F8  3C A0 80 99 */	lis r5, struct_80991D40+0x0@ha
/* 809905FC  38 A5 1D 40 */	addi r5, r5, struct_80991D40+0x0@l
/* 80990600  38 A5 00 94 */	addi r5, r5, 0x94
/* 80990604  38 C0 00 03 */	li r6, 3
/* 80990608  4B 6B 7A E4 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8099060C  28 03 00 00 */	cmplwi r3, 0
/* 80990610  41 82 00 10 */	beq lbl_80990620
/* 80990614  80 03 00 00 */	lwz r0, 0(r3)
/* 80990618  90 01 00 08 */	stw r0, 8(r1)
/* 8099061C  48 00 00 0C */	b lbl_80990628
lbl_80990620:
/* 80990620  38 60 00 01 */	li r3, 1
/* 80990624  48 00 00 30 */	b lbl_80990654
lbl_80990628:
/* 80990628  7F E3 FB 78 */	mr r3, r31
/* 8099062C  7F C4 F3 78 */	mr r4, r30
/* 80990630  4B 6B 77 1C */	b getIsAddvance__16dEvent_manager_cFi
/* 80990634  2C 03 00 00 */	cmpwi r3, 0
/* 80990638  41 82 00 10 */	beq lbl_80990648
/* 8099063C  7F A3 EB 78 */	mr r3, r29
/* 80990640  38 81 00 08 */	addi r4, r1, 8
/* 80990644  48 00 00 29 */	bl _Evt_SelectGiveUp_CutInit__11daNpcChin_cFRCi
lbl_80990648:
/* 80990648  7F A3 EB 78 */	mr r3, r29
/* 8099064C  38 81 00 08 */	addi r4, r1, 8
/* 80990650  48 00 00 CD */	bl _Evt_SelectGiveUp_CutMain__11daNpcChin_cFRCi
lbl_80990654:
/* 80990654  39 61 00 20 */	addi r11, r1, 0x20
/* 80990658  4B 9D 1B D0 */	b _restgpr_29
/* 8099065C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80990660  7C 08 03 A6 */	mtlr r0
/* 80990664  38 21 00 20 */	addi r1, r1, 0x20
/* 80990668  4E 80 00 20 */	blr 
