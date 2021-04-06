lbl_809B5838:
/* 809B5838  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809B583C  7C 08 02 A6 */	mflr r0
/* 809B5840  90 01 00 24 */	stw r0, 0x24(r1)
/* 809B5844  39 61 00 20 */	addi r11, r1, 0x20
/* 809B5848  4B 9A C9 91 */	bl _savegpr_28
/* 809B584C  7C 7C 1B 78 */	mr r28, r3
/* 809B5850  7C 9D 23 78 */	mr r29, r4
/* 809B5854  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809B5858  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809B585C  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 809B5860  7F C3 F3 78 */	mr r3, r30
/* 809B5864  3C A0 80 9C */	lis r5, d_a_npc_fairy__stringBase0@ha /* 0x809B94CC@ha */
/* 809B5868  38 A5 94 CC */	addi r5, r5, d_a_npc_fairy__stringBase0@l /* 0x809B94CC@l */
/* 809B586C  38 A5 00 FE */	addi r5, r5, 0xfe
/* 809B5870  38 C0 00 03 */	li r6, 3
/* 809B5874  4B 69 28 79 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 809B5878  7C 7F 1B 79 */	or. r31, r3, r3
/* 809B587C  40 82 00 0C */	bne lbl_809B5888
/* 809B5880  38 60 00 01 */	li r3, 1
/* 809B5884  48 00 00 30 */	b lbl_809B58B4
lbl_809B5888:
/* 809B5888  7F C3 F3 78 */	mr r3, r30
/* 809B588C  7F A4 EB 78 */	mr r4, r29
/* 809B5890  4B 69 24 BD */	bl getIsAddvance__16dEvent_manager_cFi
/* 809B5894  2C 03 00 00 */	cmpwi r3, 0
/* 809B5898  41 82 00 10 */	beq lbl_809B58A8
/* 809B589C  7F 83 E3 78 */	mr r3, r28
/* 809B58A0  7F E4 FB 78 */	mr r4, r31
/* 809B58A4  48 00 00 29 */	bl _cutAppear_40F_01_Init__13daNpc_Fairy_cFRCi
lbl_809B58A8:
/* 809B58A8  7F 83 E3 78 */	mr r3, r28
/* 809B58AC  7F E4 FB 78 */	mr r4, r31
/* 809B58B0  48 00 01 3D */	bl _cutAppear_40F_01_Main__13daNpc_Fairy_cFRCi
lbl_809B58B4:
/* 809B58B4  39 61 00 20 */	addi r11, r1, 0x20
/* 809B58B8  4B 9A C9 6D */	bl _restgpr_28
/* 809B58BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809B58C0  7C 08 03 A6 */	mtlr r0
/* 809B58C4  38 21 00 20 */	addi r1, r1, 0x20
/* 809B58C8  4E 80 00 20 */	blr 
