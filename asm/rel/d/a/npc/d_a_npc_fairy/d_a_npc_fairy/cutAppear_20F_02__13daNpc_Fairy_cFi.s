lbl_809B5000:
/* 809B5000  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809B5004  7C 08 02 A6 */	mflr r0
/* 809B5008  90 01 00 24 */	stw r0, 0x24(r1)
/* 809B500C  39 61 00 20 */	addi r11, r1, 0x20
/* 809B5010  4B 9A D1 C9 */	bl _savegpr_28
/* 809B5014  7C 7C 1B 78 */	mr r28, r3
/* 809B5018  7C 9D 23 78 */	mr r29, r4
/* 809B501C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809B5020  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809B5024  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 809B5028  7F C3 F3 78 */	mr r3, r30
/* 809B502C  3C A0 80 9C */	lis r5, d_a_npc_fairy__stringBase0@ha /* 0x809B94CC@ha */
/* 809B5030  38 A5 94 CC */	addi r5, r5, d_a_npc_fairy__stringBase0@l /* 0x809B94CC@l */
/* 809B5034  38 A5 00 FE */	addi r5, r5, 0xfe
/* 809B5038  38 C0 00 03 */	li r6, 3
/* 809B503C  4B 69 30 B1 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 809B5040  7C 7F 1B 79 */	or. r31, r3, r3
/* 809B5044  40 82 00 0C */	bne lbl_809B5050
/* 809B5048  38 60 00 01 */	li r3, 1
/* 809B504C  48 00 00 30 */	b lbl_809B507C
lbl_809B5050:
/* 809B5050  7F C3 F3 78 */	mr r3, r30
/* 809B5054  7F A4 EB 78 */	mr r4, r29
/* 809B5058  4B 69 2C F5 */	bl getIsAddvance__16dEvent_manager_cFi
/* 809B505C  2C 03 00 00 */	cmpwi r3, 0
/* 809B5060  41 82 00 10 */	beq lbl_809B5070
/* 809B5064  7F 83 E3 78 */	mr r3, r28
/* 809B5068  7F E4 FB 78 */	mr r4, r31
/* 809B506C  48 00 00 29 */	bl _cutAppear_20F_02_Init__13daNpc_Fairy_cFRCi
lbl_809B5070:
/* 809B5070  7F 83 E3 78 */	mr r3, r28
/* 809B5074  7F E4 FB 78 */	mr r4, r31
/* 809B5078  48 00 01 7D */	bl _cutAppear_20F_02_Main__13daNpc_Fairy_cFRCi
lbl_809B507C:
/* 809B507C  39 61 00 20 */	addi r11, r1, 0x20
/* 809B5080  4B 9A D1 A5 */	bl _restgpr_28
/* 809B5084  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809B5088  7C 08 03 A6 */	mtlr r0
/* 809B508C  38 21 00 20 */	addi r1, r1, 0x20
/* 809B5090  4E 80 00 20 */	blr 
