lbl_809909F4:
/* 809909F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809909F8  7C 08 02 A6 */	mflr r0
/* 809909FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80990A00  39 61 00 20 */	addi r11, r1, 0x20
/* 80990A04  4B 9D 17 D8 */	b _savegpr_29
/* 80990A08  7C 7D 1B 78 */	mr r29, r3
/* 80990A0C  7C 9E 23 78 */	mr r30, r4
/* 80990A10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80990A14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80990A18  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80990A1C  38 00 FF FF */	li r0, -1
/* 80990A20  90 01 00 08 */	stw r0, 8(r1)
/* 80990A24  7F E3 FB 78 */	mr r3, r31
/* 80990A28  3C A0 80 99 */	lis r5, struct_80991D40+0x0@ha
/* 80990A2C  38 A5 1D 40 */	addi r5, r5, struct_80991D40+0x0@l
/* 80990A30  38 A5 00 94 */	addi r5, r5, 0x94
/* 80990A34  38 C0 00 03 */	li r6, 3
/* 80990A38  4B 6B 76 B4 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80990A3C  28 03 00 00 */	cmplwi r3, 0
/* 80990A40  41 82 00 10 */	beq lbl_80990A50
/* 80990A44  80 03 00 00 */	lwz r0, 0(r3)
/* 80990A48  90 01 00 08 */	stw r0, 8(r1)
/* 80990A4C  48 00 00 0C */	b lbl_80990A58
lbl_80990A50:
/* 80990A50  38 60 00 01 */	li r3, 1
/* 80990A54  48 00 00 30 */	b lbl_80990A84
lbl_80990A58:
/* 80990A58  7F E3 FB 78 */	mr r3, r31
/* 80990A5C  7F C4 F3 78 */	mr r4, r30
/* 80990A60  4B 6B 72 EC */	b getIsAddvance__16dEvent_manager_cFi
/* 80990A64  2C 03 00 00 */	cmpwi r3, 0
/* 80990A68  41 82 00 10 */	beq lbl_80990A78
/* 80990A6C  7F A3 EB 78 */	mr r3, r29
/* 80990A70  38 81 00 08 */	addi r4, r1, 8
/* 80990A74  48 00 00 29 */	bl _Evt_Appear_CutInit__11daNpcChin_cFRCi
lbl_80990A78:
/* 80990A78  7F A3 EB 78 */	mr r3, r29
/* 80990A7C  38 81 00 08 */	addi r4, r1, 8
/* 80990A80  48 00 01 59 */	bl _Evt_Appear_CutMain__11daNpcChin_cFRCi
lbl_80990A84:
/* 80990A84  39 61 00 20 */	addi r11, r1, 0x20
/* 80990A88  4B 9D 17 A0 */	b _restgpr_29
/* 80990A8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80990A90  7C 08 03 A6 */	mtlr r0
/* 80990A94  38 21 00 20 */	addi r1, r1, 0x20
/* 80990A98  4E 80 00 20 */	blr 
