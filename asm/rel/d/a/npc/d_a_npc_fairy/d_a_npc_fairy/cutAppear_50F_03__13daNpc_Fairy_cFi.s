lbl_809B6830:
/* 809B6830  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809B6834  7C 08 02 A6 */	mflr r0
/* 809B6838  90 01 00 24 */	stw r0, 0x24(r1)
/* 809B683C  39 61 00 20 */	addi r11, r1, 0x20
/* 809B6840  4B 9A B9 99 */	bl _savegpr_28
/* 809B6844  7C 7C 1B 78 */	mr r28, r3
/* 809B6848  7C 9D 23 78 */	mr r29, r4
/* 809B684C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809B6850  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809B6854  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 809B6858  7F C3 F3 78 */	mr r3, r30
/* 809B685C  3C A0 80 9C */	lis r5, d_a_npc_fairy__stringBase0@ha /* 0x809B94CC@ha */
/* 809B6860  38 A5 94 CC */	addi r5, r5, d_a_npc_fairy__stringBase0@l /* 0x809B94CC@l */
/* 809B6864  38 A5 00 FE */	addi r5, r5, 0xfe
/* 809B6868  38 C0 00 03 */	li r6, 3
/* 809B686C  4B 69 18 81 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 809B6870  7C 7F 1B 79 */	or. r31, r3, r3
/* 809B6874  40 82 00 0C */	bne lbl_809B6880
/* 809B6878  38 60 00 01 */	li r3, 1
/* 809B687C  48 00 00 6C */	b lbl_809B68E8
lbl_809B6880:
/* 809B6880  38 00 00 00 */	li r0, 0
/* 809B6884  90 01 00 08 */	stw r0, 8(r1)
/* 809B6888  7F C3 F3 78 */	mr r3, r30
/* 809B688C  7F A4 EB 78 */	mr r4, r29
/* 809B6890  3C A0 80 9C */	lis r5, d_a_npc_fairy__stringBase0@ha /* 0x809B94CC@ha */
/* 809B6894  38 A5 94 CC */	addi r5, r5, d_a_npc_fairy__stringBase0@l /* 0x809B94CC@l */
/* 809B6898  38 A5 01 04 */	addi r5, r5, 0x104
/* 809B689C  38 C0 00 03 */	li r6, 3
/* 809B68A0  4B 69 18 4D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 809B68A4  28 03 00 00 */	cmplwi r3, 0
/* 809B68A8  41 82 00 0C */	beq lbl_809B68B4
/* 809B68AC  80 03 00 00 */	lwz r0, 0(r3)
/* 809B68B0  90 01 00 08 */	stw r0, 8(r1)
lbl_809B68B4:
/* 809B68B4  7F C3 F3 78 */	mr r3, r30
/* 809B68B8  7F A4 EB 78 */	mr r4, r29
/* 809B68BC  4B 69 14 91 */	bl getIsAddvance__16dEvent_manager_cFi
/* 809B68C0  2C 03 00 00 */	cmpwi r3, 0
/* 809B68C4  41 82 00 14 */	beq lbl_809B68D8
/* 809B68C8  7F 83 E3 78 */	mr r3, r28
/* 809B68CC  7F E4 FB 78 */	mr r4, r31
/* 809B68D0  38 A1 00 08 */	addi r5, r1, 8
/* 809B68D4  48 00 00 2D */	bl _cutAppear_50F_03_Init__13daNpc_Fairy_cFRCiRCi
lbl_809B68D8:
/* 809B68D8  7F 83 E3 78 */	mr r3, r28
/* 809B68DC  7F E4 FB 78 */	mr r4, r31
/* 809B68E0  38 A1 00 08 */	addi r5, r1, 8
/* 809B68E4  48 00 01 F9 */	bl _cutAppear_50F_03_Main__13daNpc_Fairy_cFRCiRCi
lbl_809B68E8:
/* 809B68E8  39 61 00 20 */	addi r11, r1, 0x20
/* 809B68EC  4B 9A B9 39 */	bl _restgpr_28
/* 809B68F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809B68F4  7C 08 03 A6 */	mtlr r0
/* 809B68F8  38 21 00 20 */	addi r1, r1, 0x20
/* 809B68FC  4E 80 00 20 */	blr 
