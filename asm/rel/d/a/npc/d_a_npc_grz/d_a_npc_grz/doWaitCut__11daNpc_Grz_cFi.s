lbl_809ED18C:
/* 809ED18C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809ED190  7C 08 02 A6 */	mflr r0
/* 809ED194  90 01 00 24 */	stw r0, 0x24(r1)
/* 809ED198  39 61 00 20 */	addi r11, r1, 0x20
/* 809ED19C  4B 97 50 39 */	bl _savegpr_27
/* 809ED1A0  7C 7B 1B 78 */	mr r27, r3
/* 809ED1A4  7C 9C 23 78 */	mr r28, r4
/* 809ED1A8  3B C0 00 00 */	li r30, 0
/* 809ED1AC  3B A0 00 00 */	li r29, 0
/* 809ED1B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809ED1B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809ED1B8  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 809ED1BC  7F E3 FB 78 */	mr r3, r31
/* 809ED1C0  3C A0 80 9F */	lis r5, d_a_npc_grz__stringBase0@ha /* 0x809EF638@ha */
/* 809ED1C4  38 A5 F6 38 */	addi r5, r5, d_a_npc_grz__stringBase0@l /* 0x809EF638@l */
/* 809ED1C8  38 A5 00 5C */	addi r5, r5, 0x5c
/* 809ED1CC  38 C0 00 03 */	li r6, 3
/* 809ED1D0  4B 65 AF 1D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 809ED1D4  28 03 00 00 */	cmplwi r3, 0
/* 809ED1D8  41 82 00 08 */	beq lbl_809ED1E0
/* 809ED1DC  83 A3 00 00 */	lwz r29, 0(r3)
lbl_809ED1E0:
/* 809ED1E0  7F E3 FB 78 */	mr r3, r31
/* 809ED1E4  7F 84 E3 78 */	mr r4, r28
/* 809ED1E8  4B 65 AB 65 */	bl getIsAddvance__16dEvent_manager_cFi
/* 809ED1EC  2C 03 00 00 */	cmpwi r3, 0
/* 809ED1F0  41 82 00 08 */	beq lbl_809ED1F8
/* 809ED1F4  93 BB 09 60 */	stw r29, 0x960(r27)
lbl_809ED1F8:
/* 809ED1F8  38 7B 09 60 */	addi r3, r27, 0x960
/* 809ED1FC  48 00 1E 69 */	bl func_809EF064
/* 809ED200  2C 03 00 00 */	cmpwi r3, 0
/* 809ED204  40 82 00 08 */	bne lbl_809ED20C
/* 809ED208  3B C0 00 01 */	li r30, 1
lbl_809ED20C:
/* 809ED20C  7F C3 F3 78 */	mr r3, r30
/* 809ED210  39 61 00 20 */	addi r11, r1, 0x20
/* 809ED214  4B 97 50 0D */	bl _restgpr_27
/* 809ED218  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809ED21C  7C 08 03 A6 */	mtlr r0
/* 809ED220  38 21 00 20 */	addi r1, r1, 0x20
/* 809ED224  4E 80 00 20 */	blr 
