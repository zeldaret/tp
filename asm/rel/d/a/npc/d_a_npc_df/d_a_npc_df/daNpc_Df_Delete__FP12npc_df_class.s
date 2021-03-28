lbl_809A63B4:
/* 809A63B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809A63B8  7C 08 02 A6 */	mflr r0
/* 809A63BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 809A63C0  39 61 00 20 */	addi r11, r1, 0x20
/* 809A63C4  4B 9B BE 18 */	b _savegpr_29
/* 809A63C8  7C 7F 1B 78 */	mr r31, r3
/* 809A63CC  88 03 05 73 */	lbz r0, 0x573(r3)
/* 809A63D0  28 00 00 00 */	cmplwi r0, 0
/* 809A63D4  41 82 00 78 */	beq lbl_809A644C
/* 809A63D8  3C 60 80 9A */	lis r3, stringBase0@ha
/* 809A63DC  38 63 69 7C */	addi r3, r3, stringBase0@l
/* 809A63E0  38 80 00 03 */	li r4, 3
/* 809A63E4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 809A63E8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 809A63EC  3F C5 00 02 */	addis r30, r5, 2
/* 809A63F0  3B DE C2 F8 */	addi r30, r30, -15624
/* 809A63F4  7F C5 F3 78 */	mr r5, r30
/* 809A63F8  38 C0 00 80 */	li r6, 0x80
/* 809A63FC  4B 69 5E F0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809A6400  7C 64 1B 78 */	mr r4, r3
/* 809A6404  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809A6408  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809A640C  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 809A6410  7F A3 EB 78 */	mr r3, r29
/* 809A6414  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 809A6418  7C 05 07 74 */	extsb r5, r0
/* 809A641C  4B 68 67 14 */	b removeSimpleModel__14dComIfG_play_cFP12J3DModelDatai
/* 809A6420  3C 60 80 9A */	lis r3, stringBase0@ha
/* 809A6424  38 63 69 7C */	addi r3, r3, stringBase0@l
/* 809A6428  38 80 00 04 */	li r4, 4
/* 809A642C  7F C5 F3 78 */	mr r5, r30
/* 809A6430  38 C0 00 80 */	li r6, 0x80
/* 809A6434  4B 69 5E B8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809A6438  7C 64 1B 78 */	mr r4, r3
/* 809A643C  7F A3 EB 78 */	mr r3, r29
/* 809A6440  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 809A6444  7C 05 07 74 */	extsb r5, r0
/* 809A6448  4B 68 66 E8 */	b removeSimpleModel__14dComIfG_play_cFP12J3DModelDatai
lbl_809A644C:
/* 809A644C  38 7F 05 68 */	addi r3, r31, 0x568
/* 809A6450  3C 80 80 9A */	lis r4, stringBase0@ha
/* 809A6454  38 84 69 7C */	addi r4, r4, stringBase0@l
/* 809A6458  4B 68 6B B0 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 809A645C  38 60 00 01 */	li r3, 1
/* 809A6460  39 61 00 20 */	addi r11, r1, 0x20
/* 809A6464  4B 9B BD C4 */	b _restgpr_29
/* 809A6468  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809A646C  7C 08 03 A6 */	mtlr r0
/* 809A6470  38 21 00 20 */	addi r1, r1, 0x20
/* 809A6474  4E 80 00 20 */	blr 
