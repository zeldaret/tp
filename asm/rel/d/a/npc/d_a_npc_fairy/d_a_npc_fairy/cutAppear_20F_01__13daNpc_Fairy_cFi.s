lbl_809B4CC0:
/* 809B4CC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809B4CC4  7C 08 02 A6 */	mflr r0
/* 809B4CC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 809B4CCC  39 61 00 20 */	addi r11, r1, 0x20
/* 809B4CD0  4B 9A D5 08 */	b _savegpr_28
/* 809B4CD4  7C 7C 1B 78 */	mr r28, r3
/* 809B4CD8  7C 9D 23 78 */	mr r29, r4
/* 809B4CDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809B4CE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809B4CE4  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 809B4CE8  7F C3 F3 78 */	mr r3, r30
/* 809B4CEC  3C A0 80 9C */	lis r5, struct_809B94CC+0x0@ha
/* 809B4CF0  38 A5 94 CC */	addi r5, r5, struct_809B94CC+0x0@l
/* 809B4CF4  38 A5 00 FE */	addi r5, r5, 0xfe
/* 809B4CF8  38 C0 00 03 */	li r6, 3
/* 809B4CFC  4B 69 33 F0 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 809B4D00  7C 7F 1B 79 */	or. r31, r3, r3
/* 809B4D04  40 82 00 0C */	bne lbl_809B4D10
/* 809B4D08  38 60 00 01 */	li r3, 1
/* 809B4D0C  48 00 00 30 */	b lbl_809B4D3C
lbl_809B4D10:
/* 809B4D10  7F C3 F3 78 */	mr r3, r30
/* 809B4D14  7F A4 EB 78 */	mr r4, r29
/* 809B4D18  4B 69 30 34 */	b getIsAddvance__16dEvent_manager_cFi
/* 809B4D1C  2C 03 00 00 */	cmpwi r3, 0
/* 809B4D20  41 82 00 10 */	beq lbl_809B4D30
/* 809B4D24  7F 83 E3 78 */	mr r3, r28
/* 809B4D28  7F E4 FB 78 */	mr r4, r31
/* 809B4D2C  48 00 00 29 */	bl _cutAppear_20F_01_Init__13daNpc_Fairy_cFRCi
lbl_809B4D30:
/* 809B4D30  7F 83 E3 78 */	mr r3, r28
/* 809B4D34  7F E4 FB 78 */	mr r4, r31
/* 809B4D38  48 00 01 7D */	bl _cutAppear_20F_01_Main__13daNpc_Fairy_cFRCi
lbl_809B4D3C:
/* 809B4D3C  39 61 00 20 */	addi r11, r1, 0x20
/* 809B4D40  4B 9A D4 E4 */	b _restgpr_28
/* 809B4D44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809B4D48  7C 08 03 A6 */	mtlr r0
/* 809B4D4C  38 21 00 20 */	addi r1, r1, 0x20
/* 809B4D50  4E 80 00 20 */	blr 
