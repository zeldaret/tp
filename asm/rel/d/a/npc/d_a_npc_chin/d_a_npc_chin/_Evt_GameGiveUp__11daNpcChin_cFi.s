lbl_809907AC:
/* 809907AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809907B0  7C 08 02 A6 */	mflr r0
/* 809907B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 809907B8  39 61 00 20 */	addi r11, r1, 0x20
/* 809907BC  4B 9D 1A 20 */	b _savegpr_29
/* 809907C0  7C 7D 1B 78 */	mr r29, r3
/* 809907C4  7C 9E 23 78 */	mr r30, r4
/* 809907C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809907CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809907D0  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 809907D4  38 00 FF FF */	li r0, -1
/* 809907D8  90 01 00 08 */	stw r0, 8(r1)
/* 809907DC  7F E3 FB 78 */	mr r3, r31
/* 809907E0  3C A0 80 99 */	lis r5, struct_80991D40+0x0@ha
/* 809907E4  38 A5 1D 40 */	addi r5, r5, struct_80991D40+0x0@l
/* 809907E8  38 A5 00 94 */	addi r5, r5, 0x94
/* 809907EC  38 C0 00 03 */	li r6, 3
/* 809907F0  4B 6B 78 FC */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 809907F4  28 03 00 00 */	cmplwi r3, 0
/* 809907F8  41 82 00 10 */	beq lbl_80990808
/* 809907FC  80 03 00 00 */	lwz r0, 0(r3)
/* 80990800  90 01 00 08 */	stw r0, 8(r1)
/* 80990804  48 00 00 0C */	b lbl_80990810
lbl_80990808:
/* 80990808  38 60 00 01 */	li r3, 1
/* 8099080C  48 00 00 30 */	b lbl_8099083C
lbl_80990810:
/* 80990810  7F E3 FB 78 */	mr r3, r31
/* 80990814  7F C4 F3 78 */	mr r4, r30
/* 80990818  4B 6B 75 34 */	b getIsAddvance__16dEvent_manager_cFi
/* 8099081C  2C 03 00 00 */	cmpwi r3, 0
/* 80990820  41 82 00 10 */	beq lbl_80990830
/* 80990824  7F A3 EB 78 */	mr r3, r29
/* 80990828  38 81 00 08 */	addi r4, r1, 8
/* 8099082C  48 00 00 29 */	bl _Evt_GameGiveUp_CutInit__11daNpcChin_cFRCi
lbl_80990830:
/* 80990830  7F A3 EB 78 */	mr r3, r29
/* 80990834  38 81 00 08 */	addi r4, r1, 8
/* 80990838  48 00 01 19 */	bl _Evt_GameGiveUp_CutMain__11daNpcChin_cFRCi
lbl_8099083C:
/* 8099083C  39 61 00 20 */	addi r11, r1, 0x20
/* 80990840  4B 9D 19 E8 */	b _restgpr_29
/* 80990844  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80990848  7C 08 03 A6 */	mtlr r0
/* 8099084C  38 21 00 20 */	addi r1, r1, 0x20
/* 80990850  4E 80 00 20 */	blr 
